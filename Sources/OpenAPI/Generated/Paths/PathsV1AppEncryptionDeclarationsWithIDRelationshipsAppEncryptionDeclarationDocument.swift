// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEncryptionDeclarations.WithID.Relationships {
	public var appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument {
		AppEncryptionDeclarationDocument(path: path + "/appEncryptionDeclarationDocument")
	}

	public struct AppEncryptionDeclarationDocument {
		/// Path: `/v1/appEncryptionDeclarations/{id}/relationships/appEncryptionDeclarationDocument`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationAppEncryptionDeclarationDocumentLinkageResponse> {
			Request(path: path, method: "GET", id: "appEncryptionDeclarations_appEncryptionDeclarationDocument_getToOneRelationship")
		}
	}
}
