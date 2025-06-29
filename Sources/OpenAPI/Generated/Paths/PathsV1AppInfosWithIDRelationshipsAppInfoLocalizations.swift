// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfos.WithID.Relationships {
	public var appInfoLocalizations: AppInfoLocalizations {
		AppInfoLocalizations(path: path + "/appInfoLocalizations")
	}

	public struct AppInfoLocalizations {
		/// Path: `/v1/appInfos/{id}/relationships/appInfoLocalizations`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfoAppInfoLocalizationsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "appInfos_appInfoLocalizations_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
