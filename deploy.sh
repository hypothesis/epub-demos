#!/bin/sh

# Before running this script install the aws [1] CLI tools and set the
# `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` env vars to keys with access
# to the `cdn.hypothes.is` bucket.
#
# [1] https://aws.amazon.com/cli/

aws s3 sync \
  --acl public-read \
  --exclude '.git/*' \
  --exclude '*.swp' \
  . s3://cdn.hypothes.is/demos/epub/content
