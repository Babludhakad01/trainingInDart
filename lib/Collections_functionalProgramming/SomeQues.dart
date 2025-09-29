void main(){
  List<Map<String,dynamic>> employees = [
    {
      'id': 1,
      'name': 'Alice',
      'department': 'HR',
      'salary': 50000,
    },
    {
      'id': 2,
      'name': 'Bob',
      'department': 'IT',
      'salary': 60000,
    },
    {
      'id': 3,
      'name': 'Charlie',
      'department': 'Finance',
      'salary': 55000,
    },
  ];

  //Access kro Single Employee
  print(employees[0]['name']);
  print(employees[1]);

  // update Employee data

  // for(var emp in employees){
  //   if(emp['name']== 'Bob'){
  //     emp['salary'] = emp['salary'] * 1.5;
  //   }
  // }

  print("Before Employee data");
  for(var name in employees){
    print("Employee Id : ${name['id']}, Employee name : ${name['name']} , Salary ${name['salary']}");
  }

 employees =  employees.map((emp){
   emp['salary'] = emp['salary']*1.8;
   return emp;
 }).toList();


  employees.add({'id':4, 'name': 'Bablu', 'department': 'Flutter', 'salary': 8000});
  print("After Employee data");
  // All Name and Salary
  for(var name in employees){
    print("Employee Id : ${name['id']}, Employee name : ${name['name']} , Salary ${name['salary']}");
  }
}