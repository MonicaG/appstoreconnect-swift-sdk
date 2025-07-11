// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BackgroundAssets.WithID {
	public var versions: Versions {
		Versions(path: path + "/versions")
	}

	public struct Versions {
		/// Path: `/v1/backgroundAssets/{id}/versions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BackgroundAssetVersionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "backgroundAssets_versions_getToManyRelated")
		}

		public struct GetParameters {
			public var filterState: [FilterState]?
			public var filterVersion: [String]?
			public var filterInternalBetaReleaseState: [FilterInternalBetaReleaseState]?
			public var sort: [Sort]?
			public var fieldsBackgroundAssetVersions: [FieldsBackgroundAssetVersions]?
			public var fieldsBackgroundAssetVersionInternalBetaReleases: [FieldsBackgroundAssetVersionInternalBetaReleases]?
			public var fieldsBackgroundAssetUploadFiles: [FieldsBackgroundAssetUploadFiles]?
			public var limit: Int?
			public var include: [Include]?

			public enum FilterState: String, Codable, CaseIterable {
				case awaitingUpload = "AWAITING_UPLOAD"
				case processing = "PROCESSING"
				case failed = "FAILED"
				case complete = "COMPLETE"
			}

			public enum FilterInternalBetaReleaseState: String, Codable, CaseIterable {
				case readyForTesting = "READY_FOR_TESTING"
				case superseded = "SUPERSEDED"
			}

			public enum Sort: String, Codable, CaseIterable {
				case version
				case minusversion = "-version"
			}

			public enum FieldsBackgroundAssetVersions: String, Codable, CaseIterable {
				case createdDate
				case platforms
				case state
				case version
				case internalBetaRelease
				case assetFile
				case manifestFile
				case backgroundAssetUploadFiles
			}

			public enum FieldsBackgroundAssetVersionInternalBetaReleases: String, Codable, CaseIterable {
				case state
				case backgroundAssetVersion
			}

			public enum FieldsBackgroundAssetUploadFiles: String, Codable, CaseIterable {
				case assetDeliveryState
				case assetToken
				case assetType
				case fileName
				case fileSize
				case sourceFileChecksum
				case uploadOperations
			}

			public enum Include: String, Codable, CaseIterable {
				case internalBetaRelease
				case assetFile
				case manifestFile
			}

			public init(filterState: [FilterState]? = nil, filterVersion: [String]? = nil, filterInternalBetaReleaseState: [FilterInternalBetaReleaseState]? = nil, sort: [Sort]? = nil, fieldsBackgroundAssetVersions: [FieldsBackgroundAssetVersions]? = nil, fieldsBackgroundAssetVersionInternalBetaReleases: [FieldsBackgroundAssetVersionInternalBetaReleases]? = nil, fieldsBackgroundAssetUploadFiles: [FieldsBackgroundAssetUploadFiles]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterState = filterState
				self.filterVersion = filterVersion
				self.filterInternalBetaReleaseState = filterInternalBetaReleaseState
				self.sort = sort
				self.fieldsBackgroundAssetVersions = fieldsBackgroundAssetVersions
				self.fieldsBackgroundAssetVersionInternalBetaReleases = fieldsBackgroundAssetVersionInternalBetaReleases
				self.fieldsBackgroundAssetUploadFiles = fieldsBackgroundAssetUploadFiles
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(filterVersion, forKey: "filter[version]")
				encoder.encode(filterInternalBetaReleaseState, forKey: "filter[internalBetaRelease.state]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsBackgroundAssetVersions, forKey: "fields[backgroundAssetVersions]")
				encoder.encode(fieldsBackgroundAssetVersionInternalBetaReleases, forKey: "fields[backgroundAssetVersionInternalBetaReleases]")
				encoder.encode(fieldsBackgroundAssetUploadFiles, forKey: "fields[backgroundAssetUploadFiles]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
