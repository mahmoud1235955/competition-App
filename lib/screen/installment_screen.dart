import 'package:comp/widgets/models.dart';
import 'package:comp/widgets/sqflite.dart';
import 'package:comp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InstallmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiFieldTable(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MultiFieldTable extends StatefulWidget {
  @override
  _MultiFieldTableState createState() => _MultiFieldTableState();
}

class _MultiFieldTableState extends State<MultiFieldTable> {
  final TextEditingController moneyController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  List<List<String>> tableData = [];

  void addRow() {
    final money = moneyController.text.trim();
    final date = dateController.text.trim();
    final notes = notesController.text.trim();

    if (money.isNotEmpty && date.isNotEmpty && notes.isNotEmpty) {
      setState(() {
        tableData.add([money, date, notes]);
        moneyController.clear();
        dateController.clear();
        notesController.clear();
      });
    }
  }
   Models? notes;
  void insert() async {
    await SqfliteDb().insertData(notes!);
    getData();
  }

  List<Models> note = [];
  void getData() async {
    note= await SqfliteDb().getDb();
    setState(() {
      
    });
    getData();
  }

  delete(int id) async {
    await SqfliteDb().delete(id);
    getData();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }


  @override
  void dispose() {
    moneyController.dispose();
    dateController.dispose();
    notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Widgets(fontFamily: ""),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: welcome(
                text:
                    "في هذة الصفحة يتم عرض او اضافة او حذف الاقساط الملتزم بها حاليا",
              ),
            ),
            Expanded(
              child:
                  tableData.isEmpty
                      ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ليس لديك اي قسط بعد",
                              style: TextStyle(
                                fontFamily: "",
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF708871),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Image.asset(
                                'assets/assets/images/no quest.gif', // تأكد أن الصورة موجودة في المسار ومضافة في pubspec.yaml
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      )
                      : SingleChildScrollView(
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(),
                          },
                          children: [
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                              ),
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'ملاحظات',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'الميعاد',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'القسط الشهري',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ...tableData.map((row) {
                              return TableRow(
                                children:
                                    row.map((cell) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(cell),
                                      );
                                    }).toList(),
                              );
                            }).toList(),
                          ],
                        ),
                      ),
            ),
            SizedBox(height: 30),

            MaterialButton(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minWidth: 90,
              height: 50,
              color: Color(0xFF708871),
              child: Icon(Icons.add),
              onPressed: () {
                showDialog(
                  context: context,
                  builder:
                      (BuildContext context) => AlertDialog(
                        backgroundColor: Color(0xFFBEC6A0),
                        title: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            " اضافة قسط جديد",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        content: Container(
                          color: Color(0xFFBEC6A0),
                          width: 300,
                          height: 300,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Column(
                              children: [
                                // مدخلات البيانات
                                Column(
                                  children: [
                                    TextField(
                                      controller: moneyController,
                                      decoration: InputDecoration(
                                        labelText: 'القسط الشهري',
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    TextField(
                                      controller: dateController,
                                      decoration: InputDecoration(
                                        labelText: 'الميعاد',
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(width: 8),
                                    TextField(
                                      controller: notesController,
                                      decoration: InputDecoration(
                                        labelText: 'ملاحظات',
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("الغاء"),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            addRow();
                                            Navigator.pop(context);
                                          },

                                          child: Text('إضافة'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}