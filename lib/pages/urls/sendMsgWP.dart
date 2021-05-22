import 'package:url_launcher/url_launcher.dart';

sendMsgWP(String numero, String dados) async {
  await launch('https://api.whatsapp.com/send?phone=${numero}&text=${dados}');
}