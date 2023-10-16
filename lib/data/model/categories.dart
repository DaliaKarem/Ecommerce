class CategoriesModel {
  String? categryId;
  String? categryName;
  String? categryDesc;
  String? categryImg;
  String? categryCreate;

  CategoriesModel(
      {this.categryId,
        this.categryName,
        this.categryDesc,
        this.categryImg,
        this.categryCreate});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categryId = json['categry_id'];
    categryName = json['categry_name'];
    categryDesc = json['categry_Desc'];
    categryImg = json['categry_img'];
    categryCreate = json['categry_create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categry_id'] = this.categryId;
    data['categry_name'] = this.categryName;
    data['categry_Desc'] = this.categryDesc;
    data['categry_img'] = this.categryImg;
    data['categry_create'] = this.categryCreate;
    return data;
  }
}