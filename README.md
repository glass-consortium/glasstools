## Singularity image for GLASS workflows

>18-Nov-2017   
>v1.1.2s2  

Build details for `glass-consortium/glasstools` images. 

**PS:** Documentation to run workflows is not yet ready. Visit https://docker.glass-consortium.org for updates.

#### Current Build

```sh
singularity pull shub://glass-consortium/glasstools:beta
```

Automated build, when successfully built is available at Singularity Hub: https://www.singularity-hub.org/collections/262 with image tag: `glass-consortium/glasstools:beta` 

*   Download using [Singularity](http://singularity.lbl.gov), v2.4 or higher.
*   Avoid running container as root. Singularity images does not require root privileges to run workflows.
*   Default bind while running workflow is user ${HOME}.
*   For better potability and disk mounts, ask your system admin to configure `/etc/singularity/singularity.conf` and set `enable overlay = yes`. Read http://singularity.lbl.gov/docs-mount for details.

##### Build details

Built using Singularity `v2.4`  

>Full version at the time of install: v2.4-install_718360bb.g718360bb  
>Commit: https://github.com/singularityware/singularity/commit/718360bb20b66cbafb85dd9d0a73bd6bb60c7a1f  

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

### Credits: 

*   Original Singularity file was based on https://github.com/jekriske/r-base by [Jeff Kriske](https://github.com/jekriske)
