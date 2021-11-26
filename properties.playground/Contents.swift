import UIKit

var greeting = "Hello, playground"
/* Задача 1
 1) Создайте класс RandomNumberGenerator, которы будет возвращать случайно сгенерированное число. Его инициализатор должен принимать свойства min и max, ограничивающие диапазон возможных значений сверху и снизу (максимальное и минимальное значения). Так же у класса должен быть метод getNumber(), возвращающий случайное целое число (из диапазона min...max).
 2) Создайте структуру Employee, содержащее три свойства:

 firstName – имя работника
 secondName – фамилия работника
 salary – заработная плата
 Типы данных свойств определите самостоятельно
 3) Создайте два массива типа [String] каждый. Первый должен содержать 5 вариантов имен, а второй – пять вариантов фамилий.
 4) Создайте экземпляр типа Employee. Значения имени и фамилии должны браться случайным образом из созданных в пункте 3 массивов. Значение заработной платы должно быть случайным целым числом в диапазоне от 20000 до 100000. Используйте созданный в шаге 1) класс RandomNumberGenerator.*/

//1
class RandomNumberGenerator {
    var min: Int
    var max: Int
    init(min: Int, max: Int) {
        self.min = min
        self.max = max
    }
    func getNumber() -> Int {
        return Int.random(in: self.min...self.max)
    }
}
//2)
struct Employee {
    var firstName: String
    var secondName: String
    var salary: Int
}
//3)
let names = ["Nadia", "Dima", "Misha", "Silya", "Mike"]
let secondnames = ["Zavalii", "Serogin", "Stalone", "Martin"]
//4)
let randomName = names[RandomNumberGenerator(min: 0, max: names.count-1).getNumber()]
let randomSecondname = secondnames[RandomNumberGenerator(min: 0, max: secondnames.count-1).getNumber()]
let randomSalary = RandomNumberGenerator(min: 20000, max: 100000).getNumber()
let worker = Employee(firstName: randomName, secondName: randomSecondname, salary: randomSalary)
print(worker)
