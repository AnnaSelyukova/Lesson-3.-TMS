import UIKit

var greeting = "Hello, playground"
// MARK: - Анализатор результатов экзамена:
//
//•   Создайте enum Grade с кейсами A, B, C, D, F.  Каждому кейсу присвойте rawValue типа Int, представляющий числовой балл (например, A = 90, B = 80 и т.д.).
//•   Создайте функцию getLetterGrade(score: Int) -> Grade?, которая принимает числовой балл (Int) и возвращает соответствующую буквенную оценку (Grade).  Если балл находится вне допустимого диапазона (например, меньше 0 или больше 100), функция должна возвращать nil.  Реализуйте логику определения оценки на основе диапазонов баллов (например, 90-100 -> A, 80-89 -> B и т.д.).
//•   Создайте функцию printExamResult(name: String, score: Int) -> String, которая принимает имя студента (String) и его балл (Int) и возвращает строку с результатом экзамена. Используйте функцию getLetterGrade для получения буквенной оценки.
//
//    •   Если функция getLetterGrade возвращает оценку, строка должна иметь формат: "[Имя студента] получил [Буквенная оценка] (Балл: [Числовой балл])".
//    •   Если функция getLetterGrade возвращает nil, строка должна иметь формат: "[Имя студента] получил недопустимый балл: [Числовой балл]".
//
//•   Продемонстрируйте работу функции printExamResult с разными входными данными, включая допустимые и недопустимые баллы.
enum Grade: Int {
    case A = 90
    case B = 80
    case C = 70
    case D = 60
    case F = 0
}

func getLetterGrade(score: Int) -> Grade? {
    switch score {
    case 90...100:
        return .A
    case 80..<90:
        return .B
    case 70..<80:
        return .C
    case 60..<70:
        return .D
    case 0..<60:
        return .F
    default:
        return nil
    }
}

func printExamResult(name: String, score: Int) -> String {
    if let grade = getLetterGrade(score: score) {
        return "\(name) получил/(а) оценку \(grade) (Балл: \(score))"
    } else {
        return "\(name) получил/(а) недопустимый балл: \(score)"
    }
}

// Примеры использования
let student1 = printExamResult(name: "Иван", score: 150)
print(student1)

let student2 = printExamResult(name: "Олег", score: 100)
print(student2)

let student3 = printExamResult(name: "Рузанна", score: 85)
print(student3)

let student4 = printExamResult(name: "Анна", score: -20)
print(student4)

let student5 = printExamResult(name: "Дмитрий", score: 54)
print(student5)

let student6 = printExamResult(name: "Ольга", score: 60)
print(student6)

let student7 = printExamResult(name: "Алексей", score: 70)
print(student7)

print("-------------------------------")
print("-------------------------------")
// MARK: - Конвертер валют с обработкой ошибок:

//•     Создайте enum Currency с кейсами для USD, EUR, BYN. Каждому кейсу присвойте rawValue типа String с соответствующим кодом валюты.
//•     Создайте функцию getExchangeRate(from: Currency, to: Currency) -> Double?, которая принимает две валюты и возвращает курс обмена между ними. Если для какой-то пары валют курс не найден, функция должна возвращать nil.
//•   Создайте функцию convertCurrency(amount: Double, from: Currency, to: Currency) -> Double?, которая принимает сумму, исходную валюту и целевую валюту и возвращает сконвертированную сумму. Используйте функцию getExchangeRate для получения курса обмена. Если курс обмена не найден, функция должна возвращать nil.
enum Currency: String {
    case usd = "USD"
    case eur = "EUR"
    case byn = "BYN"
}

func getExchangeRate(from: Currency, to: Currency) -> Double? {
    switch (from, to) {
    case (.usd, .eur):
        return 0.85
    case (.usd, .byn):
        return 2.52
    case (.eur, .usd):
        return 1.18
    case (.eur, .byn):
        return 2.96
    case (.byn, .usd):
        return 0.40
    case (.byn, .eur):
        return 0.34
    default:
        return nil
    }
}

func convertCurrency(amount: Double, from: Currency, to: Currency) -> Double? {
    guard let converting = getExchangeRate(from: from, to: to) else {
        print("Курс обмена для пары \(from.rawValue) -> \(to.rawValue) не найден.")
        return nil
    }

    let convertedAmount = amount * converting
    return convertedAmount
}

if let convertedAmount = convertCurrency(amount: 500, from: .usd, to: .eur) {
    print("100 USD = \(convertedAmount) EUR")
} else {
    print("Конвертация не удалась.")
}

if let convertedAmount = convertCurrency(amount: 180, from: .usd, to: .byn) {
    print("100 USD = \(convertedAmount) BYN")
} else {
    print("Конвертация не удалась.")
}

if let convertedAmount = convertCurrency(amount: 200000, from: .eur, to: .byn) {
    print("100 EUR = \(convertedAmount) BYN")
} else {
    print("Конвертация не удалась.")
}

if let convertedAmount = convertCurrency(amount: 100, from: .byn, to: .usd) {
    print("100 BYN = \(convertedAmount) USD")
} else {
    print("Конвертация не удалась.")
}
