# SCSS Architecture Overview

## File Structure

The `scss/` directory contains three folders: Base, UI and Vendor.

- **Base** contains the "building block" abstractions, namely the grid framework, mixins and helpers. These are core to spaceBase and should not be edited, but you can add your own mixins to `mixins.scss`.
- **UI** contains all project-specific styles shared across the application. These files are meant to be completely tailored to your project. To start, it includes typography, form elements, generic print styles, buttons and other common UI components. Add more partials and organize them however the project demands.
- **Vendor** contains Normalize. You can add other vendor files here.


## Compilation

All partials are imported into the `application.scss`. When you add new partials to your project, add them to this import list. Set up your Sass compilation to generate this in the `stylesheets/` directory. Because of the amount of comments, please use minified CSS in production.

### Styleguide

There is an additional stylesheet, `styleguide.css`, used only in `styleguide.html`. This file is the start for your project style guide, including grid examples, color swatches, typography, UI and form elements. [What is a style guide?](http://alistapart.com/article/creating-style-guides)


## Global Variables

Customizable variables are stored in the `_vars.scss` partial. This includes things like font styles, colors, breakpoints and base sizing measurements. Use these variables throughout the rest of the project, and add more as you see fit. `_vars.scss` also contains switches to include or exclude features as you need them.

### Vertical Rhythm and the `$base-sizing-unit`

As a means for consistency and good vertical rhythm, many measurements are based off the `$base-spacing-unit`, which is equal to the base `$line-height-ratio`. This way if the `$base-font-size` or `$base-line-height` is adjusted down the road, white space proportions are preserved. For example, most block-level elements (headings, lists, paragraphs, etc.) will have a bottom margin equal to `$base-spacing-unit`.


## The Grid

The grid structure is built on a flexbox-powered 12-column grid. It uses percentage-width flex items with human-readable classnames (i.e. one-half, two-thirds, three-quarters, etc). Each set of `grid` items must be wrapped in a `grid-wrapper`. By default, grid gutters (the space between grid items) are equal to the `$base-sizing-unit` but can be changed in `_vars.scss`. Grid items can be reversed by adding `grid-wrapper--rev`, and gutters can be removed by adding `grid-wrapper--full`. Alignment and distribution of grid items can be altered with classes as well.

Example:
~~~html
<div class="grid-wrapper grid-wrapper--full align--center">

    <div class="grid two-thirds">
        ...
    </div>

    <div class="grid one-third">
        ...
    </div>

</div>
~~~

### The `$responsive` Variable

If `$responsive` is set to false, the grid will collapse to 100% wide on mobile and only use the  proportional-width classes for breakpoint `lap` and above. This is ideal for a simple site layout.

If `$responsive` is set to true, the base grid proportions remain constant across all breakpoints. But by adding classes prefixed with the breakpoint namespace, grid items can change width at different breakpoints, thereby creating a truly dynamic site layout.

Example:
~~~html
<div class="grid-wrapper">

    <div class="grid one-whole hand-one-half lap-one-third desk-one-quarter">
        ...
    </div>

</div>
~~~

This would create a `div` that at the smallest sizes fills the full width of the horizontal space, takes up half of that space at `hand` sizes, a third of that space at `lap` sizes, and a quarter at `desk` sizes.

### Push

Push classes move grid items over to the right, creating white space on the left. Push styles follow the same logic of the `$responsive` variable. If `$responsive` is false, they only apply to the `lap`  breakpoint and above. If `$responsive` is true, you have access to push classes prefixed with the breakpoint namespace.

Example:
~~~html
<div class="grid-wrapper">

    <div class="grid one-half lap-one-quarter push--one-quarter push--lap-three-eighths">
        ...
    </div>

</div>
~~~

To exclude the push styles from the compiled stylesheet, change its variable to `false` in `_vars.scss`. Because of the weight they add to the file size, it is advisable to do this if you aren't using them.

See the [style guide](../styleguide.html) for more grid examples.
