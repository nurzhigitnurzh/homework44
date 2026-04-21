import 'package:flutter/material.dart';
import 'GridViewApp.dart';
import 'package:flutter_application_1/newsApp.dart';
import 'PageViewApp.dart';

void main() => runApp(NewsApp());

// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title:Text('Статья'),),
//         body: SingleChildScrollView(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Text('Заголовок',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20,),
//               Text('Какойто длинный текст....\n'*35),
//               SizedBox(height: 20,),
//               ElevatedButton(onPressed: (){}, child: Text('Сохранить'))
//             ],
//           ),
//         ),
//       )
        
//     );
//   }
// }