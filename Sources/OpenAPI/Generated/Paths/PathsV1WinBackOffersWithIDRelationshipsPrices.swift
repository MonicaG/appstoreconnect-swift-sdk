// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.WinBackOffers.WithID.Relationships {
	public var prices: Prices {
		Prices(path: path + "/prices")
	}

	public struct Prices {
		/// Path: `/v1/winBackOffers/{id}/relationships/prices`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.WinBackOfferPricesLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "winBackOffers_prices_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
