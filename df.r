id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia") # nolint: line_length_linter.
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer") # nolint

employee <- data.frame(id, name, job_title)



opop = separate(employee, name, into = c("first_name", "last_name"), sep = " ")
print(opop)
# use rename_with to rename all columns
 rename_with(employee, ~str_to_upper(.x))

 install.packages("Tmisc")
 library(Tmisc)
 data(quartet)
 View(quartet)

pp <- quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))
install.packages("datasauRus")
library(datasauRus)

plot = ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3) # nolint