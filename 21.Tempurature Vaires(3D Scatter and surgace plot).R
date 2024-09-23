# Load necessary libraries
library(ggplot2)
library(plotly)
weather_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  Wind_Speed = c(15, 12, 18, 20, 16)
)
scatter_plot <- plot_ly(weather_data, x = ~Wind_Speed, y = ~Humidity, z = ~Temperature,
                        type = "scatter3d", mode = "markers", marker = list(size = 5))
scatter_plot
surface_plot <- plot_ly(weather_data, x = ~Wind_Speed, y = ~Humidity, z = ~Temperature, type = "mesh3d")
surface_plot