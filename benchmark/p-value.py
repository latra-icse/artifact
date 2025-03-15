import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import skew, wilcoxon
from scipy.stats import binomtest

data = pd.read_csv('c-benchmark.csv')
latra_data = data['Latra']
vulcan_data = data['Vulcan']
creduce_data = data['C-Reduce']

differences = latra_data - vulcan_data  # Replace with actual paired data

num_positive = np.sum(differences > 0)
num_samples = len(differences)

sign_test_result = binomtest(num_positive, n=num_samples, p=0.5, alternative='two-sided')

print(f"Sign test p-value: {sign_test_result.pvalue}")