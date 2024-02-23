
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                // ignore: deprecated_member_use
                launch('tel: +923180312');
              },child: Text("Make A Call"),
            ),
            ElevatedButton(
              onPressed: (){
                launch('sms: +92311312?body=Hi My Name is Aliyan');
              },child: Text("Send A SMS"),
            ),
            ElevatedButton(
              onPressed: (){
                launch('mailto: aliyansohaib143@gmail.com?subject=Trying out Project&body=Hi My Name is Aliyan');
              },child: Text("Send An Email"),
            ),
            ElevatedButton(
              onPressed: (){
                launch('https://www.instagram.com/aliiyanissohaib/');
              },child: Text("Open A URL"),
            ),
          ],
        ),
      )
jsjbs
    );
  }
}


// import 'package:fluttertoast/fluttertoast.dart';

// import 'package:flutter/material.dart';

// import 'package:url_launcher/url_launcher.dart';




// final Uri _url = Uri.parse('https://flutter.dev');
// void main(){
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children:<Widget>[
//           Container(
//           child: ElevatedButton(
//               onPressed: _launchUrl,
//               child: Text('Show Flutter homepage'),),
//           ),
//           Container(
//             child: ElevatedButton(
//               onPressed: () async{
//                final Uri url = Uri(
//                  scheme: 'tel',
//                  path: "923166342516"
//                );
//                if(await canLaunchUrl(url)){
//                  await launchUrl(url);
//                }else{
//                  print('cannot launch this url');
//                }
//               },
//               child: Text('call'),
//             ),
//           ),
//           Container(
//             child: ElevatedButton(
//               onPressed:(){
//                 String? encodeQueryParameters(Map<String, String> params) {
//                   return params.entries
//                       .map((MapEntry<String, String> e) =>
//                   '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
//                       .join('&');
//                 }
// // ···
//                 final Uri emailLaunchUri = Uri(
//                   scheme: 'mailto',
//                   path: 'aliyansohaib143@gmail.com',
//                   query: encodeQueryParameters(<String, String>{
//                     'subject': 'Example Subject & Symbols are allowed!',
//                   }),
//                 );

//                 launchUrl(emailLaunchUri);
//               } ,
//               child: Text('mail'),
//             ),

//           ),
//         ],

//       ),
//     ),
//   ));
// }

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw Exception('Could not launch $_url');
//   }
// }