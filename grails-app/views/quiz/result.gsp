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
               data-text="Should I get a ${result.getResultName()}? Take the pet
                          quiz and find out what pet's right for you!">Tweet</a>
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
                <g:each in="${ResultUpsell.findAllByResult(result)}" var="upsell">
                    <div class="upsell">
                        ${upsell.getHtmlDisplay()}
                    </div>
                </g:each>
            </div>
        </div>
    </g:each>
  </body>
</html>