class SingupModel {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? usertype;
  String? dropdown;


//constructor of this class
  SingupModel(
      {this.name,
      this.email,
      this.phone,
      this.password,
      this.usertype,
      this.dropdown});

  SingupModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    usertype = json['usertype'];
    dropdown = json['dropdown'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['usertype'] = this.usertype;
    data['dropdown'] = this.dropdown;
    return data;
  }
}
