// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID.Relationships {
	public var promotedPurchase: PromotedPurchase {
		PromotedPurchase(path: path + "/promotedPurchase")
	}

	public struct PromotedPurchase {
		/// Path: `/v1/subscriptions/{id}/relationships/promotedPurchase`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.SubscriptionPromotedPurchaseLinkageResponse> {
			Request(path: path, method: "GET", id: "subscriptions_promotedPurchase_getToOneRelationship")
		}
	}
}
