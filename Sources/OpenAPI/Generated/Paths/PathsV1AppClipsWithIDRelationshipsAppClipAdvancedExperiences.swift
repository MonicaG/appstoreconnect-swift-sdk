// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClips.WithID.Relationships {
	public var appClipAdvancedExperiences: AppClipAdvancedExperiences {
		AppClipAdvancedExperiences(path: path + "/appClipAdvancedExperiences")
	}

	public struct AppClipAdvancedExperiences {
		/// Path: `/v1/appClips/{id}/relationships/appClipAdvancedExperiences`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipAppClipAdvancedExperiencesLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "appClips_appClipAdvancedExperiences_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
