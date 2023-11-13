import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {
  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  List<int> quantities = [0, 0, 0, 0]; // Initialize quantities for each book
  List<double> prices = [131, 159, 49, 209]; // Prices for each book
  double totalPrice = 0.0; // Initialize total price

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "หนังสือเด็กและเยาวชน",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.brown[300],
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildBookItem(0, 'หัวฉันตัวใคร Mix&Match', 'assets/images/c1.jpg', 100, 0),
                SizedBox(height: 20),
                buildBookItem(1, 'นิทานอีสปก่อนนอน 50 เรื่อง', 'assets/images/c2.jpg', 100, 1),
                SizedBox(height: 20),
                buildBookItem(2, 'บ้านนี้มีเด็กขี้โมโห', 'assets/images/c3.jpg', 100, 2),
                SizedBox(height: 20),
                buildBookItem(3, 'บ้านต้นไม้10ชั้น', 'assets/images/c4.jpg', 100, 3),
                SizedBox(height: 20),
                Text(
                  "Total: $totalPrice Bath",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBookItem(int index, String title, String imagePath, double imageWidth, int priceIndex) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: imageWidth, height: 100),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "Price: ${prices[priceIndex]} Bath",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              _addBook(index, priceIndex);
            },
            child: Text("+Add"),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              _removeBook(index, priceIndex);
            },
            child: Text("Remove"),
          ),
          SizedBox(width: 10),
          Text(
            "จำนวน: ${quantities[index]}",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _addBook(int index, int priceIndex) {
    setState(() {
      quantities[index]++;
      totalPrice += prices[priceIndex];
    });

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Successfully!"),
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
  }

  void _removeBook(int index, int priceIndex) {
    setState(() {
      if (quantities[index] > 0) {
        quantities[index]--;
        totalPrice -= prices[priceIndex];
      }
    });
  }
}
