import 'package:flutter/material.dart';

class OrderSuccessPage extends StatelessWidget {
  final String productTitle;

  OrderSuccessPage({required this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
              const SizedBox(height: 16),

              Text(
                'Заказ успешно оформлен!',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 8),

              Text(productTitle),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Вернуться в каталог'),
                  onPressed: () {
                    Navigator.popUntil(
                        context, (route) => route.isFirst);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}