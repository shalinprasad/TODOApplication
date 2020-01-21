package todoapp

class TaskController {
 def createTask(){
     println "Hello"+params.start_date.getClass()
     User user=User.findByUserName(session.name)
     Task task=new Task(taskName:params.task,timeFinished:params.start_date)
     user.addToTasks(task)
     task.save(flush:true)
     user.save(flush:true)
     redirect(controller:"dashboard",action:"index")
 }
    def updateTaskstatus()
    {
        Task task=Task.findById(params.t1);
        task.isDone=true
        task.save(flush:true)
    }

    def updateTaskrecord()
    {
        Task task=Task.findById(params.t2);
        task.isDone=false
        task.save(flush:true)

    }



}
