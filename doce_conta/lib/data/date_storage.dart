import 'package:supabase_flutter/supabase_flutter.dart';

class DataStorage {
  static final DataStorage _instance = DataStorage._internal();

  // Propriedades que você quer compartilhar
  int ProductCost = 0;
  double ProductMargin = 0;

  // Construtor privado
  DataStorage._internal();

  // Acessa a instância
  factory DataStorage() {
    return _instance;
  }

  Future<double> getProfitMargin() async {
    final data =
        await Supabase.instance.client.from('produto').select('margem_lucro');

    double profitMargin = 0.0;
    data.forEach(((data) {
      profitMargin += data['margem_lucro'];
    }));

    profitMargin = profitMargin / data.length;

    return Future.value(profitMargin);
  }

  void reponse() async {
    // getProfitMargin().then((data) {
    //   print(data);
    // });
    // print(await getProfitMargin());
    this.ProductMargin = await getProfitMargin();
  }
}
