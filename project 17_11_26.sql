use glass
select * from [dbo].[Car_Data]
select * from [dbo].[Sales_data]
select * from [dbo].[Owners_data]
select * from [dbo].[Service_History]
select * from [dbo].[Insurance_data]


select Car_Data.[Car_ID]
      ,[Brand]
      ,[Model]
      ,[Year]
      ,[Fuel_Type]
      ,[Transmission]
      ,[Color]
      ,[Owner_Type]
      ,[Mileage_kmpl]
      ,[Price_Lakh]
      ,[Owner_Name]
      ,[Contact]
      ,[City]
      ,[Purchase_Year]
      ,[Sale_Price_Lakh]
      ,[Sale_Date]
      ,[Buyer_Name]
      ,[Service_Type]
      ,[Service_Date]
      ,[Service_Cost]
      ,[Service_Center]
      ,[Provider]
      ,[Policy_Number]
      ,[Expiry_Date]
      ,[Status] into master_tablu
      from Car_Data left join Insurance_data
      on Car_Data.Car_ID=Insurance_data.Car_ID 
      left join Owners_data on Owners_data.Car_ID=
      Car_Data.Car_ID left join Sales_data 
      on Sales_data.Car_ID=Car_Data.Car_ID 
      left join Service_History on
      Service_History.Car_ID=Car_Data.Car_ID

      select convert(int,'price_lakh') as priceee
      from master_tablu

      select * from master_tablu 
      alter table master_tablu
      alter column price_lakh int

      ---data cleaning----sql

     -- find the sum of service cost on the basis of fuel type
     select * from master_tablu

     select fuel_type,sum(service_cost) total
     from master_tablu group by fuel_type
    