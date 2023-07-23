# Docker image to build BlackMagic Probe binary

Black Magic Probe project https://github.com/blackmagic-debug/blackmagic

## Build
1. Clone this repo
2. Run build.ps1 on you WIN machine
3. Get blackmagic.bin on project directory

## Target paltform

The target platform is set in the docker file
```
RUN make PROBE_HOST=blackpill-f401cc
```