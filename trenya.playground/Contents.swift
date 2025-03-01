
/*
 Давайте разработаем приложение для тренера по бегу, он будет вносить в приложение пол спортсмена и секунды, за которые спортсмен пробежал 100 метровку.

 Напишите программу, которая будет показывать на какой разряд пробежал спортсмен.

 Есть две категории Мужчина и Женщина

 1 разряд у мужчин дают от 10.95 – 11.44, у женщин от 12.65 – 13.44
 2 разряд у мужчин дают от 11.55 – 12.04 , у женщин от 13.45 – 14.34
 3 разряд у мужчин дают от 12.05 – 12.84, у женщин от 14.35 – 15.34

 Выведите результат на консоль: “"Спортсмену присвоен <….> разряд по бегу на дистанцию 100 метров, в категории <….>" “



let gender = "Man"
let rezult = 11.6
var rank = 0

if gender == "Man" {
    if rezult >= 10.95 && rezult <= 11.44 {
        rank = 1
    } else if rezult >= 11.55 &&  rezult <= 12.04 {
        rank = 2
    } else if rezult >= 12.05 && rezult <= 12.84 {
        rank = 3
    }
} else {
    if rezult >= 12.65 && rezult <= 13.44 {
        rank = 1
    } else if rezult >= 13.45 && rezult <= 14.34 {
        rank = 2
    } else if rezult >= 14.35 && rezult <= 15.34 {
        rank = 3
        }
}

print("Спортсмену присвоен \(rank) разряд по бегу на дистанцию 100 метров, в категории \(gender)")

/*

 Задача 6.1 📚
 В праздничный день в магазин игрушек приходит покупатель, если у пользователя есть карта клиента то ему в этот день дают 30 процентную скидку, если нет то 15 процентов.
 Посчитайте сколько заплатит пользователь за игрушку стоимостью 760 рублей, если у него есть карта.
 */

let clientCard = false
var sale = 0
let price = 760
var salePrace = 0


sale = clientCard ? 30 : 15

salePrace = price - ((price * sale)/100)

print("С вас  \(salePrace) рублей, ваша скидка составила \(sale) процентов")


/*
 Рассчитайте количество полных минут в 2170 секундах. Если секунд не будет то выводим на консоль сообщение : “<…> минут”, если есть секунды то выводим сообщение <…> минут и <…> секунд.
 */

let seconds = 2170
let minutes = seconds / 60
let restOfSeconds = seconds % 60

restOfSeconds == 0
? print("\(minutes) минут.")
: print("\(minutes) минут и \(restOfSeconds) секунд.")


let coin = "Gold"
var price = 0

if coin == "Gold" {
    price = 46220
} else if coin == "Silver" {
    price = 5500
} else {
    price = 498
}

print("\(coin) coin worth \(price) rubles")


let coin = "Gold"
let isCard = false
var price = 0

switch coin {
case "Gold" where isCard: // После where мы определяем логическое значение
    price = 46220
case "Silver":
    price = 5500
case "Сopper":
    price = 498
default:
    print("we have nothing to offer you")
}

if price > 0 {
    print("\(coin) coin worth \(price) rubles")
} // это условие нам нужно, в том случае если сработает дефолтная ветка, мы на консоли видели только один принт.


let number = 10
var value = 0

switch number {
case 1, 3:
    value += number
case 2, 4:
    value -= number
default:
    print("indefinitely")
}
// Реализуйте логику светофора, если горит зеленый то на консоль выведите “Можно ехать!”, если желтый то “Приготовьтесь!”, а на красный “Стоп!

let trafficLights = "yellow"

switch trafficLights {
case "green":
    print("Go")
case "yellow":
    print("Got ready")
case "red":
    print("Stop")
default:
    print("error")
}

//Напишите программу для интернет магазина, если у пользователя есть промокод “BLACKFRIDAY” то он получает 50 процентов скидки, если у него есть промокод “CYBERMONDAY” то он получает 30 процентов скидку, во всех остальных случаях он должен заплатить полную стоимость, выведите на консоль конечную стоимость.

let promocode = "CYBY"
let originalPrice = 300.00
var saleSize = 0.00
var finalPrice = 0.00

switch promocode {
case "BLACKFRIDAY":
    saleSize = originalPrice * 0.50
case "CYBERMONDAY":
    saleSize = originalPrice * 0.30
default:
    break
}

finalPrice = originalPrice - saleSize

print("С вас \(finalPrice)")

//Напишите программу для столовой, в которой есть два типа предоставления услуг “sit down” где ты платишь 150 рублей за человека и “buffet” 100 рублей за человека. Определите стоимость за одного человека и посчитайте общую стоимость за пришедшую компанию людей.
// вас должно быть четыре свойства, первое отвечает за количество посетителей, вторая за тип услуги, третья за стоимость услуги на одного человека, а четвертая за общую стоимость. Значение для сопоставления будет тип услуги.

let countGuest = 25
let service = "sit down"
var cost = 0
var fullPrice = 0

switch service {
case "sit down":
    cost = 150
case "buffet":
    cost = 100
default:
    break
}

fullPrice = countGuest * cost
print(fullPrice)

//Создайте алгоритм будильника, при котором в понедельник и среду вы будете отображать на консоли сообщение: “wake up at 8:30 am”, в четверг, на консоли должны видеть: “wake up at 9:00 am”, и каждую четвертую пятницу месяца на консоли должно быть: “wake up at 10:30”. А во все остальные дни: “today is a day off”

let dayOfWeek = "Пятница"
let week = 3

switch dayOfWeek {
case "Понедельник", "Среда":
    print("wake up at 8:30 am")
case "Четверг":
    print("wake up at 9:00 am")
case "Пятница" where week == 4:
    print("wake up at 10:30")
default:
    print("today is a day off")
}
 */

var numbers = [3, 5, 11, 44, 44, 7]
var strings = ["apple", "banana", "cherry"]
var doubles = [4.5, 7.9, 1.8, 1]

var arrayOneInt = [6, 8, 22, 11, 78, 900]
var arrayOneDuble = [2.2, 5.78, 90.5, 56.6]
var names = ["Sveta", "Sasha", "Luly", "Pepa"]

var numbers2: [Int] = []
var strings2: [String] = []
var doubles2: [Double] = []

var numbers3 = [Int]()
var strings3 = [String]()
var doubles3 = [Double]()

var numbers4: Array<Int> = []
var strings4: Array<String> = []
var doubles4: Array<Double> = []


let num = numbers[2]
let stringIndex = names[2]

names[1] = "Ilya"
arrayOneInt[0] = 7

arrayOneInt.count
arrayOneInt.isEmpty
arrayOneInt = []
arrayOneInt.isEmpty
arrayOneInt.append(2)

strings.append("pineapple")
doubles.append(4.8)
numbers.append(111)

numbers.insert(4, at: 0)
doubles.insert(99.9, at: 3)
strings.insert("pear", at: 2)

numbers.remove(at: 2)
doubles.remove(at: 0)
strings.remove(at: 3)

numbers.contains(6)
print(names[0])
print(names[1])
print(names[2])
print(names[3])
print(names)

let names2 = ["Ann", "Bil", "Sem"]
let firstName = names[0]
let secondName = names[1]
let thirdName = names[2]

print(firstName)
print(secondName)
print(thirdName)


//Создайте массив целых чисел из 5 элементов.Определите количество элементов массива и прибавьте это значение к первому элементу.Далее добавьте полученное значение в конец массива
var integers = [1, 2, 3, 4, 5]
let count = integers.count
let firstNumber = integers[0]
let lastNumber = firstNumber + count
integers.append(lastNumber)
print(integers)


var guests = ["Bill", "Tim", "Tom", "Ann"]
let guest = "Ivan"

if guests.contains(guest) {
    print("Welcome, \(guest)")
} else {
    guests.append(guest)
}
print(guests)

guests.contains(guest) ? print("Welcom, \(guest)") : guests.append(guest)
print(guests)


//Напишите программу, которая будет брать элемент по рандомному индексу и удалять его из массива, в том случае если массив не пустой, если же массив пуст, то добавлять в него рандомное значение от 1 до 10
var newArray = [1, 7, 9, 4, 0]

if !newArray.isEmpty {
    let randomNumber = Int.random(in: 0..<newArray.count)
    newArray.remove(at: randomNumber)
} else {
    newArray.append(Int.random(in: 1...10))
}

print(newArray)
