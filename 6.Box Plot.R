scores_data <- data.frame(
  Class = c("A", "A", "A", "A", "B", "B", "B", "B"),
  Scores = c(85, 90, 78, 92, 88, 76, 80, 84)
)
ggplot(scores_data, aes(x = Class, y = Scores, fill = Class)) +
  geom_boxplot() +
  labs(title = "Exam Scores by Class",
       x = "Class",
       y = "Scores") +
  theme_minimal()