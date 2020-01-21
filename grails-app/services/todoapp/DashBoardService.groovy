package todoapp

import grails.transaction.Transactional

@Transactional
class DashBoardService {

    def taskList(String name) {
        User user = User.findByUserName(name)
        List<Task> taskList= Task.createCriteria().list {
            eq("user.id", user.id)
        }.sort{
            it.lastUpdated
        }
        return taskList
    }
}

