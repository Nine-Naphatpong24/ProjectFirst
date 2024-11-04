import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? _selectedImage;


  Future<void> _selectProfileImage() async {
    final selectedImage = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Profile Image'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context, 'assets/dog.png'), 
                  child: Image.asset('assets/dog.png', width: 100, height: 100),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.pop(context, 'assets/cat.png'), 
                  child: Image.asset('assets/cat.png', width: 100, height: 100),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.pop(context, 'assets/bear.png'), 
                  child: Image.asset('assets/bear.png', width: 100, height: 100),
                ),
              ],
            ),
          ),
        );
      },
    );

    if (selectedImage != null) {
      setState(() {
        _selectedImage = selectedImage; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFILE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // กรอบรูปโปรไฟล์
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 4),
                image: DecorationImage(
                  image: _selectedImage != null
                      ? AssetImage(_selectedImage!) 
                      : const AssetImage('assets/profile_image.png'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // กล่องปุ่ม Select Profile
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: _selectProfileImage,
                child: const Text("Select Profile"),
              ),
            ),
            const SizedBox(height: 10),

            // กล่องปุ่ม Abort
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // ไปที่หน้า Abort
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AbortScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, 
                ),
                child: const Text("About"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AbortScreen extends StatelessWidget {
  const AbortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tense'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16.0), 
            padding: const EdgeInsets.all(16.0), 
            decoration: BoxDecoration(
              color: Colors.white, 
              border: Border.all(color: Colors.grey), 
              borderRadius: BorderRadius.circular(12.0), 
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 20), 
                const Center(
                  // ignore: unnecessary_const
                  child: const Text(
                    'E์nglish Learn',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.red),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'กระผมนายณภัทรพงศ์ ป้องศรี และ นายกสินันท์ จูงชาวนา ได้ร่วมกันคิดค้นและได้เริ่มทำโปรเจคนี้ขึ้นมาเพื่อคิดว่าจะเป็นประโยคในการเรียนเรียนในวิชาภาษาอังกฤษและเพื่อจะนำไปเป็นผลงานใส่ลง Portfolio เพื่อเข้าศึกษาต่อมหาวิทยาลัยหวังว่าแอปพลิเคชั่นนี้จะช่วยในการศึกษาไม่มากก็น้อยครับ',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Creator',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,color: Colors.red
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '1.นายณภัทรพงศ์ ป้องศรี (Head) :',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 0),
                const Text(
                  'ควบคุมงาน วางแผน และ Coding',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                const Text(
                  '2.กสินันท์ จูงชาวนา (member) : ',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 0),
                const Text(
                  'ออกแบบหน้า UI และ Coding',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
