package todoapp

class DashboardController {
    def dashBoardService
    def index() {
        def userTask=dashBoardService.taskList(session.name);
        render(view: 'test',model:[userTask:userTask])
    }

    def deleteTask()
    {
        Task task=Task.findById(params.id)
        task.delete(flush:"true")
        redirect(controller:"dashboard",action:"index")
    }
}
