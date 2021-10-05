import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['peter.bootmaker@gmail.com'],
    cc: [],
    subject: 'Message to Peter',
    body: 'Message example body',
  );
  await launch('$mailtoLink');
}
