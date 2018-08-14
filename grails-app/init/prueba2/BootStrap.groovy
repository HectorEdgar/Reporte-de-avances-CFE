package prueba2

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Rol(authority: 'ROLE_ADMIN').save()

        def testUser = new Usuario(username: 'admin', password: 'admin', nombre: 'Admin', apellidoPaterno: 'admin', apellidoMaterno: 'apellidoPaterno').save()


        UsuarioRol.create testUser, adminRole

        UsuarioRol.withSession {
            it.flush()
            it.clear()
        }

        assert Usuario.count() == 1
        assert Rol.count() == 1
        assert UsuarioRol.count() == 1
    }
    def destroy = {
    }
}
