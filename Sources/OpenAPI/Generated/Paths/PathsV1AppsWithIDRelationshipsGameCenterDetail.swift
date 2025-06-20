// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var gameCenterDetail: GameCenterDetail {
		GameCenterDetail(path: path + "/gameCenterDetail")
	}

	public struct GameCenterDetail {
		/// Path: `/v1/apps/{id}/relationships/gameCenterDetail`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.AppGameCenterDetailLinkageResponse> {
			Request(path: path, method: "GET", id: "apps_gameCenterDetail_getToOneRelationship")
		}
	}
}
