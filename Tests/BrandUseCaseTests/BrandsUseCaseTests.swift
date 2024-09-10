import XCTest
@testable import BrandUseCase

final class BrandsUseCaseTests: XCTestCase {
    
    func testGetBrandsSuccess() async throws {
        // Arrange
        let mockRepository = MockBrandsRepository()
        let useCase = BrandsUseCase(brandsRepository: mockRepository)
        
        // Act
        let response = try await useCase.execute(brandId: "123", page: 1, perPage: 5)
        
        // Assert
        XCTAssertEqual(response.status, 200)
        XCTAssertEqual(response.data.count, 1)
    }
}

// Mock Repository
final class MockBrandsRepository: BrandsRepositoryProtocol {
    
    func getBrandDetails(brandId: String, page: Int, perPage: Int) async throws -> BrandResponseEntity {
        return BrandResponseEntity.init(
            status: 200,
            success: true,
            data: [
                ProductEntity.init(
                    id: "1",
                    name: "Test Product",
                    description: "Description",
                    url: nil,
                    promotionTitle: nil,
                    subtitle: nil,
                    type: nil,
                    status: nil,
                    weight: nil,
                    calories: nil,
                    sku: nil,
                    rating: nil,
                    quantity: nil,
                    soldQuantity: nil,
                    maxQuantity: nil,
                    isTaxable: nil,
                    category: nil,
                    image: nil,
                    brand: nil,
                    tags: nil,
                    canAddNote: nil,
                    canUploadFile: nil,
                    isOnSale: nil,
                    isHiddedQuantity: nil,
                    isAvailable: nil,
                    isDonation: nil,
                    isOutOfStock: nil,
                    isRequireShipping: nil,
                    regularPrice: nil,
                    price: nil,
                    salePrice: nil,
                    startingPrice: nil,
                    currency: nil,
                    mpn: nil,
                    gtin: nil,
                    discountEnds: nil,
                    hasOptions: nil,
                    pinned: nil,
                    spamStatus: nil,
                    customUrl: nil
                )
            ],
            cursor: BrandResponseEntity.Cursor(current: "", next: "")
        )
    }
}

