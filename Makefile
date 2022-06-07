setup:
	git rm themes/ananke
	git submodule add --force https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke

build: clean
	hugo

deploy:
	aws s3 sync public/ s3://itsdaveba-hugo-static-website/ --delete

clean:
	rm -rf public