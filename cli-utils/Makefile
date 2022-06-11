UTIL = '${HOME}/cli-utils'

help:
	@echo 'Makedo Utility'
	@echo ''
	@echo ''

update:
	sudo bash ${UTIL}/update.sh

jpegs:
	find . -type f -name '*.jpg' -print0 | xargs -0 rename 's/\.jpg/\.jpeg/'

archive:
	# move current directory to an archive
	bash ${util}/archive.sh

clean:
	# exif cleaner

venvon:
    source ./venv/bin/activate

venvoff:
    source ./venv/bin/deactivate

venv: venvon
    python -m venv venv

ansible-tempalte:
    # invloke role to template