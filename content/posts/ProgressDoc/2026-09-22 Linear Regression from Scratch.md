---
title: Linear Regression from Scratch
date: 2026-09-18
draft: false
summary: Created Linear Regression from scratch on kaggle to the House Prediction competition. The input data was maximally simplified and not FE was used to focus more on scratch implementation of the algorithm
tags:
  - template
categories:
  - ml-engineering
  - linear-regression
  - regression
author: Nurasik12
---
## Introduction

## Key Points

## Code Example

```python
# Model building
class LinearRegression_():
    def __init__(self):
        self.w  = None
        self.b  = np.random.random()
        self.lr = 0.03
        self.epoch = 6000
        self.best = float('inf')
    
    def fit(self, X, y):
        y = y.reshape(-1, 1)
        assert len(X.shape) == 2 and len(y.shape) == 2
        
        # Initialization
        self.w = np.random.rand(X.shape[1], 1)
        is_imp = False

        for epoch in range(self.epoch):
            # Single update interation
            y_pred = self.predict(X)
            L   = (y_pred - y)
            a_j = X
            m = X.shape[0]

            self.w = self.w - (self.lr / m * (a_j.T @ L))
            self.b = self.b - (self.lr / m * float(np.sum(L)))

            new = MSE(y_pred, y)
            if not is_imp and self.best > new:
                self.best = new
                is_imp = True
                
            if (epoch % 500 == 0):
                print("{:^10}".format(f"Epoch={epoch}"))
                print(f"MSE loss={MSE(y_pred, y)}")
                if is_imp:
                    print("Improved\n")
                else:
                    print("Not Improved\n")
                is_imp=False
    
    def predict(self, X):
        assert (self.w is not None)
        return X @ self.w + self.b
```
## Summary
![[linear-regression-from-scratch.ipynb]]
---

*Stay tuned for more updates on my ML engineering journey!*