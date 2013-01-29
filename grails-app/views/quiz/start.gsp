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
    <div>So. You're trying to choose a pet. What's on your mind?</div>
    <g:link controller="quiz" action="displayQuestion" params="['qid':1]">I need a pet that doesn't cost too much money to maintain</g:link><br />
    <g:link controller="quiz" action="displayQuestion" params="['qid':3]">I need a pet that doesn't need too much attention</g:link><br />
    <g:link controller="quiz" action="displayQuestion" params="['qid':6]">I need a pet that doesn't need too much space</g:link><br />
    <g:link controller="quiz" action="displayQuestion" params="['qid':15]">I need a non-allergic pet</g:link><br />
    %{--<g:form controller="quiz" action="displayQuestion">--}%
        %{--<g:hiddenField name="id" value="${yesId}" />--}%
        %{--<g:submitButton name="submit" value="need good pet for small children" />--}%
    %{--</g:form>--}%
  </body>
</html>