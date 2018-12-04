class Car1 {
    var color: String = "red"
    var price: Int = 24000
}
var myCar1 = Car1()
var myCar2 = Car1()
myCar1.price = 25000
myCar2.price = 32000
print(myCar1.price, myCar2.price)

var myObjects = [Car1]()
myObjects = Array(repeating: Car1(), count: 3)
print(myObjects[0].price)
myObjects[0].price = 7
print(myObjects[0].price, myObjects[1].price)
//
func myRec1(n: Int) {
    print(n)
    if n > 1 {
        myRec1(n: n - 1)
    }
}
myRec1(n: 10)
//
var caps = [0,1,1,1,0,0,1]
func makeEqual(myInput: inout [Int]) -> [(Int, Int, Int)] {
    myInput += [myInput[0]]
    var areas = [(Int, Int, Int)]()
    var a = 0
    var b = 0
    for i in 1..<myInput.count {
        if myInput[i] != myInput[i - 1] {
            if myInput[i] != myInput[0] {
                a = i
                print("Persons from \(i)")
            } else {
                b = i - 1
                print(" to \(i - 1), please make it to \(myInput[i])")
                areas.append((a, b, myInput[i - 1]))
            }
        }
    }
    return areas
}
print(makeEqual(myInput: &caps))


