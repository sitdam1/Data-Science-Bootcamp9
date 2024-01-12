create table customers (
  customerid int,
  firstname text,
  lastname text,
  city text
);
create table orders (
  customerid int,
  orderdate date,
  productid int
);
create table pizza (
  productid int,
  menus text,
  prize real
);
insert into customers
values 
      (1,"tang","Dwen","Ayuthaya"),
      (2,"good","Yuean","Chiang mai"),
      (3,"mark","Ten","Bangkok"),
      (4,"yoye","Tommy","Bangkok"),
      (5,"peter","pater","Chiang rai");
insert into orders
values 
      (1,"2023-10-12",1),
      (2,"2023-11-05",2),
      (3,"2023-10-03",3),
      (4,"2023-09-23",4),
      (5,"2023-08-17",5);
insert into pizza
values 
      (1,"Pizza seafood",399.0),
      (2,"New orleans chicken",129.0),
      (3,"Cola",29.0),
      (4,"Toast",59.0),
      (5,"Garlic bread",89.0);
.mode box
with 
customers_orders as (
select * from customers as c 
join orders as o
on c.customerid = o.customerid)


select 
  firstname,
    lastname,
    city,
    menus
    from (select * from customers_orders) as cu
    join pizza as p
    on cu.productid = p.productid
    where cu.city = "Bangkok";
