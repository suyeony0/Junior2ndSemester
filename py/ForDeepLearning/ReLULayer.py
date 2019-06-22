import numpy as np
class Relu:
    def __init__(self):
        self.mask=None

    def forward(self,x):
        self.mask=(x<=0) #x가 0이하인 인덱스에 모두 True값을 줌
        out = x.copy()
        out[self.mask]=0 #True값을 가진 인덱스를 0으로 초기화

        return out

    def backward(self,dout):
        dout[self.mask]=0 #미분 값에서 True인 인덱스를 모두 0으로 초기화
        dx=dout           #입력 값이 0 이하인 것들의 역전파에서 0을 넘겨주기 위함

        return dx
