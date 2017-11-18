## Singularity image for GLASS workflows

### Build details

Build logs for `glass-consortium/glasstools` images

#### `glass-consortium/glasstools:beta` (automated build)

>18-Nov-2017  

Attempt build using Singularity Hub automated build at https://singularity-hub.org  

#### v 1.1.2s1 (manual build)

>17-Nov-2017  

```sh
singularity build glasstools_keystone_1.1.2s1.simg Singularity.beta

singularity inspect glasstools_keystone_1.1.2s1.simg
```

```
{
    "WEBSITE": "https://docker.glass-consortium.org",
    "org.label-schema.usage.singularity.deffile.bootstrap": "docker",
    "MAINTAINER": "Samir B. Amin tweet: sbamin web: sbamin.com",
    "NAME": "glasstools:keystone",
    "org.label-schema.usage": "/.singularity.d/runscript.help",
    "org.label-schema.schema-version": "1.0",
    "org.label-schema.build-date": "2017-11-17T23:00:53-05:00",
    "org.label-schema.usage.singularity.deffile.includecmd": "no",
    "VERSION": "v1.1.2s1",
    "org.label-schema.usage.singularity.deffile.from": "ubuntu:16.04",
    "org.label-schema.usage.singularity.deffile": "Singularity.beta",
    "SOURCECODE": "https://github.com/glass-consortium/glasstools",
    "org.label-schema.usage.singularity.runscript.help": "/.singularity.d/runscript.help",
    "org.label-schema.usage.singularity.version": "2.4-install_718360bb.g718360bb",
    "CONTACT": "https://github.com/glass-consortium/glassdocs/issues",
    "org.label-schema.build-size": "4533MB",
    "DESCRIPTION": "Singularity image to run GLASS consortium workflows"
}
```

### Credits: 

*   Original Singularity file was based on https://github.com/jekriske/r-base by [Jeff Kriske](https://github.com/jekriske)
