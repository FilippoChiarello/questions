library(tidyverse)


read_csv("scopus (1).csv") %>%
  select(Title) %>%
  filter(str_detect(Title, "\\?")) %>%
  mutate(Title= str_to_lower(Title)) %>%
  mutate(w= str_extract(Title, "who|what|why|when|where|how")) %>%
  count(w)

