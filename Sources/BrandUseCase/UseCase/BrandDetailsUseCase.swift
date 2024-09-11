//
//  BrandDetailsUseCase.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation

public protocol BrandDetailsUseCaseProtocol {
    func execute(
        brandId: String,
        page: Int,
        perPage: Int
    ) async throws -> BrandResponseEntity
}

final class BrandDetailsUseCase {
    
    private let brandDetailsRepository: BrandDetailsRepositoryProtocol
    
    init(brandDetailsRepository: BrandDetailsRepositoryProtocol) {
        self.brandDetailsRepository = brandDetailsRepository
    }
}

extension BrandDetailsUseCase: BrandDetailsUseCaseProtocol {
    func execute(
        brandId: String,
        page: Int,
        perPage: Int
    ) async throws -> BrandResponseEntity {
        return try await brandDetailsRepository.getBrandDetails(
            brandId: brandId,
            page: page,
            perPage: perPage
        )
    }
}
