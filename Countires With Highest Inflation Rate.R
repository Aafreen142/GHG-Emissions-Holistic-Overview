Countries Highest Inflation Rates
# Load necessary library
library(ggplot2)

# Create a data frame with the countries and their inflation rates
data <- data.frame(
  Country = c("Nigeria", "Mongolia", "Equatorial Guinea", "Yemen", "Angola", 
              "Argentina", "Sri Lanka", "Kazakhstan", "Ghana", "Algeria"),
  InflationRate = c(100, 85, 60, 45, 40, 30, 25, 22, 20, 18)
)

# Convert Country to a factor with ordered levels
data$Country <- factor(data$Country, levels = data$Country[order(-data$InflationRate)])

# Create a line plot (not ideal for categories but works with reordered factor)
ggplot(data, aes(x = Country, y = InflationRate, group = 1)) +  # 'group = 1' ensures a single line
  geom_line(color = "blue", size = 1) +  # Line plot
  geom_point(color = "blue", size = 3) +  # Points for emphasis
  labs(title = "Top 10 Countries with Highest Inflation Rates", 
       x = "Country", 
       y = "Inflation Rate (%)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability

