class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}

class CatalogModel{
  static final items=[
    Item(
      id: 1,
      name: "I Phone 12",
      desc:"Apple iphone 12th Generation",
      price:99,
      color:"#33505a",
      image:"https://s3no.cashify.in/pd-admin/6d08ef38716d48c79254bef20c6e1d42.jpg?p=es5sq&s=es"
    )
  ];
}


