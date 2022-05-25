import torch
import torch.nn as nn
import torch.nn.functional as F
from torchvision.datasets import MNIST
from torch.utils.data import DataLoader
import torchvision.transforms as transforms
import torch.optim as optim
import argparse
import time
from quantize import*

parser = argparse.ArgumentParser(description = 'setting')
parser.add_argument('--data_dir', type = str, default = './mnist')
parser.add_argument('--batch_size', type =int, default = 100)
parser.add_argument('--lr', type = int, default = 0.001)
parser.add_argument('--epochs', type = int, default = 20)
parser.add_argument('--w_bit', type = int, default = 1)
parser.add_argument('--a_bit', type = int, default = 3)
args = parser.parse_args(args = [])

# PATH_acc = "./result/acc_round(2^k)_1_3.text"
PATH_acc = "./result/acc_round(2^k-1)_1_3.text"
# PATH_acc = "./result/acc_floor(2^k)_1_3.text"
# PATH_model = "./result/mnist_round(2^k)_1_3.pt"
PATH_model = "./result/mnist_round(2^k-1)_1_3.pt"
# PATH_model = "./result/mnist_floor(2^k)_1_3.pt"

print('GPU')
print(torch.cuda.is_available())
print(torch.cuda.get_device_name(0))
device = torch.device('cuda:0')

train_data = MNIST(root = args.data_dir, train = True, download = True, transform = transforms.ToTensor())
train_data_loader = DataLoader(train_data, batch_size = args.batch_size, shuffle = True, num_workers = 0 ,pin_memory = True)
test_data = MNIST(root = args.data_dir, train =False, download = True, transform = transforms.ToTensor())
test_data_loader = DataLoader(test_data, batch_size = args.batch_size, shuffle = False, num_workers = 0, pin_memory = True)

class Net(nn.Module):
    def __init__(self):
        super().__init__()
        BinaryConv2d = conv2d_Q_fn(args.w_bit)
        BinaryLinear = linear_Q_fn(args.w_bit)
        self.act = activation_quantize_fn(args.a_bit)
        self.conv1 = BinaryConv2d(1, 1, 5, bias = False)
        self.conv2 = BinaryConv2d(1, 4, 5, bias = False)
        self.fc1 = BinaryLinear(4*4*4, 16, bias = True)
        self.fc2 = BinaryLinear(16, 10, bias = True)
        self.soft = nn.Softmax(dim = 1)

    def forward(self, x):
        x = self.conv1(x)
        x = F.max_pool2d(x,(2,2))
        x = torch.clamp(x, 0, 0.875)
        x = self.act(x)
        x = self.conv2(x)
        x = F.max_pool2d(x,(2,2))
        x = torch.clamp(x, 0, 0.875)
        x = self.act(x)
        x = x.view(-1, 4*4*4)
        x = self.fc1(x)
        x = self.fc2(x)
        x = self.soft(x)
        return x

net = Net().to(device)
print('\n**********ネットワーク概要**********')
print(net)

criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(net.parameters(), lr = args.lr, betas = [0.9, 0.999], eps = 0.00000001)

epochs = args.epochs

for epoch in range(epochs):
    running_loss = 0.0
    for i,(data, labels) in enumerate(train_data_loader):
        train_data, teacher_labels = data.to(device), labels.to(device)
        optimizer.zero_grad()
        outputs = net(train_data)
        loss = criterion(outputs,teacher_labels)
        loss.backward()
        optimizer.step()
        running_loss += loss.item()

        if i % 100 == 99:
            print("epoch : {0} [{1}/60000]   loss : {2}".format(epoch + 1, (i + 1)*100, running_loss / 100))
            running_loss = 0.0
print("finish\n")

count = 0
total = 0

t1 = time.time()

for i,(data, labels) in enumerate(test_data_loader):
    test_data, teacher_labels = data.to(device), labels.to(device)
    results = net(test_data)
    _, predicted = torch.max(results.data, 1)
    count += (predicted == teacher_labels).sum()
    total += teacher_labels.size(0)

t2 = time.time()
elapsed_time = t2 -t1

accracy = (int(count) / int(total)) * 100

print(f'実行時間 : {elapsed_time}[s]')
print(f'accuracy : {accracy}[%]\n')

EPOCH = args.epochs
W_BIT = args.w_bit
A_BIT = args.a_bit
file = open(PATH_acc, 'w')
file.write(f'epoch : {EPOCH}\n')
file.write(f'重み : {W_BIT}\n')
file.write(f'出力 : {A_BIT}\n')
file.write(f'実行時間 : {elapsed_time}[s]\n')
file.write(f'accuracy : {accracy}[%]')
file.close

torch.save(net.state_dict(), PATH_model)

net.load_state_dict(torch.load(PATH_model))
model_data = net.state_dict()
print('\n**********重み**********')
print(model_data)
