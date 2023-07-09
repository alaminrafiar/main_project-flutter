import 'package:http/http.dart' as http;
import '../models/signup_model.dart';

class SignUpService {
  void mSaveDataToServer(SingupModel singupModelObject) async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var headers = {
      'Content-Type':
          'application/json', // Set the content type according to your API's requirements
    };
    var body = singupModelObject.toJson();
    // make post request to server
    var response = await http.post(url, headers: headers, body: body);

    //check responce
    if (response.statusCode == 200) {
      print('POST request successful');
      print('Response: ${response.body}');
    } else {
      print('POST request failed');
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }
}
