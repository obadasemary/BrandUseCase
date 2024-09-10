//
//  BrandUseCase.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation

public final class BrandUseCase {
    
    public static func makeBrandsUseCase(
        brandsRepository: BrandsRepositoryProtocol
    ) -> BrandsUseCaseProtocol {
        BrandsUseCase(brandsRepository: brandsRepository)
    }
}
