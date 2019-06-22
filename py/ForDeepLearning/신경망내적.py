import numpy as np
from sigmoidFunc import sigmoid
X = np.array([1.0,0.5])
W1 = np.array([[0.1,0.3,0.5],[0.2,0.4,0.6]])
B1 = np.array([0.1,0.2,0.3]) #편향도 각 노드마다 다를 수 있다.
A1 = np.dot(X,W1) +B1

Z1=sigmoid(A1) #활성화 함수로 sigmoid 함수 사용

W2=np.array([[0.1,0.4],[0.2,0.5],[0.3,0.6]])
B2=np.array([0.1,0.2])
A2= np.dot(Z1,W2) + B2

Z2= sigmoid(A2)

W3=np.array([[0.1,0.3],[0.2,0.4]])
B3=np.array([0.1,0.2])
A3=np.dot(Z2,W3)+B3
Y=A3
print(Y)
