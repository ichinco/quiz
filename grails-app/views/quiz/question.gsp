
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="quiz" />
  </head>
  <body>
    <div>${question.text}</div>
    <g:link controller="quiz" action="${yesAction}" params="['qid':yesId]">${question.yesText}</g:link><br/>
    <g:link controller="quiz" action="${noAction}" params="['qid':noId]">${question.noText}</g:link>
  </body>
</html>