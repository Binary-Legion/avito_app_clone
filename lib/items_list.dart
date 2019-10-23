import 'package:avito_app/constants.dart';
import 'package:avito_app/models/avito_model.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  ItemsList({this.ListData});
  final ListData;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            elevation: 1.0,
            margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 110.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(avitoData[index].picture),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0,top: 5.0,left: 9.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                size: 13.0,
                                color: kIconsColor,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                avitoData[index].time,
                                style: kTextIconStyle,
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Icon(
                                Icons.location_on,
                                size: 13.0,
                                color: kIconsColor,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                avitoData[index].location,
                                style: kTextIconStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            avitoData[index].title,
                            style: kItemsTitleStyle,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            avitoData[index].price,
                            style: kItemsPriceStyle,
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.more_vert,
                          size: 18.0,
                          color: kAppBarIconColor,
                        ),
                        SizedBox(
                         height: 45.0,
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 18.0,
                          color: kAppBarIconColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
              height: 5.0,
              color: kBackgroundColor,
            ),
        itemCount: avitoData.length);
  }
}
