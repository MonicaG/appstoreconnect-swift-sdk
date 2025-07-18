// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var marketplaceSearchDetail: MarketplaceSearchDetail {
		MarketplaceSearchDetail(path: path + "/marketplaceSearchDetail")
	}

	public struct MarketplaceSearchDetail {
		/// Path: `/v1/apps/{id}/relationships/marketplaceSearchDetail`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.AppMarketplaceSearchDetailLinkageResponse> {
			Request(path: path, method: "GET", id: "apps_marketplaceSearchDetail_getToOneRelationship")
		}
	}
}
