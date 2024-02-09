import 'package:exam_week_assinment/photogalleryapp.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Photo_Gallery_App(),
    );
  }
}