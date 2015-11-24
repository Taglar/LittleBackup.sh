# 1. Set [BackupDir] to the dir where the file should be stored
# 2. Set [StoreDir] to the files wich will be backuped
# 3. Set [BackupDir2] to the first path where the files can be deleted
# 4. Set the [user]:[group] to the new owner with the [BackupDir] path

tar cfz /[BackupDir]/backup-$(date +%Y-%m-%d).tar.gz /[StoreDir]/Sample*.jpg
rm /[BackupDir2]/Sample*.jpg
chown [user]:[group] /[BackupDir]/backup-$(date +%Y-%m-%d).tar.gz
exit 0
