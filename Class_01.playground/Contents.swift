import UIKit
// MARK: -  task one Задание 1-2. Базовые типы
// Числовые типы

let integer:   Int = 1
let integer8:  Int8 = 2
let integer16: Int16 = 3
let integer32: Int32 = 6
let integer64: Int64 = 1

let uInteger:   UInt = 8
let uInteger8:  UInt8 = 7
let uInteger16: UInt16 = 8
let uInteger32: UInt32 = 76
let uInteger64: UInt64 = 0

let double:  Double = 1.1
let float:   Float = 1.2
let decimal: Decimal = 2.67855

let minInt = Int.min
let maxInt = Int.max

let minInt8 = Int8.min
let maxInt8 = Int8.max

let minInt16 = Int16.min
let maxInt16 = Int16.max

let minInt32 = Int32.min
let maxInt32 = Int32.max

let minInt64 = Int64.min
let maxInt64 = Int64.max

let minUInt = UInt.min
let maxUInt = UInt.max

let minUInt8 = UInt8.min
let maxUInt8 = UInt8.max

let minUInt16 = UInt16.min
let maxUInt16 = UInt16.max

let minUInt32 = UInt32.min
let maxUInt32 = UInt32.max

let minUInt64 = UInt64.min
let maxUInt64 = UInt64.max

// Строковые значения
let string: String = "Hello, World"
let character: Character = "a"


// Логический тип данных
let isTrue: Bool = true
let isFalse: Bool = false

let maxString = string.count

print("---------------------------")

// MARK: -  task two  - Приведение типов

let a = 2
let b = 4.5

let sum1 = a + Int(b)
let sum2 = b + Double(a)

let sum3 = string + String(character)
let sum4 = string + String(integer)
let sum5 = double + Double(uInteger)
let sum6 = float + Float(uInteger32)
let sum7 = integer8 + Int8(integer32)
let sum8 = uInteger16 + UInt16(double)

print("---------------------------")

// MARK: -  task three  - Арифметические вычисления
//Произвести различные вычисления с математическими операторами (умножение, деление, сложение, вычитание, деление с остатком). Выводить результат в консоль в таком виде: 3 + 2 = 5 (использовать интерполяцию строк).

let number1 = 12
let number2 = 6
let number3 = 0
let number4 = -5
let number5 = 100
let number6 = 7

let summa = number3 + number2
let minus = number5 - number6
let multiply = number2 * number6
let split = number5 / number1
let remainsOfSplit = number1 % number2

let age: Int = 22
print("Age: \(age)")
print("\(number3) + \(number2) = \(summa) ")
print("\(minus) = \(number5) - \(number6)")

print("---------------------------")

// MARK: -  task four  -  Условия If-else
//С помощью if-else необходимо вывести в консоль, ночь ли сегодня (isNight).

// 1 вариант решения
let timeOfDay = 10

if timeOfDay < 0 || timeOfDay > 24 {
    print("There aren't that many hours in a day!")
} else if timeOfDay < 6 || timeOfDay >= 21 {
    print("It's night now")
} else {
    print("It's daytime now")
}

// 2 вариант решения

let isNight = true

if isNight {
    print("isNight")
} else {
    print("isDay")
}

print("---------------------------")


// MARK: -  task five  -  Сделать проверку на четность
// является ли число четным: 13, 2, 20, 21, 76. (Число X является четным/нечетным!)

let numberOne = 13
let numberTwo = 2
let numberThree = 20
let numberFour = 21
let numberFive = 76

if numberOne % 2 == 0 {
    print("Число \(numberOne) является четным")
} else {
    print("Число \(numberOne) является нечетным")
}

if numberTwo % 2 == 0 {
    print("Число \(numberTwo) является четным")
} else {
    print("Число \(numberTwo) является нечетным")
}

if numberThree % 2 == 0 {
    print("Число \(numberThree) является четным")
} else {
    print("Число \(numberThree) является нечетным")
}

if numberFour % 2 == 0 {
    print("Число \(numberFour) является четным")
} else {
    print("Число \(numberFour) является нечетным")
}

if numberFive % 2 == 0 {
    print("Число \(numberFive) является четным")
} else {
    print("Число \(numberFive) является нечетным")
}
print("---------------------------")

// MARK: -  task six  -  Switch
//В переменной day лежит какое-то число от 1 до 31 (вы задаете сами любое).
//Определить, в какую декаду месяца попадает это число (в первую, вторую или
//третью).

let day = 20

switch day {
case 1...10:
    print("Первая декада месяца")
case 11...20:
    print("Вторая декада месяца")
case 21...31:
    print("Третья декада месяца")
default:
    print("В месяце не может быть столько дней")
}
print("---------------------------")

// MARK: -  task seven  -  Работа со строками
//Дана строка, состоящая из символов, например, “bbppeeyy”. Проверить, что
//первым символом этой строки является буква “a” (или любая другая). Если это так –
//вывести 'да', в противном случае - ‘нет’. Затем поменяйте строку, чтобы условие
//соблюдалось. Поэкспериментируйте с разными строками.

let anyString = "bbppeeyy"
if anyString.first == "a" {
    print("да")
} else {
    print("нет")
}


let anyStringTwo = "adjfhhbff"
if anyStringTwo.first == "a" {
    print("да")
} else {
    print("нет")
}
print("---------------------------")


// MARK: -  task eight  - Цикл For - in
//Вывести таблицу умножения в консоль с помощью циклов for in.
for index in 1...9 {
    for i in 1...9 {
        print("\(index) умножить на \(i) будет \(index * i)")
    }
}

print("---------------------------")
