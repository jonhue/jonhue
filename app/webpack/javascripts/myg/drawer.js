import MygDrawer from 'myg-drawer';

document.addEventListener( 'turbolinks:load', () => {
    document.querySelector('.mdc-toolbar__section.mdc-toolbar__section--align-end.mobile > a > svg').addEventListener( 'click', () => mygDrawer.open() );
}

['turbolinks:load', 'modalist:render', 'myg-tabs:render'].forEach( (event) => {
    document.removeEventListener( event, init );
    document.addEventListener( event, init );
})
function init() {
    const mygDrawer = MygDrawer.init( document.querySelector('.myg-drawer'), {} );
}
