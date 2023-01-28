import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/metas.dart';

class MetasItem extends StatelessWidget {
  final Metas metas;

  const MetasItem({Key? key, required this.metas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('Clicked on Meta Item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          metas.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdCheck,
        ),
        title: Text(
          metas.metaText!,
          style: TextStyle(
            fontSize: 20,
            color: tdBlack,
            decoration: metas.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 33,
          width: 33,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('Clicked on Delete Icon');
            },
          ),
        ),
      ),
    );
  }
}
