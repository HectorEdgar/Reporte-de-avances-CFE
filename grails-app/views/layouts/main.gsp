<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body id="page-top">

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/#">
                  Home
                </a>
            </div>
<sec:ifLoggedIn>

            Bienvenido: <sec:username/>
            <sec:access expression="hasRole('ROLE_ADMIN')">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Usuarios/index">
                  Usuarios
                </a>
            </div>
            </sec:access>

            <sec:access expression="hasRole('ROLE_ADMIN')">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Mes/index">
                  Mes
                </a>
            </div>
            </sec:access>

            <sec:access expression="hasRole('ROLE_ADMIN')">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Semana/index">
                  Semana
                </a>
            </div>
            </sec:access>

            <sec:access expression="hasRole('ROLE_ADMIN')">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Reporte/index">
                  Reporte
                </a>
            </div>
            </sec:access>

            <sec:access expression="hasRole('ROLE_ZONA')">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Reporte/index">
                  Reporte
                </a>
            </div>
            </sec:access>

            <sec:access expression="hasRole('ROLE_ADMIN')">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Concepto/index">
                  Concepto
                </a>
            </div>
            </sec:access>

            <div class="navbar-header">
              <a href="/logoff">Salir</a>
            </div>
</sec:ifLoggedIn>

            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>
  |



<div id="wrapper">
    <div id="content-wrapper">

        <div class="container-fluid">
            <!-- Main content -->
                <g:layoutBody />
            <!-- /.content -->
        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright © Your Website 2018</span>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>


    <div class="footer" role="contentinfo"></div>



    <asset:javascript src="application.js"/>

</body>
</html>
