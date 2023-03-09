import 'package:flutter/material.dart';

import '../http_call/get.dart';
import '../model/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Rocket? rocketlist;

  Future<Null> getRocketDetails() async {
    rocketlist = await Repo().getRocketList();

  }

  initState(){
    getRocketDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('List'),
      centerTitle:true,
      ),
      body:ListView.builder(
        itemCount:3,
          itemBuilder:(context,index){
            return Text('${rocketlist?.name ?? ' '}',style:TextStyle(color:Colors.black,fontSize:12),);
          }
      ),
    );
  }
}
