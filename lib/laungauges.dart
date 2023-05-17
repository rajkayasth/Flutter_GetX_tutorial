import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name',
          'name': 'Raj Kayasth',
          'hello': 'Hello World',
          'userMessage': 'Welcome to The Localization Demo',
          'changeLanguage': 'Change Language',
          'userDesc':'Watch and Learn Change Language',

        },
        'hi_IN': {
          'hello': 'हैलो वर्ल्ड',
          'userMessage': 'स्थानीयकरण डेमो में आपका स्वागत है',
          'changeLanguage': 'भाषा बदलें',
          'userDesc':'भाषा बदलें देखें और सीखें',

        },
        'ur_PK': {
          'message': 'آپ کا نام کیا ہے',
          'name': 'راج کیاستھ',
          'hello': 'ہیلو ورلڈ',
          'userMessage': 'لوکلائزیشن ڈیمو میں خوش آمدید',
          'userDesc':'دیکھیں اور سیکھیں زبان تبدیل کریں۔',
          'changeLanguage': 'زبان تبدیل کریں'
        }
      };
}
