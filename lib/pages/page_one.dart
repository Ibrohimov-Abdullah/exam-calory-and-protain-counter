import 'dart:developer';

import 'package:exam_to_modul7/models/exam_model.dart';
import 'package:exam_to_modul7/pages/search_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/clint_service.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  TextEditingController edtController = TextEditingController();
  List<NutritionModel> nutritions = [];

  @override
  void initState() {
    read();
    super.initState();
  }
  String search = "";
  Future read() async{
    String? result = await ClientService.get(api: ClientService.apiGetNutritions,param:{"query":search} );
    if(result != null){
      log("GET IT BROO");
      nutritions = nutritionModelFromJson(result);
      log(result);
      log(nutritions[0].name,);
      log(nutritions[0].calories.toString(),);
        // Searchedmodel model = Searchedmodel(searchProduct: nutritions[0].name, calories: nutritions[0].calories.toString(), protain: nutritions[0].proteinG.toString(), id: "id");
        // String? posting = await ClientService.post(api: ClientService.apiMockPost, data: model.toJson());
        // if(posting != null){
        //   log("BROO POSTED");
        // }
    }else{
      log("Father mother");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
              const Text(
                "Hello Shambhavi,",
                style: TextStyle(
                  color: Color(0xff91C788),
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Find, track and eat healthy food.",
                style: TextStyle(
                  color: Color(0xff7B7B7B),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 70,),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                    color:  Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextField(
                  // onChanged: (value) async{
                  //   search = value;
                  //   setState(() {});
                  // },
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) async{
                    search = edtController.text;
                    setState(()async {
                      read();
                      String? post = await ClientService.post(api: ClientService.apiMockPost, data: {
                        "searchProduct":edtController.text,
                        "calories":nutritions[0].calories.toString(),
                        "protain": nutritions[0].proteinG.toString(),
                        "id":''
                      }
                      );
                      if(post != null){
                        log("posted");
                      }
                      NutritionModel model =  await NutritionModel(name: nutritions[0].name, calories: nutritions[0].calories, servingSizeG: nutritions[0].proteinG, fatTotalG: nutritions[0].fatTotalG, fatSaturatedG: nutritions[0].fatSaturatedG, proteinG: nutritions[0].proteinG, sodiumMg: nutritions[0].sodiumMg, potassiumMg: nutritions[0].potassiumMg, cholesterolMg: nutritions[0].cholesterolMg, carbohydratesTotalG: nutritions[0].carbohydratesTotalG, fiberG: nutritions[0].fiberG, sugarG: nutritions[0].sugarG);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage(),settings: RouteSettings(arguments: model)));
                    });
                    // Navigator.push(context, CupertinoPageRoute(builder: (context) => const DetailPage()));


                  },
                  decoration: InputDecoration(
                      hintText: "Junk Food",
                      labelText: "Junk Food",
                      prefixIcon: const Icon(Icons.search_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  controller: edtController,
                ),
              ),
              // MaterialButton(onPressed: ()async{

              // },height: 30,minWidth: 100,child: const Text("post"),),
              const SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 100,
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                      color: const Color(0xFFA3A0CA),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Track Your\n Weekly Progress",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            minWidth: 40,
                            child: Image.asset("assets/images/button_icon.png"),
                          )
                        ],
                      ),
                    )),
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Choose Your Favorites",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 146,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 132,
                      height: 144,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFF2F0),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/strawberry.png"),
                      ),
                    ),
                    Container(
                      width: 132,
                      height: 144,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFEFF7EE),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/brokolli.png"),
                      ),
                    ),
                    Container(
                      width: 132,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 144,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFF2F0),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/strawberry.png"),
                      ),
                    ),
                    Container(
                      width: 132,
                      height: 144,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFEFF7EE),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/brokolli.png"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
