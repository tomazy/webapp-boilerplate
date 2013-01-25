requirejs.config({
  baseUrl: "/assets",
  paths: {
    'jquery': '/assets/vendor/jquery.min'
  }
});

require(['main'], function(main){
  main();
});
