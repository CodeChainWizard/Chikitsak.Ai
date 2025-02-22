///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:doctor/Screens/RegisterScreen.dart';
import 'package:doctor/Screens/DashboardScreen.dart';

class LoginScreen extends StatelessWidget {
 TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
body:Align(
alignment:Alignment.center,
child:Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image.asset(
"lib/assets/images/MainImage.jpeg",
height:100,
width:MediaQuery.of(context).size.width * 0.85,
fit:BoxFit.fitWidth,
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 30),
child:Text(
"Chikiत्सक.AI",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:20,
color:Color(0xff06f7eb),
),
),
),
Align(
alignment:Alignment.centerLeft,
child:Text(
"Sign In",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:24,
color:Color(0xff000000),
),
),
),
Padding(
padding:EdgeInsets.symmetric(vertical: 16,horizontal:0),
child:TextField(
controller:emailController,
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
labelText:"Email",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff9e9e9e),
),
filled:true,
fillColor:Color(0x00f2f2f3),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
TextField(
controller:passwordController,
obscureText:true,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff9e9e9e),
width:1
),
),
labelText:"Password",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff9e9e9e),
),
filled:true,
fillColor:Color(0x00f2f2f3),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:Align(
alignment:Alignment.centerRight,
child:Text(
"Forgot Password ?",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff9e9e9e),
),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 30, 0, 16),
child:Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Expanded(
flex: 1,
child: MaterialButton(
onPressed: () {
            // Navigate to the RegisterScreen when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen()),
            );
          },
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
side:BorderSide(color:Color(0xff9e9e9e),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Sign Up", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff000000),
height:40,
minWidth:140,
),
),

SizedBox(
width:16,
),
Expanded(
flex: 1,
child: MaterialButton(
onPressed: () {
  String email = 'shubham';
  String password = 'shubham';
  
  if (emailController.text == email && passwordController.text == password) {
    // Navigate to the DashboardScreen when the credentials match
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()),
    );
  } else {
    // Show an error message or perform other actions if the credentials don't match
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invalid Credentials'),
          content: Text('Please enter valid email and password.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
},
color:Color(0xff000310),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(12.0),
),
padding:EdgeInsets.all(16),
child:Text("Login", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xffffffff),
height:40,
minWidth:140,
),
),
],),),
Padding(
padding:EdgeInsets.symmetric(vertical: 16,horizontal:0),
child:Text(
"Or Continue with",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff9e9e9e),
),
),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.symmetric(vertical: 8,horizontal:16),
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
border:Border.all(color:Color(0xff9e9e9e),width:1),
),
child:
Row(
mainAxisAlignment:MainAxisAlignment.spaceAround,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:NetworkImage("https://cdn3.iconfinder.com/data/icons/logos-brands-3/24/logo_brand_brands_logos_google-256.png"),
height:25,
width:25,
fit:BoxFit.cover,
),
Padding(
padding:EdgeInsets.fromLTRB(16, 0, 0, 0),
child:Text(
"Google",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
),
),
],),
),
],),),),),
)
;}
}