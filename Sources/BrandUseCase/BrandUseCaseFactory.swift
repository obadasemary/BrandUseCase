//
//  BrandUseCaseFactory.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation

public final class BrandUseCaseFactory {
    
    public init() {}
    
    public func makeBrandsUseCase(
        brandDetailsRepository: BrandDetailsRepositoryProtocol
    ) -> BrandDetailsUseCaseProtocol {
        BrandDetailsUseCase(brandDetailsRepository: brandDetailsRepository)
    }
}
