import ru.quicker.Role
import ru.quicker.User
import ru.quicker.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN')
        adminRole.save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER')
        userRole.save(flush: true)

        def defaultAdmin = new User(username: 'admin', enabled: true, password: 'admin', name:"Ildar")
        defaultAdmin.save(flush: true)
        def defaultUser = new User(username: 'user', enabled: true, password: 'user', name:"Ildar")
        defaultUser.save(flush: true)

        UserRole.create(defaultAdmin, adminRole, true)
        UserRole.create(defaultUser, userRole, true)
    }
    def destroy = {
    }
}
