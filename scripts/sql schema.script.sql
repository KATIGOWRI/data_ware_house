/* 
--------------------------------------------------------------------------------------------------------
Create Database And Schemas
-----------------------------------------------------------------------------------
Script purpose:
   Thiws script Creates a new databse named "Datawarehouse' after checking if it already exsistd.
   If the database exists,it is dropped and recreated.Additionally,The script sets up three schemas within the database:'Bronzze','Sliver','Gold'.

Warning:
     Running this script will drop the entire "datawarehouse" database if it is exists.
	 All data in the database will be permanentely deleted.Proceed with dcautio n and ensure youn have proper backuos before running this script.
*/








use [master]

Create database Datawarehouse;

use Datawarehouse;

Create Schema Broze;
Create Schema Scliver;
Create Schema Gold;


