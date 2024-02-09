import 'dart:convert';

import 'package:exam_week_assinment/photo.dart';
import 'package:exam_week_assinment/photoditails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Photo_Gallery_App extends StatefulWidget {
  const Photo_Gallery_App({super.key});

  @override
  State<Photo_Gallery_App> createState() => _Photo_Gallery_AppState();
}

class _Photo_Gallery_AppState extends State<Photo_Gallery_App> {
  List<Photo> listofphoto = [];
  @override
  void initState() {
    apidata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photo Gallery App')),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: listofphoto.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Photo_ditails(image: listofphoto[index].url,titel: listofphoto[index].title,id: listofphoto[index].id,),
                  ));
            },
            leading: SizedBox(
                height: 100,
                child: Image.network(listofphoto[index].thumbnailUrl ?? '')),
            title: Text(listofphoto[index].title ?? ''),
          );
        },
      ),
    );
  }

  apidata() async {
    Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    Response response = await get(uri);

    if (response.statusCode == 200) {
      var jsondecode = jsonDecode(response.body);
      print(jsondecode);
      for (var element in jsondecode) {
        Photo photo = Photo.formjson(element);
        listofphoto.add(photo);
        setState(() {});
      }
    }
  }
}
