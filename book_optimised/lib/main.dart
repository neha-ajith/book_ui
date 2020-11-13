import 'package:book_optimised/Cards.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width, height;

    if (MediaQuery.of(context).orientation == Orientation.landscape){
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;
    }
    else{
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Read",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              BookCard(
                name: "The Alchemist",
                author: "By Paulo Coelho",
                rating: 3,
                price: "\$15.23",
                image: "assets/alchemist.jpg",
                desc: "The Alchemist is a novel by Brazilian author Paulo Coelho that was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller.",
              ),
              BookCard(
                  name: "Julius Caesar",
                  author: "By William Shakespeare",
                  rating: 4,
                  price: "\$20",
                image: "assets/julius_caesar.jpg",
                desc: "The Tragedy of Julius Caesar is a history play and tragedy by William Shakespeare first performed in 1599.",
              ),
              BookCard(
                name: "I Am Malala",
                author: "By Malala Yousafzai with \nChristina Lamb",
                rating: 5,
                price: "\$10",
                image: "assets/malala.jpg",
                desc: "I Am Malala: The Story of the Girl Who Stood Up for Education and was Shot by the Taliban is an autobiographical book by Malala Yousafzai, co-written with Christina Lamb.",
              )
            ],
          ),
        )
    );
  }
}
