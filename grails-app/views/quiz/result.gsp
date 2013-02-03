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
        <div class="content">
            ${result.getResultName()}
            <div>Why should you choose a ${result.getResultName()}?</div>
            <g:if test="${result instanceof Pet}">
                <% Pet pet = (Pet) result; %>
                <div>
                    <div class="description">
                        A ${pet.name} is ${pet.affectionate ? "" : "not"} an affectionate animal.
                        It is ${pet.trainable ? "" : "not" } possible to train them.
                        As a pet, a ${pet.name} ${pet.smelly ? "can be" : "is not usually"} smelly.
                        A ${pet.name} is ${pet.noisy ? "" : "not"} noisy.
                        ${pet.allergic ? "" : "They a good pet for someone with allergies. "}
                        ${pet.liveFood ? "" : "A " + pet.name + " must be fed live food. "}
                        ${pet.isContained ? "These pets do not require much space. " : ""}
                        ${pet.needsOutdoorSpace ? "They require outdoor space. " : ""}
                        A ${pet.name} usually lives approximately ${pet.lifespan} years.
                    </div>

                    <li>monthly cost:  <div class="value">$${pet.monthlyCost}</div></li>
                    <li>initial cost: <div class="value">$${pet.minInitialCost}-${pet.maxInitialCost}</div></li>
                    <li>equipment cost: <div class="value">$${pet.minEquipment}-${pet.maxEquipment}</div> </li>
                    <li>hours of care per week: <div class="value">${pet.weeklyTimeMin}-${pet.weeklyTimeMax}hrs</div> </li>
                </div>
            </g:if>
            <div>What do I need to take care of a ${result.getResultName()}?</div>
            <g:each in="${ResultUpsell.findAllByResult(result)}" var="upsell">
                <div class="upsell">
                    ${upsell.getHtmlDisplay()}
                </div>
            </g:each>
        </div>
    </g:each>
  </body>
</html>