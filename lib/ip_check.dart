//https://api.ipify.org

import "dart:convert";
import "models/ip.dart";
import "package:http/http.dart" as http;

Future<Ip> getIp() async {
  final url = Uri.parse("https://ipapi.co/json");
  final res = await http.get(url);

  final Map<String, dynamic> data = json.decode(res.body);

  final resu = Ip(
      ip: data['ip'],
      region: data['region'],
      postal: data['postal'],
      city: data['city']);

  return resu; 
}
