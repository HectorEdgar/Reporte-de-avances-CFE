package prueba2

class BootStrap {


    def init = { servletContext ->

        def p = new Permiso(estado: true).save()

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
