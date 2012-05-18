# sencha-touch-rails

Important: this repository includes a copy of part of the Sencha Touch SDK. This theme is distributed under [the same licence][license] as the Sencha Touch SDK as a whole.

[license]: http://dev.sencha.com/deploy/touch/license.txt

## Rails 3.1

For Rails 3.1 and greater, the files will be added to the asset pipeline and available to use.

Add one of this lines to the file `app/assets/javascripts/application.js`:

    //= require sencha-touch-all
    or
    //= require sencha-touch-all-debug

Create `app/assets/stylesheets/sencha-touch.scss` and add the following lines in it:

    @import 'sencha-touch-rails';
    @include sencha-panel;
    @include sencha-buttons;
    @include sencha-sheet;
    @include sencha-picker;
    @include sencha-tabs;
    @include sencha-toolbar;
    @include sencha-toolbar-forms;
    @include sencha-indexbar;
    @include sencha-list;
    @include sencha-list-paging;
    @include sencha-list-pullrefresh;
    @include sencha-layout;
    @include sencha-carousel;
    @include sencha-form;
    @include sencha-msgbox;
    @include sencha-loading-spinner;

You can include more icon styles by adding:

    @include pictos-iconmask('wifi');

More about Sencha Touch Theming:

[http://www.sencha.com/blog/an-introduction-to-theming-sencha-touch](http://www.sencha.com/blog/an-introduction-to-theming-sencha-touch)
