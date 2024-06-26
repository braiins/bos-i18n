.DEFAULT: default
default:
	@echo "Please specify a target!"

.PHONY: format
format:
	yarn biome check --apply .

.PHONY: checkPoFiles
checkPoFiles:
	yarn run tsx ./.bin/checkPoFiles.mts . --filename="frontend"

.PHONY: validate
validate: format checkPoFiles
