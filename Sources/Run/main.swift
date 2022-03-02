import App
import Vapor


let configuration = Configuration()
let downloader = Downloader(configuration: configuration)
//MARK: Setup Content
//clones yt-dl git and makes it
setup()

//MARK: Download Vids
downloader.startVideoDownload()//For now this is blocking, this way everything happens before server boot.

//MARK: Start Vapor
var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
defer { app.shutdown() }
try configure(app)
try app.run()
