default: build

clean:
	rm -rf build

build: clean
	mkdir build
	cp index.html build/
	cp 404.html build/

publish: build
	gsutil rsync -d -r ./build gs://chinmaygarde.com/
