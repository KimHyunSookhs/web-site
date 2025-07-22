import 'package:flutter/material.dart';

import 'footer/footer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cosmetics Brand'), // 브랜드 로고로 교체 가능
        actions: [
          TextButton(onPressed: () {}, child: Text('신제품')),
          TextButton(onPressed: () {}, child: Text('베스트')),
          TextButton(onPressed: () {}, child: Text('이벤트')),
          TextButton(onPressed: () {}, child: Text('리뷰')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/main_hero.jpg'), // 메인 이미지
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '당신의 아름다움을 위한 선택',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(blurRadius: 8, color: Colors.black26)],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: Text('지금 만나보기')),
                ],
              ),
            ),
            SizedBox(height: 40),
            // 주요 섹션 예시
            SectionTitle(title: '신제품'),
            ProductList(), // 신제품 리스트 위젯
            SectionTitle(title: '베스트셀러'),
            ProductList(), // 베스트셀러 리스트 위젯
            SectionTitle(title: '이벤트'),
            EventBanner(), // 이벤트 배너 위젯
            SectionTitle(title: '리뷰'),
            ReviewList(), // 리뷰 리스트 위젯
            SizedBox(height: 40),
            Footer(),
          ],
        ),
      ),
    );
  }
}

// 아래는 예시용 위젯, 실제로는 각자 파일로 분리해서 관리하면 더 좋아요.
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 임시로 3개 상품만 표시
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Card(
          margin: EdgeInsets.all(8),
          child: Container(
            width: 120,
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image, size: 60),
                SizedBox(height: 10),
                Text('상품명', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('₩00,000'),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class EventBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      color: Colors.pink[100],
      child: Center(
        child: Text(
          '이벤트 배너 영역',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 임시로 2개 리뷰만 표시
    return Column(
      children: List.generate(2, (index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text('고객 리뷰 제목'),
          subtitle: Text('정말 좋아요! 피부가 촉촉해졌어요.'),
        );
      }),
    );
  }
}

