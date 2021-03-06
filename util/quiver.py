import torch
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from PIL import Image
import torchvision.transforms as transforms 

def plot_quiver(flow, n_sample = 30, _range = [-1, 1]):
    """
    visualize the flow map
    args:
        flow: (H, W, 2) tensor
        n_sample: the number sampled on an axis
        _range: the range of the map
    """
    size = flow.shape[0]
    indexs = np.arange(0, size, size / n_sample).astype(np.int_)

    L, R = _range
    X = np.arange(L, R, (R - L) / len(indexs))
    Y = np.arange(L, R, (R - L) / len(indexs))
    flow = flow.cpu().detach().numpy()
    x_indexs, y_indexs = np.meshgrid(indexs, indexs)
    U, V = flow[x_indexs, y_indexs, 0], flow[x_indexs, y_indexs, 1]
    fig, ax = plt.subplots(figsize=(5.12, 5.12), dpi=100)
    ax.quiver(X, Y, V, U, width = 0.003)
    plt.axis('square')
    fig.canvas.draw()
    
    data = np.fromstring(fig.canvas.tostring_rgb(), dtype=np.uint8, sep='')
    data = data.reshape(fig.canvas.get_width_height()[::-1] + (3,))
    #plt.savefig('test.png')
    plt.close()
    return data

