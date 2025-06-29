// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaBuildLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/betaBuildLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaBuildLocalizationResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "betaBuildLocalizations_getInstance")
		}

		public struct GetParameters {
			public var fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var include: [Include]?

			public enum FieldsBetaBuildLocalizations: String, Codable, CaseIterable {
				case whatsNew
				case locale
				case build
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case version
				case uploadedDate
				case expirationDate
				case expired
				case minOsVersion
				case lsMinimumSystemVersion
				case computedMinMacOsVersion
				case computedMinVisionOsVersion
				case iconAssetToken
				case processingState
				case buildAudienceType
				case usesNonExemptEncryption
				case preReleaseVersion
				case individualTesters
				case betaGroups
				case betaBuildLocalizations
				case appEncryptionDeclaration
				case betaAppReviewSubmission
				case app
				case buildBetaDetail
				case appStoreVersion
				case icons
				case buildBundles
				case perfPowerMetrics
				case diagnosticSignatures
			}

			public enum Include: String, Codable, CaseIterable {
				case build
			}

			public init(fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, include: [Include]? = nil) {
				self.fieldsBetaBuildLocalizations = fieldsBetaBuildLocalizations
				self.fieldsBuilds = fieldsBuilds
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBetaBuildLocalizations, forKey: "fields[betaBuildLocalizations]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BetaBuildLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.BetaBuildLocalizationResponse> {
			Request(path: path, method: "PATCH", body: body, id: "betaBuildLocalizations_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "betaBuildLocalizations_deleteInstance")
		}
	}
}
