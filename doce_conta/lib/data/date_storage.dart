import 'package:supabase_flutter/supabase_flutter.dart';

class DataStorage {
  // Propriedades que você quer compartilhar
  // int ProductCost = 0;
  // double ProductMargin = 0;

  // DataStorage() {
  //   getProfitMargin();
  // }

  Future<double> getProfitMargin() async {
    final data =
        await Supabase.instance.client.from('produto').select('margem_lucro');

    double profitMargin = 0.0;

    data.forEach(((data) {
      profitMargin += data['margem_lucro'];
    }));

    profitMargin = profitMargin / data.length;

    return double.parse(profitMargin.toStringAsFixed(2));
  }

  Future<double> getProductCost() async {
    final data =
        await Supabase.instance.client.from('produto').select('custo_produto');

    double productCost = 0.0;

    data.forEach(((data) {
      productCost += data['custo_produto'];
    }));

    productCost = productCost / data.length;

    return double.parse(productCost.toStringAsFixed(2));
  }

  Future<double> getProfit() async {
    final firstDayThisMouth =
        DateTime(DateTime.now().year, DateTime.now().month);

    final data = await Supabase.instance.client
        .from('produto')
        .select('lucro_produto')
        .gte('data_cadastro', firstDayThisMouth);

    double productProfit = 0.0;

    data.forEach(((data) {
      productProfit += data['lucro_produto'];
    }));

    return double.parse(productProfit.toStringAsFixed(2));
  }

  Future<Map<String, List<dynamic>>> getListProductsCake() async {
    final data = await Supabase.instance.client
        .from('produto')
        .select('id, nome_produto , custo_produto , margem_lucro')
        .eq('id_categoria', 1);

    List<int> listIds = [];
    List<String> listNames = [];
    List<double> listProductCost = [];
    List<double> listProfitMargin = [];

    int i = 0;

    data.forEach(((data) {
      listIds.add(data['id']);
      listNames.add(data['nome_produto']);
      listProductCost.add(data['custo_produto']+0.0);
      listProfitMargin.add( data['margem_lucro']+0.0);
      i++;
    }));

    Map<String, List<dynamic>> response = {
      'id': listIds,
      'name': listNames,
      'unit_cost': listProductCost,
      'profit_margin': listProfitMargin,
    };

    return response;
  }
}
