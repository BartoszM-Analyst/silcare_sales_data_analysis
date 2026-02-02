p_top5_trend <- ggplot(
  top5_monthly,
  aes(date, total_sales, color = product_name)
) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 2) +
  scale_y_continuous(labels = dollar_format(prefix = "PLN ")) +
  labs(
    title = "Trend sprzedaży Top 5 produktów",
    subtitle = "Miesięczna wartość sprzedaży",
    x = "Miesiąc",
    y = "Wartość sprzedaży (PLN)",
    color = "Produkt"
  ) +
  theme_minimal(base_size = 13)

p_top5_trend
