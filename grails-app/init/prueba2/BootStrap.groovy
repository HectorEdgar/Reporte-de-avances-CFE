package prueba2

class BootStrap {


    def init = { servletContext ->


        def p = new Permiso(estado: true).save()

        def enero = new Mes(fechaCreación: '2018-08-16', mes : 'Enero').save()
        def febrero = new Mes(fechaCreación: '2018-08-16', mes : 'Febrero').save()
        def marzo = new Mes(fechaCreación: '2018-08-16', mes : 'Marzo').save()
        def abril = new Mes(fechaCreación: '2018-08-16', mes : 'Abril').save()
        def mayo = new Mes(fechaCreación: '2018-08-16', mes : 'Mayo').save()
        def junio = new Mes(fechaCreación: '2018-08-16', mes : 'Junio').save()
        def julio = new Mes(fechaCreación: '2018-08-16', mes : 'Julio').save()
        def agosto = new Mes(fechaCreación: '2018-08-16', mes : 'Agosto').save()
        def septiembre = new Mes(fechaCreación: '2018-08-16', mes : 'Septiembre').save()
        def octubre = new Mes(fechaCreación: '2018-08-16', mes : 'Octubre').save()
        def noviembre = new Mes(fechaCreación: '2018-08-16', mes : 'Noviembre').save()
        def diciembre = new Mes(fechaCreación: '2018-08-16', mes : 'Diciembre').save()

        def semana1 = new Semana(numeroSemana: 1, descripcion: 'Semana 1').save()
        def semana2 = new Semana(numeroSemana: 2, descripcion: 'Semana 2').save()
        def semana3 = new Semana(numeroSemana: 3, descripcion: 'Semana 3').save()
        def semana4 = new Semana(numeroSemana: 4, descripcion: 'Semana 4').save()
        def semana5 = new Semana(numeroSemana: 5, descripcion: 'Semana 5').save()

        def cpto1 = new Concepto(nombre:' Circuito Limpio en Propiedad' ,descripcion: 'Circuito Limpio en Propiedad',condigo: '001').save()
        def cpto2 = new Concepto(nombre:'Termografia' ,descripcion: 'Termografia',condigo: '002').save()
        def cpto3 = new Concepto(nombre:'Remplazo de Aislamiento' ,descripcion: 'Remplazo de Aislamiento',condigo: '003').save()
        def cpto4 = new Concepto(nombre:'Remplazo de Apartarrayo' ,descripcion: 'Remplazo de Apartarrayo',condigo: '004').save()
        def cpto5 = new Concepto(nombre:'PODA' ,descripcion: 'PODA',condigo: '005').save()
        def cpto6 = new Concepto(nombre:'Modificacion de Puentes' ,descripcion: 'Modificacion de Puentes',condigo: '006').save()
        def cpto7 = new Concepto(nombre:'Instalacion de Cinta Elastomerica' ,descripcion: 'Instalacion de Cinta Elastomerica',condigo: '007').save()
        def cpto8 = new Concepto(nombre:'Subestaciones Limpias' ,descripcion: 'Subestaciones Limpias',condigo: '008').save()


        def RoleAdmin = new Rol(authority: 'ROLE_ADMIN').save()
        def RoleZona = new Rol(authority: 'ROLE_ZONA').save()
        def RoleSuper = new Rol(authority: 'ROLE_SUPER').save()

        def testUser = new Usuario(username: 'admin', password: 'admin', nombre: 'Admin', apellidoPaterno: 'admin', apellidoMaterno: 'admin').save()
        def testUser2 = new Usuario(username: 'zonaScr', password: '9MNF6', nombre: 'Orlando de Jesus', apellidoPaterno: 'Jimenez', apellidoMaterno: 'Perez').save()
        def testUser3 = new Usuario(username: 'zonaTux', password: '9DP0D', nombre: 'Luis Antonio', apellidoPaterno: 'Cervanes', apellidoMaterno: 'Meza').save()
        def testUser4 = new Usuario(username: 'zonaOax', password: '9DM0W', nombre: 'Eden', apellidoPaterno: 'Vasquez', apellidoMaterno: 'Sibaja').save()
        def testUser5 = new Usuario(username: 'zonaHco', password: '9L0K7', nombre: 'Ruben', apellidoPaterno: 'Bautista', apellidoMaterno: 'Arroyo').save()
        def testUser6 = new Usuario(username: 'zonaHjp', password: '9DL0M', nombre: 'Luis Rey', apellidoPaterno: 'Fuentevilla', apellidoMaterno: 'Altamirano').save()
        def testUser7 = new Usuario(username: 'zonaTap', password: '9AMJN', nombre: 'Salomon', apellidoPaterno: 'Garcia', apellidoMaterno: 'Garcia').save()
        def testUser8 = new Usuario(username: 'zonaTeh', password: '9L0KB', nombre: 'Miguel Angel', apellidoPaterno: 'Velazquez', apellidoMaterno: 'Valencia').save()
        def testUser9 = new Usuario(username: 'zonaVsa', password: '9FKFP', nombre: 'Alberto', apellidoPaterno: 'Hernandez', apellidoMaterno: 'Perez').save()
        def testUser10 = new Usuario(username: 'zonaCho', password: '9B56G', nombre: 'Enrique', apellidoPaterno: 'Gonzalez', apellidoMaterno: 'Alejandro').save()
        def testUser11 = new Usuario(username: 'zonaLrs', password: '9L0EN', nombre: 'Josue', apellidoPaterno: 'Lopez', apellidoMaterno: 'Romero').save()
        def testUser12 = new Usuario(username: 'super', password: 'super', nombre: 'super', apellidoPaterno: 'super', apellidoMaterno: 'super').save()

        UsuarioRol.create testUser, RoleAdmin
        UsuarioRol.create testUser2, RoleZona
        UsuarioRol.create testUser3, RoleZona
        UsuarioRol.create testUser4, RoleZona
        UsuarioRol.create testUser5, RoleZona
        UsuarioRol.create testUser6, RoleZona
        UsuarioRol.create testUser7, RoleZona
        UsuarioRol.create testUser8, RoleZona
        UsuarioRol.create testUser9, RoleZona
        UsuarioRol.create testUser10, RoleZona
        UsuarioRol.create testUser11, RoleZona
        UsuarioRol.create testUser12, RoleSuper

        UsuarioRol.withSession {
            it.flush()
            it.clear()
        }

        assert Usuario.count() == 12
        assert Rol.count() == 3
        assert UsuarioRol.count() == 12

    }
    def destroy = {
    }
}
