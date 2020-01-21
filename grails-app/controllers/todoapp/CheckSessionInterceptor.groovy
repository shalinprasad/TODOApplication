package todoapp


class CheckSessionInterceptor {

    public CheckSessionInterceptor() {
        match controller: 'dashboard', action: 'index'
    }
    boolean before() {

        if (!session.name) {
            flash.message = "Login First"
            redirect(url: "/")
            false
        } else {
            true
        }
    }

}
