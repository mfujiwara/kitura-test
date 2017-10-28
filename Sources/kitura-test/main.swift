import Foundation
import Kitura

let router = Router()

router.get("/") { request, response, next in
    response.send("Hello, World!")
    next()
}

Kitura.addHTTPServer(onPort: Int(ProcessInfo.processInfo.environment["PORT", default: "8090"])!, with: router)

Kitura.run()
