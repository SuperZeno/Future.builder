import 'package:flutter/material.dart';
import 'package:untitled3/services/network.dart';
import 'package:untitled3/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<dynamic>>? ListOfPhotos;
  @override
  void initState() {
    super.initState();
     ListOfPhotos = NetworkHelper().getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Album",style: TextStyle(fontSize: 25),),),
       body:FutureBuilder<List<dynamic>>(
         future: ListOfPhotos,
         builder: (context , snapshot)
         {
           if(snapshot.hasData){
              print(snapshot.data);
             return  ListView.builder(
               itemBuilder: (context , index){
                 return Album(album: snapshot.data![index],);
               },

             );

           }
           return Center(child: CircularProgressIndicator());
         },
       )

    );
  }
}
