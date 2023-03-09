import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/model.dart';


class Repo {
  getRocketList() async {
    var url =
        "https://api.spacexdata.com/v4/rockets";

    final res = await http.get(Uri.parse(url));

    var resBody = res.body;
    print(resBody);
    try {
      if (res.statusCode == 200) {
        return Rocket.fromJson(json.decode(resBody));
      }
    } catch (e) {
      throw Exception();
    }
  }
}
