![](logo.jpg)

spaceBase
=========

Front-end starter files for new projects.

For development purposes, we are using a Ruby compiler for our SCSS and CoffeeScript assets.

## EditorConfig

Your editor should be setup with an [EditorConfig](http://editorconfig.org/)
plugin, so that certain basic code style standards are enforced automatically.
See [http://editorconfig.org/#download](http://editorconfig.org/#download) and
install the plugin for your editor of choice.

## SCSS

Instructions:

- Install the latest Ruby v1.9.3 from http://rubyinstaller.org/downloads/

- Run the following commands:

```shell
    ruby -v    (confirms ruby is working and added to your path)

    gem -v    (confirms ruby gem is working and added to your path)

    gem update    (updates all gems to current versions)

    gem install compass    (adds the compass gem)
```

- From the command line, access the root directory and run the following command:

```shell
    compass watch    (monitors .scss files for changes and compiles them)
```

At this point, if you modify a .scss file, the command prompt should log the compilation of any modified .scss files.

- To stop running compass, use Ctrl+C and enter Y to terminate the batch job.

NOTE: If you rebuild the solution, it will also call compass to rebuild the stylesheets.

## CoffeeScript

Instructions:

```shell
    gem install coffee-script    (adds the coffee gem)
```

- From the command line, access the root directory and run the following command:

```shell
    coffee -w -o javascripts/compiled/ -c coffee/
```

At this point, if you modify a .coffee file, the command prompt should log the compilation of any modified .coffee files.

- To stop running coffee, use Ctrl+C and enter Y to terminate the batch job.
