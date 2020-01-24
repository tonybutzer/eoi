instructions:
	echo aws s3 ls deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/070/2015/11/08/
	echo pip list |grep od
	echo  s3-find s3://deafrica-usgs-c2-data/usgs_ls8c_level2_2/157/*/*/*/*/*.yaml | s3-to-tar >a.tar
	echo dc-index-from-tar --e03 < a.tar

	echo more Makefile


up:
	docker-compose up -d

down:
	docker-compose down

build:
	echo update buildversion first Dockerfile
	python increment-version.py buildversion
	docker-compose build

build-just-indexc2:
	python increment-version.py tversion
	docker-compose build

exec:
	docker-compose exec s3finder bash

verify-elastic:
	docker-compose exec kibana curl elasticsearch:9200

refresh-data:
	rm -fr data/opt
	mkdir data/opt
	(cd data/opt; git clone http://github.com/tonybutzer/notebook)
	(cd data/opt; git clone http://github.com/tonybutzer/indexc2)

restart:
	docker-compose restart jupyter


increment:
	 # (export PAGER=cat; pydoc increment-version)
	python increment-version.py tversion


# ADMIN STUFF
# -------------------------------------------------------------------------------------

git:
	(cd /opt/indexc2 ; make)

install-docker:
	sudo apt-get update -y
	sudo apt-get install -y make
	sudo apt-get install -y awscli
	sudo apt install -y docker.io
	sudo docker run hello-world
	sudo usermod -aG docker ${USER}
	sudo chmod 666 /var/run/docker.sock
	echo logout PLEASE!


install-compose:
	sudo apt install -y docker-compose


group:
	sudo usermod -aG docker ${USER}

# OLD STUFF Purge 


test-index-lib:
	docker-compose exec jupyter python3 /opt/indexc2/lib/tests/test_xml.py

