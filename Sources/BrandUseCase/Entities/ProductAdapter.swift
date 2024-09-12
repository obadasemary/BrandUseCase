//
//  ProductAdapter.swift
//
//
//  Created by Abdelrahman Mohamed on 12/09/2024.
//

import SwiftUI
import BrandRemoteImage

public struct ProductAdapter: Identifiable, Hashable {
    public typealias ID = String
    
    public let id: ID
    public let imagePath: String
    public let imageResource: RemoteImageResource
    public let name: String
    public let promotionTitle: String
    public let subtitle: String
    public let price: Double
    public let salePrice: Double
    public let startingPrice: Double
    
    public init(
        id: ID,
        imagePath: String,
        name: String,
        promotionTitle: String,
        subtitle: String,
        price: Double,
        salePrice: Double,
        startingPrice: Double
    ) {
        self.id = id
        self.imagePath = imagePath
        self.imageResource = .init(path: imagePath, placeholder: Image("emptyProductPhoto"))
        self.name = name
        self.promotionTitle = promotionTitle
        self.subtitle = subtitle
        self.price = price
        self.salePrice = salePrice
        self.startingPrice = startingPrice
    }
}

extension ProductAdapter {
    public init(_ entity: ProductEntity) {
        self.id = entity.id
        self.imagePath = entity.image?.url ?? ""
        self.imageResource = .init(path: self.imagePath, placeholder: Image("emptyProductPhoto"))
        self.name = entity.name ?? ""
        self.promotionTitle = entity.promotionTitle ?? ""
        self.subtitle = entity.subtitle ?? ""
        self.price = entity.price ?? 0
        self.salePrice = entity.salePrice ?? 0
        self.startingPrice = entity.startingPrice ?? 0
    }
}
