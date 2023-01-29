# lesson20
step 1. </br>
` AWS_ACCESS_KEY_ID=YOUR_KEY AWS_SECRET_ACCESS_KEY=YOUR_SECRET aws s3api create-bucket --bucket YOUR_BUCKET_NAME --region YOUR_REGION`

 step 2. </br>
` docker build -t conduit-fe ./project-frontend`

 step 3.</br>
` docker run --init \</br>
 -e "AWS_ACCESS_KEY_ID=YOUR_KEY" \</br>
 -e "AWS_SECRET_ACCESS_KEY=YOUR_SECRET" \</br>
 -e "S3_BUCKET=YOUR_BUCKET_NAME" \</br>
 -e "LOCAL_DIR=./build/" \</br>
 conduit-fe`
