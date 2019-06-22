import numpy as np
from softMaxFunction import softmax
from cross_entropy_error import cross_entropy_error
class simpleNet:
    def __init__(self):
        self.W=np.random.randn(2,3) # 2 x 3 행렬을 랜덤 정규분포로 초기화

    def predict(self,x):#예측을 수행함, 근데 그냥 내적인데?
        return np.dot(x,self.W)

    def loss(self,x,t): #손실함수
        z = self.predict(x)
        y = softmax(z)
        
        loss = cross_entropy_error(y,t)

        return loss
