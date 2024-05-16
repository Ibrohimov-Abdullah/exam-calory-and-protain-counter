import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key });

  // final String text;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isDateCame = false;

  // List<NutritionModel> nutritions = [];
  //
  // String? result;
  //
  // @override
  // void initState() {
  //   timeWait();
  //   read();
  //   super.initState();
  // }
  //
  // String search = "";
  // String timeWait() {
  //   search = ModalRoute.of(context)?.settings.arguments  ?? "";
  //   if (result != null && result is String) {
  //     isDateCame = true;
  //   } else {
  //     isDateCame = false;
  //   }
  //   return search;
  // }

  //
  // Future read() async {
  //   String? result = await ClientService.get(
  //       api: ClientService.apiGetNutritions, param: {"query": search});
  //   if (result != null) {
  //     log("GET IT BROO");
  //     nutritions = nutritionModelFromJson(result);
  //     log(result);
  //     log(
  //       nutritions[0].name,
  //     );
  //     log(
  //       nutritions[0].calories.toString(),
  //     );
  //     // Searchedmodel model = Searchedmodel(searchProduct: nutritions[0].name, calories: nutritions[0].calories.toString(), protain: nutritions[0].proteinG.toString(), id: "id");
  //     // String? posting = await ClientService.post(api: ClientService.apiMockPost, data: model.toJson());
  //     // if(posting != null){
  //     //   log("BROO POSTED");
  //     // }
  //   } else {
  //     log("Father mother");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var info = ModalRoute.of(context)?.settings.arguments;
    if (info != null && info is NutritionModel) {
      return Scaffold(
        body: Center(
          child: Card(
            child: ListTile(
              title: Text("Product name: ${info.name}"),
              trailing: Text("Calories: ${info.calories.toString()}"),
              subtitle: Text("Protein: ${info.proteinG.toString()}"),
            ),
          ),
        ),
      );
    } else {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
