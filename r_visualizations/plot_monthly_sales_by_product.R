p_product_monthly <- ggplot(
  product_monthly_sales,
  aes(miesiac_pl, total_sales)
) +
  geom_col(fill = "#2C7BE5") +
  facet_wrap(~ product_name, scales = "free_y") +
  scale_y_continuous(labels = dollar_format(prefix = "PLN ")) +
  labs(
    title = "Sprzedaż produktów w podziale na miesiące",
    subtitle = "Łączna wartość sprzedaży dla każdego produktu",
    x = "Miesiąc",
    y = "Wartość sprzedaży (PLN)"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    strip.text = element_text(face = "bold")
  )

p_product_monthly
