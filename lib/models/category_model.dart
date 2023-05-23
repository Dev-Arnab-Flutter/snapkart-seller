
class Category {
    String name;
    List<Subcategory> subcategory;

    Category({
        required this.name,
        required this.subcategory,
    });

    factory Category.fromMap(Map json) => Category(
        name: json["name"],
        subcategory: List<Subcategory>.from(json["subcategory"].map((x) => Subcategory.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "subcategory": List<dynamic>.from(subcategory.map((x) => x.toMap())),
    };
    @override
    String toString() {
    
    return "Category(name: $name,SubCategory : $subcategory)";
  }
}

class Subcategory {
    int id;
    String name;

    Subcategory({
        required this.id,
        required this.name,
    });

    factory Subcategory.fromMap(Map json) => Subcategory(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
    };
   @override
    String toString() {
    
    return "SubCategory(id: $id, name: $name)";
  }
}
