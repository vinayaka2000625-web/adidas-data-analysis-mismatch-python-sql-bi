create database Adidas;
use adidas;
describe adidas_sales;

# HYPOTHESIS RELATED TO REVENUE LEAKAGE
#1. Is there a revenue mismatch in the data?
Select `Revenue Flag`,
count(*) as invoice_count,
sum(`Calculated Sales`) as "Total Sales" from adidas_sales
group by `Revenue Flag`;

#2. Which regions contribute most to revenue mismatch?
select Region, sum(`Revenue Variance`) as Total_Variance from adidas_sales
where `Revenue Flag` = "Mismatch"
group by Region
order by Total_Variance;

#3. Which sales method is causing the mismatch?
Select `Sales Method`, sum(`Revenue Variance`) As "Total Variance" from adidas_sales
Where `Revenue Flag` = "Mismatch"
group by `Sales Method`
order by "Total Variance";

#4. Which retailer have the highest mismatch?
Select `Retailer`, sum(`Revenue Variance`) As "Total Variance" from adidas_sales
Where `Revenue Flag` = "Mismatch"
group by `Retailer`
order by "Total Variance" ;

#5. Is pricing inconsistency a cause?
 Select `Retailer`, count(distinct `Price per Unit`) As "Price Variations" from adidas_sales
group by `Retailer`
having count(distinct `Price per Unit`) > 1 ;

#6. Did mismatch increase over time?
select DATE_FORMAT(`Invoice Date`, '%Y-%m') AS `Invoice Month`, sum(`Revenue Variance`) As "Month Variance" from adidas_sales
Where `Revenue Flag` = "Mismatch"
group by DATE_FORMAT(`Invoice Date`, '%Y-%m') 
order by `Invoice Month`;

# RELATED TO PRICING AND MARGIN EFFICIENCY
#7. Some products are sold at inconsistent prices across regions or sales methods
Select Product, Region, round(avg(`Price per Unit`), 2) As Avg_price,
round(avg(`Price Per Unit`) - avg(avg(`Price Per Unit`)) over (Partition by Product), 2) as Price_Deviation
from adidas_sales
group by Product, Region;

#8. Some sales methods have lower operating margins despite similar revenue
select `Sales Method`,sum(`Operating Profit`) As Total_Profit, sum(`Calculated Sales`) As Total_Sales,
round(sum(`Operating Profit`) * 100.0 / Nullif(sum(`Calculated Sales`), 0), 2) As Operating_Margin
from adidas_sales
group by `Sales Method`;

#9. Certain regions show weaker margins for the same product
select Product, Region, 
Round(sum(`Operating Profit`) * 100.0 / Nullif(sum(`Calculated Sales`), 0), 2) As Operating_Margin
from adidas_sales
group by Product, Region;





