CREATE DATABASE employee;
USE employee;
SHOW DATABASES;
SHOW tables;
#How to use where commands
SELECT *FROM `dataset for data analytics`
where  `UnitPrice` >600
AND `Quantity` >4

#How to use order by command
ORDER BY `UnitPrice` DESC;

#How to use count command
SELECT COUNT(*)
FROM `dataset for data analytics`;


#How to use average command 
SELECT AVG(`UnitPrice`)
FROM `dataset for data analytics`;

#How to use minimum command 
SELECT MIN(`UnitPrice`)
FROM `dataset for data analytics`;

#How to use sum command
SELECT SUM(`UnitPrice`)
FROM `dataset for data analytics`;

#top 5
SELECT *
FROM `dataset for data analytics`
LIMIT 5;

# How to use group by command
SELECT `ReferralSource`, COUNT(*)
FROM `dataset for data analytics`
GROUP BY  `ReferralSource`;



 
