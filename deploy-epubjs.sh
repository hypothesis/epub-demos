#!/bin/sh

# A script for uploading Hypothesis-enabled Epub.js to an S3 bucket.
# It should be run from the `hypothesis-reader` repository.

# Before running this script install the aws [1] CLI tools and set the
# `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` env vars to keys with access
# to the `cdn.hypothes.is` bucket.
#
# [1] https://aws.amazon.com/cli/

S3_URL=s3://cdn.hypothes.is/demos/epub/epub.js

# Sync demo sources
aws s3 sync \
  --acl public-read \
  --exclude 'node_modules/*' \
  --exclude '.git/*' \
  --exclude '*.swp' \
  . $S3_URL

# Sync JS dependencies
aws s3 sync --acl public-read node_modules/epubjs $S3_URL/node_modules/epubjs
aws s3 sync --acl public-read node_modules/jszip $S3_URL/node_modules/jszip
