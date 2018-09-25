--Create database
CREATE DATABASE StudyApp   
    ON (FILENAME = 'H:\Documents\UCOL\D202 - Software Process\Assignment\Group assignment\sql\Database files\Soft_Data.mdf'),   
    (FILENAME = 'H:\Documents\UCOL\D202 - Software Process\Assignment\Group assignment\sql\Database files\Soft_Log.ldf')   
    FOR ATTACH;
GO

--Find database files
select * from sys.database_files
go