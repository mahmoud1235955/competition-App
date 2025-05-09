import 'package:flutter/src/widgets/basic.dart';

class Models {
  final String? id;
  final String money;
  final String date;
  final String notes;

  Models({required this.money,required this.date,required this.notes,  this.id, });
  Map<String, dynamic> tomap() {
    return {'id': id, 'money': money, 'date': date,'notes':notes};
  }

  map(Padding Function(dynamic cell) param0) {}
}
