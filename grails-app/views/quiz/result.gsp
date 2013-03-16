<%--
  Created by IntelliJ IDEA.
  User: denise
  Date: 1/24/13
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="quiz.Pet; quiz.ResultUpsell" contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <meta name="layout" content="quiz" />
  </head>
  <body>
    <g:each in="${results}" var="result">
        <div class="content ${result.getResultName()}">
            ${result.getResultName()}

            <a href="https://twitter.com/share"
               class="twitter-share-button" data-lang="en"
               data-url="http://petspetspets.herokuapp.com"
               data-via="petspetspets1"
               data-text="Should I get a ${result.getResultName()}? Take the pet quiz and find out what pet's right for you!">Tweet</a>
            <g:if test="${result instanceof Pet}">
                <% Pet pet = (Pet) result; %>
                <div>
                    <div class="result-header">Why should you choose a ${result.getResultName()}?</div>
                    <div class="description">
                        ${pet.affectionate ? "A " + pet.name + " is affectionate. " : ""}
                        ${pet.trainable ? "It is possible to train them. " : ""}
                        ${!pet.smelly ? "As a pet, " + pet.name + " is not usually smelly. " : ""}
                        ${!pet.noisy ? "A " + pet.name + " is not noisy. " : ""}
                        ${!pet.allergic ? "This is a good pet for someone with allergies. " : ""}
                        ${pet.isContained ? "These pets do not require much space. " : ""}
                    </div>
                    <div class="result-header">What are some possible pitfalls?</div>
                    <div class="description">
                        ${!pet.affectionate ? "A " + pet.name + " is not generally considered to be an affectionate animal. They're tons of fun to watch, though! " : ""}
                        ${!pet.trainable ? "You may have trouble training these pets. " : ""}
                        ${pet.smelly ? "Odors can be a problem, but you can minimize the effect by practicing good pet hygiene. " : ""}
                        ${pet.noisy ? "These animals can sometimes be quite loud, so make sure there is enough space between you and your neighbors! " : ""}
                        ${pet.allergic ? "Individuals with allergies may have problems with this animal, so consult a doctor before you buy. " : ""}
                        ${pet.liveFood ? "A " + pet.name + " must be fed live food. This can be time consuming and costly. " : ""}
                        ${!pet.isContained ? "These pets roam free, so be sure there will be plenty of space for them to explore! " : ""}

                    </div>

                    <div class="result-header">General Facts</div>

                    <li class="label">lifespan:  <div class="value">approximately ${pet.lifespan} year(s)</div></li>
                    <li class="label">monthly cost:  <div class="value">$${pet.monthlyCost}</div></li>
                    <li class="label">initial cost: <div class="value">$${pet.minInitialCost}-${pet.maxInitialCost}</div></li>
                    <li class="label">equipment cost: <div class="value">$${pet.minEquipment}-${pet.maxEquipment}</div> </li>
                    <li class="label">hours of care per week: <div class="value">${pet.weeklyTimeMin}-${pet.weeklyTimeMax}hrs</div> </li>
                </div>
            </g:if>
            <div class="products">
                <div class="result-header">What do you need to take care of a ${result.getResultName()}?</div>
                <div class="description">
                    Here are some products that you may find essential in taking care
                    of your ${result.getResultName()}.
                </div>
                <div class="pet-products">
                    <g:each in="${ResultUpsell.findAllByResult(result)}" var="upsell">
                        <div class="upsell">
                            <iframe src="http://rcm.amazon.com/e/cm?lt1=_blank&bc1=FFFFFF&IS2=1&npa=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=trythaton-20&o=1&p=8&l=as4&m=amazon&f=ifr&ref=ss_til&asins=${upsell.getHtmlDisplay()}" style="width:120px;height:240px;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0"></iframe>
                            %{--<a href="http://www.amazon.com/gp/product/${upsell.getHtmlDisplay()}/ref=as_li_ss_il?ie=UTF8&camp=1789&creative=390957&creativeASIN=${upsell.getHtmlDisplay()}&linkCode=as2&tag=trythaton-20"><img border="0" src="http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&ASIN=${upsell.getHtmlDisplay()}&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=trythaton-20" ></a><img src="http://www.assoc-amazon.com/e/ir?t=trythaton-20&l=as2&o=1&a=${upsell.getHtmlDisplay()}" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />--}%
                        </div>
                    </g:each>
                </div>
            </div>
        </div>
    </g:each>

    <div class="content">Didn't find what you were looking for? <g:link controller="quiz" action="displayResult" params="['qid' : 21]">See all >></g:link></div>
  </body>
</html>