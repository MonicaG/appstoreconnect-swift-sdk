// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var builds: Builds {
		Builds(path: path + "/builds")
	}

	public struct Builds {
		/// Path: `/v1/builds`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BuildsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "builds_getCollection")
		}

		public struct GetParameters {
			public var filterVersion: [String]?
			public var filterExpired: [String]?
			public var filterProcessingState: [FilterProcessingState]?
			public var filterBetaAppReviewSubmissionBetaReviewState: [FilterBetaAppReviewSubmissionBetaReviewState]?
			public var filterUsesNonExemptEncryption: [String]?
			public var filterPreReleaseVersionVersion: [String]?
			public var filterPreReleaseVersionPlatform: [FilterPreReleaseVersionPlatform]?
			public var filterBuildAudienceType: [FilterBuildAudienceType]?
			public var filterPreReleaseVersion: [String]?
			public var filterApp: [String]?
			public var filterBetaGroups: [String]?
			public var filterAppStoreVersion: [String]?
			public var filterID: [String]?
			public var existsUsesNonExemptEncryption: Bool?
			public var sort: [Sort]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
			public var fieldsBetaTesters: [FieldsBetaTesters]?
			public var fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]?
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsBuildBetaDetails: [FieldsBuildBetaDetails]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsBuildIcons: [FieldsBuildIcons]?
			public var limit: Int?
			public var include: [Include]?
			public var limitBetaBuildLocalizations: Int?
			public var limitBetaGroups: Int?
			public var limitBuildBundles: Int?
			public var limitIcons: Int?
			public var limitIndividualTesters: Int?

			public enum FilterProcessingState: String, Codable, CaseIterable {
				case processing = "PROCESSING"
				case failed = "FAILED"
				case invalid = "INVALID"
				case valid = "VALID"
			}

			public enum FilterBetaAppReviewSubmissionBetaReviewState: String, Codable, CaseIterable {
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case rejected = "REJECTED"
				case approved = "APPROVED"
			}

			public enum FilterPreReleaseVersionPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
				case visionOs = "VISION_OS"
			}

			public enum FilterBuildAudienceType: String, Codable, CaseIterable {
				case internalOnly = "INTERNAL_ONLY"
				case appStoreEligible = "APP_STORE_ELIGIBLE"
			}

			public enum Sort: String, Codable, CaseIterable {
				case version
				case minusversion = "-version"
				case uploadedDate
				case minusuploadedDate = "-uploadedDate"
				case preReleaseVersion
				case minuspreReleaseVersion = "-preReleaseVersion"
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

			public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
				case version
				case platform
				case builds
				case app
			}

			public enum FieldsBetaTesters: String, Codable, CaseIterable {
				case firstName
				case lastName
				case email
				case inviteType
				case state
				case apps
				case betaGroups
				case builds
			}

			public enum FieldsBetaBuildLocalizations: String, Codable, CaseIterable {
				case whatsNew
				case locale
				case build
			}

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
				case appDescription
				case createdDate
				case usesEncryption
				case exempt
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case availableOnFrenchStore
				case platform
				case uploadedDate
				case documentURL = "documentUrl"
				case documentName
				case documentType
				case appEncryptionDeclarationState
				case codeValue
				case app
				case builds
				case appEncryptionDeclarationDocument
			}

			public enum FieldsBetaAppReviewSubmissions: String, Codable, CaseIterable {
				case betaReviewState
				case submittedDate
				case build
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case accessibilityURL = "accessibilityUrl"
				case name
				case bundleID = "bundleId"
				case sku
				case primaryLocale
				case isOrEverWasMadeForKids
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
				case contentRightsDeclaration
				case streamlinedPurchasingEnabled
				case accessibilityDeclarations
				case appEncryptionDeclarations
				case ciProduct
				case betaTesters
				case betaGroups
				case appStoreVersions
				case preReleaseVersions
				case betaAppLocalizations
				case builds
				case betaLicenseAgreement
				case betaAppReviewDetail
				case appInfos
				case appClips
				case appPricePoints
				case endUserLicenseAgreement
				case appPriceSchedule
				case appAvailabilityV2
				case inAppPurchases
				case subscriptionGroups
				case gameCenterEnabledVersions
				case perfPowerMetrics
				case appCustomProductPages
				case inAppPurchasesV2
				case promotedPurchases
				case appEvents
				case reviewSubmissions
				case subscriptionGracePeriod
				case customerReviews
				case customerReviewSummarizations
				case gameCenterDetail
				case appStoreVersionExperimentsV2
				case alternativeDistributionKey
				case analyticsReportRequests
				case marketplaceSearchDetail
				case backgroundAssets
				case betaFeedbackScreenshotSubmissions
				case betaFeedbackCrashSubmissions
				case webhooks
			}

			public enum FieldsBuildBetaDetails: String, Codable, CaseIterable {
				case autoNotifyEnabled
				case internalBuildState
				case externalBuildState
				case build
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case platform
				case versionString
				case appStoreState
				case appVersionState
				case copyright
				case reviewType
				case releaseType
				case earliestReleaseDate
				case usesIdfa
				case downloadable
				case createdDate
				case app
				case ageRatingDeclaration
				case appStoreVersionLocalizations
				case build
				case appStoreVersionPhasedRelease
				case gameCenterAppVersion
				case routingAppCoverage
				case appStoreReviewDetail
				case appStoreVersionSubmission
				case appClipDefaultExperience
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case customerReviews
				case alternativeDistributionPackage
			}

			public enum FieldsBuildIcons: String, Codable, CaseIterable {
				case iconAsset
				case iconType
				case name
			}

			public enum Include: String, Codable, CaseIterable {
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
			}

			public init(filterVersion: [String]? = nil, filterExpired: [String]? = nil, filterProcessingState: [FilterProcessingState]? = nil, filterBetaAppReviewSubmissionBetaReviewState: [FilterBetaAppReviewSubmissionBetaReviewState]? = nil, filterUsesNonExemptEncryption: [String]? = nil, filterPreReleaseVersionVersion: [String]? = nil, filterPreReleaseVersionPlatform: [FilterPreReleaseVersionPlatform]? = nil, filterBuildAudienceType: [FilterBuildAudienceType]? = nil, filterPreReleaseVersion: [String]? = nil, filterApp: [String]? = nil, filterBetaGroups: [String]? = nil, filterAppStoreVersion: [String]? = nil, filterID: [String]? = nil, existsUsesNonExemptEncryption: Bool? = nil, sort: [Sort]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsBetaTesters: [FieldsBetaTesters]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsBuildIcons: [FieldsBuildIcons]? = nil, limit: Int? = nil, include: [Include]? = nil, limitBetaBuildLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuildBundles: Int? = nil, limitIcons: Int? = nil, limitIndividualTesters: Int? = nil) {
				self.filterVersion = filterVersion
				self.filterExpired = filterExpired
				self.filterProcessingState = filterProcessingState
				self.filterBetaAppReviewSubmissionBetaReviewState = filterBetaAppReviewSubmissionBetaReviewState
				self.filterUsesNonExemptEncryption = filterUsesNonExemptEncryption
				self.filterPreReleaseVersionVersion = filterPreReleaseVersionVersion
				self.filterPreReleaseVersionPlatform = filterPreReleaseVersionPlatform
				self.filterBuildAudienceType = filterBuildAudienceType
				self.filterPreReleaseVersion = filterPreReleaseVersion
				self.filterApp = filterApp
				self.filterBetaGroups = filterBetaGroups
				self.filterAppStoreVersion = filterAppStoreVersion
				self.filterID = filterID
				self.existsUsesNonExemptEncryption = existsUsesNonExemptEncryption
				self.sort = sort
				self.fieldsBuilds = fieldsBuilds
				self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
				self.fieldsBetaTesters = fieldsBetaTesters
				self.fieldsBetaBuildLocalizations = fieldsBetaBuildLocalizations
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.fieldsBetaAppReviewSubmissions = fieldsBetaAppReviewSubmissions
				self.fieldsApps = fieldsApps
				self.fieldsBuildBetaDetails = fieldsBuildBetaDetails
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsBuildIcons = fieldsBuildIcons
				self.limit = limit
				self.include = include
				self.limitBetaBuildLocalizations = limitBetaBuildLocalizations
				self.limitBetaGroups = limitBetaGroups
				self.limitBuildBundles = limitBuildBundles
				self.limitIcons = limitIcons
				self.limitIndividualTesters = limitIndividualTesters
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterVersion, forKey: "filter[version]")
				encoder.encode(filterExpired, forKey: "filter[expired]")
				encoder.encode(filterProcessingState, forKey: "filter[processingState]")
				encoder.encode(filterBetaAppReviewSubmissionBetaReviewState, forKey: "filter[betaAppReviewSubmission.betaReviewState]")
				encoder.encode(filterUsesNonExemptEncryption, forKey: "filter[usesNonExemptEncryption]")
				encoder.encode(filterPreReleaseVersionVersion, forKey: "filter[preReleaseVersion.version]")
				encoder.encode(filterPreReleaseVersionPlatform, forKey: "filter[preReleaseVersion.platform]")
				encoder.encode(filterBuildAudienceType, forKey: "filter[buildAudienceType]")
				encoder.encode(filterPreReleaseVersion, forKey: "filter[preReleaseVersion]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(filterBetaGroups, forKey: "filter[betaGroups]")
				encoder.encode(filterAppStoreVersion, forKey: "filter[appStoreVersion]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(existsUsesNonExemptEncryption, forKey: "exists[usesNonExemptEncryption]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
				encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]")
				encoder.encode(fieldsBetaBuildLocalizations, forKey: "fields[betaBuildLocalizations]")
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(fieldsBetaAppReviewSubmissions, forKey: "fields[betaAppReviewSubmissions]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsBuildBetaDetails, forKey: "fields[buildBetaDetails]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsBuildIcons, forKey: "fields[buildIcons]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitBetaBuildLocalizations, forKey: "limit[betaBuildLocalizations]")
				encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
				encoder.encode(limitBuildBundles, forKey: "limit[buildBundles]")
				encoder.encode(limitIcons, forKey: "limit[icons]")
				encoder.encode(limitIndividualTesters, forKey: "limit[individualTesters]")
				return encoder.items
			}
		}
	}
}
