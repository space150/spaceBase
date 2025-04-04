spaceBase
=========

### spaceBase is a Sass-based responsive CSS framework.

Many CSS frameworks are meant to be included and left alone. But spaceBase is a boilerplate layer that can be built upon and tailored for your needs. It combines best practices for today’s responsive web with the core components we use on every project. Consider it the launch pad for your adventures into cyberspace.

spaceBase is the front-end starter files for any new web project. It sets up your Sass architecture and normalizes your CSS and native HTML elements. It provides the structural groundwork for your application.

[![Build Status](https://img.shields.io/travis/space150/spaceBase.svg?style=flat-square)](https://travis-ci.org/space150/spaceBase)

### Highlights

* Object-oriented CSS
* Flexbox grid system
* Optimized for light speed
* Helper classes and mixins
* Common UI components
* Cross-browser form controls
* Supports modern and legacy browsers including IE10+

### Customizable Features

* Compatible with any Sass compiler
* Scalable, mobile-first grid - choose how robust you want it
* Base font size for mobile vs desktop
* Global variables for breakpoints, colors, fonts and more

## Getting Started

1. `$ npm install spacebase` or download the ZIP and copy its contents into your project folder.
2. Use your favorite Sass compiler to watch for changes and compile the files.
3. Open `scss/_vars.scss` to update your global variables.
4. Start building out your HTML. We've included `index.html` and `styleguide.html` to begin with.
5. `scss/base/` is the core of spaceBase. Build your UI layer in `scss/ui/`
6. Reference the [/scss/README.md](scss/README.md) for details on spaceBase architecture and use.

Your editor can be setup with EditorConfig so that code style standards are enforced automatically. See http://editorconfig.org/#download and install the plugin for your editor of choice.

## The spaceBase structure

Read the [CSS Architecture Overview](scss/README.md) for documentation of the SCSS files.

```
fonts/
scss/
  base/
    ...
  ui/
    ...
  vendor/
    ...
  _vars.scss
  application.scss
  styleguide.scss
stylesheets/
```

You can remove (if downloaded from Git):
- `*.yml`
- `CHANGELOG.md`
- `Gemfile*`
- `package.json`
- `Rakefile`
- `test/`

## spaceBase for NextJS Development
- Recommended: set up a custom alias in your NextJS + Typescript configuration for a cleaner path. For example, the import statement could be `@use '@/app/styles/globals' as *;` as long as you include the following in the `compilerOptions` object of your `tsconfig.json` file: `"paths": { "@/*": ["./src/*"] }`
- To silence deprecation warnings related to the "Legacy JS API", add this to your `next.config.js` file: `sassOptions: { silenceDeprecations: ['legacy-js-api'] }`

## Credits

* [Harry Robert’s Inuit.css](https://github.com/csswizardry/inuit.css)
* [Sass MQ](https://github.com/sass-mq/sass-mq)
* [Bootstrap](http://getbootstrap.com)
* [Normalize.css](http://necolas.github.io/normalize.css)

## License

spaceBase is free to use under the [MIT License](LICENSE.md).

Copyright 2013-2025 [space150](http://www.space150.com)
