import numpy as np

def softmax(a): #a는 입력 신호 리스트임
    c = np.max(a) # 오버플로를 막기위해 분모에 입력 신호의 최댓값을 더하는 방식
    exp_a = np.exp(a-c)
    sum_exp_a = np.sum(exp_a)
    y = exp_a/sum_exp_a
    return y

'''a= np.array([0.3,2.9,4.0])
y= softmax(a)
print(y)
print(np.sum(y))'''
