![](images/logo.jpg)

spaceBase
=========

Front-end starter files for new projects.

### spaceBase is a boilerplate

Unlike many other SCSS libraries, spaceBase is not intended to be included once and never touched. The goal with spaceBase is a boilerplate layer that you can build on, modify, tweak, and tailor to your needs.

spaceBase is meant to be copied into your project for further modifications. The SCSS files in `scss/base/` are usually not modified much, but the files in `scss/ui/` are meant to be completely tailored to your project.

### Setting Up spaceBase

After you download the latest spaceBase ZIP from the repo, you'll unzip it and copy folders into your own project.

#### Stylesheets

* Copy the following folders to your project:
** `fonts/`
** `images/`
** `scss/`
** `.editorconfig`

spaceBase is built with Sass and Compass, so you'll need a Sass compiler and the Compass gem. A Compass `config.rb` is included in the spaceBase folder you can use for reference.

Installing Ruby, Sass, and Compass is outside the scope of this document.

spaceBase works well with static web tools like Middleman or Jekyll, or simple build tools (like a simple Gruntfile).

Your editor should be setup with an EditorConfig plugin, so that certain basic code style standards are enforced automatically. See http://editorconfig.org/#download and install the plugin for your editor of choice.

You can remove `scss/README.md`.

#### JavaScripts

spaceBase has some opinions on JavaScript setup. You can copy the starter folder `javascripts/` if you like.


### The spaceBase structure

```
fonts/
images/
scss/
  base/
    ..
  ui/
    ..
  _manifest.scss
  _vars.scss
  application-ie.css.scss
  application.css.scss
  styleguide.css.scss
```
