package ru.quicker

class UserController {

    def index() { }

    def login= { }

    def authenticate = {
        def user = User.findByUsernameAndPassword(params.username, params.password)
        if(user){
            session.user = user
            flash.message = "Hello ${user.name}!"
            redirect(action:"login")

        }else{
            flash.message = "Sorry, ${params.name}. Please try again."
            redirect(action:"login")
        }
    }

    def logout = {
        flash.message = "Goodbye ${session.user.name}"
        session.user = null
        redirect(action:"login")
    }
}
