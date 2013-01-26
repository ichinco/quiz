
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="quiz" />
  </head>
  <body>
    <div>${question.text}</div>
    <g:form controller="quiz" action="${yesAction}">
        <g:hiddenField name="id" value="${yesId}" />
        <g:submitButton name="submit" value="${question.yesText}" />
    </g:form>
    <g:form controller="quiz" action="${noAction}" >
        <g:hiddenField name="id" value="${noId}" />
        <g:submitButton name="submit" value="${question.noText}"/>
    </g:form>
  </body>
</html>