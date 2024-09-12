//
//  BrandDetailsRepositoryProtocol.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation

public protocol BrandDetailsRepositoryProtocol {
    func getBrandDetails(
        brandId: String,
        page: Int,
        perPage: Int,
        cursor: String?
    ) async throws -> BrandResponseEntity
}
