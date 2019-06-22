import numpy as np
import matplotlib.pyplot as plt
def step_function(x):
    #y=x>0
    #return y.astype(np.int)
    return np.array(x>0,dtype=np.int)
'''x = np.arange(-5.0,5.0,0.1) # -5.0부터 5.0 까지 0.1의 간격으로 원소를 만들고 리스트에 담음

y= step_function(x)
plt.plot(x,y)
plt.ylim(-0.1,1.1) # y축의 범위 지정
plt.show()'''
