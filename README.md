# sencha-touch-rails

This gem provides:

* Sencha Touch 2.4.1 GPL

## Installation

Add this line to your application's Gemfile:

    gem 'sencha-touch-rails'

And then execute:

    $ bundle install

Keep in mind that Sencha Touch GPL is downloaded during the gem instalation and can take a long time. You can monitor download progress by install it yourself as:

    $ gem install sencha-touch-rails --verbose

The Sencha Touch files will be added to the asset pipeline and available to use. 

Add to `app/assets/javascripts/application.js`:

    //= require sencha-touch-rails
    
Add to `app/assets/stylesheets/application.css` (you can change the theme with your favorite)

    *= require sencha-touch/themes/sencha-touch

To customize Sencha Touch, create `app/assets/stylesheets/sencha-touch.scss` and use:

    @import 'sencha-touch/default';
  
    @import 'sencha-touch/default/src/Class';
    @import 'sencha-touch/default/src/Button';
    @import 'sencha-touch/default/src/Panel';
    @import 'sencha-touch/default/src/Sheet';
    @import 'sencha-touch/default/src/MessageBox';
    @import 'sencha-touch/default/src/Toolbar';
    @import 'sencha-touch/default/src/Toast';
    @import 'sencha-touch/default/src/Menu';
    @import 'sencha-touch/default/src/carousel/Carousel';
    @import 'sencha-touch/default/src/form/Panel';
    @import 'sencha-touch/default/src/form/FieldSet';
    @import 'sencha-touch/default/src/field/Field';
    @import 'sencha-touch/default/src/field/Checkbox';
    @import 'sencha-touch/default/src/field/Radio';
    @import 'sencha-touch/default/src/field/Search';
    @import 'sencha-touch/default/src/field/Select';
    @import 'sencha-touch/default/src/field/Slider';
    @import 'sencha-touch/default/src/field/Spinner';
    @import 'sencha-touch/default/src/field/TextArea';
    @import 'sencha-touch/default/src/dataview/IndexBar';
    @import 'sencha-touch/default/src/dataview/List';
    @import 'sencha-touch/default/src/picker/Picker';
    @import 'sencha-touch/default/src/plugin/ListPaging';
    @import 'sencha-touch/default/src/plugin/PullRefresh';
    @import 'sencha-touch/default/src/slider/Slider';
    @import 'sencha-touch/default/src/slider/Toggle';
    @import 'sencha-touch/default/src/tab/Panel';
    @import 'sencha-touch/default/src/grid/Grid';
	
You can include more icon styles by adding:

    @include pictos-iconmask('wifi');
	
More about Sencha Touch Theming:

[http://www.sencha.com/blog/an-introduction-to-theming-sencha-touch](http://www.sencha.com/blog/an-introduction-to-theming-sencha-touch)	

Simple usage with coffee script:

    Ext.application
      name: 'Sencha',
      launch: ->
        Ext.create "Ext.tab.Panel",
          fullscreen: true,
          tabBarPosition: 'bottom',
          items: [
            {
              title: 'Home',
              iconCls: 'home',
              html: "Home"
            },
            {
              title: 'Settings',
              iconCls: 'settings',
              html: "Settings"
            }
          ]

An article about sencha-touch-rails:          
[https://alexvangelov.wordpress.com/2014/12/26/sencha-touch-rails](https://alexvangelov.wordpress.com/2014/12/26/sencha-touch-rails)

## Work in progress:

In production environment Ext.Loader is not able to load dependencies since they are not included in Sprockets. Even if we pass all Sencha Touch source files to sprockets and compile them, Ext.Loader is not compatible with production hashed file names. Workaround is to put manually Sencha Touch javascript sources in `public/assets/sencha-touch`. There should be a way to extract Ext dependencies list in ruby, then sencha-touch-rails will be able to add it as required assets for compilation. This way we should have an optimized application specific Sencha Touch framework in both development and production environments.
