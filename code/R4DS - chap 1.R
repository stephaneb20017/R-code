#statistical Transformation
ggplot(data = diamonds) +
  geom_bar(mappin = aes(x = cut))

#is the same like this one
#This works because every geom has a default stat, and every stat has a default
#geom

ggplot(data = diamonds) +
  stat_count(mapping = aes (x = cut))

#override the default stat
demo <- tibble(
  ~a, ~b,
  "bar_1", 20,
  "bar2" , 30,
  "bar_3", 40
)
ggplot(data = demo) +
  geom_bar ( mapping = aes(x = a, y = b), stat = "identity")