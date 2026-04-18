import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ObratnayaSvyaz extends StatefulWidget {
  @override
  State createState() {
    return ObratnayaSvyazState();
  }
}

class ObratnayaSvyazState extends State<ObratnayaSvyaz> {

  String name = "";
  bool isSent = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Обратная связь"),
        ),

        body: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                "Обратная связь",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Введите имя и нажмите кнопку отправки",
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Ваше имя",
                ),

                onChanged: (value) {
                  name = value;
                },
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isSent = true;
                  });
                },

                child: Text("Отправить"),
              ),

              SizedBox(height: 20),

              if (isSent)
                Text(
                  "Отправлено! Спасибо, $name",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}