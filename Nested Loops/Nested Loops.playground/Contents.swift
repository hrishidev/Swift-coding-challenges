//: Playground - noun: a place where people can play

import Foundation

// With input as 3 followng pyramids of numbers is printed
//
//     3
//    222
//   11111

func displayPyramidOutPut(input : Int) {

    var k = input
    var number = 1
    for i in stride(from: input, to: 0, by: -1) {
        var stringToPrint : String = ""

        for _ in stride(from: 0 ,to: k - 1 , by: 1) {
            stringToPrint.append(" ")
        }

        k = k - 1

        for _ in stride(from: 0 ,to: number  , by: 1) {
            stringToPrint.append("\(i)")
            }
        number = number + 2
        print(stringToPrint)
    }
}

// With input as 3 followng diamond formation of numbers is printed
//              1
//             222
//            33333
//             222
//              1

func displayDiamondOutPut(input : Int) {


    var k = input
    var number = 1
    var valueToPrint : Int = 0
    for i in stride(from: 1, to: ((input * 2)  ) , by: 1) {
        var stringToPrint : String = ""


        for _ in stride(from: 0 ,to: k - 1 , by: 1) {

            stringToPrint.append(" ")
        }

        if ( i < input ) {
            k = k - 1
        }
        else {
            k = k + 1
        }


        if ( i <= input ) {
            valueToPrint = i
        }
        else {
            valueToPrint = valueToPrint - 1
        }

        for _ in stride(from: 0 ,to: number  , by: 1) {

            stringToPrint.append("\(valueToPrint)")
        }

        if ( i < input) {
            number = number + 2
        }
        else {
            number = number - 2
        }

        print(stringToPrint)
    }
}

displayPyramidOutPut(input: 3)
print("")
displayDiamondOutPut(input: 3)
