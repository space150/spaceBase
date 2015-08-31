# CSS Architecture Overview

## File Structure

The `scss/` directory contains three folders: Base, UI and Vendor.

- **Base** contains the "building block" abstractions, namely the grid framework, mixins and helpers. These are core to spaceBase and should not be edited.
- **UI** contains all project-specific styles shared across the application. These files are meant to be completely tailored to your project. To start, it includes typography, form elements, generic print styles, buttons and other common UI components. Add more partials and  organize them however the project demands.
- **Vendor** contains Normalize and CSS reset. You can add other vendor files here.


## Compilation

All partials are imported into the `_manifest.scss`. This is also where you can choose to import either Normalize (default) or CSS Reset. When you add new partials to your project, add them to this import list. `_manifest.scss` is then imported into the two main stylesheets, `application.scss` and `application-ie.scss`. Set up your Sass compilation to generate these in the `stylesheets/` directory.

### Legacy IE Support

After compilation you will have two stylesheets, `application.css` and `application-ie.css`. The only difference between these files lies in the `$legacy-ie` variable. When set to true, the `media-query()` mixin will only render the content inside appropriate media query breakpoints. Taking advantage of CSS inheritance, the site will render the desktop layout in legacy browsers that don't support media queries (IE8 and below). Therefore, these should be loaded into the site via conditional comments.

Example:
~~~html
<!--[if (gt IE 8) | (IEMobile)]><!-->
  <link href="/stylesheets/application.css" media="all" rel="stylesheet" type="text/css" />
<!--<![endif]-->

<!--[if (lt IE 9) & (!IEMobile)]>
  <link href="/stylesheets/application-ie.css" media="all" rel="stylesheet" type="text/css" />
<![endif]-->
~~~


### Styleguide

There is a third stylesheet, `styleguide.css`, used only in `styleguide.html`. This file is the start for your project style guide, including grid examples, color swatches, typography, UI and form elements. [What is a style guide?](http://alistapart.com/article/creating-style-guides)


## Variables

Global variables are kept in the `_vars.scss` partial. This includes things like font styles, colors, breakpoints and base sizing measurements. Use these variables throughout the rest of the project and add more as you see fit.

### The `$base-sizing-unit` Variable

As a means for consistency and good vertical rhythm, many measurements are based off the `$base-spacing-unit`, which is equal to the base `$line-height-ratio`. This way if you adjust the base font-size or line-height down the road, all proportions are preserved.


## The Grid

The grid structure comes from version 4 of [inuit.css](https://github.com/csswizardry/inuit.css) with some minor modifications. It works on proportionally-sized floats. By default, grid gutters (the space between grid elements) are equal to the `$base-sizing-unit` but can be changed in `_vars.scss`. Each set of grid elements must be wrapped in a `grid-wrapper`. Floats can be reversed by adding `grid-wrapper--rev`, and gutters can be removed by adding `grid-wrapper--full`.

Example:
~~~html
<div class="grid-wrapper grid-wrapper--full">

    <div class="grid two-thirds">
        ...
    </div>

    <div class="grid one-third">
        ...
    </div>

</div>
~~~

### The `$responsive` Variable

If `$responsive` is set to false, the grid will collapse to 100% wide on mobile and only use the  proportional widths for breakpoint `lap` and above.

If `$responsive` is set to true, the grid proportions stay constant across all breakpoints. But by adding classes prefixed with the breakpoint namespace, grid elements can change width at different breakpoints, thereby creating a dynamic page layout.

Example:
~~~html
<div class="grid-wrapper">

    <div class="grid hand-one-half lap-one-third desk-one-quarter">
        ...
    </div>

</div>
~~~

See the [style guide](../styleguide.html) for more grid examples.
