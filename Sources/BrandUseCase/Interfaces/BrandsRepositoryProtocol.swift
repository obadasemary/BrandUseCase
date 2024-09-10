//
//  BrandsRepositoryProtocol.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation

public protocol BrandsRepositoryProtocol {
    func getBrands(
        brandId: String,
        page: Int,
        perPage: Int
    ) async throws -> BrandResponseEntity
}
