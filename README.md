TeXbuilder
==========

TeXbuilder is a framework with the purpose of making even easier the creation of LaTeX documents.

### Installing

The TeXbuilder can be installed on Linux using the script texbuild-install, that can be found in the installer folder.
Inside the folder "installer", just execute the command:
```shell
./texbuild-install
```

### Updating

After being properly installed, the TeXbuilder can be updated using the script texbuild-update.
Just execute the following command:
```shell
texbuild-update
```

If the new version contains any bug you can restore the previous installation using the command:
```shell
texbuild-update --restore
```

### Creating a new LaTeX project

You can create a new LaTeX project, using an existing template, with the script texbuild-project.
For example, to create a project called thesis and using the template ppgccufmg, you can just execute the command, from any directory that you want:
```shell
texbuild-project thesis ppgccufmg
```
After executing the previous command, three folders will be created: bin, packages and src. The folder src is meant to contain the TeX (.tex) and other files, like images. The folder packages is meant to contain the template and other packages files. The compiled PDF will be created in the bin folder.

Now that you have your project, all that you usually have to do is editing the src folder.

You can see the template packages installed using the command:
```shell
texbuild-project --show-templates
```

If you want to create a project with no template, then you can create an empty problem without passing the template argument:
```shell
texbuild-project thesis
```

### Compiling a project

After having created and edited the project, you can compile it with the script texbuild.
For example, to compile the thesis project, previously created, just execute the command:
```shell
texbuild thesis
```

After being compiled, a PDF file will be created at the ./bin folder.
