import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ช่องทางการชำระเงิน"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.indigo[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ชำระเงินได้ที่นี่", style: TextStyle(fontSize: 26.0)),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/pp.png',
              width: 200.0,
            ),
            SizedBox(height: 20),
            Text(
              "09XXXX3XXX",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20),
            Text(
              "เมื่อชำระเงินเสร็จแล้วโปรดใส่ชื่อบัญชีของท่านที่ช่องข้อความด้านล่างนี้เพื่อทำการตรวจสอบ",
              style: TextStyle(fontSize: 15.0),
            ),
            SizedBox(height: 20),
            Container(
              width: 500.0,
              child: TextField(
                controller: _textEditingController,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Enter text...',
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _checkout();
              },
              child: Text("ยืนยันการทำรายการ"),
            ),
          ],
        ),
      ),
    );
  }

  void _checkout() {
    String enteredText = _textEditingController.text;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("ยืนยันการชำระเงิน"),
          content: Text("คุณ: $enteredText"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );

    _textEditingController.clear();
  }
}

