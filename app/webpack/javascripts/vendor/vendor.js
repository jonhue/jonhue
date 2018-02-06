import $ from 'jquery';

import * as _turbolinksAnimate from './turbolinks-animate';

$(document).on( 'turbolinks:load', function() {
    _turbolinksAnimate.init();
});
