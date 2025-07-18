// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var merchantIDs: MerchantIDs {
		MerchantIDs(path: path + "/merchantIds")
	}

	public struct MerchantIDs {
		/// Path: `/v1/merchantIds`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.MerchantIDsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "merchantIds_getCollection")
		}

		public struct GetParameters {
			public var filterName: [String]?
			public var filterIdentifier: [String]?
			public var sort: [Sort]?
			public var fieldsMerchantIDs: [FieldsMerchantIDs]?
			public var fieldsCertificates: [FieldsCertificates]?
			public var limit: Int?
			public var include: [Include]?
			public var limitCertificates: Int?

			public enum Sort: String, Codable, CaseIterable {
				case name
				case minusname = "-name"
				case identifier
				case minusidentifier = "-identifier"
			}

			public enum FieldsMerchantIDs: String, Codable, CaseIterable {
				case name
				case identifier
				case certificates
			}

			public enum FieldsCertificates: String, Codable, CaseIterable {
				case name
				case certificateType
				case displayName
				case serialNumber
				case platform
				case expirationDate
				case certificateContent
				case activated
				case passTypeID = "passTypeId"
			}

			public enum Include: String, Codable, CaseIterable {
				case certificates
			}

			public init(filterName: [String]? = nil, filterIdentifier: [String]? = nil, sort: [Sort]? = nil, fieldsMerchantIDs: [FieldsMerchantIDs]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, limit: Int? = nil, include: [Include]? = nil, limitCertificates: Int? = nil) {
				self.filterName = filterName
				self.filterIdentifier = filterIdentifier
				self.sort = sort
				self.fieldsMerchantIDs = fieldsMerchantIDs
				self.fieldsCertificates = fieldsCertificates
				self.limit = limit
				self.include = include
				self.limitCertificates = limitCertificates
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterName, forKey: "filter[name]")
				encoder.encode(filterIdentifier, forKey: "filter[identifier]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsMerchantIDs, forKey: "fields[merchantIds]")
				encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitCertificates, forKey: "limit[certificates]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.MerchantIDCreateRequest) -> Request<AppStoreConnect_Swift_SDK.MerchantIDResponse> {
			Request(path: path, method: "POST", body: body, id: "merchantIds_createInstance")
		}
	}
}
