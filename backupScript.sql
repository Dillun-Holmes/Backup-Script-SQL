BEGIN
    DECLARE @BackupPath NVARCHAR(255)
    DECLARE @BackupFileName NVARCHAR(255)
    DECLARE @DateSuffix NVARCHAR(10)

    -- Set the backup path
    SET @BackupPath = 'D:\sql\'

    -- Generate date suffix in the format YYYYMMDD for the current date
    SET @DateSuffix = CONVERT(NVARCHAR, GETDATE(), 112)

    -- Construct the backup file name with the date suffix for the current date
    SET @BackupFileName = @BackupPath + 'AnimalDatabase_' + @DateSuffix + '.bak'

    -- Perform the backup with the generated file name for the current date
    BACKUP DATABASE [AnimalDatabase] TO DISK = @BackupFileName WITH INIT;
END