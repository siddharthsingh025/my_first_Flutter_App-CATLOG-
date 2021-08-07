import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  final imageURL ="https://pbs.twimg.com/profile_images/1380366582745022465/nuFcCMSf_400x400.jpg";
@override 
Widget build(BuildContext context){

  return Drawer(
   child:  Container(
     color: Colors.deepOrange,
     child: ListView(
       children: [
         DrawerHeader(
          decoration: BoxDecoration(color: Colors.deepOrange),
           padding: EdgeInsets.zero,
           child: UserAccountsDrawerHeader(
             decoration: BoxDecoration(color: Colors.deepOrange),
             margin: EdgeInsets.zero,
             accountEmail:Text("siddharthsingh25102001@gmail.com") ,
             accountName: Text("SIDDHARTH SINGH",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
             currentAccountPicture: CircleAvatar(
               backgroundImage:NetworkImage(imageURL) ,),
             ),
             ),
             ListTile(
               leading: Icon(CupertinoIcons.home,
               color: Colors.white,),
               title: Text("Home",
               textScaleFactor: 1.3,
               style:TextStyle(
                 color: Colors.white
               ) ,),
             ),

             ListTile(
               leading: Icon(CupertinoIcons.profile_circled,
               color: Colors.white,),
               title: Text("Profile",
               textScaleFactor: 1.3,
               style:TextStyle(
                 color: Colors.white
               ) ,),    
             ),
              ListTile(
               leading: Icon(CupertinoIcons.mail,
               color: Colors.white,),
               title: Text("Mail me",
               textScaleFactor: 1.3,
               style:TextStyle(
                 color: Colors.white
               ) ,),    
             )
       ],
       
       
       
     ),
   ),
  );
}
}

