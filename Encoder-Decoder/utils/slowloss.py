import numpy as np
from torch import nn
import torch

class SlowLearnerLoss(nn.Module):
    def __init__(self):
        super(SlowLearnerLoss, self).__init__()

    def forward(gx, x, mask, S, D):
        Lm = 0
        Lum = 0
        # loss = 0
        lamb=0.5
        s0,s1,s2 = x.shape
        for i in range(0,mask.shape):
            tm = mask[i] * (torch.norm(gx[:,i,:]-x[:,i,:]) ** 2)
            tum = (1-mask[i]) * (torch.norm(gx[:,i,:]-x[:,i,:]) ** 2)
            Lm = Lm + tm
            Lum = Lum + tum

        Lm = Lm / (D*torch.sum(mask))
        Lum = Lum / (D*(S-torch.sum(mask)))

        return (lamb*Lm)+((1-lamb)*Lum)



def ssl_loss(gx, x, mask, S, D):
    Lm = 0
    Lum = 0
    # loss = 0
    lamb=0.5
    s0,s1,s2 = x.shape
    for i in range(0,s1):
        tm = mask[i] * (torch.norm(gx[:,i,:]-x[:,i,:]) ** 2)
        tum = (1-mask[i]) * (torch.norm(gx[:,i,:]-x[:,i,:]) ** 2)
        Lm = Lm + tm
        Lum = Lum + tum

    Lm = Lm / (D*torch.sum(mask))
    Lum = Lum / (D*(S-torch.sum(mask)))

    return (lamb*Lm)+((1-lamb)*Lum)

def ssl_loss_v2(gx, x, mask, S, D):
    Lm = 0
    Lum = 0
    # loss = 0
    lamb=0.5
    s0,s1,s2 = x.shape
    ss0,ss1,ss2 = gx.shape

    minS1 = min(s1,ss1)
    x=x[:,:minS1,:]
    gx=gx[:,:minS1,:]
    mask=mask[:,:minS1,:]

    m_one = torch.ones(s0,minS1,s2).cuda()

    tm = (mask * ((gx-x) ** 2)).flatten().sum()
    tum = ((m_one-mask) * ((gx-x) ** 2)).flatten().sum()

    Lm = tm / mask.flatten().sum()
    Lum = tum / (m_one-mask).flatten().sum()

    return (lamb*Lm)+((1-lamb)*Lum)


def ssl_loss_v3(gx, x, mask, S, D):
    Lm = 0
    Lum = 0
    # loss = 0
    lamb=0.5
    s0,s1,s2 = x.shape
    ss0,ss1,ss2 = gx.shape
    
    # if s1 < ss1:
    #     gx=gx[:,:s1,:]
    # elif s1 > ss2:
    minS1 = min(s1,ss1)
    maxS1 = max(s1,ss1)
    x=x[:,:minS1,:]
    gx=gx[:,:minS1,:]
    
    # m_one = torch.ones(s0,s1,s2).cuda()
    m_one = torch.ones(s0,minS1,s2).cuda()

    # for i in range(0,s1):
    #     tm = mask[i] * (torch.norm(gx[:,i,:]-x[:,i,:]) ** 2)
    #     tum = (1-mask[i]) * (torch.norm(gx[:,i,:]-x[:,i,:]) ** 2)
    #     Lm = Lm + tm
    #     Lum = Lum + tum
    # print(gx.shape)
    # print(x.shape)
    # print(mask.shape)


    tm = (mask * ((gx-x) ** 2)).flatten().sum()
    tum = ((m_one-mask) * ((gx-x) ** 2)).flatten().sum()

    Lm = tm / mask.flatten().sum()
    Lum = tum / (m_one-mask).flatten().sum()

    return (maxS1/minS1) * ((lamb*Lm)+((1-lamb)*Lum))

def BarlowTwins(z1, z2,lambda_param=0.5):
    N, D = z1.shape[0], z1.shape[1] * z1.shape[2]  # Flatten time and feature dimensions
    z1_flat = z1.reshape(N, -1)  # Shape: [batch_size, seq_len * features]
    z2_flat = z2.reshape(N, -1)
    
        # Normalisasi fitur
    z1_norm = (z1_flat - z1_flat.mean(dim=0)) / (z1_flat.std(dim=0) + 1e-6)
    z2_norm = (z2_flat - z2_flat.mean(dim=0)) / (z2_flat.std(dim=0) + 1e-6)
        
        # Hitung cross-correlation matrix
    C = torch.matmul(z1_norm.T, z2_norm) / N  # Shape: [D, D]
        
        # Hitung loss
    on_diag = (1 - C.diagonal()).pow(2).sum()
    off_diag = C.pow(2).sum() - C.diagonal().pow(2).sum()
    loss = on_diag + lambda_param * off_diag
    return loss


def CORR(pred, true):
    u = ((true - true.mean(0)) * (pred - pred.mean(0))).sum(0)
    d = np.sqrt(((true - true.mean(0)) ** 2).sum(0) * ((pred - pred.mean(0)) ** 2).sum(0))
    return (u / d).mean(-1)
