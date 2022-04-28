import UIKit


let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!//optionnal Object
let task = URLSession.shared.dataTask(with: url){data ,response, error in
// First way get optional in string
    if let data = data, let string = String( data:data,encoding: .utf8){
        print(string)
    }
}
task.resume()
