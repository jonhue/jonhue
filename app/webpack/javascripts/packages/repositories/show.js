document.addEventListener( 'turbolinks:load', () => {
  if (document.querySelector('body.repositories.show')) {
    const githubURL = document.querySelector('#home .myg-button--container .myg-button').href;
    document.querySelectorAll('#readme a').forEach( (element) => {
      if ( element.href && !element.getAttribute('href').includes('http') ) {
        element.href = githubURL + '/tree/master/' + element.getAttribute('href');
      }
    });
  }
})
