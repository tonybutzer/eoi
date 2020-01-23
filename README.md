# eoi
study eo-datasets and indexing


## Kirill and Duncan Help

es, did you get the later email that have the info from the web page?

Plus Kirill just pointed out the line at the very end for indexing should be 
s3-find s3://<s3 bucket path for a single product>/*/*.yaml | s3-to-tar | dc-index-from-tar --eo3

The later email;

root@user-africa-dev-pod:~# datacube system init --no-init-users

Initialising database...

Created.

Checking indexes/views.

Done.

5.            Install some extra tools for indexing:

6.   root@user-africa-dev-pod:/opt/odc# pip install --extra-index-url="https://packages.dea.gadevs.ga" \

7.   odc-apps-cloud      odc-apps-dc-tools

8.            Add the MetadataType and Product:

9.   root@user-africa-dev-pod:/opt/odc# datacube metadata add https://github.com/digitalearthafrica/config/raw/usgs-collection2/products/eo3_landsat_ard.odc-type.yaml

10. root@user-africa-dev-pod:/opt/odc# datacube product add https://github.com/digitalearthafrica/config/raw/usgs-collection2/products/usgs-level2-collection2-sample.odc-product.yaml

11.         Find and index the datasets:

12. $ s3-find s3://<s3 bucket path for a single product>/*/*.yaml | s3-to-tar | dc-index-from-tar
