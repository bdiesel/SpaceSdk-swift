@_exported import ExportedKotlinPackages
@_exported import KotlinCoroutineSupport
import KotlinRuntime
import KotlinRuntimeSupport
@_implementationOnly import SharedBridge_SpaceSdk

/// What an Astronomy Picture of the Day entry shows.
public typealias MediaType = ExportedKotlinPackages.com.example.spacesdk.MediaType
/// A spaceflight news article.
public typealias NewsArticle = ExportedKotlinPackages.com.example.spacesdk.NewsArticle
/// Result of a news request.
public typealias NewsResult = ExportedKotlinPackages.com.example.spacesdk.NewsResult
public typealias NewsResult_SealedType = ExportedKotlinPackages.com.example.spacesdk.NewsResult_SealedType
/// Use cases for spaceflight news.
/// 
/// Never throws (except cancellation); failures come back as [NewsResult.Failure].
public typealias NewsUseCases = ExportedKotlinPackages.com.example.spacesdk.NewsUseCases
/// NASA's Astronomy Picture of the Day. Text fields are plain text.
public typealias PictureOfTheDay = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
/// Use cases for NASA's Astronomy Picture of the Day.
/// 
/// ```
/// when (val result = sdk.pictureOfTheDay.today()) {
///     is PictureResult.Success -> show(result.picture)
///     is PictureResult.Failure -> showError(result.error)
/// }
/// ```
/// 
/// Results are cached for the lifetime of the [SpaceSdk]. Never throws
/// (except cancellation); failures come back as [PictureResult.Failure].
public typealias PictureOfTheDayUseCases = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUseCases
/// Result of a picture-of-the-day request.
public typealias PictureResult = ExportedKotlinPackages.com.example.spacesdk.PictureResult
public typealias PictureResult_SealedType = ExportedKotlinPackages.com.example.spacesdk.PictureResult_SealedType
/// Why a request failed.
public typealias SpaceError = ExportedKotlinPackages.com.example.spacesdk.SpaceError
/// SpaceSdk: NASA's Astronomy Picture of the Day and spaceflight news.
/// 
/// ```
/// val sdk = SpaceSdk()                         // one instance per app
/// sdk.pictureOfTheDay.today()
/// sdk.pictureOfTheDay.forDate(2014, 9, 18)
/// sdk.news.latest(count = 20)
/// ```
/// 
/// No API key is needed. Create one instance and share it: it owns the network
/// clients and caches.
public typealias SpaceSdk = ExportedKotlinPackages.com.example.spacesdk.SpaceSdk
extension ExportedKotlinPackages.com.example.spacesdk {
    /// What an Astronomy Picture of the Day entry shows.
    public enum MediaType: KotlinRuntimeSupport._KotlinBridgeable, Swift.CaseIterable, Swift.LosslessStringConvertible, Swift.RawRepresentable {
        case IMAGE
        case VIDEO
        case OTHER
        public var description: Swift.String {
            get {
                switch self {
                case .IMAGE: "IMAGE"
                case .VIDEO: "VIDEO"
                case .OTHER: "OTHER"
                default: fatalError()
                }
            }
        }
        public var rawValue: Swift.Int32 {
            get {
                switch self {
                case .IMAGE: 0
                case .VIDEO: 1
                case .OTHER: 2
                default: fatalError()
                }
            }
        }
        public init?(
            _ description: Swift.String
        ) {
            switch description {
            case "IMAGE": self = .IMAGE
            case "VIDEO": self = .VIDEO
            case "OTHER": self = .OTHER
            default: return nil
            }
        }
        public init?(
            rawValue: Swift.Int32
        ) {
            guard 0..<3 ~= rawValue else { return nil }
            self = MediaType.allCases[Int(rawValue)]
        }
        public init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            switch com_example_spacesdk_MediaType_ordinal(__externalRCRefUnsafe) {
            case 0: self = .IMAGE
            case 1: self = .VIDEO
            case 2: self = .OTHER
            default: fatalError()
            }
        }
        public func __externalRCRef() -> Swift.UnsafeMutableRawPointer {
            return switch self {
            case .IMAGE: com_example_spacesdk_MediaType_IMAGE()
            case .VIDEO: com_example_spacesdk_MediaType_VIDEO()
            case .OTHER: com_example_spacesdk_MediaType_OTHER()
            default: fatalError()
            }
        }
    }
    public enum NewsResult_SealedType: KotlinRuntimeSupport.SealedType {
        case failure(ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure_SealedType)
        case success(ExportedKotlinPackages.com.example.spacesdk.NewsResult.Success_SealedType)
        public var value: ExportedKotlinPackages.com.example.spacesdk.NewsResult {
            get {
                switch self {
                case let .failure(type): type.value
                case let .success(type): type.value
                }
            }
        }
    }
    public enum PictureResult_SealedType: KotlinRuntimeSupport.SealedType {
        case failure(ExportedKotlinPackages.com.example.spacesdk.PictureResult.Failure_SealedType)
        case success(ExportedKotlinPackages.com.example.spacesdk.PictureResult.Success_SealedType)
        public var value: ExportedKotlinPackages.com.example.spacesdk.PictureResult {
            get {
                switch self {
                case let .failure(type): type.value
                case let .success(type): type.value
                }
            }
        }
    }
    /// Why a request failed.
    public enum SpaceError: KotlinRuntimeSupport._KotlinBridgeable, Swift.CaseIterable, Swift.LosslessStringConvertible, Swift.RawRepresentable {
        case NETWORK
        case SERVER
        case NOT_FOUND
        case INVALID_DATE
        public var description: Swift.String {
            get {
                switch self {
                case .NETWORK: "NETWORK"
                case .SERVER: "SERVER"
                case .NOT_FOUND: "NOT_FOUND"
                case .INVALID_DATE: "INVALID_DATE"
                default: fatalError()
                }
            }
        }
        public var rawValue: Swift.Int32 {
            get {
                switch self {
                case .NETWORK: 0
                case .SERVER: 1
                case .NOT_FOUND: 2
                case .INVALID_DATE: 3
                default: fatalError()
                }
            }
        }
        public init?(
            _ description: Swift.String
        ) {
            switch description {
            case "NETWORK": self = .NETWORK
            case "SERVER": self = .SERVER
            case "NOT_FOUND": self = .NOT_FOUND
            case "INVALID_DATE": self = .INVALID_DATE
            default: return nil
            }
        }
        public init?(
            rawValue: Swift.Int32
        ) {
            guard 0..<4 ~= rawValue else { return nil }
            self = SpaceError.allCases[Int(rawValue)]
        }
        public init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            switch com_example_spacesdk_SpaceError_ordinal(__externalRCRefUnsafe) {
            case 0: self = .NETWORK
            case 1: self = .SERVER
            case 2: self = .NOT_FOUND
            case 3: self = .INVALID_DATE
            default: fatalError()
            }
        }
        public func __externalRCRef() -> Swift.UnsafeMutableRawPointer {
            return switch self {
            case .NETWORK: com_example_spacesdk_SpaceError_NETWORK()
            case .SERVER: com_example_spacesdk_SpaceError_SERVER()
            case .NOT_FOUND: com_example_spacesdk_SpaceError_NOT_FOUND()
            case .INVALID_DATE: com_example_spacesdk_SpaceError_INVALID_DATE()
            default: fatalError()
            }
        }
    }
    /// A spaceflight news article.
    public final class NewsArticle: KotlinRuntime.KotlinBase {
        public var id: Swift.Int32 {
            get {
                return com_example_spacesdk_NewsArticle_id_get(self.__externalRCRef())
            }
        }
        public var imageUrl: Swift.String? {
            get {
                return com_example_spacesdk_NewsArticle_imageUrl_get(self.__externalRCRef())
            }
        }
        /// Publisher, e.g. "NASA" or "Spaceflight Now".
        public var newsSite: Swift.String {
            get {
                return com_example_spacesdk_NewsArticle_newsSite_get(self.__externalRCRef())
            }
        }
        /// ISO-8601 timestamp, e.g. `2026-11-22T05:05:00Z`.
        public var publishedAt: Swift.String {
            get {
                return com_example_spacesdk_NewsArticle_publishedAt_get(self.__externalRCRef())
            }
        }
        public var summary: Swift.String {
            get {
                return com_example_spacesdk_NewsArticle_summary_get(self.__externalRCRef())
            }
        }
        public var title: Swift.String {
            get {
                return com_example_spacesdk_NewsArticle_title_get(self.__externalRCRef())
            }
        }
        public var url: Swift.String {
            get {
                return com_example_spacesdk_NewsArticle_url_get(self.__externalRCRef())
            }
        }
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        public init(
            id: Swift.Int32,
            title: Swift.String,
            summary: Swift.String,
            url: Swift.String,
            imageUrl: Swift.String?,
            newsSite: Swift.String,
            publishedAt: Swift.String
        ) {
            let __kt = com_example_spacesdk_NewsArticle_init_allocate()
            super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
            { com_example_spacesdk_NewsArticle_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Int32_Swift_String_Swift_String_Swift_String_Swift_Optional_Swift_String__Swift_String_Swift_String__(__kt, id, title, summary, url, imageUrl ?? nil, newsSite, publishedAt); return () }()
        }
        public func copy(
            id: Swift.Int32,
            title: Swift.String,
            summary: Swift.String,
            url: Swift.String,
            imageUrl: Swift.String?,
            newsSite: Swift.String,
            publishedAt: Swift.String
        ) -> ExportedKotlinPackages.com.example.spacesdk.NewsArticle {
            return ExportedKotlinPackages.com.example.spacesdk.NewsArticle.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsArticle_copy__TypesOfArguments__Swift_Int32_Swift_String_Swift_String_Swift_String_Swift_Optional_Swift_String__Swift_String_Swift_String__(self.__externalRCRef(), id, title, summary, url, imageUrl ?? nil, newsSite, publishedAt))
        }
    }
    /// Result of a news request.
    open class NewsResult: KotlinRuntime.KotlinBase {
        public final class Failure: ExportedKotlinPackages.com.example.spacesdk.NewsResult {
            public var error: ExportedKotlinPackages.com.example.spacesdk.SpaceError {
                get {
                    return ExportedKotlinPackages.com.example.spacesdk.SpaceError(__externalRCRefUnsafe: com_example_spacesdk_NewsResult_Failure_error_get(self.__externalRCRef()), options: .asBestFittingWrapper)
                }
            }
            public init(
                error: ExportedKotlinPackages.com.example.spacesdk.SpaceError
            ) {
                let __kt = com_example_spacesdk_NewsResult_Failure_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_NewsResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_SpaceError__(__kt, error.__externalRCRef()); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                error: ExportedKotlinPackages.com.example.spacesdk.SpaceError
            ) -> ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure {
                return ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsResult_Failure_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_SpaceError__(self.__externalRCRef(), error.__externalRCRef()))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.NewsResult_SealedType {
                .failure(.init(self))
            }
        }
        public final class Success: ExportedKotlinPackages.com.example.spacesdk.NewsResult {
            public var articles: [ExportedKotlinPackages.com.example.spacesdk.NewsArticle] {
                get {
                    return com_example_spacesdk_NewsResult_Success_articles_get(self.__externalRCRef()) as! Swift.Array<ExportedKotlinPackages.com.example.spacesdk.NewsArticle>
                }
            }
            public init(
                articles: [ExportedKotlinPackages.com.example.spacesdk.NewsArticle]
            ) {
                let __kt = com_example_spacesdk_NewsResult_Success_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_NewsResult_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(__kt, articles); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                articles: [ExportedKotlinPackages.com.example.spacesdk.NewsArticle]
            ) -> ExportedKotlinPackages.com.example.spacesdk.NewsResult.Success {
                return ExportedKotlinPackages.com.example.spacesdk.NewsResult.Success.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsResult_Success_copy__TypesOfArguments__Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(self.__externalRCRef(), articles))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.NewsResult_SealedType {
                .success(.init(self))
            }
        }
        public struct Failure_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure
            ) {
                self.value = value
            }
        }
        public struct Success_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.NewsResult.Success
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.NewsResult.Success
            ) {
                self.value = value
            }
        }
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        open func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.NewsResult_SealedType {
            switch self {
            case let value as ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure: .failure(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.NewsResult.Success: .success(.init(value))
            default: fatalError("missing sealedType for \(self)")
            }
        }
    }
    /// Use cases for spaceflight news.
    /// 
    /// Never throws (except cancellation); failures come back as [NewsResult.Failure].
    public final class NewsUseCases: KotlinRuntime.KotlinBase {
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        /// The [count] most recent articles (1–50). Uses cached articles when available.
        public func latest(
            count: Swift.Int32
        ) async throws -> ExportedKotlinPackages.com.example.spacesdk.NewsResult {
            return try await withKotlinContinuation { continuation, exception, cancellation in
                let _: Bool = com_example_spacesdk_NewsUseCases_latest__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), count, Unmanaged.passRetained((continuation as (ExportedKotlinPackages.com.example.spacesdk.NewsResult) -> Swift.Void) as AnyObject).toOpaque(), Unmanaged.passRetained((exception as (Swift.Optional<Swift.Error>) -> Swift.Void) as AnyObject).toOpaque(), cancellation.__externalRCRef())
            }
        }
        /// Like [latest], but always fetches fresh articles (e.g. pull-to-refresh).
        public func refresh(
            count: Swift.Int32
        ) async throws -> ExportedKotlinPackages.com.example.spacesdk.NewsResult {
            return try await withKotlinContinuation { continuation, exception, cancellation in
                let _: Bool = com_example_spacesdk_NewsUseCases_refresh__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), count, Unmanaged.passRetained((continuation as (ExportedKotlinPackages.com.example.spacesdk.NewsResult) -> Swift.Void) as AnyObject).toOpaque(), Unmanaged.passRetained((exception as (Swift.Optional<Swift.Error>) -> Swift.Void) as AnyObject).toOpaque(), cancellation.__externalRCRef())
            }
        }
    }
    /// NASA's Astronomy Picture of the Day. Text fields are plain text.
    public final class PictureOfTheDay: KotlinRuntime.KotlinBase {
        /// Accessibility description; may be empty.
        public var altText: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_altText_get(self.__externalRCRef())
            }
        }
        /// Image credit; may be empty.
        public var credit: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_credit_get(self.__externalRCRef())
            }
        }
        /// Publication date as `YYYY-MM-DD`.
        public var date: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_date_get(self.__externalRCRef())
            }
        }
        public var day: Swift.Int32 {
            get {
                return com_example_spacesdk_PictureOfTheDay_day_get(self.__externalRCRef())
            }
        }
        public var explanation: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_explanation_get(self.__externalRCRef())
            }
        }
        /// Full-size image, or null when the entry has none (e.g. a video).
        public var imageUrl: Swift.String? {
            get {
                return com_example_spacesdk_PictureOfTheDay_imageUrl_get(self.__externalRCRef())
            }
        }
        public var mediaType: ExportedKotlinPackages.com.example.spacesdk.MediaType {
            get {
                return ExportedKotlinPackages.com.example.spacesdk.MediaType(__externalRCRefUnsafe: com_example_spacesdk_PictureOfTheDay_mediaType_get(self.__externalRCRef()), options: .asBestFittingWrapper)
            }
        }
        public var month: Swift.Int32 {
            get {
                return com_example_spacesdk_PictureOfTheDay_month_get(self.__externalRCRef())
            }
        }
        /// The entry's page on nasa.gov.
        public var pageUrl: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_pageUrl_get(self.__externalRCRef())
            }
        }
        public var title: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_title_get(self.__externalRCRef())
            }
        }
        public var year: Swift.Int32 {
            get {
                return com_example_spacesdk_PictureOfTheDay_year_get(self.__externalRCRef())
            }
        }
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        public init(
            date: Swift.String,
            year: Swift.Int32,
            month: Swift.Int32,
            day: Swift.Int32,
            title: Swift.String,
            explanation: Swift.String,
            mediaType: ExportedKotlinPackages.com.example.spacesdk.MediaType,
            imageUrl: Swift.String?,
            pageUrl: Swift.String,
            credit: Swift.String,
            altText: Swift.String
        ) {
            let __kt = com_example_spacesdk_PictureOfTheDay_init_allocate()
            super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
            { com_example_spacesdk_PictureOfTheDay_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String_Swift_Int32_Swift_Int32_Swift_Int32_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(__kt, date, year, month, day, title, explanation, mediaType.__externalRCRef(), imageUrl ?? nil, pageUrl, credit, altText); return () }()
        }
        public func copy(
            date: Swift.String,
            year: Swift.Int32,
            month: Swift.Int32,
            day: Swift.Int32,
            title: Swift.String,
            explanation: Swift.String,
            mediaType: ExportedKotlinPackages.com.example.spacesdk.MediaType,
            imageUrl: Swift.String?,
            pageUrl: Swift.String,
            credit: Swift.String,
            altText: Swift.String
        ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay {
            return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDay_copy__TypesOfArguments__Swift_String_Swift_Int32_Swift_Int32_Swift_Int32_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(self.__externalRCRef(), date, year, month, day, title, explanation, mediaType.__externalRCRef(), imageUrl ?? nil, pageUrl, credit, altText))
        }
    }
    /// Use cases for NASA's Astronomy Picture of the Day.
    /// 
    /// ```
    /// when (val result = sdk.pictureOfTheDay.today()) {
    ///     is PictureResult.Success -> show(result.picture)
    ///     is PictureResult.Failure -> showError(result.error)
    /// }
    /// ```
    /// 
    /// Results are cached for the lifetime of the [SpaceSdk]. Never throws
    /// (except cancellation); failures come back as [PictureResult.Failure].
    public final class PictureOfTheDayUseCases: KotlinRuntime.KotlinBase {
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        /// The picture published on the given date (month 1–12, 1995-06-16 or later).
        public func forDate(
            year: Swift.Int32,
            month: Swift.Int32,
            day: Swift.Int32
        ) async throws -> ExportedKotlinPackages.com.example.spacesdk.PictureResult {
            return try await withKotlinContinuation { continuation, exception, cancellation in
                let _: Bool = com_example_spacesdk_PictureOfTheDayUseCases_forDate__TypesOfArguments__Swift_Int32_Swift_Int32_Swift_Int32__(self.__externalRCRef(), year, month, day, Unmanaged.passRetained((continuation as (ExportedKotlinPackages.com.example.spacesdk.PictureResult) -> Swift.Void) as AnyObject).toOpaque(), Unmanaged.passRetained((exception as (Swift.Optional<Swift.Error>) -> Swift.Void) as AnyObject).toOpaque(), cancellation.__externalRCRef())
            }
        }
        /// The most recent picture. Falls back to the last one loaded when offline.
        public func today() async throws -> ExportedKotlinPackages.com.example.spacesdk.PictureResult {
            return try await withKotlinContinuation { continuation, exception, cancellation in
                let _: Bool = com_example_spacesdk_PictureOfTheDayUseCases_today(self.__externalRCRef(), Unmanaged.passRetained((continuation as (ExportedKotlinPackages.com.example.spacesdk.PictureResult) -> Swift.Void) as AnyObject).toOpaque(), Unmanaged.passRetained((exception as (Swift.Optional<Swift.Error>) -> Swift.Void) as AnyObject).toOpaque(), cancellation.__externalRCRef())
            }
        }
    }
    /// Result of a picture-of-the-day request.
    open class PictureResult: KotlinRuntime.KotlinBase {
        public final class Failure: ExportedKotlinPackages.com.example.spacesdk.PictureResult {
            public var error: ExportedKotlinPackages.com.example.spacesdk.SpaceError {
                get {
                    return ExportedKotlinPackages.com.example.spacesdk.SpaceError(__externalRCRefUnsafe: com_example_spacesdk_PictureResult_Failure_error_get(self.__externalRCRef()), options: .asBestFittingWrapper)
                }
            }
            public init(
                error: ExportedKotlinPackages.com.example.spacesdk.SpaceError
            ) {
                let __kt = com_example_spacesdk_PictureResult_Failure_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_SpaceError__(__kt, error.__externalRCRef()); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                error: ExportedKotlinPackages.com.example.spacesdk.SpaceError
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureResult.Failure {
                return ExportedKotlinPackages.com.example.spacesdk.PictureResult.Failure.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureResult_Failure_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_SpaceError__(self.__externalRCRef(), error.__externalRCRef()))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureResult_SealedType {
                .failure(.init(self))
            }
        }
        public final class Success: ExportedKotlinPackages.com.example.spacesdk.PictureResult {
            public var picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay {
                get {
                    return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureResult_Success_picture_get(self.__externalRCRef()))
                }
            }
            public init(
                picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
            ) {
                let __kt = com_example_spacesdk_PictureResult_Success_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureResult_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(__kt, picture.__externalRCRef()); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureResult.Success {
                return ExportedKotlinPackages.com.example.spacesdk.PictureResult.Success.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureResult_Success_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(self.__externalRCRef(), picture.__externalRCRef()))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureResult_SealedType {
                .success(.init(self))
            }
        }
        public struct Failure_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureResult.Failure
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureResult.Failure
            ) {
                self.value = value
            }
        }
        public struct Success_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureResult.Success
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureResult.Success
            ) {
                self.value = value
            }
        }
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        open func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureResult_SealedType {
            switch self {
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureResult.Failure: .failure(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureResult.Success: .success(.init(value))
            default: fatalError("missing sealedType for \(self)")
            }
        }
    }
    /// SpaceSdk: NASA's Astronomy Picture of the Day and spaceflight news.
    /// 
    /// ```
    /// val sdk = SpaceSdk()                         // one instance per app
    /// sdk.pictureOfTheDay.today()
    /// sdk.pictureOfTheDay.forDate(2014, 9, 18)
    /// sdk.news.latest(count = 20)
    /// ```
    /// 
    /// No API key is needed. Create one instance and share it: it owns the network
    /// clients and caches.
    public final class SpaceSdk: KotlinRuntime.KotlinBase {
        /// Spaceflight news.
        public var news: ExportedKotlinPackages.com.example.spacesdk.NewsUseCases {
            get {
                return ExportedKotlinPackages.com.example.spacesdk.NewsUseCases.__createClassWrapper(externalRCRef: com_example_spacesdk_SpaceSdk_news_get(self.__externalRCRef()))
            }
        }
        /// Astronomy Picture of the Day.
        public var pictureOfTheDay: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUseCases {
            get {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUseCases.__createClassWrapper(externalRCRef: com_example_spacesdk_SpaceSdk_pictureOfTheDay_get(self.__externalRCRef()))
            }
        }
        public override init() {
            let __kt = com_example_spacesdk_SpaceSdk_init_allocate()
            super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
            { com_example_spacesdk_SpaceSdk_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer__(__kt); return () }()
        }
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
    }
}
@_cdecl("SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_NewsResult__")
package func SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_NewsResult__(_ pointerToClosure: Swift.UnsafeMutableRawPointer, _ _1: Swift.UnsafeMutableRawPointer) -> Swift.Bool {
    let _result: Swift.Void = (Unmanaged<AnyObject>.fromOpaque(pointerToClosure).takeUnretainedValue() as! (ExportedKotlinPackages.com.example.spacesdk.NewsResult) -> Swift.Void)(ExportedKotlinPackages.com.example.spacesdk.NewsResult.__createClassWrapper(externalRCRef: _1))
    return { _result; return true }()
}

@_cdecl("SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureResult__")
package func SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureResult__(_ pointerToClosure: Swift.UnsafeMutableRawPointer, _ _1: Swift.UnsafeMutableRawPointer) -> Swift.Bool {
    let _result: Swift.Void = (Unmanaged<AnyObject>.fromOpaque(pointerToClosure).takeUnretainedValue() as! (ExportedKotlinPackages.com.example.spacesdk.PictureResult) -> Swift.Void)(ExportedKotlinPackages.com.example.spacesdk.PictureResult.__createClassWrapper(externalRCRef: _1))
    return { _result; return true }()
}

@_cdecl("SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Optional_Swift_Error___")
package func SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Optional_Swift_Error___(_ pointerToClosure: Swift.UnsafeMutableRawPointer, _ _1: Swift.UnsafeMutableRawPointer?) -> Swift.Bool {
    let _result: Swift.Void = (Unmanaged<AnyObject>.fromOpaque(pointerToClosure).takeUnretainedValue() as! (Swift.Optional<Swift.Error>) -> Swift.Void)({ switch _1 { case nil: .none; case let res?: KotlinRuntimeSupport.swiftError(fromKotlinThrowable: KotlinRuntime.KotlinBase.__createClassWrapper(externalRCRef: res)); } }())
    return { _result; return true }()
}

