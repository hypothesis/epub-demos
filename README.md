# Hypothesis EPUB Demo Content Library

A curated set of EPUBs for use in demonstrating Hypothesis integration with EPUB
readers, such as ReadiumJS.

This repository is hosted as a static site in an S3 bucket accessible at
`https://cdn.hypothes.is/demos/epub/content/`. You can [browse the library
here](https://cdn.hypothes.is/demos/epub/readium-js/index.html?epubs=%2Fdemos%2Fepub%2Fcontent%2Flibrary.json).

## Usage with ReadiumJS

Use the `epubs` query param to point an instance of the Readium cloud reader at
the `library.json` file from this repository.

For example, assuming that the Readium cloud reader's `index.html` file is
accessible at `http://localhost:8080/index.html` and that the URL of
`library.json` is `http://localhost:8080/hypothesis-epub-content/library.json`:

```
http://localhost:8080/index.html?epubs=http://localhost:8080/hypothesis-epub-content/library.json
```

If the Readium cloud reader is hosted on a different domain than this demo
content, the demo content must allow cross-origin access.

## Deploying content and demos to S3

To deploy updated content to the cdn.hypothes.is S3 bucket:

```sh
export AWS_ACCESS_KEY_ID=<access key for S3 bucket>
export AWS_SECRET_ACCESS_KEY=<secret key for S3 bucket>
./deploy-content.sh
```

To build and deploy the ReadiumJS and Epub.js viewers, see the [instructions for
deploying the viewers](docs/viewers.md).
