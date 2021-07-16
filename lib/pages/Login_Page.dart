import 'package:flutter/material.dart';
import 'package:my_app/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changedButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,   
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("Assets/images/login_image.png",
            fit: BoxFit.cover,
            
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
              height: 20.0,
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal:32.0),
              child: Column(children: [
                TextFormField(decoration:InputDecoration(
                  hintText: " Enter username",
                  labelText: "Username",
                ),
                 onChanged: (value)
                {
                  name=value;
                  setState(() {} );
                },
                ),
      
                TextFormField(
                  obscureText: true,
                  decoration:InputDecoration(
                  hintText: " Enter password",
                  labelText: "Password",
                ),
                ),
                SizedBox(
              height: 20.0,
            ),



          InkWell(
            onTap: ()async{
              setState(() {
                changedButton =true;
              });
              await Future.delayed(Duration(seconds: 1));
             Navigator.pushNamed(context, MyRoutes.homeRoutes); 
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: changedButton ?50 :150,
              height: 50,
              
              alignment: Alignment.center,
              
              child: changedButton?
              Icon(Icons.done,color: Colors.white,)
              : Text("Login" ,
               style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
               ),
               decoration: BoxDecoration(
                 color: Colors.deepPurple,
                 borderRadius: BorderRadius.circular( changedButton ?50:8)
               ),
          
            ),
          )
            // ElevatedButton( 
              
            //   child: Text("Login" ,
            //   style: TextStyle(
            //      fontSize: 16,
            //      fontWeight: FontWeight.bold),),
            //   style: TextButton.styleFrom(minimumSize:Size(20, 30)),
            
            // onPressed:() {
            //   Navigator.pushNamed(context, MyRoutes.homeRoutes);
            // },
            // )
              ],
              ),
            )
              
            
          ],
          ),
      )
    );
  }
}
