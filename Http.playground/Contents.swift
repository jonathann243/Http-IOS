import UIKit


struct Post:Codable{
    let userdId:Int
    let id :Int
    let title:String
    let  body :String
    
}
let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
let task = URLSession.shared.dataTask(with: url){data ,response, error in
    print("xxxxx")
        //second way get like object poost via decoders
    let decoder = JSONDecoder ()
    if let data = data, let post = try? decoder.decode(Post.self, from: data ){
        print("ffff"+post.title)
       }
}
task.resume()
print("xxxxx")
