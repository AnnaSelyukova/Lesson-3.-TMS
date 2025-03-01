import UIKit

/*
 Домашнее задание
 Создать объект “Школа” со свойствами: массив учеников, название школы, адрес (адрес - новый объект с координатами x, y, street name) и директор (у директора новые поля: experience, рейтинг. Директор наследуется от класса Person (name:surname:age)).

 У ученика хранить имя, фамилию, номер класса, кортеж “название предмета - оценка”. Ученик наследуется от Person.
 У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к некоторым из них.
 Написать метод для ученика, выводящий информацию о студенте в формате “Фамилия Имя (Класс)
 предмет: оценка
 предмет: оценка”.

 Написать метод для школы, который выводит информацию о школе.
 Уделите особое внимание выбору, что использовать: класс или структуру, var или let, MARK + модификаторы доступа.
 */
class Person {
    var name: String
    var surname: String
    var age: Int

    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

struct Adress {
    let x: Double
    let y: Double
    let streetName: String
}

class Director: Person {
    var experience: Int
    var rating: Int

    init(name: String, surname: String, age: Int, experience: Int, rating: Int) {

        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
}

class Student: Person {
    var numberClass: String
    var studentScore: (nameClass: String, score: Double)

    init(name: String,
         surname: String,
         age: Int,
         numberClass: String,
         studentScore: (nameClass: String, score: Double)) {

        self.numberClass = numberClass
        self.studentScore = studentScore
        super.init(name: name, surname: surname, age: age)
    }

    func studentInfo() {
        print("Student \(name) \(surname) \(numberClass) having: \(studentScore)")
    }
}

struct School {
    var students = [Student]()
    let schoolName: String
    let adressSchool:Adress
    let directorSchool: Director

    func schoolInfo(){
        print("School \(schoolName) \(adressSchool)")
    }
}
