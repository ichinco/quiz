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
                    <div class="label">is it affectionate? <div class="value">${pet.affectionate ? "yes" : "no"}</div></div>
                    <div class="label">is it trainable? <div class="value">${pet.trainable ? "yes" : "no"}</div></div>
                    <div class="label">is it noisy? <div class="value">${pet.noisy ? "yes" : "no"}</div></div>
                    <div class="label">is it smelly? <div class="value">${pet.smelly ? "yes" : "no"}</div></div>
                    <div class="label">is it contained in a cage or tank? <div class="value">${pet.isContained ? "yes" : "no"}</div></div>
                    <div class="label">does it need outdoor space? <div class="value">${pet.needsOutdoorSpace ? "yes" : "no"}</div></div>
                    <div class="label">does it need live food? <div class="value">${pet.liveFood ? "yes" : "no"}</div></div>
                    <div class="label">is it a good pet for someone with allergies? <div class="value">${pet.allergic ? "no" : "yes"}</div></div>
                    <div class="label">how long is it likely to live? <div class="value">${pet.lifespan}</div></div>
                    <div class="label">how much will it cost per month? <div class="value">${pet.monthlyCost}</div></div>
                    <div class="label">how much time will it require per week? <div class="value">${pet.weeklyTimeMin}-${pet.weeklyTimeMax}hrs</div></div>
                    <div class="label">how much is the pet likely to cost? <div class="value">$${pet.minInitialCost}-${pet.maxInitialCost}</div></div>
                    <div class="label">how much is the pet likely to cost? <div class="value">$${pet.minInitialCost}-${pet.maxInitialCost}</div></div>
                    <div class="label">how much will pet equipment cost? <div class="value">$${pet.minEquipment}-${pet.maxEquipment}</div></div>
                </div>
            </g:if>
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