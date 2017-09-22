# Hypothesis-enabled EPUB Viewers

The viewers are hosted in the cdn.hypothes.is S3 bucket and are publicly accessible at:

**ReadiumJS**: https://cdn.hypothes.is/demos/epub/readium-js/index.html.
**Epub.js**: https://cdn.hypothes.is/demos/epub/epub.js/index.html

## Building and deploying

### readium-js

1. Follow the steps at https://gist.github.com/JCCR/105b17e9d10f26722a24e1c6678f9ae4 to check out
   Readium JS and create a build with Hypothesis enabled.

   Check out the `hypothesis-demo` branch in the submodules `readium-js-viewer`,
   `readium-js` and `readium-shared-js`. See [Slack
   chat]https://annotating.slack.com/archives/C5CE202DT/p1505751892000282)

2. Test the demo locally to make sure it is working
3. Log in to our AWS management console at https://aws.hypothes.is
4. Go to the `cdn.hypothes.is` bucket and the `demos/epub/readium-js` folder
5. Upload the _contents_ of the `dist/cloud-reader` and folder from the local readium-js repo into the `readium-js` folder in S3 and also upload the `epub_content` folder. Make sure that **public read access** is granted for these files.
6. Go to https://cdn.hypothes.is/demos/epub/readium-js/index.html and check that Readium works and that Hypothesis annotations are working

### Epub.js

1. Check out the [hypothesis-reader](https://github.com/futurepress/hypothesis-reader) repository
2. Follow the instructions in that repository to install dependencies and build the demo
3. Test the demo locally to make sure it is working
4. Deploy it to S3 using the `deploy-epubjs.sh` script.
5. Go to https://cdn.hypothes.is/demos/epub/epub.js/index.html and check that Epub.js works and that Hypothesis annotations are working
