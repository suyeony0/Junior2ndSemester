import numpy as np
from numerical_diff import numerical_diff
import matplotlib.pyplot as plt
from numerical_gradient import numerical_gradient_2d
from gradient_descent import gradient_descent
from simpleNet import simpleNet

def function_1(x):
    return 0.01*x**2+0.1*x

def function_2(x):
    return np.sum(x**2)

def function_tmp1(x0):
    return x0*x0+4.0**2.0

def f(W):
    return net.loss(x,t)
