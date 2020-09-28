import numpy as np
import matplotlib.pyplot as plt
from fxpmath import Fxp

points = np.linspace(-np.pi, np.pi, 61)
data = np.tanh(points)

x = Fxp(data[0], True, 2, 8, rouding='fix')

plt.plot(points, data, color = 'red', marker = "o") 
plt.title("tanh") 
plt.xlabel("X") 
plt.ylabel("Y") 
plt.show() 