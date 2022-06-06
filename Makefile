setup:
	git rm themes/ananke
	git submodule add --force https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke

build: clean
	hugo -D

deploy:
	hugo deploy

clean:
	rm -rf public