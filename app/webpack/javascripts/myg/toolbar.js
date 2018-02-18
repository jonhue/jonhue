import MygToolbar from 'myg-toolbar';

document.addEventListener( 'turbolinks:load', () => {
    const mygToolbar = MygToolbar.init( document.querySelector('.myg-toolbar'), {} );
    let didScroll,
        lastScrollTop = 0,
        delta = 5;
    window.addEventListener( 'scroll', () => didScroll = true );
    setInterval(() => {
        if (didScroll) {
            lastScrollTop = mygToolbar.onScroll( lastScrollTop, delta );
            didScroll = false;
        };
    }, 250);
})
