//
//  BrandsUseCase.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation

public protocol BrandsUseCaseProtocol {
    func execute(
        brandId: String,
        page: Int,
        perPage: Int
    ) async throws -> BrandResponseEntity
}

final class BrandsUseCase {
    
    private let brandsRepository: BrandsRepositoryProtocol
    
    init(brandsRepository: BrandsRepositoryProtocol) {
        self.brandsRepository = brandsRepository
    }
}

extension BrandsUseCase: BrandsUseCaseProtocol {
    func execute(
        brandId: String,
        page: Int,
        perPage: Int
    ) async throws -> BrandResponseEntity {
        return try await brandsRepository.getBrands(
            brandId: brandId,
            page: page,
            perPage: perPage
        )
    }
}
