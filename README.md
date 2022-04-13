# VSCode Extension Builder Docker

A small build environment for VSCode Extensions.

<p>
<img src="https://img.shields.io/github/license/sandr01d/vsce-builder-docker"/>
</p>

## Usage

You need to have docker installed and the docker daemon running.  
Clone this repository and build the docker image

```bash
git clone https://github.com/sandr01d/vsce-builder-docker.git
docker build -t vsce-builder vsce-builder-docker
```

To build an extension, run
```bash
docker run --rm -tv $(pwd)/<RELATIVE-PATH-TO-EXTENSION>/:/package vsce-builder
```
**The options used here are:**
|             |             |
|-------------|-------------|
| --rm        | Automatically removes the container when it exits.
| -t          | Opens a pseudo TTY so the output can be observed.
| -v          | Mounts the following directory as a volume.
| ``$(pwd)``  | prints out the path to the current directory, so a relative path can be used.
| /package    | Is the volume defined in the docker file.

## Limitations

Dependencies are only installed (in the container) using npm, other package managers like yarn or webpack are not supported. The reason for this is my desire to keep things as simple as possible. They can be easily added by modifiying the docker file though.
