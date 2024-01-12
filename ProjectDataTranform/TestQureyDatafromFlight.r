### USE Datafrom flight in posit.could

library(tidyverse)
library(dplyr)
library(nycflights13)
##เดือนไหนบินระยะทางเฉลี่ยเยอะสุด
q1 <- flights%>%
  group_by(month)%>%
  summarise(avg_distance = mean(distance))%>%
  arrange(desc(avg_distance))
##ระยะทางเฉลี่ย/ระยะทางรวม/ระยะทางน้อยสุด/ระยะทางมากสุด แต่ล่ะสายการบิน
q2 <- flights %>% 
  group_by(carrier) %>%
  summarise(avg_distance = mean(distance),
            sum_distance = sum(distance),
            min_distance = min(distance),
            max_distance = max(distance))
##ชั่วโมงบินเฉลี่ยของแต่ล่ะสายการบิน
q3 <- flights %>%
  group_by(month)%>%
  summarise(avg_hour = mean(hour))
##เวลาเป็นนาที่เฉลี่ยแต่ล่ะสายการบิน
q4 <- flights %>%
  mutate(true_minute = hour*60 + minute)%>%
  group_by(carrier)%>%
  summarise(avg_minute = mean(true_minute))
##3สายการบินที่บินเยอะสุดในแต่ล่ะเดือน
q5 <- flights %>%
  group_by(month)%>%
  count(carrier)%>%
  arrange(month,desc(n))%>%
  top_n(3)
