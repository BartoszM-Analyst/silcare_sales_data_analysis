p_monthly <- ggplot(monthly_sales, aes(miesiac_pl, total_sales)) +
  geom_col(fill = "#2C7BE5") +
  scale_y_continuous(labels = dollar_format(prefix = "PLN ")) +
  labs(
    title = "Sprzedaż miesięczna – Silcare",
    subtitle = "Łączna wartość sprzedaży w podziale na miesiące",
    x = "Miesiąc",
    y = "Wartość sprzedaży (PLN)"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )

p_monthly