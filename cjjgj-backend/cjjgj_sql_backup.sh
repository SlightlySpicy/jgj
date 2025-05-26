#!/bin/bash
 
# 设置数据库的连接信息
DB_USER="jgj"
DB_PASSWORD="Jgj@123456"
DB_HOST="127.0.0.1"
DB_NAME="dgp_cjjgj"
 
# 创建备份目录
BACKUP_DIR="/data/mysql_data_backup"
mkdir -p "$BACKUP_DIR"
 
# 创建备份文件的时间戳
TIMESTAMP=$(date +"%F_%H%M%S")
BACKUP_FILE_GZIP="$BACKUP_DIR/$DB_NAME-$TIMESTAMP.sql.gz"
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$TIMESTAMP.sql"
 
# 执行mysqldump备份命令
mysqldump -u "$DB_USER" -p"$DB_PASSWORD"  -h "$DB_HOST" "$DB_NAME" |gzip > "$BACKUP_FILE_GZIP"
mysqldump -u "$DB_USER" -p"$DB_PASSWORD"  -h "$DB_HOST" "$DB_NAME" > "$BACKUP_FILE"
 
# 如果需要，可以添加更多的备份选项，例如 --single-transaction 或 --lock-tables
 
# 日志记录
echo "Database backup successful: $BACKUP_FILE"

# 删除过期备份文件
find $BACKUP_DIR -mtime +5 -name "$DB_NAME-*.sql" -exec rm -rf {} \;
find $BACKUP_DIR -mtime +15 -name "$DB_NAME-*.sql.gz" -exec rm -rf {} \;

