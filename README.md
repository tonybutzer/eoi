# eoi
study eo-datasets and indexing


## Package Info

https://packages.dea.gadevs.ga/

```
wget odc_apps_dc_tools-0.1.dev421+gf921129/odc/apps/dc_tools
```

- Includes index from tar code and a readme

- more to come ...

## Repos





# WIP

## Learn about s3-find

## Kirill and Duncan Help


Plus Kirill just pointed out the line at the very end for indexing should be 
```
s3-find s3://<s3 bucket path for a single product>/*/*.yaml | s3-to-tar | dc-index-from-tar --eo3
```

The later email;

```
root@user-africa-dev-pod:~# datacube system init --no-init-users
```

Initialising database...

Created.

Checking indexes/views.

Done.

5.            Install some extra tools for indexing:

```
root@user-africa-dev-pod:/opt/odc# pip install --extra-index-url="https://packages.dea.gadevs.ga" \
odc-apps-cloud      odc-apps-dc-tools
```


8.            Add the MetadataType and Product:

```
root@user-africa-dev-pod:/opt/odc# datacube metadata add https://github.com/digitalearthafrica/config/raw/usgs-collection2/products/eo3_landsat_ard.odc-type.yaml
```

```
root@user-africa-dev-pod:/opt/odc# datacube product add https://github.com/digitalearthafrica/config/raw/usgs-collection2/products/usgs-level2-collection2-sample.odc-product.yaml
```

11.         Find and index the datasets:

```
s3-find s3://<s3 bucket path for a single product>/*/*.yaml | s3-to-tar | dc-index-from-tar --eo3
# $ s3-find s3://<s3 bucket path for a single product>/*/*.yaml | s3-to-tar | dc-index-from-tar
```
