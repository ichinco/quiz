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
      <img alt="logo" id="logo" src="${resource(dir:'images', file:'logo.png')}" />
    </div>
    <div class="content">
        <div class="intro-text">
            <p>
            So we hear that you want to get a pet.
            Take our pet quiz to find the perfect
            match for you.
            </p>
            <p>
            Before we get started, what is the most important factor?
            </p>
        </div>
        <ul class="entry-points">
            <li class="entry-point">
                <g:link controller="quiz" action="displayQuestion" params="['qid':1]">
                    Cost
                </g:link>
                <div class="description">
                    I am a bit short on cash, so ideally, I would like a pet
                    that doesn't cost too much to buy or to maintain.
                </div>
            </li>
            <li class="entry-point">
                <g:link controller="quiz" action="displayQuestion" params="['qid':3]">
                    Time
                </g:link>
                <div class="description">
                    I have a really busy lifestyle, and I want a pet that
                    doesn't require too much attention.
                </div>
            </li>
            <li class="entry-point">
                <g:link controller="quiz" action="displayQuestion" params="['qid':6]">
                    Space
                </g:link>
                <div class="description">
                    My home is a bit limited in space. I would ideally
                    want a pet that need a lot of space to roam.
                </div>
            </li>
            <li class="entry-point">
                <g:link controller="quiz" action="displayQuestion" params="['qid':15]">
                    Allergies
                </g:link>
                <div class="description">
                    I have strong reactions to some animals. I would like
                    to look at pets that will definitely not make me allergic.
                </div>
            </li>
        </ul>
    </div>
    %{--<g:form controller="quiz" action="displayQuestion">--}%
        %{--<g:hiddenField name="id" value="${yesId}" />--}%
        %{--<g:submitButton name="submit" value="need good pet for small children" />--}%
    %{--</g:form>--}%

    <div class="footer">
      <a href="http://www.twitter.com/petspetspets1">
          <div style="background-image:url('${resource(dir:'images', file:'iconsheet.png')}')"
               class="icon icon-twit"></div>
      </a>
      <g:link view="quiz/about.gsp">
          <div style="background-image:url('${resource(dir:'images', file:'iconsheet.png')}')"
               class="icon icon-i"></div>
      </g:link>
    </div>
  </body>
</html>