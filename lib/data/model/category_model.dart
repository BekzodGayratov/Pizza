class CategoryModel {
  int? id;
  String? content;
  String? slug;
  bool? isMain;
  List<Products>? products;

  CategoryModel({this.id, this.content, this.slug, this.isMain, this.products});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    slug = json['slug'];
    isMain = json['is_main'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }
}

class Products {
  int? productId;
  String? name;
  String? ctgSlug;
  int? starter;
  String? shortDesc;
  String? img;
  String? status;
  List<Ingredients>? ingredients;
  List<Sizes>? sizes;

  Products(
      {this.productId,
      this.name,
      this.ctgSlug,
      this.starter,
      this.shortDesc,
      this.img,
      this.status,
      this.ingredients,
      this.sizes});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    name = json['name'];
    ctgSlug = json['ctg_slug'];
    starter = json['starter'];
    shortDesc = json['short_desc'];
    img = json['img'];
    status = json['status'];
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(Ingredients.fromJson(v));
      });
    }
    if (json['sizes'] != null) {
      sizes = <Sizes>[];
      json['sizes'].forEach((v) {
        sizes!.add(Sizes.fromJson(v));
      });
    }
  }
}

class Ingredients {
  int? imgId;
  String? name;
  String? img;
  int? price;

  Ingredients({this.imgId, this.name, this.img, this.price});

  Ingredients.fromJson(Map<String, dynamic> json) {
    imgId = json['img_id'];
    name = json['name'];
    img = json['img'];
    price = json['price'];
  }
}

class Sizes {
  int? sizeId;
  String? sizeContent;
  int? price;
  Discount? discount;

  Sizes({this.sizeId, this.sizeContent, this.price, this.discount});

  Sizes.fromJson(Map<String, dynamic> json) {
    sizeId = json['size_id'];
    sizeContent = json['size_content'];
    price = json['price'];
    discount =
        json['discount'] != null ? Discount.fromJson(json['discount']) : null;
  }
}

class Discount {
  int? procent;
  int? discountedPrice;
  String? startDate;
  String? endDate;

  Discount({this.procent, this.discountedPrice, this.startDate, this.endDate});

  Discount.fromJson(Map<String, dynamic> json) {
    procent = json['procent'];
    discountedPrice = json['discounted_price'];
    startDate = json['start_date'];
    endDate = json['end_date'];
  }
}
