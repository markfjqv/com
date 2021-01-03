publish: clean
	hugo
	gsutil rsync -d -r ./build gs://chinmaygarde.com/

clean:
	rm -rf build
