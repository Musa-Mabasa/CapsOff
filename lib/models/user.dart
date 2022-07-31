class User {
  String _id = "";
  String _name = "";
  String _surname = "";
  String _email = "";
  String _mobileNo = "";
  String _grade = "";
  String _schoolId = "";
  String _userTypeId = "";
  String _password = "";

  User(
      this._id,
      this._name,
      this._surname,
      this._email,
      this._mobileNo,
      this._grade,
      this._schoolId,
      this._userTypeId,
      this._password);

  String get getId => _id;
  String get getName => _name;
  String get getLastName => _surname;
  String get getEmail => _email;
  String get getMobileNo => _mobileNo;
  String get getGrade => _grade;
  String get getSchoolId => _schoolId;
  String get getUserTypeId => _userTypeId;
  String get _getPassword => _password;


  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["surname"] = _surname;
    map["email"] = _email;
    map["mobileNo"] = _mobileNo;
    map["grade"] = _grade;
    map["schoolId"] = _schoolId;
    map["userTypeId"] = _userTypeId;
    map["password"] = _password;
   
    return map;
  }

  User.fromObject(dynamic o) {
    _id = o["id"];
    _name = o["name"];
    _surname = o["surname"];
    _email = o["email"];
    _mobileNo = o["mobileNo"];
    _grade = o["grade"];
    _schoolId = o["schoolId"];
    _userTypeId = o["userTypeId"];
    _password = o["password"];
  }

  static fromJson(model) {}
}
