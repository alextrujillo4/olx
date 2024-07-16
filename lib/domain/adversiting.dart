
abstract class IAdvertising {
    String get name;
    double get price;
    String get description;

}

class Advertising implements IAdvertising {
    @override
    String name;

    @override
    double price;

    @override
    String description;
    
    Advertising({required this.name,required this.price,required this.description});
}