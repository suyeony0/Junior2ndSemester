import numerical_gradient

def gradient_descent(f, init_x, lr=0.01,step_num=100):
     # lr은 learning late를 말하고 step_num은 경사버에 따른 반복 횟수를 뜻한다.
    x= init_x

    for i in range(step_num):
        grad = numerical_gradient.numerical_gradient_1d(f,x)
        x -= lr*grad
    return x
