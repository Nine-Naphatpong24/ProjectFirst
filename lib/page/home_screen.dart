import 'package:flutter/material.dart';
import 'vocab_page.dart'; 
import 'word_page.dart'; 
import 'tense_page.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTENT'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCard(context, 'Vocab', 'assets/vocab_image.png', VocabPage()),
              SizedBox(height: 16),
              _buildCard(context, 'Verb', 'assets/word_image.png', WordPage()),
              SizedBox(height: 16),
              _buildCard(context, 'Tense', 'assets/tense_image.png', TensePage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String text, String imagePath, Widget destinationPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Stack(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[100],
              child: Column(
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
