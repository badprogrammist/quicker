import ru.quicker.Role
import ru.quicker.User
import ru.quicker.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def defaultAdmin = new User(username: 'admin', enabled: true, password: 'admin')
        defaultAdmin.save(flush: true)

        UserRole.create(defaultAdmin, adminRole, true)
    }
    def destroy = {
    }
}
