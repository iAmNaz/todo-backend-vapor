import Vapor

struct TodoAPIModel: Content {
    let id: Todo.IDValue
    let title: String
    let completed: Bool
    let order: Int?
    let url: String
}

extension TodoAPIModel {
    init(_ todo: Todo) throws {
        self.id = try todo.requireID()
        self.title = todo.title
        self.completed = todo.completed
        self.order = todo.order
        self.url = "https://localhost:8080/todos/\(self.id)"
    }
}
