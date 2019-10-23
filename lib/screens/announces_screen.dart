import 'package:avito_app/items_list.dart';
import 'package:avito_app/models/avito_model.dart';
import 'package:flutter/material.dart';

class AnnouncesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ItemsList(
        ListData: avitoData,
      ),
    );
  }
}
