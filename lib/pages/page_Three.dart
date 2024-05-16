import 'dart:developer';

import 'package:exam_to_modul7/models/serch_model_mock_api.dart';
import 'package:exam_to_modul7/service/clint_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  bool isColorRed = false;
  bool loading = false;
  List<Searchedmodel> list = [];
  Future<void>read()async {
    loading = false;
    setState(() {
    });
    String? getting = await ClientService.get(api: ClientService.apiMockPost,);
    if(getting != null){
      list = searchedmodelFromJson(getting);
      log("toook");
    }
  }
  @override
  void initState() {
    read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  loading ? ListView.builder(itemBuilder: (context, index) => Card(child: ListTile(
          title: Text(list[0].searchProduct),
          leading: Text(list[0].calories),
        ),
        ),):Center(
      child: Column(
        children: [
          const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20,),bottomLeft: Radius.circular(20)),
                    child: MaterialButton(
                      minWidth: 140,
                      height: 50,
                      onPressed: () {
                        isColorRed = !isColorRed;
                        setState(() {});
                      },
                      color: isColorRed
                          ? const Color(0xFFFFF8EE)
                          : const Color(0xFFFF9385),
                        child: const Text("Food",textAlign: TextAlign.center,)
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(20,),bottomRight: Radius.circular(20)),
                    child: MaterialButton(
                        minWidth: 140,
                        height: 50,
                        onPressed: () {
                          isColorRed = !isColorRed;
                          setState(() {});
                        },
                        color: isColorRed
                            ? const Color(0xFFFF9385)
                            : const Color(0xFFFFF8EE),
                    child: const Text("Recipes",textAlign: TextAlign.center,),),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: isColorRed ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/pageThree.png"),
                const SizedBox(height: 15,),
                const Text("No Recipes Found",style: TextStyle(fontSize: 22,color: Color(0xFF696969),fontWeight: FontWeight.w500),),
                const Text("You don’t save any recipes. Go ahead, search\n       and save your favorite recipe",style: TextStyle(color: Color(0xFFA9A9A9)),)

              ],
            ),
          ) : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/pageThree.png"),
                const SizedBox(height: 15,),
                const Text("No Foods Found",style: TextStyle(fontSize: 22,color: Color(0xFF696969),fontWeight: FontWeight.w500),),
                const Text("You don’t save any food. Go ahead, search \n      and save your favorite food",style: TextStyle(color: Color(0xFFA9A9A9)),)

              ],
            ),
          ))
        ],
      ),
    )
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Image.asset("assets/images/pageThree.png"),
        //     const SizedBox(height: 15,),
        //     const Text("No Foods Found",style: TextStyle(fontSize: 22,color: Color(0xFF696969),fontWeight: FontWeight.w500),),
        //     const Text("You don’t save any food. Go ahead, search \n        and save your favorite food",style: TextStyle(color: Color(0xFFA9A9A9)),)
        //
        //   ],
        // ),
        );
  }
}
