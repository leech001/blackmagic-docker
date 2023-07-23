docker build . -t blackmagic
$id = & docker create docker.io/library/blackmagic:latest
docker cp ${id}:/blackmagic/src/blackmagic.bin .
docker cp ${id}:/blackmagic/src/blackmagic.elf .
docker rm -v $id