import boto3

s3 = boto3.client('s3', region_name='us-east-1')

bucket = 'ds2022-xxe9ff'
local_file = '/Users/tylerabele/f35.jpg'
s3_key = 'f35.jpg'


with open(local_file, 'rb') as file_data:
    resp = s3.put_object(
        Body = local_file,
        Bucket = bucket,
        Key = s3_key,
        ACL='public-read'
    )

print(f"file uploaded successfully")
