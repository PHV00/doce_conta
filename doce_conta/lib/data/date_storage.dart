import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DataStorage {
  // Propriedades que você quer compartilhar
  int ProductCost = 0;
  double ProductMargin = 0;

  DataStorage() {
    getProfitMargin();
  }

  Future<double> getProfitMargin() async {
    final data =
        await Supabase.instance.client.from('produto').select('margem_lucro');

    double profitMargin = 0.0;
    data.forEach(((data) {
      profitMargin += data['margem_lucro'];
    }));

    profitMargin = profitMargin / data.length;

    // this.ProductMargin = profitMargin;

    // print(this.ProductMargin);

    return profitMargin;
  }

  String responseGetProfitMargin() {
    String response = getProfitMargin().then((value) {
      print(value);
      return value.toString();
    }).toString();

    print("******************************");
    print(response);

    return response;
  }
}
