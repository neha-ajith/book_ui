import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'BookPage.dart';

class BookCard extends StatelessWidget {
  final String name,author,price,image,desc;
  final double rating;
  BookCard({this.name,this.author,this.price,this.rating,this.image,this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 180,
      width: double.maxFinite,
      child: InkWell(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(
              builder: (BuildContext context){
                return Book(
                  name: name,
                  author: author,
                  rating: rating,
                  desc: desc,
                  image: image,
                );
              }
          ));
        },
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      height: 135,
                      image: AssetImage("$image"),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        SizedBox(height:10),
                        RatingBar(
                          initialRating: rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 25,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: null,
                        ),
                        SizedBox(height: 5),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Text(
                            author,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Text(price),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
