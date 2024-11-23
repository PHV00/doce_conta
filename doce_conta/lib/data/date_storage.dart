class DataStorage {
  static final DataStorage _instance = DataStorage._internal();

  // Propriedades que você quer compartilhar
  int ProductCost = 0;
  int ProductMargin = 0;

  // Construtor privado
  DataStorage._internal();

  // Acessa a instância
  factory DataStorage() {
    return _instance;
  }
}
