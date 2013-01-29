<%--
  Created by IntelliJ IDEA.
  User: denise
  Date: 1/24/13
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="quiz.ResultUpsell" contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="quiz" />
  </head>
  <body>
    <g:each in="${results}" var="result">
        <div>
            ${result.getResultName()}
            <div>Why should you choose a ${result.getResultName()}?</div>

            <div>What do I need to take care of a ${result.getResultName()}?</div>
            <g:each in="${ResultUpsell.findAllByResult(result)}" var="upsell">
                <div>
                    ${upsell.getHtmlDisplay()}
                </div>
            </g:each>
        </div>
    </g:each>
  </body>
</html>