
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="quiz" />
  </head>
  <body>
    <div class="content">
        <div class="question">${question.text}
            <div class="blurb">
                ${question.blurb}
            </div>
        </div>
        <ul class="choices">
            <li class="choice">
                <g:link controller="quiz" action="${yesAction}"
                        params="['qid':yesId]">
                    ${question.yesText}
                </g:link>
            </li>
            <li class="choice">
                <g:link controller="quiz" action="${noAction}"
                        params="['qid':noId]">
                    ${question.noText}
                </g:link>
            </li>
        </ul>
    </div>
  </body>
</html>