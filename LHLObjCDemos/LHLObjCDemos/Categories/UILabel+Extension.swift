import Foundation
import UIKit

extension UILabel {
    
    func form() {
        
        self.font = kLabelFont
        self.textColor = kLabelTextColour
        self.textAlignment = .right
        
        
    }
    
    func alignBottom() {

    }
    
    func subHead() {
        
        self.font = kLabelFont
        self.textColor = ksubHeadTextColour
        self.textAlignment = .left
    }
    
    func xl() {
        self.textAlignment = .left
        self.textColor = UIColor(colorLiteralRed: 64.0, green: 64.0, blue: 64.0, alpha: 1.0)
        self.font = UIFont(name: "SFUIText-Medium", size: 36.0)
    }
    func lg() {
        self.textAlignment = .left
        self.textColor = UIColor(colorLiteralRed: 64.0, green: 64.0, blue: 64.0, alpha: 1.0)
        self.font = UIFont(name: "SFUIText-Regular", size: 24.0)
    }
    
    func md() {
        self.textAlignment = .left
        self.textColor = UIColor(colorLiteralRed: 64.0, green: 64.0, blue: 64.0, alpha: 1.0)
        self.font = UIFont(name: "SFUIText-Regular", size: 16.0)
    }
    
    func sm() {
        self.textAlignment = .left
        self.textColor = UIColor(colorLiteralRed: 64.0, green: 64.0, blue: 64.0, alpha: 1.0)
        self.font = UIFont(name: "SFUIText-Light", size: 14.0)
    }
}
