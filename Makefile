#
# Install hugo:
#   brew install hugo
#
# Install sass:
#   npm install -g sass
#

USER=aelius
HOST=lynx.mythic-beasts.com
DIR=www/www.denhamvillage.uk/

build:
	sass \
	  themes/hugo-split-theme/static/assets/sass/split.scss \
	  themes/hugo-split-theme/static/assets/css/split.css
	hugo

deploy: build
	rsync -avz --delete --exclude .DS_Store public/ ${USER}@${HOST}:~/${DIR}

clean:
	find . -name .DS_Store -print -delete
	rm -f themes/hugo-split-theme/static/assets/css/split.css
	rm -Rf ./public
