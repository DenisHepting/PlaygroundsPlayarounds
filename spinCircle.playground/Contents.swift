//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var maxValue = 300.0

var radius = 320

var mySpins = radius/3
//var mySpins = 20
var upperValueStopDraw = Double(mySpins*2 - mySpins/8)
var spinsDou = Double(mySpins) * 2

var diameter = 1000


print(spinsDou)
var rangeMultiplier = upperValueStopDraw/maxValue
//print(
//var coverRange = currentFrequenz * rangeMultiplier

print("\(mySpins/8) SPINS / 8 ")

for i in mySpins/8...Int(maxValue){
    sleep(UInt32(0.01))
    var upperRangeValue = Double(i) * rangeMultiplier
//     var upperRangeValue = mySpins
    
    // Start drawing
    UIGraphicsBeginImageContext(CGSize(width: diameter, height: diameter))
    let spin = UIGraphicsGetCurrentContext()

    let angle = CGFloat.pi/CGFloat(mySpins)
    // handle nob
    let knobEllipse = CGRect(x: -21, y: radius - 11, width: 46, height: 46)
    // outside orientation Ellipses
    let orientationEllipse = CGRect(x: -10 , y: radius + 100, width: 20, height: 20)
    // rects which are spinning
    var spinRects =  CGRect(x: 0 , y: radius , width: 5, height: 20)
    let spinRectsPath: CGPath = UIBezierPath(roundedRect: spinRects, cornerRadius: 2.0).cgPath

    
    spin?.translateBy(x: 500 , y: 500)

    print("Range Multiplier \(rangeMultiplier)")
    print("Upper Range \(Int(upperRangeValue))")
    
    for i in 0...(mySpins*2)-1{
        // Gray base spin Rects
        if i > mySpins/8 && i < mySpins*2 - mySpins/8{
            spin?.setFillColor(UIColor.gray.cgColor)
            spin?.addPath(spinRectsPath)
            spin?.drawPath(using: .fill)
        }
        
        if i > mySpins/8 && i < Int(upperRangeValue){
            spin?.setFillColor(UIColor.orange.cgColor)
            spin?.addPath(spinRectsPath)
            spin?.drawPath(using: .fill)
        }
        if i == mySpins - 5 || i == mySpins + 5   {
            spin?.addRect(CGRect(x: 0 , y: radius - 5  , width: 4, height: 40))
        }
        // Fill green, if in Tone Range
        if Int(upperRangeValue) > mySpins - 5 && Int(upperRangeValue) <= mySpins + 5{
            spin?.addPath(spinRectsPath)
            spin?.setFillColor(UIColor(red: 149.0/255.0, green: 193.0/255.0, blue: 31.0/255.0, alpha: 1.0).cgColor as CGColor)
            spin?.drawPath(using: .fill)
        }
        // MIDDLE LINE
        if  i == mySpins{
          spin?.addRect(CGRect(x: 0 , y: radius - 30 , width: 4, height: 80))
        }
        // Orientation ellipse in 45 degree
        if i == mySpins/2 || i == mySpins || i == mySpins*2 - mySpins/2{
            spin?.addEllipse(in: orientationEllipse)
        }
        
        if  i == Int(upperRangeValue) {
            spin?.addEllipse(in: knobEllipse)
            spin?.setFillColor(UIColor.orange.cgColor)
            spin?.drawPath(using: .fill)
        }
        spin?.rotate(by: angle )
        
    }

    spin?.drawPath(using: .fill)
    
    
    let black1 = UIGraphicsGetImageFromCurrentImageContext()
    let stringToSave: UIImage = black1!
    
    UIGraphicsEndImageContext()

}
