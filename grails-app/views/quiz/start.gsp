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
    <div>What's your biggest concern about choosing a pet?</div>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="${yesId}" />
        <g:submitButton name="submit" value="money" />
    </g:form>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="${yesId}" />
        <g:submitButton name="submit" value="time" />
    </g:form>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="${yesId}" />
        <g:submitButton name="submit" value="space" />
    </g:form>
    <g:form controller="quiz" action="displayQuestion">
        <g:hiddenField name="id" value="${yesId}" />
        <g:submitButton name="submit" value="allergies" />
    </g:form>
  </body>
</html>