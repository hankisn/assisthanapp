import 'package:assist_han_app/model/temp.dart';
import 'package:http/http.dart' as http;

class GetPiholeTemp {
  Future<Temp?> getTemp() async {
    var client = http.Client();

    var uri = Uri.parse("http://192.168.10.113:9090/temp");

    var response = await client.get(uri);

    if(response.statusCode == 200) {
      var jsonResponse = response.body;
      return tempFromJson(jsonResponse);
    }
  }
}