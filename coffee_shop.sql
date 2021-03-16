--COFFEE SHOP DB CREATION
CREATE TABLE coffees (id INT PRIMARY KEY, name VARCHAR(20), price INT);
CREATE TABLE customers (id INT PRIMARY KEY, name VARCHAR(20));
CREATE TABLE orders (customer_id INT, coffee_id INT, to_go BOOLEAN, date DATE,
FOREIGN KEY (customer_id) REFERENCES customers(id),
FOREIGN KEY (coffee_id) REFERENCES coffees(id));

--DATA POPULATION
INSERT INTO coffees VALUES(1, 'espresso',10);
INSERT INTO coffees VALUES(2, 'cappuccino',15);
INSERT INTO coffees VALUES(3, 'americano',30);
INSERT INTO coffees VALUES(4, 'latte',20);

INSERT INTO customers VALUES(1, 'Sevak');
INSERT INTO customers VALUES(2, 'Karen');
INSERT INTO customers VALUES(3, 'Ara');
INSERT INTO customers VALUES(4, 'Arpi');
INSERT INTO customers VALUES(5, 'Satenik');
INSERT INTO customers VALUES(6, 'Gevorg');
INSERT INTO customers VALUES(7, 'Ararat');
INSERT INTO customers VALUES(8, 'Daniel');
INSERT INTO customers VALUES(9, 'Sona');
INSERT INTO customers VALUES(10, 'Arpine');
INSERT INTO customers VALUES(11, 'Tatev');
INSERT INTO customers VALUES(12, 'Hakob');

INSERT INTO orders VALUES(1, 1, true, '2021-01-01');
INSERT INTO orders VALUES(1, 3, true, '2021-01-05');
INSERT INTO orders VALUES(1, 4, false, '2021-03-06');
INSERT INTO orders VALUES(1, 3, true, '2021-02-15');
INSERT INTO orders VALUES(1, 3, true, '2020-01-02');
INSERT INTO orders VALUES(1, 3, true, '2019-06-07');
INSERT INTO orders VALUES(1, 4, true, '2021-03-09');
INSERT INTO orders VALUES(1, 2, true, '2020-04-16');
INSERT INTO orders VALUES(1, 3, false, '2020-02-04');
INSERT INTO orders VALUES(1, 4, true, '2020-01-19');
INSERT INTO orders VALUES(1, 4, false, '2020-07-08');
INSERT INTO orders VALUES(1, 4, false, '2020-02-10');
INSERT INTO orders VALUES(2, 2, true, '2021-01-02');
INSERT INTO orders VALUES(2, 3, false, '2021-02-07');
INSERT INTO orders VALUES(2, 1, true, '2021-01-19');
INSERT INTO orders VALUES(2, 4, false, '2021-03-08');
INSERT INTO orders VALUES(2, 1, true, '2021-03-10');
INSERT INTO orders VALUES(2, 3, true, '2021-03-01');
INSERT INTO orders VALUES(2, 4, true, '2020-02-09');
INSERT INTO orders VALUES(2, 2, true, '2020-04-29');
INSERT INTO orders VALUES(2, 1, false, '2020-06-01');
INSERT INTO orders VALUES(2, 1, true, '2021-01-11');
INSERT INTO orders VALUES(2, 1, false, '2020-01-15');
INSERT INTO orders VALUES(2, 4, false, '2020-09-30');
INSERT INTO orders VALUES(2, 1, false, '2020-06-17');
INSERT INTO orders VALUES(2, 2, true, '2019-08-08');
INSERT INTO orders VALUES(2, 1, true, '2019-04-06');
INSERT INTO orders VALUES(1, 3, false, '2021-02-06');
INSERT INTO orders VALUES(2, 4, true, '2021-03-09');
INSERT INTO orders VALUES(3, 4, false, '2021-01-26');
INSERT INTO orders VALUES(3, 2, true, '2021-01-03');
INSERT INTO orders VALUES(3, 1, false, '2021-02-16');
INSERT INTO orders VALUES(3, 1, false, '2021-03-01');
INSERT INTO orders VALUES(3, 2, false, '2021-02-05');
INSERT INTO orders VALUES(3, 3, false, '2021-01-28');
INSERT INTO orders VALUES(3, 4, false, '2020-03-15');
INSERT INTO orders VALUES(3, 2, true, '2020-01-15');
INSERT INTO orders VALUES(3, 2, false, '2019-08-18');
INSERT INTO orders VALUES(3, 3, true, '2020-03-01');
INSERT INTO orders VALUES(3, 4, false, '2020-03-05');
INSERT INTO orders VALUES(3, 4, false, '2020-04-29');
INSERT INTO orders VALUES(3, 2, true, '2020-03-27');
INSERT INTO orders VALUES(3, 1, true, '2019-03-26');
INSERT INTO orders VALUES(3, 1, false, '2020-07-16');
INSERT INTO orders VALUES(3, 4, false, '2020-09-15');
INSERT INTO orders VALUES(3, 4, true, '2020-04-07');
INSERT INTO orders VALUES(3, 4, false, '2021-02-24');
INSERT INTO orders VALUES(4, 4, true, '2021-01-19');
INSERT INTO orders VALUES(4, 4, true, '2021-01-21');
INSERT INTO orders VALUES(4, 1, true, '2021-02-06');
INSERT INTO orders VALUES(4, 1, false, '2021-03-09');
INSERT INTO orders VALUES(4, 2, true, '2021-01-29');
INSERT INTO orders VALUES(4, 3, true, '2021-01-18');
INSERT INTO orders VALUES(4, 2, false, '2020-02-17');
INSERT INTO orders VALUES(4, 1, true, '2020-03-29');
INSERT INTO orders VALUES(4, 3, false, '2020-08-08');
INSERT INTO orders VALUES(4, 2, true, '2019-06-11');
INSERT INTO orders VALUES(4, 4, true, '2020-02-13');
INSERT INTO orders VALUES(4, 4, false, '2020-04-07');
INSERT INTO orders VALUES(4, 2, false, '2020-05-10');
INSERT INTO orders VALUES(4, 4, true, '2019-09-18');
INSERT INTO orders VALUES(4, 2, false, '2020-04-06');
INSERT INTO orders VALUES(5, 1, false, '2021-01-01');
INSERT INTO orders VALUES(5, 3, true, '2021-03-15');
INSERT INTO orders VALUES(5, 1, true, '2021-03-01');
INSERT INTO orders VALUES(5, 2, true, '2021-02-02');
INSERT INTO orders VALUES(5, 4, true, '2021-01-14');
INSERT INTO orders VALUES(5, 1, true, '2021-03-13');
INSERT INTO orders VALUES(5, 1, false, '2020-01-02');
INSERT INTO orders VALUES(5, 3, true, '2020-03-16');
INSERT INTO orders VALUES(5, 3, false, '2020-03-29');
INSERT INTO orders VALUES(5, 2, true, '2020-04-19');
INSERT INTO orders VALUES(5, 4, true, '2020-04-06');
INSERT INTO orders VALUES(5, 4, true, '2020-01-30');
INSERT INTO orders VALUES(5, 2, false, '2019-09-01');
INSERT INTO orders VALUES(5, 3, true, '2020-03-22');
INSERT INTO orders VALUES(5, 4, true, '2020-03-03');
INSERT INTO orders VALUES(5, 1, true, '2020-04-15');
INSERT INTO orders VALUES(5, 2, false, '2020-01-01');
INSERT INTO orders VALUES(5, 4, false, '2020-07-30');
INSERT INTO orders VALUES(6, 1, false, '2021-01-02');
INSERT INTO orders VALUES(6, 1, false, '2021-01-18');
INSERT INTO orders VALUES(6, 3, false, '2021-02-07');
INSERT INTO orders VALUES(6, 3, false, '2021-03-04');
INSERT INTO orders VALUES(6, 2, false, '2021-03-05');
INSERT INTO orders VALUES(6, 4, false, '2021-02-01');
INSERT INTO orders VALUES(6, 2, false, '2021-01-25');
INSERT INTO orders VALUES(6, 1, false, '2020-01-11');
INSERT INTO orders VALUES(6, 1, false, '2020-01-19');
INSERT INTO orders VALUES(6, 2, true, '2020-02-25');
INSERT INTO orders VALUES(6, 4, false, '2020-03-04');
INSERT INTO orders VALUES(6, 2, false, '2020-06-05');
INSERT INTO orders VALUES(6, 4, false, '2020-04-15');
INSERT INTO orders VALUES(6, 3, false, '2020-02-25');
INSERT INTO orders VALUES(6, 1, false, '2020-03-02');
INSERT INTO orders VALUES(6, 3, true, '2020-05-18');
INSERT INTO orders VALUES(6, 4, false, '2020-05-07');
INSERT INTO orders VALUES(6, 4, false, '2020-09-04');
INSERT INTO orders VALUES(7, 1, true, '2021-01-08');
INSERT INTO orders VALUES(7, 4, true, '2021-01-09');
INSERT INTO orders VALUES(7, 4, true, '2021-02-01');
INSERT INTO orders VALUES(7, 4, true, '2021-02-22');
INSERT INTO orders VALUES(7, 3, true, '2021-03-06');
INSERT INTO orders VALUES(7, 2, true, '2021-02-27');
INSERT INTO orders VALUES(7, 3, true, '2021-03-01');
INSERT INTO orders VALUES(7, 2, true, '2021-03-15');
INSERT INTO orders VALUES(7, 4, true, '2020-08-09');
INSERT INTO orders VALUES(7, 3, true, '2020-01-15');
INSERT INTO orders VALUES(7, 4, true, '2020-07-22');
INSERT INTO orders VALUES(7, 1, false, '2020-02-21');
INSERT INTO orders VALUES(7, 4, true, '2020-03-19');
INSERT INTO orders VALUES(7, 2, true, '2020-04-01');
INSERT INTO orders VALUES(7, 1, true, '2020-10-15');
INSERT INTO orders VALUES(7, 4, false, '2020-09-07');
INSERT INTO orders VALUES(8, 4, false, '2020-02-01');
INSERT INTO orders VALUES(8, 3, false, '2020-11-06');
INSERT INTO orders VALUES(8, 2, true, '2020-03-08');
INSERT INTO orders VALUES(8, 4, false, '2020-12-15');
INSERT INTO orders VALUES(8, 3, true, '2020-11-07');
INSERT INTO orders VALUES(8, 1, true, '2020-10-26');
INSERT INTO orders VALUES(8, 3, false, '2021-01-01');
INSERT INTO orders VALUES(8, 3, true, '2021-01-21');
INSERT INTO orders VALUES(8, 1, true, '2021-02-11');
INSERT INTO orders VALUES(8, 1, false, '2021-02-13');
INSERT INTO orders VALUES(8, 1, false, '2021-03-05');
INSERT INTO orders VALUES(8, 4, true, '2021-03-16');
INSERT INTO orders VALUES(9, 3, true, '2021-01-01');
INSERT INTO orders VALUES(9, 3, false, '2021-01-29');
INSERT INTO orders VALUES(9, 2, false, '2021-02-13');
INSERT INTO orders VALUES(9, 2, false, '2021-03-09');
INSERT INTO orders VALUES(9, 4, true, '2020-01-01');
INSERT INTO orders VALUES(9, 1, false, '2020-05-29');
INSERT INTO orders VALUES(9, 2, true, '2020-07-13');
INSERT INTO orders VALUES(9, 3, false, '2020-12-09');
INSERT INTO orders VALUES(9, 2, true, '2020-10-01');
INSERT INTO orders VALUES(9, 3, false, '2020-01-03');
INSERT INTO orders VALUES(9, 4, true, '2020-02-05');
INSERT INTO orders VALUES(9, 4, false, '2020-04-08');
INSERT INTO orders VALUES(10, 1, true, '2021-01-09');
INSERT INTO orders VALUES(10, 1, true, '2021-03-03');
INSERT INTO orders VALUES(10, 1, false, '2021-03-114');
INSERT INTO orders VALUES(10, 2, true, '2021-02-09');
INSERT INTO orders VALUES(10, 3, true, '2021-02-06');
INSERT INTO orders VALUES(10, 3, true, '2020-02-10');
INSERT INTO orders VALUES(10, 4, true, '2020-04-15');
INSERT INTO orders VALUES(10, 3, false, '2020-05-24');
INSERT INTO orders VALUES(10, 4, true, '2020-06-10');
INSERT INTO orders VALUES(10, 2, true, '2020-09-15');
INSERT INTO orders VALUES(11, 4, true, '2021-01-08');
INSERT INTO orders VALUES(11, 4, true, '2021-02-09');
INSERT INTO orders VALUES(11, 1, true, '2021-03-15');
INSERT INTO orders VALUES(11, 1, true, '2020-01-28');
INSERT INTO orders VALUES(11, 3, true, '2019-02-19');
INSERT INTO orders VALUES(11, 1, false, '2018-04-15');
INSERT INTO orders VALUES(11, 3, false, '2020-05-09');
INSERT INTO orders VALUES(11, 2, true, '2020-11-10');
INSERT INTO orders VALUES(11, 2, false, '2020-12-24');
INSERT INTO orders VALUES(12, 2, false, '2021-03-06');
INSERT INTO orders VALUES(12, 2, false, '2021-02-01');
INSERT INTO orders VALUES(12, 3, false, '2021-01-22');
INSERT INTO orders VALUES(12, 3, true, '2020-02-05');
INSERT INTO orders VALUES(12, 4, false, '2020-03-06');
INSERT INTO orders VALUES(12, 2, true, '2020-05-24');
INSERT INTO orders VALUES(12, 4, false, '2020-10-05');
INSERT INTO orders VALUES(12, 1, false, '2020-11-07');
INSERT INTO orders VALUES(12, 1, true, '2020-12-21');


--QUERIES
--average per month
select 
    concat(
        CASE WHEN EXTRACT(MONTH FROM t.date)<10 THEN '0'
        END,
        EXTRACT(MONTH FROM t.date),'-',EXTRACT(year FROM t.date)) as month_of_the_year,
    avg(t.price) as average_sales from
        (SELECT orders.date,
            CASE WHEN orders.to_go='t' THEN coffees.price*0.9
                 ELSE coffees.price
            END
        FROM orders, coffees
        where coffees.id=orders.coffee_id) t
group by EXTRACT(MONTH FROM t.date),EXTRACT(year FROM t.date) order by month_of_the_year;


--the highest income of the last 10 months
select t4.month_of_the_year, t3.max from
    (select max(t2.sales) from  
        (select 
            concat(
                CASE WHEN EXTRACT(MONTH FROM t.date)<10 THEN '0'
                END,
                EXTRACT(MONTH FROM t.date),'-',EXTRACT(year FROM t.date)) as month_of_the_year,
            sum(t.price) as sales from    
                (SELECT t_all.date,t_all.price from  
                    (SELECT orders.date, 
                        CASE WHEN orders.to_go='t' THEN coffees.price*0.9
                            ELSE coffees.price
                        END
                    FROM orders, coffees
                    where coffees.id=orders.coffee_id
                    ) t_all 
                where t_all.date >  CURRENT_DATE - INTERVAL '10 months') t
            group by EXTRACT(MONTH FROM t.date),EXTRACT(year FROM t.date)
        ) t2
    ) t3, 

    (select 
        concat(
            CASE WHEN EXTRACT(MONTH FROM t.date)<10 THEN '0'
            END,
            EXTRACT(MONTH FROM t.date),'-',EXTRACT(year FROM t.date)) as month_of_the_year,
        sum(t.price) as sales from
            (SELECT t_all.date,t_all.price from     
                (SELECT orders.date, 
                    CASE WHEN orders.to_go='t' THEN coffees.price*0.9
                        ELSE coffees.price
                    END
                FROM orders, coffees
                where coffees.id=orders.coffee_id) t_all
            where t_all.date >  CURRENT_DATE - INTERVAL '10 months') t
        group by EXTRACT(MONTH FROM t.date),EXTRACT(year FROM t.date)
    ) t4

where t4.sales=t3.max;


--top 10 customers(customers that have most frequent visits) for last month
select customers.name, t3.count from
    (SELECT * FROM (select t.customer_id, count(t.customer_id)  from 
        (SELECT customer_id,date from orders where date >  CURRENT_DATE - INTERVAL '1 months') t
    group by t.customer_id order by customer_id) t2
    WHERE count = (
        select max(count) from 
            (select t.customer_id, count(t.customer_id)  from 
                (SELECT customer_id,date from orders where date >  CURRENT_DATE - INTERVAL '1 months') t
            group by t.customer_id order by customer_id
            ) t2
    )
) t3 join customers on customers.id=t3.customer_id;

































