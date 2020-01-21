package todoapp

class Task {
    String taskName
    Date lastUpdated
    Boolean isDone
    String timeFinished


    static belongsTo = [user:User]
    static constraints = {
        isDone(nullable: true)
        timeFinished(nullable: true)
    }
}
