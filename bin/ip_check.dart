import 'package:ip_check/ip_check.dart' as ip_check;

void main(List<String> arguments) async{
  print(await ip_check.getIp());
}
