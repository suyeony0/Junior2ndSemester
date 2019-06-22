import numpy as np
def numerical_gradient_1d(f,x):
    h=1e-4 # 0.001
    grad = np.zeros_like(x) # x와 형상이 같은 배열을 생성, 원소는 모두 0이다

    for idx in range(x.size):
        tmp_val = x[idx]
        # f(x+h) 계산
        x[idx]=tmp_val+h
        fxh1=f(x)

        # f(x-h) 계산
        x[idx]=tmp_val-h
        fxh2=f(x)

        grad[idx]=(fxh1-fxh2)/(2*h)
        x[idx]=tmp_val #값 복원
    return grad

def numerical_gradient_2d(f, X):
    if X.ndim == 1:
        return numerical_gradient_1d(f, X)
    else:
        grad = np.zeros_like(X)

        for idx, x in enumerate(X):
            grad[idx] = numerical_gradient_1d(f, x)

    return grad
