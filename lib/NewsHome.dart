import 'package:flutter/material.dart';

class NewsHome extends StatelessWidget {

  final List<Map<String, String>> news = List.generate(
    20,
    (i) => {
      'title': 'Заголовок новости ${i + 1}',
      'subtitle': 'Описание новости ${i + 1}',
      'image': 'https://picsum.photos/seed/news$i/400/200'
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новостная лента'),
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: news.length,
        itemBuilder: (context, index) {

          final item = news[index];

          return Container(
            margin: EdgeInsets.only(bottom: 20),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0,4),
                )
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),

                  child: Stack(
                    children: [

                      Image.network(
                        item['image']!,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black54,
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        left: 12,
                        right: 12,
                        child: Text(
                          item['title']!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 6,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    item['subtitle']!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),

              ],
            ),
          );

        },
      ),
    );
  }
}