// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterMatchmakingRuleSets.WithID.Relationships {
	public var teams: Teams {
		Teams(path: path + "/teams")
	}

	public struct Teams {
		/// Path: `/v1/gameCenterMatchmakingRuleSets/{id}/relationships/teams`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingRuleSetTeamsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "gameCenterMatchmakingRuleSets_teams_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
