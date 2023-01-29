# lesson20
step 1.
` AWS_ACCESS_KEY_ID=YOUR_KEY AWS_SECRET_ACCESS_KEY=YOUR_SECRET aws s3api create-bucket --bucket YOUR_BUCKET_NAME --region YOUR_REGION`

 step 2.
` docker build -t conduit-fe ./project-frontend`

 step 3.
` docker run --init \
 -e "AWS_ACCESS_KEY_ID=YOUR_KEY" \
 -e "AWS_SECRET_ACCESS_KEY=YOUR_SECRET" \
 -e "S3_BUCKET=YOUR_BUCKET_NAME" \
 -e "LOCAL_DIR=./build/" \
 conduit-fe`
