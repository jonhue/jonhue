import $ from 'jquery';

import * as _index from './index';

$(document).on( 'turbolinks:load', function() {
    if ( $('body.welcome.index').length > 0 ) {
        _index.init();
    };
});
