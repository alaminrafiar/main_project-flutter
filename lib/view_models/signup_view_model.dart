import 'package:main_project/models/signup_model.dart';
import 'package:main_project/services/signup_service.dart';

class SignUpViewModel {
  void mSaveData(
    String name,
    String email,
    String password,
    String phone,
    String usertype,
    String dropdown,
  ) {
    SingupModel singupModelObject = SingupModel(
        name: name,
        email: email,
        phone: phone,
        password: password,
        usertype: usertype,
        dropdown: dropdown);
        

        //send data to signup service
       //create signup sservice object
        SignUpService signUpServiceObject  =SignUpService();
       
       // call mSaveDataToServer method by useing signup service object
        signUpServiceObject.mSaveDataToServer(singupModelObject);
  }
}
