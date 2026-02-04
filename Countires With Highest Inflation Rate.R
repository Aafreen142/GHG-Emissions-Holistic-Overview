---
title: "Countries with Highest Inflation Rates"
output: github_document
---

```{r setup, message=FALSE}
library(ggplot2)
```

## Dataset

```{r}
# Create a data frame with the countries and their inflation rates
data <- data.frame(
  Country = c("Nigeria", "Mongolia", "Equatorial Guinea", "Yemen", "Angola", 
              "Argentina", "Sri Lanka", "Kazakhstan", "Ghana", "Algeria"),
  InflationRate = c(100, 85, 60, 45, 40, 30, 25, 22, 20, 18)
)

# Convert Country to a factor with ordered levels
data$Country <- factor(data$Country, levels = data$Country[order(-data$InflationRate)])

data
```

## Visualization

A **line plot** shows the inflation rate trend across countries, with points highlighting each country's specific value.

```{r}
ggplot(data, aes(x = Country, y = InflationRate, group = 1)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Top 10 Countries with Highest Inflation Rates", 
       x = "Country", 
       y = "Inflation Rate (%)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
```
