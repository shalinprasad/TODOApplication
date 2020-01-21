package todoapp

class SignupController {

    def register() {

            if (params.confirmpassword.compareTo(params.password) != 0) {
                return 0;
            } else {
                User user = new User(firstName: params.firstName, lastName: params.lastName, userName: params.username, email: params.useremail, password: params.password, confirmPassword: params.confirmpassword).save(flush: true);
                session.name = user.userName;
                redirect(controller: "Dashboard", action: "index")
            }
        }



    def login() {
        String userPassword=params.password;
        User user=User.findByEmail(params.email)
        if(user) {
            if (user.password.compareTo(userPassword) != 0) {
                return 0;
            } else {
                session.name = user.userName;
                redirect(controller: "Dashboard", action: "index")
            }
        }
        else
        {
            redirect(url:"/")
        }
    }

    def logout()
    {
        session.invalidate()
        redirect(url:"/")
    }





}
