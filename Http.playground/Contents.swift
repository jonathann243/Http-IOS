import UIKit


struct Post:Codable{
    let userdId:Int
    let id :Int
    let title:String
    let  body :String
    
}
let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
let task = URLSession.shared.dataTask(with: url){data ,response, error in
    //let decoder = JSONDecoder()
// FISt way get optional in string
    if let data = data, let string = String( data:data,encoding: .utf8){
        print(string)
    }
        //second way get like object poost via decoder
   //  if let data = data, let string = String( data:data,encoding: .utf8){
      //     print(string)
     //  }
}
task.resume()
