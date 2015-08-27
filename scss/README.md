# CSS Architecture Overview

## File Structure

The `scss/` directory contains three folders: Base, UI and Vendor. The files in `scss/base/` are usually not modified much, but the files in `scss/ui/` are meant to be completely tailored to your project.

- **Base** [avoid editing] contains the grid framework, mixins, helpers and the "building block" abstractions. Most of the layout and basic visual styles can be achieved with these classes.
- **UI** [customize this] contains all design-specific styles shared across the application. This folder is free to organize however the project demands. To start, it includes fonts, typography, buttons, form elements and generic print styles.
- **Vendor** [avoid editing] contains Normalize and CSS reset. You can add other vendor files in here.


## Legacy IE Support

All partials are compiled into two CSS files in the main `stylesheets/` directory, `application.css` and `application-ie.css`. These should be loaded into the site via conditional comments.

Example:
~~~html
<!--[if (gt IE 8) | (IEMobile)]><!-->
  <link href="/stylesheets/application.css" media="all" rel="stylesheet" type="text/css" />
<!--<![endif]-->

<!--[if (lt IE 9) & (!IEMobile)]>
  <link href="/stylesheets/application-ie.css" media="all" rel="stylesheet" type="text/css" />
<![endif]-->
~~~

The only difference between these files is the `$legacy-ie` variable. When set to true, the `media-query()` mixin will only render the content inside appropriate media query breakpoints, taking advantage of CSS inheritance. The site will thereby display the desktop layout in legacy browsers that don't support media queries (IE8 and below).


## Variables

Global variables are kept in the `_vars.scss` partial. This includes things like base font styles, colors, breakpoints and global sizing measurements. All of these variables can be used throughout the rest of the partials.

### The `$base-sizing-unit` Variable

As a means for consistency and good vertical rhythm, many measurements are based off the `base-spacing-unit`, which is equal to the base `line-height-ratio`. This way if you adjust the base font-size or line-height down the road, all proportions are preserved.


## The Grid

The grid structure comes from v4 of [inuit.css](https://github.com/csswizardry/inuit.css) with some minor modifications. It works on proportionally-sized floats. Each set of grid elements must be wrapped in a `grid-wrapper`. Floats can be reversed by adding `grid-wrapper--rev`, and gutters can be removed by adding `grid-wrapper--full`.

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

If $responsive is set to false, the grid will collapse to 100% wide on mobile and only use the  proportional widths for breakpoint `lap` and above.

If $responsive is set to true, the grid proportions stay constant across all breakpoints. But by adding classes prefixed with the breakpoint name, grid elements can change at different breakpoints, thereby creating a dynamic page layout.

Example:
~~~html
<div class="grid-wrapper">

    <div class="grid one-whole lap-one-half desk-three-quarters">
        ...
    </div>

    <div class="grid one-whole lap-one-half desk-one-quarters">
        ...
    </div>

</div>
~~~
