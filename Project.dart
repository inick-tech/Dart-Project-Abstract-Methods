abstract class Person {
  String _name;
  String _idNumber;
  String _phoneNumber;
  String _address;

  Person(this._name, this._idNumber, this._phoneNumber, this._address);

  String get name => _name;
  String get idNumber => _idNumber;
  String get phoneNumber => _phoneNumber;
  String get address => _address;

  void printInfo(); // Abstract method for printing person info
  String performAction(); // Abstract method for performing action
}

class Student extends Person {
  String _studentId;
  String _major;

  Student(this._studentId, this._major, String name, String idNumber, String phoneNumber, String address)
      : super(name, idNumber, phoneNumber, address);

  Student.English(String name, String idNumber, String phoneNumber, String address)
      : _studentId = 'N/A',
        _major = 'English literature',
        super(name, idNumber, phoneNumber, address);

  @override
  void printInfo() {
    print('Student: $_name, ID: $_idNumber, Major: $_major');
  }

  @override
  String performAction() {
    return 'Studying';
  }

  String get studentId => _studentId;
  String get major => _major;
}

class Teacher extends Person {
  Certificate _degree;
  double _salary;

  Teacher(String name, String idNumber, String phoneNumber, String address, this._degree, this._salary)
      : super(name, idNumber, phoneNumber, address);

  @override
  void printInfo() {
    print('Teacher: $_name, ID: $_idNumber, Degree: $_degree');
  }

  @override
  String performAction() {
    return 'Teaching';
  }

  Certificate get degree => _degree;
  double get salary => _salary;
}
