#!/bin/sh
aws s3 sync "${LOCAL_DIR}" s3://"${S3_BUCKET}"