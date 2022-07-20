#
# Install hugo:
#   brew install hugo
#
# Install sass:
#   npm install -g sass
#

build:
	sass \
	  themes/hugo-split-theme/static/assets/sass/split.scss \
	  themes/hugo-split-theme/static/assets/css/split.css
	hugo

clean:
	find . -name .DS_Store -print -delete
	rm -f themes/hugo-split-theme/static/assets/css/split.css
	rm -Rf ./public
