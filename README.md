spaceBase
=========

### spaceBase is a Sass-based responsive CSS framework.

Many CSS frameworks are meant to be included and left alone. But spaceBase is a boilerplate layer that can be built upon and tailored for your needs. It combines best practices for today’s responsive web with the core components we use on every project. Consider it the launch pad for your adventures into cyberspace.

spaceBase is meant to be copied into your project for further modifications. The SCSS files in `scss/base/` are usually not modified much, but the files in `scss/ui/` are meant to be completely tailored to your project.

### Getting Started

After you download the spaceBase ZIP from the repo, unzip it and copy its contents into your own project.

spaceBase is built with Sass, so you'll need a Sass compiler (Compass or Bourbon). A Compass `config.rb` is included in the spaceBase folder you can use for reference.

Installing Ruby, Sass, Compass and Bourbon is outside the scope of this document.

Your editor should be setup with an EditorConfig plugin, so that certain basic code style standards are enforced automatically. See http://editorconfig.org/#download and install the plugin for your editor of choice.

You can remove `scss/README.md`.

### The spaceBase structure

```
fonts/
scss/
  base/
    ...
  ui/
    ...
  _manifest.scss
  _vars.scss
  application-ie.scss
  application.scss
  styleguide.scss
```

Read the [CSS Architecture Overview](scss/README.md) for details on these files.
