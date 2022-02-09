import 'package:flutter/material.dart';
import 'package:flutterlocalization/controller/mycontroller.dart';
import 'package:flutterlocalization/utils/messages.dart';
import 'package:get/get.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en','US'),
      fallbackLocale:  const Locale('en','US'),
      title: 'Localization',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyController myController =Get.put(MyController());


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'hello'.tr,
            ),
            ElevatedButton(onPressed: (){
              myController.changeLanguage('en','US');

            }, child: Text('English')),
            ElevatedButton(onPressed: (){              myController.changeLanguage('hi','IN');
            }, child: Text('Hindi')),
            ElevatedButton(onPressed: (){              myController.changeLanguage('fr','FR');
            }, child: Text('French'))
          ],
        ),
      ),

    );
  }
}
