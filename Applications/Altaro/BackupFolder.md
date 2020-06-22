# Backup Folder

## Safe Manual Cleanup 

**When the Folder has less than 2GB Cleanups won't work**

The *only* things you can safely remove are the below:

- Go to **backuplocation**\AltaroV7\ and if there is 'AltaroTrash' folder delete it.
- Go to **backuplocation**\AltaroV7\ and run a windows search for *.old and delete all returned files.


## If all Fails


1. rebuild process for the corrupted Lifetime database, this is a long process and can take a long time (even days), all services need to be stopped until the rebuild is finished so no operations can run such as backups/restores, and it still is not guaranteed that it will solve the issue, since there may be other damaged files
2. Start backups from scratch for only for the affected VM

## Ressources

https://help.altaro.com/support/solutions/articles/43000486133

optimisatzion tool: https://help.altaro.com/support/solutions/articles/43000486141
