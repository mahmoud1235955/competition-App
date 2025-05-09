import 'package:comp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key});

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  TextEditingController amount1 = TextEditingController();
  String selectedItem = "Egypt (EGP)";
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF3E2),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 30, top: 20),
              child: Widgets(fontFamily: ""),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: welcome(text: "في هذة الغرفة يمكنك تحويل العملات الى قيمتها الدولارية"),
          ),
          Row(
            children: [
              SizedBox(width: 30),
              DropdownButton(
                items:
                    items
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                onChanged: (v) {
                  setState(() {
                    selectedItem = v.toString();
                  });
                },
                value: selectedItem,
              ),
              SizedBox(width: 50),
              Text(
                "اختر العملة المراد تحويلها",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 80,
            width: 200,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                controller: amount1,
                decoration: InputDecoration(
                  labelText: "ادخل المبلغ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            height: 50,
            minWidth: 150,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "تحويل",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            color: Color(0xFF708871),
            onPressed: () {
              setState(() {
                if (selectedItem.isNotEmpty) {
                  double amo = double.parse(amount1.text);
                  result = amo / moneyFelow[selectedItem]!.toDouble();
                }
              });
            },
          ),
          SizedBox(height: 50),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$selectedItem=",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  result.toStringAsFixed(3),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
              ],
            ),
            height: 120,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFEF3E2),
              border: Border.all(width: 3, color: Color(0xFFBEC6A0)),
            ),
          ),
        ],
      ),
    );
  }
}
