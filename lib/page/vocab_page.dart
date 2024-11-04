import 'package:flutter/material.dart';

class VocabPage extends StatelessWidget {
   VocabPage({super.key});

  // รายการคำศัพท์ที่มีความหมาย
  final List<Map<String, String>> vocabList = [
    {"term": "Initiative", "meaning": "ความคิดริเริ่ม"},
    {"term": "Effectiveness", "meaning": "ประสิทธิผล"},
    {"term": "Delegation", "meaning": "ตัวแทน"},
    {"term": "Expert", "meaning": "ผู้เชี่ยวชาญ"},
    {"term": "Delegation", "meaning": "ตัวแทน"},
    {"term": "Tactic", "meaning": "เล่ห์เหลี่ยม, ชั้นเชิง"},
    {"term": "Proposal", "meaning": "ข้อเสนอ, แผนงาน"},
    {"term": "Selection", "meaning": "การคัดเลือก"},
    {"term": "Praise", "meaning": "คำชม"},
    {"term": "Observation", "meaning": "การสังเกต"},
    {"term": "Workload", "meaning": "จำนวนงาน"},
    {"term": "Goods", "meaning": "สินค้า"},
    {"term": "Replacement", "meaning": "ทดแทน"},
    {"term": "Matter", "meaning": "ปัญหา, เหตุการณ์"},
    {"term": "Confirmation", "meaning": "การรับรอง"},
    {"term": "Figures", "meaning": "ตัวเลข"},
    {"term": "Requirement", "meaning": "ความประสงค์"},
    {"term": "Deadline", "meaning": "วันกำหนดส่งงาน"},
    {"term": "Opportunity", "meaning": "โอกาส"},
    {"term": "Objective", "meaning": "จุดประสงค์"},
    {"term": "Overview", "meaning": "ภาพรวม"},
    {"term": "Attention", "meaning": "ความสนใจ"},
    {"term": "Assumption", "meaning": "สมมติฐาน"},
    {"term": "Point", "meaning": "ข้อสำคัญ"},
    {"term": "Survey", "meaning": "แบบสอบถาม"},
    {"term": "Feature", "meaning": "ลักษณะโดดเด่น"},
    {"term": "Analysis", "meaning": "วิเคราะห์"},
    {"term": "Notice", "meaning": "แจ้งเตือน"},
    {"term": "Assign to", "meaning": "มอบหมายให้"},
    {"term": "Maximize", "meaning": "ขยายใหญ่สุด"},
    {"term": "Occupy", "meaning": "ครอบครอง"},
    {"term": "Compare", "meaning": "เปรียบเทียบ"},
    {"term": "Launch", "meaning": "ปล่อย, ประกาศ"},
    {"term": "Implement", "meaning": "นำมาใช้"},
    {"term": "Perceive", "meaning": "เข้าใจ, รับรู้"},
    {"term": "Receive", "meaning": "ได้รับ"},
    {"term": "Deserve", "meaning": "เหมาะสม"},
    {"term": "Admire", "meaning": "ชื่นชม, นับถือ"},
    {"term": "Pressure", "meaning": "กดดัน"},
    {"term": "Expect", "meaning": "คาดหวัง"},
    {"term": "Hinder", "meaning": "ขัดขวาง"},
    {"term": "Deliver", "meaning": "ส่ง"},
    {"term": "Update", "meaning": "ปรับปรุงให้ทันสมัย"},
    {"term": "Abandon", "meaning": "ละทิ้ง"},
    {"term": "Disapprove", "meaning": "ไม่ชอบ"},
    {"term": "Send (someone)", "meaning": "ออกคำสั่ง"},
    {"term": "Assent", "meaning": "ยินยอม"},
    {"term": "Estimate", "meaning": "ประมาณ"},
    {"term": "Assume", "meaning": "สันนิษฐาน"},
    {"term": "Demand", "meaning": "ต้องการ"},
    {"term": "Specific", "meaning": "เฉพาะเจาะจง"},
    {"term": "Attend", "meaning": "เข้าร่วม"},
    {"term": "Present", "meaning": "บรรยาย"},
    {"term": "Elaborate", "meaning": "ขยายความ"},
    {"term": "Require", "meaning": "ต้องการ"},
    {"term": "Inform", "meaning": "แจ้งให้ทราบ"},
    {"term": "Reasonable", "meaning": "มีเหตุผล"},
    {"term": "Effective", "meaning": "ประสิทธิภาพ"},
    {"term": "Face-to-face", "meaning": "เผชิญหน้ากัน"},
    {"term": "Troublesome", "meaning": "เป็นภาระ"},
    {"term": "Collaborative", "meaning": "ร่วมมือกัน"},
    {"term": "Groundbreaking", "meaning": "นวัตกรรมใหม่"},
    {"term": "Uninspired", "meaning": "ไม่น่าสนใจ"},
    {"term": "Productive", "meaning": "อย่างมีประสิทธิภาพ"},
    {"term": "Faulty", "meaning": "ผิดพลาด"},
    {"term": "Final", "meaning": "สุดท้าย"},
    {"term": "Urgent", "meaning": "ด่วน"},
    {"term": "Up-to-date", "meaning": "ทันสมัย"},
    {"term": "In particular", "meaning": "โดยเฉพาะอย่างยิ่ง"},
    {"term": "Extra", "meaning": "เพิ่ม, มากขึ้น"},
    {"term": "Formal", "meaning": "ทางการ"},
    {"term": "Informal", "meaning": "ไม่เป็นทางการ"},
    {"term": "Hectic", "meaning": "ยุ่ง"},
    {"term": "Genuine", "meaning": "แท้"},
    {"term": "Annual", "meaning": "ประจำปี"},
    {"term": "Essential", "meaning": "สำคัญ"},
    {"term": "Necessary", "meaning": "จำเป็น"},
    {"term": "Full-time", "meaning": "ประจำ"},
    {"term": "Part-time", "meaning": "ไม่เต็มเวลา"},
    {"term": "Unique", "meaning": "แตกต่าง"},
    {"term": "Accessible", "meaning": "เข้าถึงได้"},
    {"term": "Flexible", "meaning": "ยืดหยุ่นได้"},
    {"term": "Properly", "meaning": "อย่างถูกต้อง"},
    {"term": "Absolutely", "meaning": "อย่างแน่นอน"},
    {"term": "Unfortunately", "meaning": "น่าเสียดาย"},
    {"term": "Approx", "meaning": "ประมาณ"},
    {"term": "Especially", "meaning": "โดยเฉพาะ"},
    {"term": "Incredibly", "meaning": "อย่างเหลือเชื่อ"},
    {"term": "Quarterly", "meaning": "รายไตรมาส"},
    {"term": "Monthly", "meaning": "รายเดือน"},
    {"term": "Hourly", "meaning": "รายชั่วโมง"},
    {"term": "Daily", "meaning": "ทุกวัน"},
    {"term": "Weekly", "meaning": "รายสัปดาห์"},
    {"term": "Easily", "meaning": "อย่างง่ายดาย"},
    {"term": "Effectively", "meaning": "อย่างมีประสิทธิภาพ"},
    {"term": "Strictly", "meaning": "อย่างเข้มงวด"},
    {"term": "Professionally", "meaning": "อย่างเชี่ยวชาญ"},
    {"term": "Significantly", "meaning": "อย่างสำคัญ"},
    {"term": "Gradually", "meaning": "อย่างช้า ๆ"},
    {"term": "Sharply", "meaning": "อย่างรวดเร็ว"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocab'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0), // กำหนดขอบเขต
        child: ListView.builder(
          itemCount: vocabList.length, // จำนวนรายการ
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
                    '${index + 1}. ${vocabList[index]["term"]}', // แสดงเลขที่เรียงกันและคำศัพท์
                    style: const TextStyle(fontSize: 24), // ขนาดตัวอักษร
                  ),
                  Text(
                    '${vocabList[index]["meaning"]}', // ข้อความที่ตามหลังเลข
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
