import $ from 'jquery';

export function init() {
    $(window).scroll(function() {
        if ( $(window).scrollTop > 750 ) {
            OneSignalSubscribe();
        };
    });
};
