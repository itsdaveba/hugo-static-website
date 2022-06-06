setup:
	git rm themes/ananke
	git submodule add --force https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke

build: clean
	hugo

clean:
	rm -rf public