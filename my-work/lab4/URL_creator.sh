#!bin/bash

BUCKETNAME="ds2022-xxe9ff"
FILE_PATH="$1"
S3_KEY=(basename "$FILE_PATH")
EXPIRATION_TIME=604800

if [ -z "FILE_PATH" ]; then
	echo "Usage: $0 <file_path>
	exit 1
fi

echo "uploading $FILE_PATH to s3:https://$BUCKETNAME/$S3_key ..."
aws s3 cp "$FILEPATH" s3://$BUCKETNAME/$S3_key"

if [ $? -eq0 ]; then
	echo "sucess!"
else
	echo "upload failed"
	exit 1
fi

echo "generating pre signed-url that will expire in $EXPIRATION_TIME seconds "
PRESIGNED_URL=$(aws s3 presign --expires in $EXPIRATION_TIME "s3://$BUCKET_NAME/S3_key")

if ![ $? -eq0 ]; then
	echo "failed to generate"
fi









