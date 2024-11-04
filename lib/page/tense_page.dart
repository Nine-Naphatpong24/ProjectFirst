import 'package:flutter/material.dart';

class TensePage extends StatelessWidget {
  const TensePage({super.key});

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
            
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Tense',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), 
                Text(
                  'ว่าด้วยเรื่องของประโยคในภาษาอังกฤษนั้นมีอยู่มากมายในนี้ผมจึงตั้งใจหาสรุปมาให้ทุกคนได้ทำความเข้าใจได้ง่ายและไม่ยุ่งยาก (คีย์หลักผมอยากให้ดูที่โครงสร้างมากกว่าแต่ถ้าต้องการที่จะอ่านคำอธิบายร่วมด้วยก็ได้เช่นกัน)',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  '1. Simple',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'คือรูปแบบประโยคที่ง่ายที่สุดในบรรดา 4 แบบของ Tense ในภาษาอังกฤษเลย เพราะรูปนี้จะตามด้วยประธานแล้วตามด้วยกริยาที่ไม่มีอะไรมาต่อเติมจนซับซ้อน บริบทความหมายของรูปประโยคนี้เป็นแค่การบอกเล่าเรื่องง่าย ๆ ว่าเกิดอะไรหรือบอกเล่าเรื่องที่เกิดขึ้นจากความเป็นจริงเท่านั้นเอง',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  '2. Continuous (is/am/are/was/were + V-ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'รูป Continuous คือรูปประโยคที่ใช้พูดถึงเหตุการณ์ที่กำลังดำเนินการอย่างต่อเนื่องในแต่ละช่วงเวลา โดยคีย์เวิร์ดหรือวิธีสังเกตรูปประโยคคือ V.to be ที่เป็น is, am, are, was หรือ were และหลังจากนั้นก็จะตามด้วยกริยาหลักที่ผัน V.ing',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  '3. Perfect (have/has/had + V.3)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'รูป Perfect คือรูปประโยคที่ใช้พูดถึงเหตุกาณณ์ที่เกิดขึ้นไปแล้วหรือเริ่มทำไปเรียบร้อยแล้วหรือสามารถพูดถึงสิ่งที่เคยเกิดขึ้นหรือทำไปแล้วได้ด้วย โดยคีย์เวิร์ดหรือวิธีสังเกตรูปประโยคคือจะมีกริยา have, has หรือ had นำหน้าก่อนแล้วตามด้วยกริยาหลักที่ผัน V.3',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  '4. Perfect Continuous (have/has/had + been + V-ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'รูป Perfect Continuous คือรูปประโยคที่ซับซ้อนหากเรามองเผินๆแต่จริงๆแล้วไม่มีอะไรยากค่ะ ในบริบทความหมายของเหตุการณ์ของ Perfect Continuous คือเหตุการณ์ที่ได้เริ่มขึ้นหรือเกิดขึ้นไปแล้วและยังคงดำเนินการต่อไปต่อเนื่องมาตลอดโดยคีย์เวิร์ดหรือวิธีสังเกตรูปประโยคคือจะมี have, has, had นำหน้าก่อนแล้วตามด้วย been จากนั้นก็ตบท้ายด้วย V.ing',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Simple Tenses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), 
                Text(
                  'Present Simple (S + V.1)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Present Simple คือรูปประโยคบอกเล่าเหตุการณ์ปัจจุบันที่ง่ายที่สุดเพราะโครงสร้างประโยคมีแค่ประธาน + กริยาช่อง 1 บริบทของประโยครูปนี้คือบอกสิ่งที่เป็นเรื่องเล่าที่เกิดขึ้นในปัจจุบัน',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Past Simple (S + V.2)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Past Simple คือรูปประโยคบอกเล่าเหตุการณ์ในอดีตที่ง่ายเหมือนกับ Present Simple เพียงแต่แค่ใช้กริยาช่อง 2 เพื่อสื่อถึงการกระทำนั้น ๆเกิดขึ้นในอดีต โดยความหมายจะเข้าใจได้ทันทีว่าเรื่องนี้เกิดขึ้นในอดีตถ้าเราใช้กริยาช่อง 2',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Future Simple (S + will/shall + V.infinitive)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Future Simple คือรูปประโยคบอกเล่าเหตุการณ์ที่กำลังจะเกิดในอนาคต บอกเล่าเหตุการณ์สั้นๆง่ายๆเหมือนกัน บริบทนี้ความเข้าใจถ้าเราพูดประโยคนี้ไปคนที่สื่อสารภาษาอังกฤษเข้าใจทันทีเลยว่ามันคือเหตุการณ์ที่จะเกิดขึ้นในอนาคต',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Continuous Tenses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), 
                Text(
                  'Present Continuous (S + is/am/are + V.ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Present Continuous คือรูปประโยคบอกเล่าเหตุการณ์ที่กำลังเกิดขึ้นในปัจจุบัน โดยใช้ V. to be (is/am/are) ที่เป็นช่อง 1 อยู่ จำได้ไหมคะกริยาช่อง 1 หมายถึงการกระทำที่อยู่ในช่วงเวลาปัจจุบัน ยังเป็นอยู่ และส่วนที่บอกว่าเหตุการณ์ยังคงเกิดขึ้นอยู่เรื่อย ๆ ดำเนินต่อไปก็คือกริยาที่เติม -ing นั่นเอง ถ้าเราพูด is am are + v.-ing ฝรั่งจะเข้าใจทันทีค่ะว่า สิ่งนั้นกำลังเกิดขึ้นอยู่',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Past Continuous (S + was/were + V.ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Past Continuous คือรูปประโยคบอกเล่าเหตุการณ์ที่กำลังเกิดขึ้นเหมือนกันแค่เป็นเหตุการณ์ที่กำลังเกิดขึ้นในอดีต ซึ่งผ่านมาแล้วและมันได้จบลงไปแล้วในอดีต ส่วนใหญ่มักจะมาซ้อนกับประโยค Past simple ด้วยกันถ้าเราเจอในข้อสอบ แต่ในการพูดคุยปกติเราก็สามารถใช้ Past Continuous เดี่ยว ๆได้เหมือกัน',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Future Continuous (S + will/shall + be + V.ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Future Continuous คือรูปประโยคที่บอกถึงเหตุการณ์ในอนาคตว่าอะไรจะดำเนินการในช่วงเวลาที่พูดถึงหรืออาจจะเป็นการทำนายก็ได้ว่ากำลังจะเกิดอะไรขึ้นเมื่อถึงช่วงเวลานั้น ๆ เป็นการผสมรูป Future กับ Continuous เข้ามาด้วยโครงสร้าง Will ที่เป็นคำที่บ่งบอกถึงสิ่งที่จะเกิดในอนาคตแล้วตามด้วย V.to be',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Perfect Tenses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), 
                Text(
                  'Present Perfect (S + have/has + V.3)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Present Perfect คือรูปประโยคที่บ่งบอกถึงสิ่งที่ได้เริ่มเกิดขึ้นหรือเริ่มทำไปก่อนแล้วจนมาจนถึงปัจจุบัน โดยคำว่า Perfect แปลว่าสมบูรณ์ ซึ่งก็หมายถึงการกระทำได้เริ่มทำอย่างสมบูรณ์แล้ว โดย have/has อยู่ในรูป Present ส่วน V.3 ที่ตามมาคือรูป Perfect มารวมกัน',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Past Perfect (S + had + V.3)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Past Perfect คือรูปประโยคที่พูดถึงเหตุการณ์ในอดีตซ้อนอดีต คือมีอยู่ 2 เหตุการณ์ในอดีตที่เกิดขึ้น อย่างนึงเกิดขึ้นก่อนอีกเหตุการณ์นึง โดยเหตุการณ์ที่เกิดขึ้นก่อนจะใช้โครงสร้าง had ที่เป็นช่อง 2 แล้ว + ด้วยกริยาช่อง 3 จะแปลว่า ได้….ไปก่อนแล้ว',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Future Perfect (S + will/shall + have + V.3)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Future Perfect คือรูปประโยคที่พูดถึงเหตุการณ์ที่เรามั่นใจได้ว่ามันจะเกิดขึ้นไปแล้วในอนาคต เพราะอย่างที่บอกไปคือ Perfect แปลว่าสมบูรณ์ ดังนั้นมันจะต้องเป็นเหตุการ์ที่จะเกิดขึ้นไปแล้วแน่ ๆ ส่วนใหญ่ประโยคนี้จะใช้คู่กับเรื่องราวที่มีตารางนัดหมายหรือถูกสั่งมาให้ดำเนินการในอนาคต โดยเป็นการรวมรูปของ Future ก็คือคำว่า Will หรือ Shall นำหน้าก่อนแล้วตามด้วย Have ที่เป็นรูป V. inf + V. 3 จึงกลายเป็น Future Perfect',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Perfect Continuous Tenses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), 
                Text(
                  'Present Perfect Continuous (S + have/has + been + V.ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Present Perfect Continuous คือรูปประโยคที่พูดถึงเหตุการณ์ปัจจุบันที่ได้เริ่มทำไปแล้วและกำลังดำเนินการต่อเรื่อยไป หรือจะแปลว่าทำมาโดยตลอดก็ได้ เมื่อไหร่ที่เราเจอหรือใช้โครงสร้างของ Present (have/has) + Perfect (been) + Continuous (V.ing) จะเท่ากับว่าประโยคนี้กำลังสื่อให้เรารู้ว่าสิ่งนี้ได้กำลังดำเนินการมานานแล้วและยังดำเนินการอยู่ต่อไปจนอนาคตเลย',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Past Perfect Continuous (S + had + been + V.ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Past Perfect Continuous คือรูปประโยคที่คล้าย ๆกับการนำบริบทของ Past Perfect มาผสมกับ Past Continuous คือ Past (had) + Perfect (been) + Continuous (V.ing) ซึ่งบริบทของประโยครูปนี้จะหมายถึง สิ่งที่ทำมานานแล้วทำมาโดยตลอดจนกระทั่งมันได้จบลงเพราะมีเหตุการณ์นึงแทรกเข้ามา',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Text(
                  'Future Perfect Continuous (S + will/shall + have + been + V.ing)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Future Perfect Continuous คือรูปประโยคที่ไม่ค่อยมีคนใช้เลยเพราะมักจะใช้ในเชิงบริบทที่เอาไว้เล่าว่า เมื่อถึงเวลาช่วงหนึ่งในอนาคตมันจะมีอะไรเกิดขึ้นในเชิงครบรอบ เป็นการบอกอนาคตที่จะเกิดขึ้นแน่นอนและเกิดขึ้นแล้วก็จะยังดำเนินการต่อไป ซึ่งก็คือการรวม Future (will have) + Perfect (been) + Continuous (V.ing) เข้ามาอยู่ด้วยกัน มันคือการบอกเล่าเหตุการณ์ว่าในอนาคตเมื่อถึงเวลาช่วงใดช่วงหนึ่งก็จะถือว่าเรื่องนั้นเป็นอย่างนี้ หรือเรื่องนั้นครบรอบ ครบกำหนดในข้อตกลงอะไรบางอย่างแล้วนั่นเอง',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), 
                Center(
                  child: Text(
                    'END',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
