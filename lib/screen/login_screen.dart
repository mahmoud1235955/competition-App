import 'package:comp/screen/home_page.dart';
import 'package:comp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

GlobalKey<FormState> globalKey = GlobalKey();
bool obscureText1 = true;
bool obscureText2 = true;
String selectedItem = "مصر";

TextEditingController nameContraller = TextEditingController();
TextEditingController emailContraller = TextEditingController();
TextEditingController salaryContraller = TextEditingController();
TextEditingController bankContraller = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: globalKey,
        child: Column(
          children: [
            const Widgets(fontFamily: ""),
            SizedBox(height: 5),
            Image(image: AssetImage("assets/assets/images/login.gif")),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                controller: nameContraller,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
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
                    borderRadius: BorderRadius.circular(20),
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
                    borderRadius: BorderRadius.circular(20),
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
                      obscureText1 ? Icons.visibility_off : Icons.visibility,
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
                      borderRadius: BorderRadius.circular(20),
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
                          obscureText2 = !obscureText2;
                        });
                      },
                      icon: Icon(
                        obscureText2 ? Icons.visibility_off : Icons.visibility,
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
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
              onChanged: (v) {
                setState(() {
                  selectedItem = v.toString();
                });
              },
              value: selectedItem,
            ),
            SizedBox(height: 10),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  }
                },
                minWidth: 200,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
