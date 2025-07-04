// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case apps
		}

		public struct Attributes: Codable {
			public var accessibilityURL: URL?
			public var bundleID: String?
			public var primaryLocale: String?
			public var subscriptionStatusURL: URL?
			public var subscriptionStatusURLVersion: SubscriptionStatusURLVersion?
			public var subscriptionStatusURLForSandbox: URL?
			public var subscriptionStatusURLVersionForSandbox: SubscriptionStatusURLVersion?
			public var contentRightsDeclaration: ContentRightsDeclaration?
			public var isStreamlinedPurchasingEnabled: Bool?

			public enum ContentRightsDeclaration: String, Codable, CaseIterable {
				case doesNotUseThirdPartyContent = "DOES_NOT_USE_THIRD_PARTY_CONTENT"
				case usesThirdPartyContent = "USES_THIRD_PARTY_CONTENT"
			}

			public init(accessibilityURL: URL? = nil, bundleID: String? = nil, primaryLocale: String? = nil, subscriptionStatusURL: URL? = nil, subscriptionStatusURLVersion: SubscriptionStatusURLVersion? = nil, subscriptionStatusURLForSandbox: URL? = nil, subscriptionStatusURLVersionForSandbox: SubscriptionStatusURLVersion? = nil, contentRightsDeclaration: ContentRightsDeclaration? = nil, isStreamlinedPurchasingEnabled: Bool? = nil) {
				self.accessibilityURL = accessibilityURL
				self.bundleID = bundleID
				self.primaryLocale = primaryLocale
				self.subscriptionStatusURL = subscriptionStatusURL
				self.subscriptionStatusURLVersion = subscriptionStatusURLVersion
				self.subscriptionStatusURLForSandbox = subscriptionStatusURLForSandbox
				self.subscriptionStatusURLVersionForSandbox = subscriptionStatusURLVersionForSandbox
				self.contentRightsDeclaration = contentRightsDeclaration
				self.isStreamlinedPurchasingEnabled = isStreamlinedPurchasingEnabled
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.accessibilityURL = try values.decodeIfPresent(URL.self, forKey: "accessibilityUrl")
				self.bundleID = try values.decodeIfPresent(String.self, forKey: "bundleId")
				self.primaryLocale = try values.decodeIfPresent(String.self, forKey: "primaryLocale")
				self.subscriptionStatusURL = try values.decodeIfPresent(URL.self, forKey: "subscriptionStatusUrl")
				self.subscriptionStatusURLVersion = try values.decodeIfPresent(SubscriptionStatusURLVersion.self, forKey: "subscriptionStatusUrlVersion")
				self.subscriptionStatusURLForSandbox = try values.decodeIfPresent(URL.self, forKey: "subscriptionStatusUrlForSandbox")
				self.subscriptionStatusURLVersionForSandbox = try values.decodeIfPresent(SubscriptionStatusURLVersion.self, forKey: "subscriptionStatusUrlVersionForSandbox")
				self.contentRightsDeclaration = try values.decodeIfPresent(ContentRightsDeclaration.self, forKey: "contentRightsDeclaration")
				self.isStreamlinedPurchasingEnabled = try values.decodeIfPresent(Bool.self, forKey: "streamlinedPurchasingEnabled")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(accessibilityURL, forKey: "accessibilityUrl")
				try values.encodeIfPresent(bundleID, forKey: "bundleId")
				try values.encodeIfPresent(primaryLocale, forKey: "primaryLocale")
				try values.encodeIfPresent(subscriptionStatusURL, forKey: "subscriptionStatusUrl")
				try values.encodeIfPresent(subscriptionStatusURLVersion, forKey: "subscriptionStatusUrlVersion")
				try values.encodeIfPresent(subscriptionStatusURLForSandbox, forKey: "subscriptionStatusUrlForSandbox")
				try values.encodeIfPresent(subscriptionStatusURLVersionForSandbox, forKey: "subscriptionStatusUrlVersionForSandbox")
				try values.encodeIfPresent(contentRightsDeclaration, forKey: "contentRightsDeclaration")
				try values.encodeIfPresent(isStreamlinedPurchasingEnabled, forKey: "streamlinedPurchasingEnabled")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
