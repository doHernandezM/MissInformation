import Vapor
//achange
func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("index", ["title": "Hello Vapor!","poop": "shit!"])
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
