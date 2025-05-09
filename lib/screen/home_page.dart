import 'package:comp/screen/converter_screen.dart';
import 'package:comp/screen/installment_screen.dart';
import 'package:comp/screen/login_screen.dart';
import 'package:comp/screen/organization_salary.dart';
import 'package:comp/screen/personal_data.dart';
import 'package:flutter/material.dart';
import 'package:comp/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Widgets(fontFamily: ""),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: welcome(text: "اهلا بك في الميزان يا${nameContraller.text}"),
            ),
            SizedBox(height: 25),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConverterScreen()),
                );
              },

              child: Container(
                width: double.infinity,
                height: 125,
                decoration: BoxDecoration(
                  color: Color(0xFF708871),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/assets/images/dolar.png",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "حساب تحويل العملات الى الدولار",
                      style: TextStyle(
                        fontFamily: "",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrganizationSalary()),
                );
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InstallmentScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFF708871),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "assets/assets/images/aqsat.jpg",
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "عرض الاقساط ومواعيدها",
                        style: TextStyle(
                          fontFamily: "",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrganizationSalary()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 125,
                decoration: BoxDecoration(
                  color: Color(0xFF708871),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/assets/images/masrouf.png",
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "تنظيم المصروفات بالنسبة لدخلك الشهري",
                      style: TextStyle(
                        fontFamily: "",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalData()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 125,
                decoration: BoxDecoration(
                  color: Color(0xFF708871),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/assets/images/data.jpg",
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "البيانات الشخصية",
                      style: TextStyle(
                        fontFamily: "",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
