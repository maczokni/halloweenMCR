library(ggplot2)
library(dplyr)


tagged_monsters <- read.csv("HalloweenMCR,MCRMONSTERS/mcrmonsters_2019_tagged.csv")

tagged_monsters %>% 
  filter(!monsters %in% c('event', 'other', 'fake')) %>% 
  group_by(monsters) %>% 
  summarise(n = n()) %>% 
  ggplot(., aes(x = reorder(monsters, n), y = n)) + 
  geom_bar(stat = 'identity') + 
  theme_bw() +
  xlab("") + ylab("number of photos") +
  coord_flip() + 
  theme(axis.text = element_text(size = 18), 
        axis.title = element_text(size = 18))

tagged_monsters %>% 
  filter(!monsters %in% c('event', 'other', 'fake')) %>% 
  group_by(monsters) %>% 
  summarise(likes = sum(num_likes, na.rm = T)) %>% 
  ggplot(., aes(x = reorder(monsters, likes), y = likes)) + 
  geom_bar(stat = 'identity') + 
  theme_bw() +
  xlab("") + ylab("number of total likes") +
  coord_flip() + 
  theme(axis.text = element_text(size = 18), 
        axis.title = element_text(size = 18))


tagged_monsters %>% 
  filter(!monsters %in% c('event', 'other', 'fake')) %>% 
  group_by(monsters) %>% 
  summarise(likes = mean(num_likes, na.rm = T)) %>% 
  ggplot(., aes(x = reorder(monsters, likes), y = likes)) + 
  geom_bar(stat = 'identity') + 
  theme_bw() +
  xlab("") + ylab("mean likes") +
  coord_flip() + 
  theme(axis.text = element_text(size = 18), 
        axis.title = element_text(size = 18))



dog_pics <- tagged_monsters[grepl('dog', tagged_monsters$may_contain),] 



