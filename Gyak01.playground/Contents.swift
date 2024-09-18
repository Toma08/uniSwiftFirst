import UIKit

class Employee: NSObject{
    var id:Int
    var firstName:String
    var email:String
    var salary:double
    var lastName:String
    init(_ id: Int, _ firstName: String, _ email: String, _ salary: Double, _ lastName:String) {
        self.id = id
        self.firstName = firstName
        self.email = email
        self.salary = salary
        self.lastName=lastName
    }
    
    func formatSalary()-> String {
        return String ("$\(self.salary)")
    }
    public override var description: String{
        return String("\(self.lastName),\(self.firstName)<\(self.email)>:\(self.formatSalary)")
    }
    
    let lastName="Doe"
    
    var e1=Employee(1,"John", "john.done@nje.hu",2000, lastName)
    var e2=Employee(2,"Lisa","liza.doe@nje.hu",2500,lastName)
    var e3=Employee(3,"Jeff","jeff.doe@nje.hu",1560,lastName)
    var e4=Employee(4,"Henry","henry.doe@nje.hu",1800,lastName)
    
    print ("Employees:")
    print(e1.description)
    print(e2.description)
    print(e3.description)
    print(e4.description)
    
    e1.salary+=100
    e2.salary*=2
    
    e3.salary-=50
    e4.salary/=2
    
    if e2.salary>e1.salary && e2.salary >e3.salary && e2.salary >e4.salary{
        print("Lissa has the top salary")
    }
    
    print("\n\nNew salaries:")
    print(e1.description)
    print(e2.description)
    print(e3.description)
    print(e4.description)
    
