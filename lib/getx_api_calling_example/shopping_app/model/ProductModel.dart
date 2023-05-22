class ProductModel {
  ProductModel({
      this.id, 
      this.brand, 
      this.name, 
      this.price, 
      this.priceSign, 
      this.currency, 
      this.imageLink, 
      this.productLink, 
      this.websiteLink, 
      this.description, 
      this.rating, 
      this.category, 
      this.productType, 
      this.tagList, 
      this.createdAt, 
      this.updatedAt, 
      this.productApiUrl, 
      this.apiFeaturedImage, 
      this.productColors,});

  ProductModel.fromJson(dynamic json) {
    id = json['id'];
    brand = json['brand'];
    name = json['name'];
    price = json['price'];
    priceSign = json['price_sign'];
    currency = json['currency'];
    imageLink = json['image_link'];
    productLink = json['product_link'];
    websiteLink = json['website_link'];
    description = json['description'];
    rating = json['rating'];
    category = json['category'];
    productType = json['product_type'];
    if (json['tag_list'] != null) {
      tagList = [];
      json['tag_list'].forEach((v) {
        //tagList?.add(Dynamic.fromJson(v));
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    productApiUrl = json['product_api_url'];
    apiFeaturedImage = json['api_featured_image'];
    if (json['product_colors'] != null) {
      productColors = [];
      json['product_colors'].forEach((v) {
        //productColors?.add(Dynamic.fromJson(v));
      });
    }
  }
  int? id;
  String? brand;
  String? name;
  String? price;
  dynamic? priceSign;
  dynamic? currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  dynamic? category;
  String? productType;
  List<dynamic>? tagList;
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<dynamic>? productColors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['brand'] = brand;
    map['name'] = name;
    map['price'] = price;
    map['price_sign'] = priceSign;
    map['currency'] = currency;
    map['image_link'] = imageLink;
    map['product_link'] = productLink;
    map['website_link'] = websiteLink;
    map['description'] = description;
    map['rating'] = rating;
    map['category'] = category;
    map['product_type'] = productType;
    if (tagList != null) {
      map['tag_list'] = tagList?.map((v) => v.toJson()).toList();
    }
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['product_api_url'] = productApiUrl;
    map['api_featured_image'] = apiFeaturedImage;
    if (productColors != null) {
      map['product_colors'] = productColors?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}