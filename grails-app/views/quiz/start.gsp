<%--
  Created by IntelliJ IDEA.
  User: denise
  Date: 1/26/13
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="quiz" />
  </head>
  <body>
    <div class="logo">
      <img id="logo" src="${resource(dir:'images', file:'logo.png')}" />
    </div>

    <div class="content">
    So we hear that you want to get an exotic pet...
    Take the pet quiz to <a class="inline emph">find the perfect animal</a>
    for you.
    </div>
    <div class="content">
        <li><g:link controller="quiz" action="displayQuestion" params="['qid':1]">I need a pet that doesn't cost too much money to maintain</g:link></li>
        <li><g:link controller="quiz" action="displayQuestion" params="['qid':3]">I need a pet that doesn't need too much attention</g:link></li>
        <li><g:link controller="quiz" action="displayQuestion" params="['qid':6]">I need a pet that doesn't need too much space</g:link></li>
        <li><g:link controller="quiz" action="displayQuestion" params="['qid':15]">I need a non-allergic pet</g:link></li>
    </div>
    %{--<g:form controller="quiz" action="displayQuestion">--}%
        %{--<g:hiddenField name="id" value="${yesId}" />--}%
        %{--<g:submitButton name="submit" value="need good pet for small children" />--}%
    %{--</g:form>--}%

    <div class="footer">
      <a href="http://www.twitter.com/petspetspets1"><div class="icon icon-twit"></div></a>
      <g:link view="quiz/about.gsp"><div class="icon icon-i"></div></g:link>
    </div>
  </body>
</html>