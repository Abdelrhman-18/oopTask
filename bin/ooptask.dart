import 'dart:io';

class Camera{
  String color , name;
  int megapixel;
  Camera(this.name ,this.color,this.megapixel);
  void display(){
        print("Camera name: $name");
        print("Camera color: $color");
        print("Megapixel: $megapixel");
  }
}
class Patient{
  String name ,disease;
  int age;
  Patient(this.name,this.age,this.disease);
  void display(){
    print("Patient's Name: $name");
    print("Patient's Age: $age");
    print("Disease: $disease");
  }
}
class BankAccount{
  String AccountHolder;
  int AccountNumber,Balance;
  BankAccount(this.AccountHolder,this.AccountNumber,this.Balance);
  int? Deposit(int amount){
    Balance+=amount;
  }
  int? WithDraw(int amount){
    if(amount<=Balance){
      Balance-=amount;
    }else{
      print("The required balance is not available");
    }
  }
  void display(){
    print("Account name: $AccountHolder");
    print("Account Number: $AccountNumber");
    print("Balance: $Balance");
  }
}
class EmployeeSalary{
  String name , position;
  int salary ;
  static int totalPayroll =0 ;
  EmployeeSalary(this.name,this.position,this.salary){
    totalPayroll+=salary;
  }
  EmployeeSalary.WithOutSalary(this.name,this.position):salary=0;
  static void showtotelpayroll(){
    print("totalPayroll :$totalPayroll");
  }
}
class MobilePhonePlan{
  String planName;
  double datalimit,dataused;
  MobilePhonePlan(this.planName,this.datalimit):dataused = 0;
  void usedData(double amount){
    dataused+=amount;
    if(dataused>datalimit){
      print("Warning: You have exceeded your data limit");
    }
  }
  void resetdata(){
    dataused=0;
  }
  void showDataUsage(){
    print('Data used: $dataused GB');
    print('Remaining data: ${(datalimit - dataused)} GB');
  }
}
void main(){
  //class Camera
  Camera c1 = Camera("Sony","Black",60);
  Camera c2 = Camera("Nikon","Gray",80);
  c1.display();
  print("====================");
  c2.display();
  print("====================");
  //class patient
  Patient p1 = Patient("Patient 1", 18, "headache");
  Patient p2 = Patient("Patient 2", 20, "pressure");
  p1.display();
  print("====================");
  p2.display();
  print("====================");
  //class bank account
  BankAccount acc1 = BankAccount("account 1", 12366, 2500);
  BankAccount acc2 = BankAccount("account 2", 34567, 5000);
  int deposit ,withdraw;
  print("Enter the deposit amount");
  deposit=int.parse(stdin.readLineSync()!);
  acc1.Deposit(deposit);
  acc1.display();
  print("====================");
  print("Enter the withdrawal amount");
  withdraw=int.parse(stdin.readLineSync()!);
  acc2.WithDraw(withdraw);
  acc2.display();
  print("====================");
  //class EmployeeSalary
  EmployeeSalary emp1 = EmployeeSalary("Employee1", "ceo",3500);
  EmployeeSalary emp2 = EmployeeSalary("Employee2", "led",5000);
  EmployeeSalary emp3 = EmployeeSalary.WithOutSalary("Employee2", "led");
  EmployeeSalary.showtotelpayroll();
  print("====================");
  //class MobilePhonePlan
  MobilePhonePlan plan1 =MobilePhonePlan("flex", 80);
  plan1.usedData(40.0);
  plan1.showDataUsage();
  plan1.resetdata();
  plan1.showDataUsage();
}