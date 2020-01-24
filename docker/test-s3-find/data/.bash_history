s3-find --help
aws s3 ls
aws s3 ls deafrica-usgs-c2-data
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015/
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015/11/
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015/11/08/
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015/11/08/
aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015/*/*/*.yaml
s3-find s3://deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015/*/*/*.yaml
s3-find s3://deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/*/*/*/*.yaml
s3-find s3://deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/*/*/*/*/*.yaml
s3-find s3://deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/*/*/*/*/*.yaml | s3-to-tar >a.tar
dc-index-from-tar --e03 < a.tar
ls
tar tvf a.tar 
pip list |grep od
ls
dc-index-from-tar --help
dc-index-from-tar --e03 <a.tar
dc-index-from-tar --eo3 <a.tar
