import MygDrawer from 'myg-drawer';

document.addEventListener( 'turbolinks:load', () => {
    const mygDrawer = MygDrawer.init( document.querySelector('.myg-drawer'), {} );
    document.querySelector('.mdc-toolbar__section.mdc-toolbar__section--align-end.mobile > a > svg').addEventListener( 'click', () => mygDrawer.open() );
})
