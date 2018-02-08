import $ from 'jquery';
import 'turbolinks-animate';

export function init() {
    TurbolinksAnimate.init({ element: $('body.turbolinks-animate') });
};
