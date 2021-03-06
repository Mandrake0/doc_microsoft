# Exchange Migration

Migration 2010 to 2016 [Deutsche Anleitung](https://www.frankysweb.de/howto-migration-von-exchange-2010-zu-exchange-2016/)

## Powershell status Migration

```powershell
// Migration Statistic
Get-MigrationUserStatistics -Identity "email@adress.com" -IncludeReport | Format-List Status,Error,Report

// Move Request 
Get-moverequest|get-moverequeststatistics

// List current state
Get-MoveRequest -Identity "email@adress.com" -TargetDatabases ("Mailbox Database")
```

## Database Healt and Reapair

**How to Repair a fault Exchange Database**  
Tutorial: https://practical365.com/exchange-server/fix-failed-database-content-index-exchange-2013/

**Healt state of Exchange Database**
```powershell
Get-MailboxDatabaseCopyStatus * | ft -auto
```

**Saved Folder**
```powershell
Get-MailboxDatabase "Mailbox Database" | select EdbFilePath
```

## Soft Migration Note
Migration from Productiv System.

*IMPORTANT: check if OLD Exchange Server has all Spervice Packs and Required Rollups Installed* 

1. Prepair New Exchange as Migration Guide (Migration 2010 to 2016)
2. Create some Test User
3. Migrate 1-2 Test User to New Exchange
4. Use a PC for Client Test ( change HOSTS File to new Exchange Server)
5. Test Outlook Access on PC with Accounts on *New* and *Old* Exchange Server
6. TEST *Send* / *Receive* on *Internal* and *External* E-Mail Address **NOTE:** Test also Accounts from old Mailbox Database
7. Change DNS from Exchange Server to New Server

## Public Folder Migration

*IMPORTANT: check if OLD Exchange Server has all Spervice Packs and Required Rollups Installed* 

[Deutsche Anleitung](https://www.frankysweb.de/migration-von-exchange-2010-zu-exchange-2016-teil-2/)

After the Command HoldforMigration it will block all Manual Exchange Public Folder Setup Functions! Old Server should be Prepaierd!!!! **otherwise you are fucked up!** 


New-Mailbox -PublicFolder Mailbox1 -HoldForMigration:$true

New-MigrationBatch -Name PFMigration -SourcePublicFolderDatabase (Get-PublicFolderDatabase -Server <OLDSERVER>) -CSVData (Get-Content \\<OLDSERVER>\C$\PFMigration\FolderToMailBoxMap.csv -Encoding Byte) -NotificationEmails MY@EMAIL.COM
Start-MigrationBatch PFMigration


STATUS:
Get-MigrationBatch


MIGRATION MANUAL LESEN:
Set-OrganizationConfig -PublicFoldersLockedForMigration:$true
Set-OrganizationConfig -PublicFoldersEnabled Remote
Complete-MigrationBatch PFMigration

TESTEN VON PUBLICFOLDER:
set-mailbox <ACCOUNT> -DefaultPublicFolderMailbox Mailbox1