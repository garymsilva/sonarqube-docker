# make scan service=my_app
.PHONY: scan
scan:
	docker-compose run --rm -v "$(shell pwd)/$(service):/usr/src" sonar-scanner
#