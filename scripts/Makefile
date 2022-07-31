SCRIPTS = '${HOME}/scripts'

help:
	@echo 'Makedo Utility'
	@echo ''
	@echo ''

jpegs:
	find . -type f -name '*.jpg' -print0 | xargs -0 rename 's/\.jpg/\.jpeg/'

archive:
	# move current directory to an archive
	bash ${SCRIPTS}/archive.sh

clean:
	# exif cleaner

venv: venvon
    python -m venv venv
	source ./venv/bin/activate
