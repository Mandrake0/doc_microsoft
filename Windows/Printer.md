# Printer

## Printer Repair process

1. Restart Spooler Service 
2. Remove old Jobs
3. Uninstall / Install Printer
4. Uninstall / Install Printer Driver
5. Use Installer from Printer Manufacture

## Remove Printer Job's

1. Go to Folder: ```%windir%\System32\spool\PRINTERS```
2. Stop Printer Spooler Service: ```net stop spooler ```
3. Dos Console: ```del %systemroot%\System32\spool\printers\* /Q /F /S```
4. Start Printer Spooler Service: ```net start spooler ```

**Note:** it needs to remove all files in the folder

## Remove Printer Driver

1. Command: ```Window + R```
2. Execute: ```printui /s /t2```