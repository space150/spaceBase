spaceBase
=========

Front-end starter files for new projects.

For development purposes, we are using a Ruby compiler for our SCSS and CoffeeScript assets.

### Installing spaceBase with Bower

    $ bower init
    $ bower install git@github.com:space150/spaceBase.git --save

To update if spaceBase changes:
    
    $ bower update spaceBase

SIDE NOTE: For Middleman projects, you might want bower to install components in `vendor/component`. If so, set your project's `.bowerrc` as follows before doing an install:

    $ echo '{"directory": "vendor/components"}' >> .bowerrc

## SCSS

Instructions:

- Install the latest Ruby v1.9.3 from http://rubyinstaller.org/downloads/

- Run the following commands:

```shell
    ruby -v    (confirms ruby is working and added to your path)

    gem -v    (confirms ruby gem is working and added to your path)

    gem update --system    (updates all gems to current versions)

    gem install compass    (adds the compass gem)
```

- From the command line, access the /public directory and run the following command:

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

- From the command line, access the /public directory and run the following command:

```shell
    coffee -w -o javascripts/compiled/ -c coffee/
```

At this point, if you modify a .coffee file, the command prompt should log the compilation of any modified .coffee files.

- To stop running coffee, use Ctrl+C and enter Y to terminate the batch job.
