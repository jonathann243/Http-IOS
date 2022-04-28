import UIKit


//*******************************************************
//synch cousre execute en meme temps que le main (==)
//asynch relais intervient apres le temps princiipale(-0-0)
// deadline = depard time
//DispatchQueue.global().async {//attend x sec et print
//    sleep(3)
//    print("print inside\n")
//}
//print("print Outside ")

//**************************************
//attend 5 et affiche
//DispatchQueue.main.asyncAfter(deadline: .now()+5){
//    print("delay after 5 seconde")
//}
////attend 3 sec et affiche
//DispatchQueue.main.asyncAfter(deadline: .now()+3){
//    print("delay after 2 seconde")
//}
/*******************GROUPE THREAD 2 FACON de faire AVEC ************/
let queue = DispatchQueue.global()
let group = DispatchGroup()

 //----Premiere facon
//queue.async(group: group) {
//    sleep(3)
//    print(" Task 1 done ")
//}
//queue.async(group: group) {
//    sleep(1)
//    print(" Task 2 done ")
//}
//group.wait()
//print("All tasks done ")
//print("execution")

//----Deuxieme facon
group.enter()
queue.async (group: group){
    sleep(3)
    print("Task 1 done ")
    group.leave()
}
group.enter()
queue.async (group: group){
    sleep(1)
    print("Task 2 done ")
    group.leave()
}
group.notify(queue: queue){
    print("all Task Done ")
    //notification donc blonc code continue sera affcicher
}
print("Continue Execution")






