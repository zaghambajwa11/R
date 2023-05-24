data(ToothGrowth)
View(ToothGrowth)
# filter_tg <- filter(ToothGrowth, dose == 0.5)
View(filter_tg)
filter_supp <- filter(ToothGrowth, supp == "VC" & dose == 0.5)
View(filter_supp)
#sort the table by len
sort_tg <- arrange(filter_supp, len)
# nested filter function on toothgrowth within sort function
sort_tg <- arrange(filter(ToothGrowth, supp == "VC" & dose == 0.5), len)

#filtered_toothgrow by pipe operator
filtered_toothgrow <- ToothGrowth %>%
 filter(dose == 0.5) %>%
 group_by(supp) %>%
 summerize(mean = mean(len), sd = sd(len), n = n()) %>%
 arrange(len)
View(filtered_toothgrow)
