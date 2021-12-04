import numpy as np
from pylog import *

@pylog(board='pynq')
def vecadd(a, b, c):
    for i in range(1024):
         c[i] = a[i] + b[i]
    return 0

if __name__ == "__main__":
    length = 1024
    a = np.random.rand(length).astype(np.float32)
    b = np.random.rand(length).astype(np.float32)
    c = np.random.rand(length).astype(np.float32)
                                            
    vecadd(a, b, c)
