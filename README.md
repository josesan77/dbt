# dbt applications

## Data Build Tool (dbt) - 'quick about'

[dbt docs](https://docs.getdbt.com/)

"dbt is a transformation workflow that helps you get more work done while producing higher quality results. You can use dbt to modularize and centralize your analytics code, while also providing your data team with guardrails typically found in software engineering workflows. Collaborate on data models, version them, and test and document your queries before safely deploying them to production, with monitoring and visibility." [source: dbt.com](https://docs.getdbt.com/introduction)

-------------------------------------

I found this database wrangling/managing tool online and found it quite impressive immediately 'at first sight'. Here you find some application 

1. starting with a basic setup, a starter kit, in which I explain all dependencies that are required to set up a basic, but functional system.
[dbt starter kit](MSSQL_dbt_starterpack)
2. an advanced database staging and testing setup (on the same dataset as above).
[dbt advanced kit](MSSQL_dbt_elevated)

Both examples are based on a local MS SQL server, with prepared Factory dataset (from Kaggle).

dbt is running in Python runtime environment and uses JINJA2 dynamic referencing giving high variability to the static SQL queries. See some DML, DDL and test-query examples in [SQL snippets](SQL_snippets) folder.

I recommend starting with the first one, dive in the details, understand it, especially the naming (referencing) restrictions, then move to the next level.

-----------------------------------

## Additional dbt information

### Get started with dbt - @ dbt.com
In general I recommend the tutorials found on the provider's website. It can be useful if 1) another database is planned to be used 2) special staging/tetsing needs has to be met, ...

[Starter tutorial](https://docs.getdbt.com/docs/get-started-dbt)

### Meltano test environment (including GitHub virtual dev test option!)
Follow the detailed instructions in the Readme and by copying the code set, then running online the code will allow you to run test on a pre-created (DuckDB sample based) dataset.
[Meltano Jaffle shop example](https://github.com/meltano/jaffle-shop-template).

This is a fully functional dbt project for teaching, learning, writing, demoing, or any other scenarios where you can play around a basic project with a synthesized jaffle shop business (data).

Note that the original [dbt-labs Jaffle-Shop-Template](https://github.com/dbt-labs/jaffle-shop-template) has been archived in 2022 (thus it is a bit buggy) and is replaced by the Meltano template.

### Mayra Pena's handful dbt example collection
[Ultimate dbt Jinja Functions Cheat Sheet](https://datacoves.com/post/dbt-jinja-functions-cheat-sheet)