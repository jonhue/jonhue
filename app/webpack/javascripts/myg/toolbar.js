import MygToolbar from 'myg-toolbar';

['turbolinks:load', 'modalist:render', 'myg-tabs:render'].forEach((event) => {
  document.removeEventListener(event, init);
  document.addEventListener(event, init);
});
function init() {
  const mygToolbar = MygToolbar.init(document.querySelector('.myg-toolbar'), {});
  let didScroll,
    lastScrollTop = 0,
    delta = 5;
  window.addEventListener('scroll', () => didScroll = true);
  setInterval(() => {
    if (didScroll) {
      lastScrollTop = mygToolbar.onScroll(lastScrollTop, delta);
      didScroll = false;
    }
  }, 250);
}
