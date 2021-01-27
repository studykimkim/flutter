import 'package:flutter/material.dart';
import 'package:memo/database/db_crud.dart';
import 'package:memo/database/data_form.dart';

class WritePage extends StatelessWidget {
  String title = '';
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              print("click");
            },
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: saveDB,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String title) {
                this.title = title;
              },
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(hintText: '메모 제목을 적어 주세요.'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
              onChanged: (String text) {
                this.text = text;
              },
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(hintText: '메모 내용을 적어 주세요.'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> saveDB() async {
    DBHelper sd = DBHelper();

    var fido = Memo(
        id: '3',
        title: this.title,
        text: this.text,
        createTime: DateTime.now().toString(),
        editTime: DateTime.now().toString());

    await sd.insertMemo(fido);

    print(await sd.memos());
  }
}
