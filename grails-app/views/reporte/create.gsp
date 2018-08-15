<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'reporte.label', default: 'Reporte')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-reporte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>


        <div id="create-reporte" class="content scaffold-create" role="main">

          <sec:ifLoggedIn>
              <sec:access expression="hasRole('ROLE_ADMIN')">
                  <button id="ocultar">Quitar permio</button>
                  <button id="mostrar">Dar permiso</button>
              </sec:access>
          </sec:ifLoggedIn>


            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.reporte}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.reporte}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.reporte}" method="POST">
                <fieldset class="form">
                    <f:all bean="reporte"/>
                </fieldset>
                <fieldset class="buttons"  id="permiso">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>


    <script type="text/jscript">
          $(document).ready(function(){
             $("#ocultar").click(function(){alert("hola")});
             $("#mostrar").click(function(){$("#permiso").show("slow")});
          });
    </script>
</html>
