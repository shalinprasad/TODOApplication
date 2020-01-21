package todoapp

class User {
    String firstName;
    String lastName;
    String userName;
    String email;
    String password;
    String confirmPassword
    Date dateCreated;
    Date lastUpdated

    static  hasMany=[tasks:Task]
    static constraints = {
        userName(unique: true)
        email(unique: true)
    }
}
