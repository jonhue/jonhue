import $ from 'jquery';
import * as deviseOneSignal from 'devise-onesignal';

export function init() {
    $(window).scroll(function() {
        if ( $(window).scrollTop > 750 ) {
            deviseOneSignal.subscribe(true);
        };
    });
};
