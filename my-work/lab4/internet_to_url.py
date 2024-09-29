import boto3
import requests
import logging
from botocore.exceptions import ClientError

s3 = boto3.client('s3', region_name="us-east-1")

file_url = input("what is the URL of the file you would like to save?: ")

local_filename = input("what do you want to name this file? (name.jpg,img,pdf): ")

bucket = input("what bucket do you want to put this into?: ")

s3_key = input("what should be the key(filename) in the desired bucket?: ")

def download_file(url, filename):
    response = requests.get(url, stream=True)
    if response.status_code == 200:
        with open(filename, 'wb') as file:
            for chunk in response.iter_content(chunk_size = 8192):
                file.write(chunk)
        print(f"file downloaded sucessfully, moving to next step")
    else:
        print(f"failed to download")
        exit(1)

def upload_to_s3(loca_filename, bucket, s3_key):
    try:
        s3.upload_file(local_filename, bucket, s3_key)
        print(f"File uploaded successfuly to s3, next step...")
    except Exception as e:
        print(f"Failed to upload file to s3")
        exit(1)

def create_presigned_url(bucket, key, expiration=604800):
    try: 
        response = s3.generate_presigned_url(
            'get_object',
            Params={'Bucket': bucket, 'Key': key},
            ExpiresIn=expiration
            )
        return response
    except Exception as e:
        print(f"failed to create presigned url {e} ")
        return None

download_file(file_url, local_filename)
s3.upload_file(local_filename, bucket, s3_key)

url = create_presigned_url(bucket, s3_key)
if url:
    print(f"Presigned URL for the file: {url}")


