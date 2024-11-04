import 'package:flutter/material.dart';

class WordPage extends StatelessWidget {
  WordPage({super.key});

  final List<Map<String, String>> verbList = [
   {"term": "be", "meaning": "เป็น อยู่ คือ"},
    {"term": "have", "meaning": "มี"},
    {"term": "do", "meaning": "ทำ"},
    {"term": "say", "meaning": "พูด"},
    {"term": "go", "meaning": "ไป"},
    {"term": "get", "meaning": "เอา ได้รับ"},
    {"term": "make", "meaning": "ทำ"},
    {"term": "know", "meaning": "รู้ รู้จัก"},
    {"term": "think", "meaning": "คิด"},
    {"term": "take", "meaning": "เอา พาไป"},
    {"term": "see", "meaning": "เห็น"},
    {"term": "come", "meaning": "มา"},
    {"term": "want", "meaning": "ต้องการ"},
    {"term": "use", "meaning": "ใช้"},
    {"term": "find", "meaning": "ค้นหา พบ"},
    {"term": "give", "meaning": "ให้"},
    {"term": "tell", "meaning": "บอก"},
    {"term": "work", "meaning": "ทำงาน"},
    {"term": "call", "meaning": "เรียก โทรหา"},
    {"term": "try", "meaning": "พยายาม"},
    {"term": "ask", "meaning": "ถาม"},
    {"term": "need", "meaning": "ต้องการ"},
    {"term": "feel", "meaning": "รู้สึก"},
    {"term": "become", "meaning": "กลายเป็น"},
    {"term": "leave", "meaning": "จากไป"},
    {"term": "put", "meaning": "วาง"},
    {"term": "mean", "meaning": "หมายถึง"},
    {"term": "keep", "meaning": "เลี้ยง เก็บ"},
    {"term": "let", "meaning": "ปล่อย อนุญาต"},
    {"term": "begin", "meaning": "เริ่ม"},
    {"term": "seem", "meaning": "ดูเหมือน"},
    {"term": "help", "meaning": "ช่วย ช่วยเหลือ"},
    {"term": "show", "meaning": "แสดง"},
    {"term": "hear", "meaning": "ได้ยิน"},
    {"term": "play", "meaning": "เล่น"},
    {"term": "run", "meaning": "วิ่ง"},
    {"term": "move", "meaning": "เคลื่อน ย้าย"},
    {"term": "live", "meaning": "อาศัยอยู่"},
    {"term": "believe", "meaning": "เชื่อ"},
    {"term": "bring", "meaning": "นำมา"},
    {"term": "happen", "meaning": "เกิดขึ้น"},
    {"term": "write", "meaning": "เขียน"},
    {"term": "sit", "meaning": "นั่ง"},
    {"term": "stand", "meaning": "ยืน"},
    {"term": "lose", "meaning": "หาย แพ้"},
    {"term": "pay", "meaning": "จ่าย"},
    {"term": "meet", "meaning": "พบปะ"},
    {"term": "include", "meaning": "รวมทั้ง"},
    {"term": "continue", "meaning": "ดำเนินต่อไป"},
    {"term": "set", "meaning": "จัด ตั้ง วาง"},
    {"term": "learn", "meaning": "เรียนรู้"},
    {"term": "change", "meaning": "เปลี่ยน"},
    {"term": "lead", "meaning": "นำ นำไป"},
    {"term": "understand", "meaning": "เข้าใจ"},
    {"term": "watch", "meaning": "ดู"},
    {"term": "follow", "meaning": "ติดตาม"},
    {"term": "stop", "meaning": "หยุด"},
    {"term": "create", "meaning": "สร้าง"},
    {"term": "speak", "meaning": "พูด"},
    {"term": "read", "meaning": "อ่าน"},
    {"term": "spend", "meaning": "ใช้จ่าย ใช้เวลา"},
    {"term": "grow", "meaning": "โต ปลูก"},
    {"term": "open", "meaning": "เปิด"},
    {"term": "walk", "meaning": "เดิน"},
    {"term": "win", "meaning": "ชนะ"},
    {"term": "teach", "meaning": "สอน"},
    {"term": "offer", "meaning": "เสนอให้"},
    {"term": "remember", "meaning": "จำ จำได้"},
    {"term": "consider", "meaning": "พิจารณา"},
    {"term": "appear", "meaning": "ปรากฏ"},
    {"term": "buy", "meaning": "ซื้อ"},
    {"term": "serve", "meaning": "เสิร์ฟ"},
    {"term": "die", "meaning": "ตาย"},
    {"term": "send", "meaning": "ส่ง"},
    {"term": "build", "meaning": "สร้าง"},
    {"term": "stay", "meaning": "พักอาศัย"},
    {"term": "fall", "meaning": "หล่น ตก"},
    {"term": "cut", "meaning": "ตัด"},
    {"term": "reach", "meaning": "เอื้อม"},
    {"term": "kill", "meaning": "ฆ่า"},
    {"term": "raise", "meaning": "ยก"},
    {"term": "pass", "meaning": "ส่งให้"},
    {"term": "sell", "meaning": "ขาย"},
    {"term": "decide", "meaning": "ตัดสินใจ"},
    {"term": "return", "meaning": "กลับ"},
    {"term": "explain", "meaning": "อธิบาย"},
    {"term": "hope", "meaning": "หวัง"},
    {"term": "develop", "meaning": "พัฒนา"},
    {"term": "carry", "meaning": "ถือ"},
    {"term": "break", "meaning": "แตก ทำแตก"},
    {"term": "receive", "meaning": "ได้รับ"},
    {"term": "agree", "meaning": "เห็นด้วย"},
    {"term": "support", "meaning": "สนับสนุน"},
    {"term": "hit", "meaning": "ตี"},
    {"term": "produce", "meaning": "ผลิต"},
    {"term": "eat", "meaning": "กิน"},
    {"term": "cover", "meaning": "ปกคลุม"},
    {"term": "catch", "meaning": "จับ"},
    {"term": "draw", "meaning": "วาด"},
    {"term": "choose", "meaning": "เลือก"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0), // กำหนดขอบเขต
        child: ListView.builder(
          itemCount: verbList.length, // จำนวนรายการ
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0), // ระยะห่างระหว่างรายการ
              padding: const EdgeInsets.all(16.0), // ระยะห่างภายใน
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // กรอบกล่อง
                borderRadius: BorderRadius.circular(8.0), // มุมกล่องที่มน
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // จัดเรียงให้เลขอยู่ทางซ้ายและข้อความอยู่ทางขวา
                children: [
                  Text(
                    '${index + 1}. ${verbList[index]["term"]}', // แสดงเลขที่เรียงกันและคำศัพท์
                    style: const TextStyle(fontSize: 24), // ขนาดตัวอักษร
                  ),
                  Text(
                    '${verbList[index]["meaning"]}', // ข้อความที่ตามหลังเลข
                    style: const TextStyle(fontSize: 20), // ขนาดตัวอักษรสำหรับข้อความ
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
