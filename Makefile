build: buildfocal buildnoble
	echo "build done"

buildfocal:
	docker build -t docker-base:focal focal
	echo "build focal done"
		
buildjammy:
	docker build -t docker-base:jammy jammy
	echo "build jammy done"

buildnoble:
	docker build -t docker-base:noble noble
	echo "build noble done"
