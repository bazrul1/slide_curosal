import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class SlideCarousal extends StatefulWidget {
  const SlideCarousal({Key? key}) : super(key: key);

  @override
  _SlideCarousalState createState() => _SlideCarousalState();
}

class _SlideCarousalState extends State<SlideCarousal> {

List SlidesData = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(height: 200.0,
        initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2)),
        items:
            SlidesData.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://static.desygner.com/wp-content/uploads/sites/13/2022/05/04141642/Free-Stock-Photos-01.jpg",
                        ),
                      ),
                    ),
                    child: Center(child: Text('Text $i', style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.w500))),
                  );
                },
              );
            }).toList(),
      ),
    );

    
  }
}
