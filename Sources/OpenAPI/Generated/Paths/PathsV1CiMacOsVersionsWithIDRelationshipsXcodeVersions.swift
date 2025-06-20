// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiMacOsVersions.WithID.Relationships {
	public var xcodeVersions: XcodeVersions {
		XcodeVersions(path: path + "/xcodeVersions")
	}

	public struct XcodeVersions {
		/// Path: `/v1/ciMacOsVersions/{id}/relationships/xcodeVersions`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.CiMacOsVersionXcodeVersionsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "ciMacOsVersions_xcodeVersions_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
