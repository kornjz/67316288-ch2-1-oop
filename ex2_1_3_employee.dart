class Employee{
  String employee_name;
  Employee(this.employee_name);
  void calculateSalary(){
    print("Salary for $employee_name");
  }
}
class FulltimeEmployee extends Employee{
  double salary;
  double bonus;
  FulltimeEmployee(String employee_name,this.salary,this.bonus):super(employee_name);
  @override
  void calculateSalary(){
    double result = salary + bonus;
    print("$employee_name Salary is $result bath");
  }
}
class PartTimeEmployee extends Employee{
  double HourWork;
  double HourRate;
  PartTimeEmployee(String employee_name,this.HourWork,this.HourRate):super(employee_name);
  @override
  void calculateSalary(){
    double result = HourWork * HourRate;
    print("$employee_name Salary is $result bath");
  }
}

void main(){
  var EmFull = FulltimeEmployee('korn', 25000, 5000);
  EmFull.calculateSalary();
  var EmPart = PartTimeEmployee('konny', 20, 100);
  EmPart.calculateSalary();
}