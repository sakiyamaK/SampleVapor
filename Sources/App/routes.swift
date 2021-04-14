import Vapor
import UIKit

func routes(_ app: Application) throws {
    app.get { req -> String in
      guard let jsonData = try? JSONSerialization.data(withJSONObject: [
        "hello": "vapor"
      ], options: []),
      let jsonStr = String(bytes: jsonData, encoding: .utf8) else {
        return ""
      }
      return jsonStr
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
