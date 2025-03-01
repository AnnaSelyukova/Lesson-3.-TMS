import UIKit

//var greeting = "Hello, playground"
//
//// Задание 1-2. Базовые типы
//// Числовые типы
//
//let integer:   Int = 1
//let integer8:  Int8 = 2
//let integer16: Int16 = 3
//let integer32: Int32 = 6
//let integer64: Int64 = 1
//
//let uInteger:  UInt = 8
//let uInteger8:  UInt8 = 7
//let uInteger16:  UInt16 = 8
//let uInteger32:  UInt32 = 76
//let uInteger64:  UInt64 = 0
//
//let double:    Double = 1.1
//let float:     Float = 1.2
//let decimal:   Decimal = 2.67855
//
//let minInt = Int.min
//let maxInt = Int.max
//
//let minInt8 = Int8.min
//let maxInt8 = Int8.max
//
//let minInt16 = Int16.min
//let maxInt16 = Int16.max
//
//let minInt32 = Int32.min
//let maxInt32 = Int32.max
//
//let minInt64 = Int64.min
//let maxInt64 = Int64.max
//
//let minUInt = UInt.min
//let maxUInt = UInt.max
//
//let minUInt8 = UInt8.min
//let maxUInt8 = UInt8.max
//
//let minUInt16 = UInt16.min
//let maxUInt16 = UInt16.max
//
//let minUInt32 = UInt32.min
//let maxUInt32 = UInt32.max
//
//let minUInt64 = UInt64.min
//let maxUInt64 = UInt64.max
//
//// Строковые значения
//
//let streeng: String = "Hello, World"
//let character: Character = "a"
//
//
//
//
//// Логический тип данных
//
//let isTrue: Bool = true
//let isFalsr: Bool = false
//
//let maxStreeng = streeng.count
//
//
//
////  Задание 3. Приведение типов
//var a = 2
//var b = 4.5
//
//let sum1 = a + Int(b)
//let sum2 = b + Double(a)
//
//let sum3 = streeng + String(character)
//let sum4 = streeng + String(integer)
//let sum5 = double + Double(uInteger)
//let sum6 = float + Float(uInteger32)
//let sum7 = integer8 + Int8(integer32)
//let sum8 = uInteger16 + UInt16(double)
//
//// 4. Произвести различные вычисления с математическими операторами (умножение, деление, сложение, вычитание). Выводить результат в консоль в таком виде: 3+ 2 = 5 (использовать интерполяцию строк).
//
//let number1 = 12
//let number2 = 6
//let number3 = 0
//let number4 = -5
//let number5 = 100
//let number6 = 7
//
//let summa = number3 + number2
//let minus = number5 - number6
//let umnojenie = number2 * number6
//let delenie = number5 / number1
//let ostatokOtDeleniya = number1 % number2
//
//var age: Int = 22
//print("Age: \(age)")
//print("\(number3) + \(number2) = \(summa) ")
//
////5. С помощью if-else необходимо вывести в консоль, ночь ли сегодня (isNight).
//
//var isNigth = true
//
//if isNigth == false {
//    print("Сейчас ночь")
//} else {
//    print("Сейчас день")}


var time = 18

if time < 0 || time > 24 {
    print("Ошибка")
} else if time < 6 || time >= 22 {
    print("Ночь")
} else {
    print("День")
}

// 7*. Сделать проверку: является ли число четным: 13, 2, 20, 21, 76.

//
//let numOne = 13
//let numTwo = 2
//let numThree = 20
//let numFor = 21
//let numFive = 76
//
//
//if numOne % 2 == 0 {
//    print("\(numOne) is even")
//} else {
//    print("\(numOne) is odd")
//}
//
//
//if numTwo % 2 == 0 {
//    print("\(numTwo) is even")
//} else {
//    print("\(numTwo) is odd")
//}
//
//
//if numThree % 2 == 0 {
//    print("\(numThree) is even")
//} else {
//    print("\(numThree) is odd")
//}
//
//if numFor % 2 == 0 {
//    print("\(numFor) is even")
//} else {
//    print("\(numFor) is odd")
//}
//
//if numFive % 2 == 0 {
//    print("\(numFive) is even")
//} else {
//    print("\(numFive) is odd")
//}
//
////8. В переменной day лежит какое-то число от 1 до 31 (вы задаете сами любое). Определить, в какую декаду месяца попадает это число (в первую, вторую или третью).
//
//var day = 5
//switch day {
//case 1...10:
//    print("1 ая декада")
//case 11...19:
//    print("2 ая декада")
//case 20...31:
//    print("3  декада")
//default:
//    print("в месяце не может быть столько дней")
//
//}
////9*. Дана строка, состоящая из символов, например, “bbppeeyy”. Проверить, что первым символом этой строки является буква “a” (или любая другая). Если это так – вывести 'да', в противном случае - ‘нет’. Затем поменяйте строку, чтобы условие соблюдалось. Поэкспериментируйте с разными строками.
//
//let stringSimbol1 = "bbppeeyy"
//
//if stringSimbol1.first == "a" {
//    print("Yes")
//} else {
//    print("No")
//}
//
//let stringSimbol2 = "ajfhfhjdfgg"
//
//if stringSimbol2.first == "a" {
//    print("Yes")
//} else {
//    print("No")
//}
//
//// 10*. Вывести таблицу умножения в консоль с помощью циклов for in.
//
//for index in 1...9 {
//    for j in 1...9 {
//        print("\(index) умножить на \(j)  будет \(index * j)")
//    }
//}
