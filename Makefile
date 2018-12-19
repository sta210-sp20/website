REMOTEUSER ?= mt324
HOST ?= shark.stat.duke.edu
DIR ?= /web/isds/docs/courses/Spring19/sta199.001
REMOTE ?= $(REMOTEUSER)@$(HOST):$(DIR)

all:
	hugo


.PHONY: clean
clean:
	rm -rf docs/*

push-img: 
	cp favicon.ico docs/
	

push: all
	rsync -azv --delete  --exclude='.DS_Store'  docs/ $(REMOTE)

unbind:
	lsof -wni tcp:4000

serve:
	hugo server --watch
