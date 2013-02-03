
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="quiz" />
  </head>
  <body>
    <div class="content">${question.text}</div>
    <div class="content">
        <li><g:link controller="quiz" action="${yesAction}" params="['qid':yesId]">${question.yesText}</g:link></li>
        <li><g:link controller="quiz" action="${noAction}" params="['qid':noId]">${question.noText}</g:link></li>
    </div>
  </body>
</html>