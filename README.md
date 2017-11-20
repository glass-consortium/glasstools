## Singularity image for GLASS workflows

<span><a href="https://www.singularity-hub.org/collections/262"><img src="https://img.shields.io/badge/Singularity-1.1.2s2-brightgreen.svg" alt="Singularity 1.1.2s2" /></a> <a href="https://hub.docker.com/r/glasstools/keystone/"><img src="https://img.shields.io/badge/Docker-1.2.2-brightgreen.svg" alt="Docker 1.2.2" /></a> <a href="https://github.com/glass-consortium/glassdocs/issues"><img src="https://img.shields.io/github/issues/glass-consortium/glassdocs.svg" alt="GitHub issues" /></a></span>

>18-Nov-2017   
>v1.1.2s2  

Build details for `glass-consortium/glasstools` images. 

**PS:** Documentation to run workflows is not yet ready. Visit https://docker.glass-consortium.org for updates.

#### Current Build

>See below on how to install Singularity version: `2.4-install_718360bb.g718360bb`   

```sh
singularity pull shub://glass-consortium/glasstools:beta
```

Automated build, when successfully built is available at Singularity Hub: https://www.singularity-hub.org/collections/262 with image tag: `glass-consortium/glasstools:beta` 

*   Download using [Singularity](http://singularity.lbl.gov), v2.4 or higher.
*   Avoid running container as root. Singularity images does not require root privileges to run workflows.
*   Default bind while running workflow is user ${HOME}.
*   For better potability and disk mounts, ask your system admin to configure `/etc/singularity/singularity.conf` and set `enable overlay = yes`. Read http://singularity.lbl.gov/docs-mount for details.

#### Manual build

We recommend pulling pre-built Singularity image from Singularity registry at https://www.singularity-hub.org/collections/262

Manual build is for improvement and debugging of current beta image, especially with reducing image size and adding shortcodes to additional GLASS workflows.

```sh
git clone https://github.com/glass-consortium/glasstools.git
cd build

singularity build glasstools_keystone_beta.simg Singularity.beta
singularity inspect glasstools_keystone_beta.simg
```

See file: *glasstools_keystone_beta.simg.inspect.log* for image details.

***

### How to install Singularity

*   One time installation, **requires admin privileges**

>Please ask your system administrator to install Singularity with following version. While installation should be done by IT administrator, running GLASS workflows does not require `sudo` privilege. Also, unlike potential root escalation while running docker container, Singularity based workflows are more isolated from host environment and less vulnerable to root escalation. Visit http://singularity.lbl.gov/user-guide#security-and-privilege-escalation for more on security.  

*  GLASS workflows are using Singularity `v2.4`  

>Full version at the time of install: v2.4-install_718360bb.g718360bb  
>Commit: https://github.com/singularityware/singularity/commit/718360bb20b66cbafb85dd9d0a73bd6bb60c7a1f 

*   For better compatibility with pre-built GLASS image, please install Singularity from forked reposioty as follows:

```sh
umask 0022

git clone https://github.com/glass-consortium/singularity.git
cd singularity

## confirm last commit ID to be 718360bb20b66cbafb85dd9d0a73bd6bb60c7a1f for HEAD -> master branch
git log --name-status HEAD^..HEAD

## fork master branch to a new branch, named install_718360bb
git checkout -b install_718360bb
git status
```

>This will show...  

>On branch install_718360bb  
>nothing to commit, working tree clean  

```sh 
./autogen.sh && ./configure --prefix=/usr/local && make

# return exit code for compilation status
echo $?

## only one time, we need root privileges
sudo make install

## return to non-root user environment
sudo -k

cd ${HOME} # non-root user

singularity --version
```

This will show `2.4-install_718360bb.g718360bb`. If so, installation is identical to an environment used to build GLASS Singularity image.

### Bugs, issues

Report issues related to setting up Docker/Singularity image and running workflows at https://github.com/glass-consortium/glassdocs/issues.

### Credits

*   Original Singularity file was based on https://github.com/jekriske/r-base by [Jeff Kriske](https://github.com/jekriske)
