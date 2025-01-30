# dbt applications
## Data Build Tool

[Docs](https://docs.getdbt.com/)

"dbt is a transformation workflow that helps you get more work done while producing higher quality results. You can use dbt to modularize and centralize your analytics code, while also providing your data team with guardrails typically found in software engineering workflows. Collaborate on data models, version them, and test and document your queries before safely deploying them to production, with monitoring and visibility." [source: dbt.com](https://docs.getdbt.com/introduction)

I found this database wrangling/managing tool online and found it quite impressive 'at first sight'. Here you find some application starting with a basic setup, a starter kit, in which I explain all dependencies that are required to set up a basic, but functional system.

## MS SQL server and dbt

### Setting up the server and database

I downloaded a **Machine in Production data** [csv file](https://www.kaggle.com/datasets/shivamb/machine-predictive-maintenance-classification) from Kaggle including Production data, which I uploaded to my local MS SQL server, FacilityManagement_Core database, Production1 table.

The MS SQL server 2022 instance was installed and set up earlier [MS download page](https://www.microsoft.com/en-us/sql-server/sql-server-downloads). Authentication was set to Microsoft User Authentication (to keep it simple).

An important information is the OLE DB Connector (ODBC) driver version, that is required for proper configuration of the dbt system. The (driver)[Download Microsoft ODBC Driver 18 for SQL Server (x64)](https://go.microsoft.com/fwlink/?linkid=2280794)
 name should be checked in the (installed) 
 ![Software list](images/ODBC_driver_version.png)
 
It should be ```'ODBC Driver 17 for SQL Server'``` or ...18... (on Windows OS). dbt 1.8+ version is compatible with both driver versions. 
 
The entire name should be copied and used... see later.
 

### Launching dbt on the MS SQL server

Follow the instructions here: 
[MSSQL-dbt setup](https://docs.getdbt.com/docs/core/connect-data-platform/mssql-setup)

After installing the dbt-core and dbt-sqlserver modules you have to chose from:
1. Authentication:
- SQL server / Windows credentials / Microsoft ENTRA ID
2. Encryption
- with (requires enabling https connection for the MS SQL server) / without (for local use only, not secure!)

See advised configuration parameters and config file at the **Common configuration** section of the MSSQL-dbt setup page (see link above).

Copy (or Git Clone) this project to a local folder. The root folder contains a main folder **MSSQL_dbt_starterpack**, with a very basic system just to check **dbt - MS SQL** co-operation / functionality and to start understanding dbt from the basics.

Create a specific folder for dbt project (like C:/.dbt) and copy the subfolder content of the **MSSQL_dbt_starterpack** folder to the above created folder, so that folder structure should look like:

```
.dbt
# |-- dbt_project.yml
# |-- profiles.yml
# |-- test
# |   |-- generic
# |   |    └── test_positive_values.sql
# |   |-- check_value_range.sql
# |   |-- check_value_range_pars.sql
# |
# |-- models
#     |-- staging
#     |   |-- stg_production.sql
#     |   |-- stg_event_sessions.sql
#     |
#     |-- production1.sql
#     |-- schema.yml
```

Check eand modify the ```profiles.yml``` configuration file, which resembles to this (Windows authentication, no encryption defined):

```
a_profile_name:				# chose some descriptive, but short name
  target: dev				# this is the selector of below defined target environment to run
  outputs:
    dev:					# Development environment
      type: sqlserver
      driver: 'ODBC Driver 17 for SQL Server' # (The ODBC Driver installed on your system)
      server: hostname or IP of your server
      port: 1433			#default port, check your SQL server connection config!
      database: databasename #database name on the SQL server
      schema: schema_name	# odb if Schema is not specified
      user: username		# authentication user name
      password: password	# authentication user password
```

When ```profiles.yml``` is correctly filled in with appropriate information,  
move into the ```.dbt``` folder in the python shell (command window with active Python environment), then run 

```dbt compile``` in python shell.

dbt compiles the pre-defined folder structure with the pre-defined sql queries.

Run one of these commands to check function:

1. ```dbt list --resource-type test``` - check whether pre-configured test has been compiled

Result should include:

```test_MSSQLDB.check_value_range_stg_production_ProcessTemp```

in general: ```ModelName.sqltestmodelname_stagingsqlname_DatabaseColumnName```

2. ```dbt test --select stg_production``` - run a specific test **stg_production** declared in ```schema.yml```
3. ```run test``` - a full system tets run, this time is the same as the 1st (being the model extremely simple, with 1 test only)

_________________________________________________

## Additional dbt information

### Meltano test environment (including GitHub virtual dev test option!)
Follow the detailed instructions in the Readme and by copying the code set, then running online the code will allow you to run test on a pre-created (DuckDB sample based) dataset.
[Meltano Jaffle shop example](https://github.com/meltano/jaffle-shop-template).

This is a fully functional dbt project for teaching, learning, writing, demoing, or any other scenarios where you can play around a basic project with a synthesized jaffle shop business (data).


Note that the original [dbt-labs Jaffle-Shop-Template](https://github.com/dbt-labs/jaffle-shop-template) has been archived in 2022 (thus it is a bit buggy) and is replaced by the Meltano template.
