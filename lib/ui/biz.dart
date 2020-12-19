import 'package:bizcard/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmer_fonts/khmer_fonts.dart';

class Biz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz Card"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "ឃ្លោក ចំរ៉ាត់",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: KhmerFonts.content,
                package: 'khmer_fonts'),
          ),
          Text(
            "khlokchamratt7@gmail.com",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person, color: Colors.white),
              Text(
                "@CHAMRATT",
                style: TextStyle(color: Colors.yellowAccent),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.black54, width: 1.0),
        image: DecorationImage(
            image: NetworkImage(
                "https://static.wikia.nocookie.net/mobile-legends/images/9/91/Khaleed.png/revision/latest/scale-to-width-down/177?cb=20200810043756"),
            fit: BoxFit.cover),
      ),
    );
  }
}

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = ["កុំស្អប់មនុស្សច្រណែនអ្នកគេច្រណែនអ្នក ព្រោះគេគិតថាអ្នកមានសមត្ថភាពជាងយើង","កុំទាន់អាលជឿនូវអ្វីៗដោយងាយពេក ទោះបីជាគ្រូរបស់អ្នកនិយាយប្រាប់អ្នកក៏ដោយ","មនុស្សឆ្លាតគេស្គាល់កាលៈទេសៈ មិនមែនទៅទាំងទទឹងទិសទេ","បេះដូងអ្នកប្រាជ្ញលះបង់ដើម្បីមនុុស្សជាតិ មិនមែនដូចមនុស្សខូចគិតតែប្រយោជន៌ផ្ទាល់ខ្លួននោះទេ",
  "ពេលខ្លះចិត្តធម៌ ក៏អាចធ្វើអោយយើងវិនាសបានដែរ","លើលោកនេះគ្មានសៀវភៅណាអានហើយជោគជ័យនោះទេ បើអ្នកមិនព្រមចេញទៅអនុវត្ត","ពួកអ្នកសិក្សាខ្លះក្អេង ក្អាងដូចកង្កែបក្នុងអណ្ដូងចឹង","ការធ្វើខុសខាតបង់ត ិចជាងការមិនព្រមធ្វើអ្វីសោះ","ចេះប្រើពាក្យពេចន៏ពិរោះមានអីអស្ចារ្យ ចេះមើលកាលៈទេសៈទើបជាមនុស្សកំពូល"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best Quote"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                          fontFamily: KhmerFonts.battambang,
                          package: 'Khmer_fonts',
                          fontSize: 20,fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
            ),
            Divider(thickness: 1.3),
            FlatButton.icon(

              icon: Icon(Icons.navigate_next,color: Colors.white),
              color: Colors.green,
              label: Text(
                "បន្ទាប់",
                style: TextStyle(fontSize: 15,fontFamily: KhmerFonts.chenla,
                    package: 'Khmer_fonts',color: Colors.white),
              ),
              onPressed: _showQuote,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      _index +=1;
    });

  }
}

class CalculateTip extends StatefulWidget {
  @override
  _CalculateTipState createState() => _CalculateTipState();
}

class _CalculateTipState extends State<CalculateTip> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;
  Color _purple = HexColor("#6908D6");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Tip"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
        alignment: Alignment.center,
        child: ListView(
          scrollDirection:  Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children:<Widget> [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: _purple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.0)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text("Total per person"),
                    Text("\$100")
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.blueGrey.shade100,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(12.0)
              ),
              child: Column(

                children:<Widget>[
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        prefixText: "Bill Amount ",
                        prefixIcon: Icon(Icons.attach_money)
                      ),
                      onChanged: (String value){
                        try{
                          _billAmount = double.parse(value);
                        }catch(exception){
                          _billAmount = 0.0;
                        }
                      },
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

