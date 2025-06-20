// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaFeedbackCrashSubmissions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/betaFeedbackCrashSubmissions/{id}`
		public let path: String

		public func get(fieldsBetaFeedbackCrashSubmissions: [FieldsBetaFeedbackCrashSubmissions]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaFeedbackCrashSubmissionResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaFeedbackCrashSubmissions, include), id: "betaFeedbackCrashSubmissions_getInstance")
		}

		private func makeGetQuery(_ fieldsBetaFeedbackCrashSubmissions: [FieldsBetaFeedbackCrashSubmissions]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsBetaFeedbackCrashSubmissions, forKey: "fields[betaFeedbackCrashSubmissions]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsBetaFeedbackCrashSubmissions: String, Codable, CaseIterable {
			case createdDate
			case comment
			case email
			case deviceModel
			case osVersion
			case locale
			case timeZone
			case architecture
			case connectionType
			case pairedAppleWatch
			case appUptimeInMilliseconds
			case diskBytesAvailable
			case diskBytesTotal
			case batteryPercentage
			case screenWidthInPoints
			case screenHeightInPoints
			case appPlatform
			case devicePlatform
			case deviceFamily
			case buildBundleID = "buildBundleId"
			case crashLog
			case build
			case tester
		}

		public enum Include: String, Codable, CaseIterable {
			case build
			case tester
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "betaFeedbackCrashSubmissions_deleteInstance")
		}
	}
}
