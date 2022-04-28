import UIKit


struct Post:Codable{
    let userdId:Int?
    let id :Int
    let title:String
    let  body :String
// personalisation object json correspondant
//
//    enum CodingKeys: String, CodingKey {
//           case userdId = "userdId"
//           case id = "id"
//           case title = "title"
//          case body = "body"
//
//    }
    
}
//let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!//just 1[Post]
let url = URL(string: "https://jsonplaceholder.typicode.com/posts/")!//array[Post]
let task = URLSession.shared.dataTask(with: url){data ,response, error in
 
        //second way get like object poost via decoders
    let decoder = JSONDecoder()//create decoder
    if let data = data{
        do{
            let post = try decoder.decode([Post].self, from: data )
            
            print(post)
            print("\(post.count) je suis la voi de l raison ")
        }catch{
            print(error)
        }
       
    }}
task.resume()
