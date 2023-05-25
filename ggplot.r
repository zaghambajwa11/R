ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#ggplot histogram
ggplot(data = penguins) + geom_histogram(mapping = aes(x = flipper_length_mm))