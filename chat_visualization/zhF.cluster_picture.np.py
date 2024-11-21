import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans

# 生成模拟数据
X, y = make_blobs(n_samples=4500, centers=45, cluster_std=0.70, random_state=0)

# 应用KMeans聚类
kmeans = KMeans(n_clusters=13)
kmeans.fit(X)
y_kmeans = kmeans.predict(X)

# 绘制聚类结果
plt.figure(figsize=(20, 15))
plt.scatter(X[:, 0], X[:, 1], c=y_kmeans, s=50, cmap='viridis')

# 绘制聚类中心
centers = kmeans.cluster_centers_
plt.scatter(centers[:, 0], centers[:, 1], c='red', s=200, alpha=0.75, marker='*')

# 添加标题和标签
plt.title('Ours')
plt.xlabel('Feature 1')
plt.ylabel('Feature 2')

# 图形显示
plt.show()