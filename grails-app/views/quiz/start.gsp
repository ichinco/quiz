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
    <div>What's your "must-have" for a new pet?</div>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="1" />
        <g:submitButton name="submit" value="pet doesn't cost too much money to maintain" />
    </g:form>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="3" />
        <g:submitButton name="submit" value="pet doesn't need too much attention" />
    </g:form>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="6" />
        <g:submitButton name="submit" value="pet doesn't need too much space" />
    </g:form>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="15" />
        <g:submitButton name="submit" value="need a non-allergic pet" />
    </g:form>
    %{--<g:form controller="quiz" action="displayQuestion">--}%
        %{--<g:hiddenField name="id" value="${yesId}" />--}%
        %{--<g:submitButton name="submit" value="need good pet for small children" />--}%
    %{--</g:form>--}%
  </body>
</html>