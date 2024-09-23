# Load necessary libraries
library(ggplot2)
library(plotly)

# Consumer survey data
consumer_data <- data.frame(
  Product = c('A', 'B', 'C', 'D', 'E'),
  Price = c(50, 70, 60, 45, 55),
  Rating = c(4.2, 3.8, 4.0, 4.5, 3.9),
  Age_Group = c('25-35', '35-45', '18-25', '45-55', '25-35')
)

# 3D scatter plot
scatter_plot <- plot_ly(consumer_data, x = ~Price, y = ~Rating, z = ~as.numeric(factor(Age_Group)),
                        type = "scatter3d", mode = "markers", marker = list(size = 5))
scatter_plot

# 3D surface plot
surface_plot <- plot_ly(consumer_data, x = ~Price, y = ~as.numeric(factor(Age_Group)), z = ~Rating, type = "mesh3d")
surface_plot