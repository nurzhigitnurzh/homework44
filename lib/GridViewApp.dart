import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Grid view'),),
        body: GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.65),
            itemCount: 15,
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(
                  color: Colors.black12, blurRadius: 6)]
              ),
              child: Column(
                children: [
                  Expanded(child: Icon(Icons.shopping_bag)),
                  Text('Товар ${index+1}'),
                  SizedBox(height: 16),
                ],
              ),
            );
          }
        ),
      ),
    );

}
}