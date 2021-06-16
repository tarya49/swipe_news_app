import 'package:flutter/cupertino.dart';

class NewsInfo{

  NewsInfo({this.position,this.headline,this.iconImage,this.description,this.images,this.category});

  final int position;
  final String headline;
  final String iconImage;
  final String description;
  final List<String> images;
  final String category;
}


List<NewsInfo> infos = [
  NewsInfo(position: 1,
      headline: 'Roger Federer Eases Into Second Round At Halle',
      iconImage: 'https://cdn.iconscout.com/icon/free/png-512/tennis-213-450365.png',
      description: 'Roger Federer eased into the second round of the ATP grass court tournament in Halle on Monday with a straight sets win over qualifier Ilya Ivashka',
      images: [],
      category: 'Tennis',

  ),
  NewsInfo(position: 2,
    headline: 'Indian wrestler Vinesh Phogat wins gold at Poland Open',
    iconImage: 'https://image.flaticon.com/icons/png/128/4658/4658048.png',
    description: 'It is the third title of the season for the 26-year-old Vinesh, who claimed gold medals at the Matteo Pellicone event (March) and Asian Championship (April) earlier.',
    images: [],
    category: 'Wrestling',
  ),
  NewsInfo(position: 3,
    headline: 'Captain say team back on its feet after Italy loss',
    iconImage: 'https://image.flaticon.com/icons/png/512/867/867329.png',
    description: 'Turkey captain Yilmaz said that his team is hoping that the presence of many of its fans against Wales on Wednesday in Azerbaijan will help it earn three points.',
    images: [],
    category: 'Soccer',
  ),
  NewsInfo(position: 4,
    headline: 'Indian womens hockey team wants to win Olympics medal',
    iconImage: 'https://image.flaticon.com/icons/png/512/3294/3294980.png',
    description: 'Rani also informed that the core probables training at the SAI Center in Bengaluru will undergo selection trials this week to pick the team for the Tokyo Games.',
    images: [],
    category: 'Hockey',
  ),

];