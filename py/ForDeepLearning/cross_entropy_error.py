import numpy as np

def cross_entropy_error(y,t): # y와 t는 넘파이 배열이다. one hot coding 일경우

    if y.ndim==1:
        t=t.reshape(1,t.size)
        y=y.reshape(1,y.size)
        batch_size = y.shape[0]
        return -np.sum(t*np.log(y))/batch_size

    '''delta = 1e-7
    return -np.sum(t*np.log(y+delta)) #델타를 더하는 이유는 np.log()함수에 0을 입력하면 마이너스 무한대로 계산을 진행할 수 없기때문이다.'''
def cross_entropy_error2(y,t): # y와 t는 넘파이 배열이다. one hot coding 이 아닐경우
    if y.ndim==1:
        t=t.reshape(1,t.size)
        y=y.reshape(1,y.size)
        batch_size = y.shape[0]
        return -np.sum(np.log(y[np.arange(batch_size),t]))/batch_size
'''
t=[0,0,1,0,0,0,0,0,0,0]
y=[0.1,0.05,0.6,0.0,0.05,0.1,0.0,0.1,0.0,0.0]
print(cross_entropy_error(np.array(y),np.array(t)))'''
