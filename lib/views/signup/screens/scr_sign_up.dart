// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:main_project/util/screen_size.dart';
import 'package:main_project/views/signup/screens/try_scr_sing_up.dart';

import '../../../util/my_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String dropdownvalue = 'painter';

  var items = [
    'painter',
    'Doctor',
    'Electrician',
    'Engineer',
    'Mechanic',
  ];
  bool passToggle = true;
  TextEditingController _editingControllerName =TextEditingController();
  TextEditingController _editingControllerEmail = TextEditingController();
  TextEditingController _editingControllerPassWord = TextEditingController();
  TextEditingController _editingControllerPhone = TextEditingController();

   String _radioButtonVulue ="" ; 
    String _radioButtonGropVulue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 40, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey!",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                "Join Now",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //nameTextFiled
              vNameTextField(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              vEmailTextField(),
              SizedBox(
                height: 10,
              ),
              Text(
                "PassWord",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // password text field
              vPassWordTextField(),

              SizedBox(
                height: 10,
              ),
              Text(
                "Phone",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //phone text fied
              vPhoneTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                "User Type",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              vRadioButton(),
              SizedBox(
                height: 10,
              ),
              vDropDown(),
              SizedBox(
                height: 65,
              ),
              vTextButton(),
            ],
          ),
        ),
      ),
    );
  }

  vNameTextField() {
    return TextFormField(
      controller: _editingControllerName,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal:8 ,vertical: 4),
        filled: true,
        fillColor: MyColors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.grey
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  vEmailTextField() {
    return TextFormField(
      controller: _editingControllerEmail,
      decoration: InputDecoration(
        
        contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
        filled: true,
        fillColor: MyColors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.grey
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  vPassWordTextField() {
    return TextFormField(
      controller: _editingControllerPassWord,
      obscureText: passToggle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
          fillColor: MyColors.white,
          filled: true,
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(8),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
          )),
    );
  }

  vPhoneTextField() {
    return TextFormField(
      controller: _editingControllerPhone,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
        filled: true,
        fillColor: MyColors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.grey,
          ),
        
          
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  vRadioButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 19),
      child: Row(
        children: [
          Radio(
            value: "C",
            groupValue: _radioButtonGropVulue,
            onChanged: (value) {
              print(value);
              setState(() {
                _radioButtonGropVulue = value!;
              });
            },
          ),
          Text(
            "Consumer",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Radio(
            value: "P",
            groupValue: _radioButtonGropVulue,
            onChanged: (value) {

              print(value);
              setState(() {
                _radioButtonGropVulue =value!;
              });
            },
          ),
          Text(
            "Provider",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  vDropDown() {
    return Container(
      height: MySCreenSize.mGetHeight(context, 6),
      // width: MySCreenSize.mGetWidth(context, 100),
      
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          isExpanded: true,
          value: dropdownvalue,
          alignment: Alignment.bottomRight,
          underline: Container(),
          icon: 
             Icon(Icons.keyboard_arrow_down),
          

          // icon: const Icon(Icons.keyboard_arrow_down),

          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),

          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ),
    );
  }

  vTextButton() {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => TryScreen()));
        
         /*  print("name : ${_editingControllerName.text}");
          print("Email : ${_editingControllerEmail.text}");
          print("PassWord : ${_editingControllerPassWord.text}");
          print("Phone : ${_editingControllerPhone.text}");
          print("UserType : ${_radioButtonGropVulue}");
          print("DropDown : ${dropdownvalue}"); */
          
          
        },
        child: Container(
          height: MySCreenSize.mGetHeight(context, 5),
          width: MySCreenSize.mGetWidth(context, 60),
          
          decoration: BoxDecoration(
            color:MyColors.Container,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(Icons.chevron_right,color: MyColors.white,size: 40,),
          // child: ElevatedButton(
          //   onPressed: () {},
          //   child: Icon(Icons.abc),
          //   style: ElevatedButton.styleFrom(backgroundColor: Colors.black12,),
          // ),
        ),
      ),
    );
  }
}
