/*
This file includes Senchca Touch in Rails Asset Pipeline
@author Alex Vangelov <email@data.bg>

GNU General Public License Usage
This file may be used under the terms of the GNU General Public License version 3.0 as
published by the Free Software Foundation and appearing in the file LICENSE included in the
packaging of this file.

Please review the following information to ensure the GNU General Public License version 3.0
requirements will be met: http://www.gnu.org/copyleft/gpl.html.

If you are unsure which license is appropriate for your use, please contact the sales department
at http://www.sencha.com/contact.
*/

//= require sencha-touch/core/Ext
//= require sencha-touch/core/version/Version
//= require sencha-touch/core/lang/String
//= require sencha-touch/core/lang/Array
//= require sencha-touch/core/lang/Number
//= require sencha-touch/core/lang/Object
//= require sencha-touch/core/lang/Function
//= require sencha-touch/core/lang/JSON
//= require sencha-touch/core/lang/Error
//= require sencha-touch/core/lang/Date
//= require sencha-touch/core/class/Base
//= require sencha-touch/core/class/Class
//= require sencha-touch/core/class/ClassManager
//= require sencha-touch/core/class/Loader
//= require sencha-touch/core/EventManager
//= require sencha-touch/core/Ext-more
//= require sencha-touch/env/Browser
//= require sencha-touch/env/OS
//= require sencha-touch/env/Feature
//= require sencha-touch/dom/Query
//= require sencha-touch/dom/Helper
//= require sencha-touch/mixin/Identifiable
//= require sencha-touch/dom/Element
//= require sencha-touch/dom/Element.static
//= require sencha-touch/dom/Element.alignment
//= require sencha-touch/dom/Element.insertion
//= require sencha-touch/dom/Element.position
//= require sencha-touch/dom/Element.style
//= require sencha-touch/dom/Element.traversal
//= require sencha-touch/dom/CompositeElementLite

Ext.Loader.setPath({
    'Ext': 'assets/sencha-touch'
});