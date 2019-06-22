import numpy as np
from dataset.mnist import load_mnist

(x_train,t_train),(x_test,t_test)=\
    load_mnist(normalize=True,one_hot_label=True)

train_size=x_train.shape[0]
batch_size=10
batch_mask= np.random.choice(train_size,batch_size) ## train_size개의 원소 중에서 batch_size 만큼 랜덤으로 골라냄, seed가 매번 달라짐,중복이 허용됨

x_batch=x_train[batch_mask]
t_batch=t_train[batch_mask]
