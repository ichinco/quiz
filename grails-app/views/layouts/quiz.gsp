<%--
  Created by IntelliJ IDEA.
  User: denise
  Date: 1/26/13
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title><g:layoutTitle default="Choose the perfect exotic pet in the Pet Quiz" /></title>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css' />
      <link href="${resource(dir:'css', file:'quiz.css')}" rel='stylesheet' type='text/css' />
      <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
      <g:layoutHead />
  </head>
  <body>
      <g:layoutBody />
  </body>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-37985975-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<script type="text/javascript">
    !function(d,s,id){
        var js,fjs=d.getElementsByTagName(s)[0];
        if(!d.getElementById(id)){
            js=d.createElement(s);
            js.id=id;
            js.src="https://platform.twitter.com/widgets.js";
            fjs.parentNode.insertBefore(js,fjs);
        }}(document,"script","twitter-wjs");

</script>
</html>