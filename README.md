# CQNU_Deep_Cluster
[重庆师范大学](https://www.cqnu.edu.cn/) - [重庆国家应用数学中心](https://cqcam.cqnu.edu.cn/)
深度聚类算法研究课题组 Python/Matlab 脚本仓库
# 深度聚类代码库

## 仓库介绍

本仓库旨在分类整理深度聚类研究中的各种代码及其使用说明，提供一个全面的框架，以便于本课题组研究生、博士生以及其他研究人员能够高效地开展深度聚类相关的工作。内容涵盖数据处理、模型训练、模型优化、聚类分析及可视化作图等多个方面。
## 课题组相关论文成果

| YEAR | TITLE                                  | VENUE         | PAPER                                     | CODE                                   |
|----------|---------------------------------------|----------------|----------------------------------------------|--------------------------------------------|
| 2024     | Variational Structural Deep Clustering                     | ICIC       | [VSDC](https://link.springer.com/chapter/10.1007/978-981-97-5678-0_31) | [VSDC](https://example.com/code2)   |
| 2025     | InfoHamonizer Graph Contrastive Clustering            | ICASSP           | [IGCC](https://doi.org/10.1109/icassp49660.2025.10889375)   | [IGCC](https://example.com/code1)   |
| 2025     | Implicit Topology Mining via Dual Filters for Attributed Graph Contrastive Clustering                     | IJCNN       | [DFGCC](https://example.com/paper3)    | [DFGCC](https://example.com/code3)   |
| 2025     | scSCDT: Self-Contrastive Neural Network with Deep Topology Mining for scRNA-seq Data Clustering                     | Craft       | [scSCDT](https://example.com/paper3)    | [scSCDT](https://example.com/code3)   |


## 目录结构

1. **数据处理**
   提供数据增强、数据清洗及数据预处理的代码示例，帮助用户对数据进行有效处理，提高模型训练效果。
    - [图像增强](./data_augmentation): 包括旋转、缩放、裁剪、填充、亮度、对比度、饱和度、色相等操作。
    - [图像预处理](./data_preprocessing): 包括归一化、裁剪等操作。

2. **模型训练**
   包含模块搭建、模型加载和保存的方法，便于用户根据自己的需求构建合适的模型架构并管理训练过程。
    - [模块搭建](./modules): 包括各卷积神经网络（CNN）模块、循环神经网络（RNN）和ViT模块等脚本。
3. **模型优化**
   收录多种损失函数和优化算法，帮助模型在训练过程中进行调优，以获得更好的聚类效果。
   - [损失评估](./loss_optimization): 包括KL散度、交叉熵、对比损失等损失函数的实现。以及准确率、损失等指标的评估脚本。

4. **聚类分析**
   - 提供多种聚类算法及其指标的实现，助力用户进行聚类任务的分析与评估。
   - [端到端聚类](./cluster_analysis):直接聚类，不需要进行后处理。
   - [传统聚类](./cluster_analysis):kmeans聚类。
5. **可视化作图**
   - [各类图表](./chart_visualization): 包含过程可视化和结果可视化的工具，帮助用户直观地展示数据处理和模型训练的成果，并生成各类图表数据。

## 使用说明

请参考各个子目录中的说明文档和示例代码，按照其中的指导进行操作。在每个模块中，您将找到详细的使用说明和代码示例，以帮助您快速上手。
## 提交说明

提交格式应为：**论文（或简称）-模块名（或简称）-使用方法**

例如：`Contrasive Clustering-IFH-使用方法见注释`

## 贡献

欢迎对本项目进行贡献，您可以通过提交问题或拉取请求的方式与我们交流。

## 许可证

本项目采用 Apache 许可证，详见 LICENSE 文件。

---

希望这个深度聚类代码库能为您的研究和开发工作提供帮助！如有任何问题或建议，请随时联系。
- **邮箱**: zhouzhongyoung@163.com
## 相关链接

- [重庆师范大学](https://www.cqnu.edu.cn/)
- [重庆国家应用数学中心](https://cqcam.cqnu.edu.cn/)
- [重庆师范大学-计算机与信息科学学院](https://jxxy.cqnu.edu.cn/)
- [重庆师范大学-数学科学学院](https://math.cqnu.edu.cn/)
