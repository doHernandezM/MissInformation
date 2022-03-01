import App
import Vapor


let configuration = Config()
//MARK: Setup Content
//clones yt-dl git, makes it
firstInit()



//MARK: Start Vapor
var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
defer { app.shutdown() }
try configure(app)
try app.run()
