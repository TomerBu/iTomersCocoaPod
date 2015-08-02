import UIKit

extension UIColor{
    public convenience init(red:Int, green:Int, blue:Int){
        self.init(red:CGFloat(CGFloat(red/255)),green:CGFloat(CGFloat(green/255)),blue:CGFloat(CGFloat(blue/255)),alpha:CGFloat(1))
    }
    
}
