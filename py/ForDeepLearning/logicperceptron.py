import numpy as np
def AND(x1, x2):
    x= np.array([x1,x2])
    w = np.array([0.5,0.5])
    b=-0.7
    if np.sum(x*w)+b > 0:
        return 1
    else : return 0

def NAND(x1, x2):
    x= np.array([x1,x2])
    w = np.array([-0.5,-0.5]) #AND와 가중치만 편향의 부호만 다름
    b=0.7
    if np.sum(x*w)+b > 0:
        return 1
    else : return 0

def OR(x1,x2):
    x= np.array([x1,x2])
    w = np.array([0.5,0.5]) # x1, x2가 둘다 0만 아니면 1 return
    b=-0.2
    if np.sum(x*w)+b > 0:
        return 1
    else : return 0
def XOR(x1,x2):
    s1= NAND(x1,x2)
    s2= OR(x1,x2)
    return AND(s1,s2)
