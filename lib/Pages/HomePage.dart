import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:priyanshu001/main.dart';
import 'package:priyanshu001/models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // ignore: unused_local_variable
    final sample4json =
        await rootBundle.loadString("assets/files/sample4.json");
    var decodData = jsonDecode(sample4json);
    var productData = decodData["products"];
    CatalogModel.items = List.from(productData)
    .map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});    
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
        ? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: ((context, index) => ItemWidget(
            item: CatalogModel.items[index],
          )
          ),
        )
        :Center(
          child: CircularProgressIndicator(),
        )
      ),
    drawer: MyDrawer(),
    );
  }
}

//class sample4json {}
