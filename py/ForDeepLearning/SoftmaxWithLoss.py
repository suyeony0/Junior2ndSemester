from softMaxFunction import softmax
from cross_entropy_error import cross_entropy_error
import numpy as np
class SoftmaxWithLoss:
    def __init__(self):
        self.loss = None
        self.y = None
        self.y = None

    def forward(self,x,t):
        self.t=t
        self.y=softmax(x)
        self.loss=cross_entropy_error(self.y, self.t)
        return self.loss

    def bacward(self,dout=1):
        batch_size=self.t.shape[0]
        dx=(self.y-self.t)/batch_size

        return dx

s=SoftmaxWithLoss()

loss = s.forward(np.array([10,100,20]),np.array([0,1,0]))
dx = s.bacward()

print(loss, dx)
