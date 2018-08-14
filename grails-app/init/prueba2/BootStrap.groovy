package prueba2

class BootStrap {

    def init = { servletContext ->
        def RoleAdmin = new Rol(authority: 'ROLE_ADMIN').save()
        def RoleZona = new Rol(authority: 'ROLE_ZONA').save()
        def RoleSuper = new Rol(authority: 'ROLE_SUPER').save()


        def testUser = new Usuario(username: 'admin', password: 'admin', nombre: 'Admin', apellidoPaterno: 'admin', apellidoMaterno: 'admin').save()
        def testUser2 = new Usuario(username: 'zona', password: 'zona', nombre: 'zona', apellidoPaterno: 'zona', apellidoMaterno: 'zona').save()
        def testUser3 = new Usuario(username: 'super', password: 'super', nombre: 'super', apellidoPaterno: 'super', apellidoMaterno: 'super').save()


        UsuarioRol.create testUser, RoleAdmin
        UsuarioRol.create testUser2, RoleZona
        UsuarioRol.create testUser3, RoleSuper

        UsuarioRol.withSession {
            it.flush()
            it.clear()
        }

        assert Usuario.count() == 3
        assert Rol.count() == 3
        assert UsuarioRol.count() == 3
    }
    def destroy = {
    }
}
