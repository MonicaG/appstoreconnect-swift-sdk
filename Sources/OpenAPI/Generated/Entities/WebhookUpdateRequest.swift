// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct WebhookUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case webhooks
		}

		public struct Attributes: Codable {
			public var isEnabled: Bool?
			public var eventTypes: [WebhookEventType]?
			public var name: String?
			public var secret: String?
			public var url: URL?

			public init(isEnabled: Bool? = nil, eventTypes: [WebhookEventType]? = nil, name: String? = nil, secret: String? = nil, url: URL? = nil) {
				self.isEnabled = isEnabled
				self.eventTypes = eventTypes
				self.name = name
				self.secret = secret
				self.url = url
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "enabled")
				self.eventTypes = try values.decodeIfPresent([WebhookEventType].self, forKey: "eventTypes")
				self.name = try values.decodeIfPresent(String.self, forKey: "name")
				self.secret = try values.decodeIfPresent(String.self, forKey: "secret")
				self.url = try values.decodeIfPresent(URL.self, forKey: "url")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(isEnabled, forKey: "enabled")
				try values.encodeIfPresent(eventTypes, forKey: "eventTypes")
				try values.encodeIfPresent(name, forKey: "name")
				try values.encodeIfPresent(secret, forKey: "secret")
				try values.encodeIfPresent(url, forKey: "url")
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
