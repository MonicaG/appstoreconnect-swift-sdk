// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterActivityLocalizations.WithID {
	public var image: Image {
		Image(path: path + "/image")
	}

	public struct Image {
		/// Path: `/v1/gameCenterActivityLocalizations/{id}/image`
		public let path: String

		public func get(fieldsGameCenterActivityImages: [FieldsGameCenterActivityImages]? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterActivityImageResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterActivityImages), id: "gameCenterActivityLocalizations_image_getToOneRelated")
		}

		private func makeGetQuery(_ fieldsGameCenterActivityImages: [FieldsGameCenterActivityImages]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsGameCenterActivityImages, forKey: "fields[gameCenterActivityImages]", explode: false)
			return encoder.items
		}

		public enum FieldsGameCenterActivityImages: String, Codable, CaseIterable {
			case fileSize
			case fileName
			case imageAsset
			case uploadOperations
			case assetDeliveryState
		}
	}
}
