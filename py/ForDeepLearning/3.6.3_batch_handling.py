import neuralnet_mnist_byMe as nm
import numpy as np
x, t = nm.get_data()
network = nm.init_network()
W1,W2,W3 = network['W1'],network['W2'],network['W3']

batch_size=100
accuracy_cnt=0

for i in range(0,len(x),batch_size):
    x_batch=x[i:i+batch_size]
    y_batch=nm.predict(network,x_batch)
    p=np.argmax(y_batch,axis=1)
    
    accuracy_cnt+=np.sum(p==t[i:i+batch_size])

print("Accuracy: "+ str(float(accuracy_cnt)/len(x)))
