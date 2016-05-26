//challenge 1

import UIKit

func swapVars<T>(inout v1:T, inout with v2:T) {
    (v1, v2) = (v2, v1)
}
var v1 = "Marin", v2 = "Todorov"
[v1,v2]
swapVars(&v1, with:&v2)
[v1,v2]


//challenge 2

func flexStrings(p1: String = "", _ p2: String = "")->String{
    if p1.isEmpty && p2.isEmpty { return "none" } else { return p1 + p2 }
}
flexStrings()
flexStrings("one")
flexStrings("one","two")

//challenge 3



func sumAny(pars:Any...) -> String {
    var intResult = 0
    var i = 0
    while i < pars.count {
        let par = pars[i]
        switch par {
        case 0 as Int, "" as String:
            intResult -= 10
        case let someInt as Int:
            intResult += someInt
        case let someString as String:
            let num = Int(someString)
            if num != nil && num > 0{
                intResult += num!
            }
        default:
            break
        }
    i+=1
    }
    return String(intResult)
}

//challenge 4

func countFrom(from: Int, to: Int){
    var fromV = from
    if(fromV<=to){
        print(fromV, terminator:"")
        fromV+=1
        countFrom(fromV,to:to)
    }
}

countFrom(1,to:5)








