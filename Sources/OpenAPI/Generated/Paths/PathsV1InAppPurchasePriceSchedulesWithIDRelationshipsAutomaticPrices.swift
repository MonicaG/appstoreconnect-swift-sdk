// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.InAppPurchasePriceSchedules.WithID.Relationships {
	public var automaticPrices: AutomaticPrices {
		AutomaticPrices(path: path + "/automaticPrices")
	}

	public struct AutomaticPrices {
		/// Path: `/v1/inAppPurchasePriceSchedules/{id}/relationships/automaticPrices`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchasePriceScheduleAutomaticPricesLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "inAppPurchasePriceSchedules_automaticPrices_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
