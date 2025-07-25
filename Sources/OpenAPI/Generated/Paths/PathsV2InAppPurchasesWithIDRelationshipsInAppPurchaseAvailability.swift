// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.InAppPurchases.WithID.Relationships {
	public var inAppPurchaseAvailability: InAppPurchaseAvailability {
		InAppPurchaseAvailability(path: path + "/inAppPurchaseAvailability")
	}

	public struct InAppPurchaseAvailability {
		/// Path: `/v2/inAppPurchases/{id}/relationships/inAppPurchaseAvailability`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.InAppPurchaseV2InAppPurchaseAvailabilityLinkageResponse> {
			Request(path: path, method: "GET", id: "inAppPurchasesV2_inAppPurchaseAvailability_getToOneRelationship")
		}
	}
}
