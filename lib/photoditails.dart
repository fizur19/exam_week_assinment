import 'package:flutter/material.dart';

class Photo_ditails extends StatefulWidget {
   final titel;
   final id ;
  final image;
  const Photo_ditails({super.key, this.titel, this.id, this.image});

  @override
  State<Photo_ditails> createState() => _Photo_ditailsState();
}

class _Photo_ditailsState extends State<Photo_ditails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Photo Details')),

      body: Padding(
        padding: const EdgeInsets.all(29),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(widget.image),
            SizedBox(height: 10,),
            Text(widget.titel.toString(),style: TextStyle(fontSize: 19),),
            SizedBox(height: 10,),
            Text("id :${widget.id}",style: TextStyle(fontSize: 19),)
          ],
        ),
      ),
    );
  }
}