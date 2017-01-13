
//******************//******************//******************//******************//******************
//                        ONLY WORKS WITH THE UPDATED SWIFT AND XCODE VERSION
//******************//******************//******************//******************//******************

/*
There is a (3) step process when dealing with NSURLSession
 of course you have to added dispatch for threading
*/
import UIKit

var str = "Hello, playground"
    
let config = URLSessionConfiguration.default

let session = URLSession(configuration: config)

let url: URL = URL(string: "https://www.examplesite.com/")!

//async
let task = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
    //
    print(response!)
    }
task.resume()

func sendMessage(_ message: String, to recipent: String, shouting: Bool) {
    
    var message = "\(message), \(recipent)"
    
    if shouting {
        message = message.uppercased()
    }
    
    print(message)
}

sendMessage("This is the message", to: "Deejay", shouting: true)


struct Rectangle {
    var width: Int?
    var height: Int?
    init() {
        super.init(width: width, height: height)
    }
    var area = Int {
        return width * height
    }
}





