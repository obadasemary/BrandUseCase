//
//  BrandResponseEntity.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation

// Define the main response structure
public struct BrandResponseEntity: Decodable {
   
    public let status: Int
    public let success: Bool
    public let data: [ProductEntity]
    public let cursor: Cursor?
    
    enum CodingKeys: CodingKey {
        case status
        case success
        case data
        case cursor
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.status = try container.decode(Int.self, forKey: .status)
        self.success = try container.decode(Bool.self, forKey: .success)
        self.data = try container.decode([ProductEntity].self, forKey: .data)
        self.cursor = try container.decodeIfPresent(Cursor.self, forKey: .cursor)
    }
    
    public init(
        status: Int,
        success: Bool,
        data: [ProductEntity],
        cursor: Cursor?
    ) {
        self.status = status
        self.success = success
        self.data = data
        self.cursor = cursor
    }
}

// Product model
public struct ProductEntity: Decodable, Identifiable {
    public typealias ID = String
    
    public let id: ID
    public let name: String?
    public let description: String?
    public let url: String?
    public let promotionTitle: String?
    public let subtitle: String?
    public let type: String?
    public let status: String?
    public let weight: Double?
    public let calories: Int?
    public let sku: String?
    public let rating: Rating?
    public let quantity: Int?
    public let soldQuantity: Int?
    public let maxQuantity: Int?
    public let isTaxable: Bool?
    public let category: Category?
    public let image: Image?
    public let brand: Brand?
    public let tags: [Tag]?
    public let canAddNote: Bool?
    public let canUploadFile: Bool?
    public let isOnSale: Bool?
    public let isHiddedQuantity: Bool?
    public let isAvailable: Bool?
    public let isDonation: Bool?
    public let isOutOfStock: Bool?
    public let isRequireShipping: Bool?
    public let regularPrice: Double?
    public let price: Double?
    public let salePrice: Double?
    public let startingPrice: Double?
    public let currency: String?
    public let mpn: String?
    public let gtin: String?
    public let discountEnds: String?
    public let hasOptions: Bool?
    public let pinned: Bool?
    public let spamStatus: Int?
    public let customUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, description, url
        case promotionTitle = "promotion_title"
        case subtitle, type, status, weight, calories, sku, rating, quantity
        case soldQuantity = "sold_quantity"
        case maxQuantity = "max_quantity"
        case isTaxable = "is_taxable"
        case category, image, brand, tags
        case canAddNote = "can_add_note"
        case canUploadFile = "can_upload_file"
        case isOnSale = "is_on_sale"
        case isHiddedQuantity = "is_hidded_quantity"
        case isAvailable = "is_available"
        case isDonation = "is_donation"
        case isOutOfStock = "is_out_of_stock"
        case isRequireShipping = "is_require_shipping"
        case regularPrice = "regular_price"
        case price
        case salePrice = "sale_price"
        case startingPrice = "starting_price"
        case currency, mpn, gtin
        case discountEnds = "discount_ends"
        case hasOptions = "has_options"
        case pinned
        case mahlyCategoryID = "mahly_category_id"
        case spamStatus = "spam_status"
        case customUrl = "custom_url"
    }
    
    // Custom initializer for decoding
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(ID.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.promotionTitle = try container.decodeIfPresent(String.self, forKey: .promotionTitle)
        self.subtitle = try container.decodeIfPresent(String.self, forKey: .subtitle)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.weight = try container.decodeIfPresent(Double.self, forKey: .weight)
        self.calories = try container.decodeIfPresent(Int.self, forKey: .calories)
        self.sku = try container.decodeIfPresent(String.self, forKey: .sku)
        self.rating = try container.decodeIfPresent(Rating.self, forKey: .rating)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.soldQuantity = try container.decodeIfPresent(Int.self, forKey: .soldQuantity)
        self.maxQuantity = try container.decodeIfPresent(Int.self, forKey: .maxQuantity)
        self.isTaxable = try container.decodeIfPresent(Bool.self, forKey: .isTaxable)
        self.category = try container.decodeIfPresent(Category.self, forKey: .category)
        self.image = try container.decodeIfPresent(Image.self, forKey: .image)
        self.brand = try container.decodeIfPresent(Brand.self, forKey: .brand)
        self.tags = try container.decodeIfPresent([Tag].self, forKey: .tags)
        self.canAddNote = try container.decodeIfPresent(Bool.self, forKey: .canAddNote)
        self.canUploadFile = try container.decodeIfPresent(Bool.self, forKey: .canUploadFile)
        self.isOnSale = try container.decodeIfPresent(Bool.self, forKey: .isOnSale)
        self.isHiddedQuantity = try container.decodeIfPresent(Bool.self, forKey: .isHiddedQuantity)
        self.isAvailable = try container.decodeIfPresent(Bool.self, forKey: .isAvailable)
        self.isDonation = try container.decodeIfPresent(Bool.self, forKey: .isDonation)
        self.isOutOfStock = try container.decodeIfPresent(Bool.self, forKey: .isOutOfStock)
        self.isRequireShipping = try container.decodeIfPresent(Bool.self, forKey: .isRequireShipping)
        self.regularPrice = try container.decodeIfPresent(Double.self, forKey: .regularPrice)
        self.price = try container.decodeIfPresent(Double.self, forKey: .price)
        self.salePrice = try container.decodeIfPresent(Double.self, forKey: .salePrice)
        self.startingPrice = try container.decodeIfPresent(Double.self, forKey: .startingPrice)
        self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
        self.mpn = try container.decodeIfPresent(String.self, forKey: .mpn)
        self.gtin = try container.decodeIfPresent(String.self, forKey: .gtin)
        self.discountEnds = try container.decodeIfPresent(String.self, forKey: .discountEnds)
        self.hasOptions = try container.decodeIfPresent(Bool.self, forKey: .hasOptions)
        self.pinned = try container.decodeIfPresent(Bool.self, forKey: .pinned)
        self.spamStatus = try container.decodeIfPresent(Int.self, forKey: .spamStatus)
        self.customUrl = try container.decodeIfPresent(String.self, forKey: .customUrl)
    }
    
    init(
        id: ID,
        name: String?,
        description: String?,
        url: String?,
        promotionTitle: String?,
        subtitle: String?,
        type: String?,
        status: String?,
        weight: Double?,
        calories: Int?,
        sku: String?,
        rating: Rating?,
        quantity: Int?,
        soldQuantity: Int?,
        maxQuantity: Int?,
        isTaxable: Bool?,
        category: Category?,
        image: Image?,
        brand: Brand?,
        tags: [Tag]?,
        canAddNote: Bool?,
        canUploadFile: Bool?,
        isOnSale: Bool?,
        isHiddedQuantity: Bool?,
        isAvailable: Bool?,
        isDonation: Bool?,
        isOutOfStock: Bool?,
        isRequireShipping: Bool?,
        regularPrice: Double?,
        price: Double?,
        salePrice: Double?,
        startingPrice: Double?,
        currency: String?,
        mpn: String?,
        gtin: String?,
        discountEnds: String?,
        hasOptions: Bool?,
        pinned: Bool?,
        spamStatus: Int?,
        customUrl: String?
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.url = url
        self.promotionTitle = promotionTitle
        self.subtitle = subtitle
        self.type = type
        self.status = status
        self.weight = weight
        self.calories = calories
        self.sku = sku
        self.rating = rating
        self.quantity = quantity
        self.soldQuantity = soldQuantity
        self.maxQuantity = maxQuantity
        self.isTaxable = isTaxable
        self.category = category
        self.image = image
        self.brand = brand
        self.tags = tags
        self.canAddNote = canAddNote
        self.canUploadFile = canUploadFile
        self.isOnSale = isOnSale
        self.isHiddedQuantity = isHiddedQuantity
        self.isAvailable = isAvailable
        self.isDonation = isDonation
        self.isOutOfStock = isOutOfStock
        self.isRequireShipping = isRequireShipping
        self.regularPrice = regularPrice
        self.price = price
        self.salePrice = salePrice
        self.startingPrice = startingPrice
        self.currency = currency
        self.mpn = mpn
        self.gtin = gtin
        self.discountEnds = discountEnds
        self.hasOptions = hasOptions
        self.pinned = pinned
        self.spamStatus = spamStatus
        self.customUrl = customUrl
    }
}

public extension BrandResponseEntity {
    // Cursor model for pagination
    struct Cursor: Codable {
        let current: String
        public let next: String?
    }
}

public extension ProductEntity {
    
    // Rating model
    struct Rating: Decodable {
        let count: Int?
        let stars: Int?
    }
    
    // Category model
    struct Category: Codable {
        let name: String?
        let url: String?
    }
    
    // Image model
    struct Image: Codable {
        public let url: String?
    }
    
    // Brand model
    struct Brand: Codable {
        let id: String?
        let url: String?
        let name: String?
    }
    
    // Tag model
    struct Tag: Codable {
        let name: String?
        let url: String?
    }
}
