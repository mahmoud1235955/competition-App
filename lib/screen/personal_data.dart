import 'package:comp/screen/login_screen.dart';
import 'package:comp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  GlobalKey<FormState> globalKey = GlobalKey();
  String selectedItem = "مصر";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 300, top: 30),
            child: Widgets(fontFamily: ""),
          ),
          SizedBox(height: 130),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 400,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color(0xFFBEC6A0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),

                Positioned(
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Color(0xFFBEC6A0),
                  ),
                  top: -110,
                  left: MediaQuery.of(context).size.width / 2 - 110,
                ),
                Positioned(
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage(
                      "assets/assets/images/slogan.gif",
                    ),
                  ),
                  top: -90,
                  left: MediaQuery.of(context).size.width / 2 - 90,
                ),
                Positioned(
                  top: 135,
                  left:
                      MediaQuery.of(context).size.width / 2 -
                      nameContraller.text.length * 8,

                  child: Text(
                    nameContraller.text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Positioned(
                  top: 180,
                  left:
                      MediaQuery.of(context).size.width / 2 -
                      nameContraller.text.length * 6,

                  child: Text(
                    emailContraller.text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: MediaQuery.of(context).size.width / 2 - 80,
                  child: Container(
                    child: Center(
                      child: Text(
                        selectedItem,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF708871),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 320,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          backgroundColor: Color(0xFFFEF3E2),
                          startAngle: 220,
                          percent: 0.35,
                          progressColor: Color(0xFF708871),
                          radius: 65,
                          center: Text(
                            bankContraller.text,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          footer: Text(
                            "الراتب الشهري",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 35),
                        CircularPercentIndicator(
                          backgroundColor: Color(0xFFFEF3E2),
                          startAngle: 220,
                          percent: 0.35,
                          progressColor: Color(0xFF708871),
                          radius: 65,
                          center: Text(
                            salaryContraller.text,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          footer: Text(
                            " الحساب البنكي",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Form(
                  key: globalKey,
                  child: Positioned(
                    top: 520,
                    left: MediaQuery.of(context).size.width / 2 - 60,
                    child: MaterialButton(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minWidth: 120,
                      height: 50,
                      color: Color(0xFFFEF3E2),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder:
                              (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xFFFEF3E2),
                                title: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text(
                                    "تعديل البيانات الشخصيه",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  height: 500,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFEF3E2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    children: [
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextFormField(
                                          controller: nameContraller,
                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            labelText: "الاسم كامل",
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                            hintText: "ادخل الاسم",
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Wrong Name";
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextFormField(
                                          controller: emailContraller,
                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            labelText: " البريد الالكتروني",
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                            hintText: "اخل البريد الالكتروني",
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Wrong Email";
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextFormField(
                                          controller: salaryContraller,
                                          obscureText: obscureText1,
                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            labelText: " الدخل الشهري",
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                            hintText: "ادخل دخلك الشهري",
                                            suffixIcon: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  obscureText1 = !obscureText1;
                                                });
                                              },
                                              icon: Icon(
                                                obscureText1
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                              ),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "This field is requierd";
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: SingleChildScrollView(
                                          child: TextFormField(
                                            controller: bankContraller,
                                            obscureText: obscureText2,
                                            textAlign: TextAlign.right,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              labelText: " الرصيد البنكي",
                                              labelStyle: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                              ),
                                              hintText: "اخل رصيدك البنكي",
                                              suffixIcon: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    obscureText2 =
                                                        !obscureText2;
                                                  });
                                                },
                                                icon: Icon(
                                                  obscureText2
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
                                                ),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "This field is requierd ";
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                      DropdownButton(
                                        items:
                                            items1
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(e),
                                                  ),
                                                )
                                                .toList(),
                                        onChanged: (v) {
                                          setState(() {
                                            selectedItem = v.toString();
                                          });
                                        },
                                        value: selectedItem,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          MaterialButton(
                                            shape: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            color: Color(0xFF606676),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              setState(() {
                                                if (globalKey.currentState!
                                                    .validate()) {}
                                              });
                                            },
                                            child: Text(
                                              "حفظ",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "الغاء",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                        );
                      },
                      child: Text(
                        "تعديل",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
