default: build

clean:
	rm -rf build

build: clean
	hugo

publish: build
	gsutil rsync -d -r ./build gs://chinmaygarde.com/

server:
	hugo -D server
