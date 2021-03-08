class Product {
    Product({
        this.products,
    });

    List<ProductElement> products;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        products: json["products"] == null ? null : List<ProductElement>.from(json["products"].map((x) => ProductElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": products == null ? null : List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class ProductOption {
    ProductOption({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.productId,
        this.deletedAt,
        this.sku,
        this.barcode,
        this.code,
        this.size,
        this.oldid,
        this.product,
    });

    int id;
    DateTime createdAt;
    DateTime updatedAt;
    int productId;
    dynamic deletedAt;
    String sku;
    String barcode;
    String code;
    String size;
    String oldid;
    ProductElement product;

    factory ProductOption.fromJson(Map<String, dynamic> json) => ProductOption(
        id: json["id"] == null ? null : json["id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        productId: json["product_id"] == null ? null : json["product_id"],
        deletedAt: json["deleted_at"],
        sku: json["sku"] == null ? null : json["sku"],
        barcode: json["barcode"] == null ? null : json["barcode"],
        code: json["code"] == null ? null : json["code"],
        size: json["size"] == null ? null : json["size"],
        oldid: json["oldid"] == null ? null : json["oldid"],
        product: json["product"] == null ? null : ProductElement.fromJson(json["product"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "product_id": productId == null ? null : productId,
        "deleted_at": deletedAt,
        "sku": sku == null ? null : sku,
        "barcode": barcode == null ? null : barcode,
        "code": code == null ? null : code,
        "size": size == null ? null : size,
        "oldid": oldid == null ? null : oldid,
        "product": product == null ? null : product.toJson(),
    };
}

class ProductElement {
    ProductElement({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.name,
        this.description,
        this.productType,
        this.dosage,
        this.quantity,
        this.gender,
        this.image,
        this.scheduleReq,
        this.active,
        this.categoryId,
        this.subcategoryId,
        this.subsubcategoryId,
        this.oldid,
        this.brandId,
        this.unitId,
        this.typeId,
        this.schedule,
        this.productOptions,
        this.unit,
        this.type,
        this.category,
        this.subcategory,
        this.subsubcategory,
        this.brand,
    });

    int id;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String name;
    String description;
    ProductType productType;
    String dosage;
    Quantity quantity;
    Gender gender;
    String image;
    ScheduleReq scheduleReq;
    Active active;
    int categoryId;
    int subcategoryId;
    int subsubcategoryId;
    String oldid;
    int brandId;
    int unitId;
    int typeId;
    Schedule schedule;
    List<ProductOption> productOptions;
    Type unit;
    Type type;
    Brand category;
    Brand subcategory;
    Brand subsubcategory;
    Brand brand;

    factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        id: json["id"] == null ? null : json["id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        productType: json["product_type"] == null ? null : productTypeValues.map[json["product_type"]],
        dosage: json["dosage"] == null ? null : json["dosage"],
        quantity: json["quantity"] == null ? null : quantityValues.map[json["quantity"]],
        gender: json["gender"] == null ? null : genderValues.map[json["gender"]],
        image: json["image"] == null ? null : json["image"],
        scheduleReq: json["schedule_req"] == null ? null : scheduleReqValues.map[json["schedule_req"]],
        active: json["active"] == null ? null : activeValues.map[json["active"]],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        subcategoryId: json["subcategory_id"] == null ? null : json["subcategory_id"],
        subsubcategoryId: json["subsubcategory_id"] == null ? null : json["subsubcategory_id"],
        oldid: json["oldid"] == null ? null : json["oldid"],
        brandId: json["brand_id"] == null ? null : json["brand_id"],
        unitId: json["unit_id"] == null ? null : json["unit_id"],
        typeId: json["type_id"] == null ? null : json["type_id"],
        schedule: json["schedule"] == null ? null : scheduleValues.map[json["schedule"]],
        productOptions: json["product_options"] == null ? null : List<ProductOption>.from(json["product_options"].map((x) => ProductOption.fromJson(x))),
        unit: json["unit"] == null ? null : Type.fromJson(json["unit"]),
        type: json["type"] == null ? null : Type.fromJson(json["type"]),
        category: json["category"] == null ? null : Brand.fromJson(json["category"]),
        subcategory: json["subcategory"] == null ? null : Brand.fromJson(json["subcategory"]),
        subsubcategory: json["subsubcategory"] == null ? null : Brand.fromJson(json["subsubcategory"]),
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "product_type": productType == null ? null : productTypeValues.reverse[productType],
        "dosage": dosage == null ? null : dosage,
        "quantity": quantity == null ? null : quantityValues.reverse[quantity],
        "gender": gender == null ? null : genderValues.reverse[gender],
        "image": image == null ? null : image,
        "schedule_req": scheduleReq == null ? null : scheduleReqValues.reverse[scheduleReq],
        "active": active == null ? null : activeValues.reverse[active],
        "category_id": categoryId == null ? null : categoryId,
        "subcategory_id": subcategoryId == null ? null : subcategoryId,
        "subsubcategory_id": subsubcategoryId == null ? null : subsubcategoryId,
        "oldid": oldid == null ? null : oldid,
        "brand_id": brandId == null ? null : brandId,
        "unit_id": unitId == null ? null : unitId,
        "type_id": typeId == null ? null : typeId,
        "schedule": schedule == null ? null : scheduleValues.reverse[schedule],
        "product_options": productOptions == null ? null : List<dynamic>.from(productOptions.map((x) => x.toJson())),
        "unit": unit == null ? null : unit.toJson(),
        "type": type == null ? null : type.toJson(),
        "category": category == null ? null : category.toJson(),
        "subcategory": subcategory == null ? null : subcategory.toJson(),
        "subsubcategory": subsubcategory == null ? null : subsubcategory.toJson(),
        "brand": brand == null ? null : brand.toJson(),
    };
}

enum Active { Y, N }

final activeValues = EnumValues({
    "N": Active.N,
    "Y": Active.Y
});

class Brand {
    Brand({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.oldid,
        this.image,
        this.parentId,
        this.main,
    });

    int id;
    String name;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String oldid;
    String image;
    int parentId;
    Active main;

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        oldid: json["oldid"] == null ? null : json["oldid"],
        image: json["image"] == null ? null : json["image"],
        parentId: json["parent_id"] == null ? null : json["parent_id"],
        main: json["main"] == null ? null : activeValues.map[json["main"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "oldid": oldid == null ? null : oldid,
        "image": image == null ? null : image,
        "parent_id": parentId == null ? null : parentId,
        "main": main == null ? null : activeValues.reverse[main],
    };
}

enum Gender { M, F }

final genderValues = EnumValues({
    "F": Gender.F,
    "M": Gender.M
});

enum ProductType { MEDICINE, GENERAL }

final productTypeValues = EnumValues({
    "General": ProductType.GENERAL,
    "Medicine": ProductType.MEDICINE
});

enum Quantity { ML, EMPTY, MG, G }

final quantityValues = EnumValues({
    "": Quantity.EMPTY,
    "g": Quantity.G,
    "mg": Quantity.MG,
    "ml": Quantity.ML
});

enum Schedule { S2, EMPTY, S0, S1 }

final scheduleValues = EnumValues({
    "": Schedule.EMPTY,
    "S0": Schedule.S0,
    "S1": Schedule.S1,
    "S2": Schedule.S2
});

enum ScheduleReq { N, EMPTY }

final scheduleReqValues = EnumValues({
    "": ScheduleReq.EMPTY,
    "N": ScheduleReq.N
});

class Type {
    Type({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
        this.show,
    });

    int id;
    String name;
    DateTime createdAt;
    DateTime updatedAt;
    Active show;

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        show: json["show"] == null ? null : activeValues.map[json["show"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "show": show == null ? null : activeValues.reverse[show],
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
