data <- tbl_df(read.csv(file = 'used_cars_data.csv'))
colnames(data)


car_summary <- data %>%
  group_by(location) %>%
  summarise(
    price = mean(price..eur., na.rm = TRUE),
    mileage = mean(mileage..kms., na.rm = TRUE),
    n = n()
  )

ggplot(data, aes(price..eur., mileage..kms.)) + geom_point()
car_summary
