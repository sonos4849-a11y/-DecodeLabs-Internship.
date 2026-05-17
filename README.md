DATA CLEANING \ EXPLORATORY DATA ANALYSIS \SQL DATA ANALYSIS \DATA VISUALIZATION
### What the Data Says (Insights):

1.  **Dataset Overview**: We are working with sales order data containing details like `OrderID`, `Date`, `CustomerID`, `Product`, `Quantity`, `UnitPrice`, `ShippingAddress`, `PaymentMethod`, `OrderStatus`, `TrackingNumber`, `ItemsInCart`, `CouponCode`, `ReferralSource`, and `TotalPrice`.
2.  **Data Volume**: The dataset initially contains 1200 sales records.
3.  **Missing Data**: Only the `CouponCode` column has missing values (309 entries). All other columns are complete.
4.  **Duplicate Records**: There are no duplicate rows in the dataset, indicating good data integrity in terms of unique order entries.
5.  **Data Types**: The `Date` column is correctly identified as `datetime`. `Quantity` and `ItemsInCart` are numerical integers. `UnitPrice` and `TotalPrice` were initially floats but have been converted to integers.
6.  **`TotalPrice` Distribution**: The `TotalPrice` distribution is **positively skewed (skewed to the right)**. This means a majority of transactions have lower total prices, but there's a longer tail of transactions with significantly higher values. The mean (`1053.49`) is notably higher than the median (`823.0`), which is characteristic of a right-skewed distribution.
7.  **Outliers in `TotalPrice`**: We identified 8 outliers in `TotalPrice` using the Interquartile Range (IQR) method. Removing these outliers slightly reduced the mean and median, indicating their influence on the central tendency.
8.  **Correlations**: There are strong positive correlations between:
    *   `TotalPrice` and `Quantity` (approx. 0.61)
    *   `TotalPrice` and `UnitPrice` (approx. 0.71)
    *   `Quantity` and `ItemsInCart` (approx. 0.65)
    These correlations confirm that the total price is strongly driven by the quantity and unit price of products, and customers buying more of a specific product also tend to have more items in their cart.

### What We Built from This Data (Analysis & Transformations):

1.  **Data Cleaning**: We loaded the data, performed an initial inspection, identified and then handled missing values by dropping rows where `CouponCode` was missing, creating a `df_clean` DataFrame. We also checked for and confirmed the absence of duplicate rows.
2.  **Data Type Conversion**: We converted the `TotalPrice` and `UnitPrice` columns from float to integer types for consistency and simpler representation.
3.  **Outlier Detection and Handling**: We implemented two methods (IQR and Z-score) to detect outliers in the `TotalPrice` column. Based on the IQR method, we created `df_no_iqr_outliers` to analyze the data without these extreme values.
4.  **Descriptive Statistics**: We calculated and compared the mean, median, and mode of `TotalPrice` both before and after outlier removal to understand the impact of these extreme values.
5.  **Data Visualization**: We generated several plots:
    *   Boxplots showing the distribution of `TotalPrice` before and after outlier removal.
    *   A histogram with KDE (Kernel Density Estimate) to visualize the shape and skewness of the `TotalPrice` distribution after outlier removal.
    *   A correlation heatmap to visually represent the relationships between numerical features.


6.  **Predictive Modeling**: With a cleaned and understood dataset, predictive models could be built to forecast sales, identify potential high-value customers, or predict product demand.
