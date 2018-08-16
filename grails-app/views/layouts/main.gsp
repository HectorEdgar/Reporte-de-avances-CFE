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

${/*
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
                <a class="navbar-brand" href="/Usuario/index">
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

*/}

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="${createLink(uri: '/')}">Reportes CFE</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <label class="text-white">Bienvenido: <sec:username/></label>
    </div>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">

        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-circle fa-fw"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Cerrar sesión</a>
            </div>
        </li>
    </ul>

</nav>

<div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
        <sec:access expression="hasRole('ROLE_ADMIN')">
            <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/Usuario')}">
                    <i class="fas fa-fw fa-user-alt"></i>
                    <span>Usuario</span>
                </a>
            </li>
        </sec:access>
        <sec:access expression="hasRole('ROLE_ADMIN')">
            <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/mes')}">
                    <i class="fas fa-fw fa-calendar-alt"></i>
                    <span>Mes</span>
                </a>
            </li>
        </sec:access>

        <sec:access expression="hasRole('ROLE_ADMIN')">
            <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/semana')}">
                    <i class="fas fa-fw fa-calendar-minus"></i>
                    <span>Semana</span>
                </a>
            </li>
        </sec:access>

        <sec:access expression="hasRole('ROLE_ADMIN')">
            <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/reporte')}">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Reportes</span>
                </a>
            </li>
        </sec:access>

        <sec:access expression="hasRole('ROLE_ZONA')">
            <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/reporte')}">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Reportes</span>
                </a>
            </li>
        </sec:access>

        <sec:access expression="hasRole('ROLE_ADMIN')">
            <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/concepto')}">
                    <i class="fas fa-fw fa-chart-bar"></i>
                    <span>Concepto</span>
                </a>
            </li>
        </sec:access>
    </ul>

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
                    <span>Copyright © CFE 2018</span>
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
                <h5 class="modal-title" id="exampleModalLabel">¿Estas seguro de que deseas salir?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Selecciona "Cerrar sesión" si estas listo para terminar tu sesión.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <g:form controller="logout">
                    <button type="submit" name="logout" class="btn btn-danger btn-flat">
                        Cerrar sesión
                    </button>
                </g:form>

            </div>
        </div>
    </div>
</div>

    <asset:javascript src="application.js"/>
<script>
    $(function () {
        $('#dataTable').dataTable({
            "lengthMenu": [[10, 30, -1], [10, 30, "Todos"]],
            "lengthChange": true,
            "paging": true,
            "searching": true,
            "length": true,
            "autoWidth": true,
            "order": [[0, "asc"]],
            "language": {
                "emptyTable": "Sin registros",
                "info": "Registros _START_ a _END_. Total: _TOTAL_",
                "infoEmpty": "Sin registros por mostrar",
                "infoFiltered": "(_MAX_ registros filtrados)",
                "lengthMenu": "Mostrar _MENU_ registros",
                "loadingRecords": "Cargando...",
                "processing": "Procesando...",
                "search": "Buscar:",
                "zeroRecords": "No se encontraron resultados",
                "paginate": {
                    "first": "Inicio",
                    "last": "Fin",
                    "next": "Siguiente",
                    "previous": "Anterior"
                }
            }
        });
    });
</script>

</body>
</html>
