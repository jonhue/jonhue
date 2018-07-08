document.addEventListener( 'turbolinks:load', () => {
  document.querySelector('.mdc-toolbar__section.mdc-toolbar__section--align-end.mobile > a > svg').addEventListener( 'click', () => mygDrawer.open() );
});
