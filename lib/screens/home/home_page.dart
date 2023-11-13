import 'package:flutter/material.dart';
import 'package:project/models/Business_Book.dart';
import 'package:project/models/Chridren_Book.dart';
import 'package:project/models/Education_book.dart';
import 'package:project/models/Novels_Book.dart';
import 'package:project/screens/home/cart_page.dart';
void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bookstore",
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.brown[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                          ),
                          Text(
                            "Welcome To Bookstore !",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/book6.png',
                fit: BoxFit.cover,
                height: 200,
              ),
              SizedBox(height: 15),
              Text(
                "LOVE READING",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                child: Text("NEXT", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book Categories",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.brown[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose a book category",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailsPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              child: Text("หนังสือเด็กและเยาวชน", style: TextStyle(fontSize: 24, color: Colors.white)),
            ),


            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NovelsPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              child: Text("นิยายและวรรณกรรม", style: TextStyle(fontSize:24,color: Colors.white)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EducationPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              child: Text("การศึกษาและการเรียนรู้", style: TextStyle(fontSize:24,color: Colors.white)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              child: Text("ธุรกิจและการเงิน", style: TextStyle(fontSize:24,color: Colors.white)),
            ),
            SizedBox(height: 15),
            Positioned(
              bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));

              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.brown,
              ),
            ),),
          ],
        ),
      ),
    );
  }
}

