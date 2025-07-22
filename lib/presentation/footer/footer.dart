import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Text('브랜드 소개 | SNS | 고객센터', style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          Text('© 2024 Cosmetics Brand. All rights reserved.'),
        ],
      ),
    );
  }
}
