import 'package:comp/screen/login_screen.dart';
import 'package:comp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class OrganizationSalary extends StatefulWidget {
  const OrganizationSalary({super.key});

  @override
  State<OrganizationSalary> createState() => _Page3State();
}

class _Page3State extends State<OrganizationSalary> {
  double newSalary = double.parse(salaryContraller.text);

  final List<Map<String, dynamic>> items = [
    {"text": "زيادة المدخرات", "image": "assets/assets/images/l9.png"},

    {"text": " التسوق", "image": "assets/assets/images/l4.png"},
    {
      "text": " فواتير الكهرباءوالمياة",
      "image": "assets/assets/images/l1.png", // ضع صورة داخل مجلد assets/images
    },
  ];

  final List<Map<String, dynamic>> items2 = [
    {"text": "تعجيل سداد الديون", "image": "assets/assets/images/l10.png"},

    {"text": " الانشطة الترفيهية", "image": "assets/assets/images/l5.png"},
    {
      "text": "مصاريف التعليم",
      "image": "assets/assets/images/l2.png", // ضع صورة داخل مجلد assets/images
    },
  ];

  final List<Map<String, dynamic>> items3 = [
    {"text": "حالات الطوارئ", "image": "assets/assets/images/l10.png"},

    {"text": " الرحلات", "image": "assets/assets/images/l7.png"},
    {
      "text": "الرعاية الصحية",
      "image": "assets/assets/images/l3.png", // ضع صورة داخل مجلد assets/images
    },
  ];

  final List<Map<String, dynamic>> items4 = [
    {"text": " ", "image": ""},
    {"text": " الهدايا", "image": "assets/assets/images/l8.png"},
    {
      "text": " النقل ",
      "image": "assets/assets/images/l4.png", // ضع صورة داخل مجلد assets/images
    },
  ];

  final List<Map<String, dynamic>> items5 = [
    {"text": "", "image": ""},
    {"text": "", "image": ""},
    {
      "text": "الاتصالات",
      "image":
          "assets/assets/images/l44.png", // ضع صورة داخل مجلد assets/images
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF3E2),
      body: Column(
        children: [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Widgets(fontFamily: ""),
            ),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10),
              Container(
                width: 300,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color(0xffbec69f),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "في هذه الصفحة يتم عرض افضل نسبة تنظيم مصروفات من خلال مرتبك",
                      style: TextStyle(
                        fontFamily: "",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    "assets/assets/images/logo (2).png",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            height: 80,
            width: 160,
            decoration: BoxDecoration(
              color: Color(0xFF606676),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Center(
                child: Text(
                  "${salaryContraller.text}",
                  style: TextStyle(
                    fontFamily: "",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(width: 25);
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = items[index];
                final item2 = items2[index];
                final item3 = items3[index];
                final item4 = items4[index];
                final item5 = items5[index];
                return Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEF3E2),
                    border: Border.all(color: Color(0xFFc9c8ac), width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Expanded(
                    child: Column(
                      children: [
                        Text(title[index]),
                        SizedBox(height: 15),
                        Stack(
                          children: [
                            CircularPercentIndicator(
                              animation: true,
                              radius: 80.0,
                              lineWidth: 5.0,
                              percent: circle[index],
                              animateFromLastPercent: true,

                              progressColor: Color(0xFF708871),
                            ),
                            Positioned(
                              right: 45,
                              bottom: 45,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    percent[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    (newSalary * circle[index]).toStringAsFixed(
                                      3,
                                    ),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        ListTile(
                          trailing: CircleAvatar(
                            backgroundImage: AssetImage(item["image"]),
                          ),
                          title: Text(item["text"]),
                        ),
                        ListTile(
                          trailing: CircleAvatar(
                            backgroundImage: AssetImage(item2["image"]),
                          ),
                          title: Text(item2["text"]),
                        ),
                        ListTile(
                          trailing: CircleAvatar(
                            backgroundImage: AssetImage(item3["image"]),
                          ),
                          title: Text(item3["text"]),
                        ),
                        ListTile(
                          trailing: CircleAvatar(
                            backgroundImage: AssetImage(item4["image"]),
                          ),
                          title: Text(item4["text"]),
                        ),
                        ListTile(
                          trailing: CircleAvatar(
                            backgroundImage: AssetImage(item5["image"]),
                          ),
                          title: Text(item5["text"]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
