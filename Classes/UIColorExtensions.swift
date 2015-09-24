import UIKit

public extension UIColor{
    
    //MARK: custom convenience inits
    
    //Init with RGB Colors ranging from 0-255.
    public convenience init(red:Int, green:Int, blue:Int){
        
        self.init(red:CGFloat(CGFloat(red)/255),
                  green:CGFloat(CGFloat(green)/255),
                  blue:CGFloat(CGFloat(blue)/255),
                  alpha:CGFloat(1)
        )
    }
    
}


//store all the queues as constants
//disptach main method
//doInBackgroundAndAfterOnMain

struct MGCD {

    static let userInitiated = dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0)
    static let userInteractive = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0)
    static let utility = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0)
    static let background = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)
    static let main = dispatch_get_main_queue()
    static let mPrivate = dispatch_queue_create("serial-queue", DISPATCH_QUEUE_SERIAL)
    
    func dispatch_main(closure:() -> Void){
        dispatch_async(dispatch_get_main_queue(), closure)
    }
    
    static func doInBackground<T>(asyncClosure: () -> T, mainClosure:(result: T) -> ())
    {
        dispatch_async(userInteractive) {
            let result = asyncClosure()
            dispatch_async(main) {
                mainClosure(result: result)
            }
        }
    }
    
        static func delay(seconds:Int, runAfter:()->Void){
        //convert time to nanoSeconds : Int64
        let delay = Int64(seconds)*Int64(1e9)
        //init a dispatch_time_t from the delay
        let time = dispatch_time(DISPATCH_TIME_NOW ,delay)
        //use dispatch_after
        dispatch_after(time, main){runAfter()}
    }
}
