# Dockerized Code Composer Studio 9 for C55X + DSP/BIOS 5.42.

This image is used for automated build of CCS projects for C55XX processor family.

## Building project with this image

Run this image in a directory with your CCS project giving first argument as a project name to build it:

```
docker run --rm -it -v "${PWD}:/src" ccs-c55x-docker my-project/Debug
```

## How to update CCS and BIOS tarball

You will find `install.sh` script under `install` directory.
This script downloads CCS and BIOS installation files and installs them into current directory according to settings (`bios_responses.txt` and `ccs_responses.txt`).
Then you need to run CCS and update Eclipse configuration with DSP/BIOS tools (Eclipse usually recognizes new tools automatically).
Finally, you create tarball `ccs.tar.gz`.
