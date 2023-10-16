import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> backgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FireBaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final token = await _firebaseMessaging.getToken();
    print('Token : $token');
    FirebaseMessaging.onBackgroundMessage(backgroundMessage);
  }
}
