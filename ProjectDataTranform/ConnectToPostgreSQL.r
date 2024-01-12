library(RPostgreSQL)
library(tidyverse)


customers <- tibble (id=1:5,name=c("tang","teng","best","oil","mark"),
                     county=c("Ayutthaya","Chiang mai","Bangkok","Bangkok","Chaing mai"))

orders <- tibble(id=1:5,orderdate=c("2024-1-3","2024-1-5","2024-1-1","2024-1-7","2024-1-9"))

pizzas <- tibble(id=1:5,order=c("Pizza seafood","New orleans chicken","Cola","Toast","Garlic bread"),prize=c(399,129,29,59,89))

con <- dbConnect(
    PostgreSQL(),
    host="arjuna.db.elephantsql.com",
    dbname ="yrccfigs",
    user ="yrccfigs",
    password = "K0AtYQqpF_mtudeMVffsS8hRgPJQyc-s",
    port = 5432)

con
dbWriteTable(con,"customers",customers)
dbWriteTable(con,"orders",orders)
dbWriteTable(con,"pizzas",pizzas)
dbListTables(con)
dbGetQuery(con,"select id,name,county from customers where name='tang' ")
dbGetQuery(con,"select c.id,c.name,p.order 
           from customers as c
           join pizzas as p on c.id = p.id")
dbDisconnect(con)
