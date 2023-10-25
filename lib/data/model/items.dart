class itemModel {
  String? itemId;
  String? itemName;
  String? itemImg;
  String? itemDesc;
  String? itemCategory;
  String? itemCount;
  String? itemActive;
  String? itemPrice;
  String? itemDiscount;
  String? itemData;
  String? categryId;
  String? categryName;
  String? categryDesc;
  String? categryImg;
  String? categryCreate;

  itemModel(
      {this.itemId,
        this.itemName,
        this.itemImg,
        this.itemDesc,
        this.itemCategory,
        this.itemCount,
        this.itemActive,
        this.itemPrice,
        this.itemDiscount,
        this.itemData,
        this.categryId,
        this.categryName,
        this.categryDesc,
        this.categryImg,
        this.categryCreate});

  itemModel.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    itemName = json['item_name'];
    itemImg = json['item_img'];
    itemDesc = json['item_desc'];
    itemCategory = json['item_category'];
    itemCount = json['item_count'];
    itemActive = json['item_active'];
    itemPrice = json['item_price'];
    itemDiscount = json['item_discount'];
    itemData = json['item_data'];
    categryId = json['categry_id'];
    categryName = json['categry_name'];
    categryDesc = json['categry_Desc'];
    categryImg = json['categry_img'];
    categryCreate = json['categry_create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['item_img'] = this.itemImg;
    data['item_desc'] = this.itemDesc;
    data['item_category'] = this.itemCategory;
    data['item_count'] = this.itemCount;
    data['item_active'] = this.itemActive;
    data['item_price'] = this.itemPrice;
    data['item_discount'] = this.itemDiscount;
    data['item_data'] = this.itemData;
    data['categry_id'] = this.categryId;
    data['categry_name'] = this.categryName;
    data['categry_Desc'] = this.categryDesc;
    data['categry_img'] = this.categryImg;
    data['categry_create'] = this.categryCreate;
    return data;
  }
}