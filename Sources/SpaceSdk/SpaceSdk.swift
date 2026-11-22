@_exported import ExportedKotlinPackages
@_exported import KotlinCoroutineSupport
import KotlinRuntime
import KotlinRuntimeSupport
import OrgJetbrainsKotlinxKotlinxCoroutinesCore
@_implementationOnly import SharedBridge_SpaceSdk

/// What an APOD entry shows. A plain enum, so Swift gets a native enum.
public typealias MediaType = ExportedKotlinPackages.com.example.spacesdk.MediaType
/// A spaceflight news article from the Spaceflight News API.
public typealias NewsArticle = ExportedKotlinPackages.com.example.spacesdk.NewsArticle
/// Outcome of a news request. Errors are values, never exceptions.
public typealias NewsResult = ExportedKotlinPackages.com.example.spacesdk.NewsResult
public typealias NewsResult_SealedType = ExportedKotlinPackages.com.example.spacesdk.NewsResult_SealedType
/// Shared UI-layer state holder for a news list. Starts loading immediately.
/// Render [state]; call [refresh] for pull-to-refresh; call [close] when done.
public typealias NewsStateHolder = ExportedKotlinPackages.com.example.spacesdk.NewsStateHolder
/// Everything a news list screen needs to render.
public typealias NewsUiState = ExportedKotlinPackages.com.example.spacesdk.NewsUiState
public typealias NewsUiState_SealedType = ExportedKotlinPackages.com.example.spacesdk.NewsUiState_SealedType
/// NASA's Astronomy Picture of the Day.
/// 
/// Text fields are plain text (the SDK strips the HTML the API returns).
/// Dates are ISO-8601 strings (`2026-11-22`) so the type crosses into Swift
/// without exporting a date library.
public typealias PictureOfTheDay = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
/// Outcome of a picture-of-the-day request. Errors are values, never exceptions.
public typealias PictureOfTheDayResult = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult
public typealias PictureOfTheDayResult_SealedType = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult_SealedType
/// Shared UI-layer state holder for a picture-of-the-day screen (the KMP
/// equivalent of a ViewModel). Starts loading today's picture immediately.
/// 
/// Unidirectional data flow: the native UI renders [state] and sends events
/// back with [loadLatest] and [load]. Call [close] when the screen goes away.
public typealias PictureOfTheDayStateHolder = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayStateHolder
/// Everything a picture-of-the-day screen needs to render.
public typealias PictureOfTheDayUiState = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState
public typealias PictureOfTheDayUiState_SealedType = ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState_SealedType
/// SDK entry point and composition root.
/// 
/// Wires the OpenAPI-generated clients (internal, from :space-api) into the
/// data, domain and UI-state layers by hand (constructor injection). Create one
/// instance and share it for the app's lifetime: it owns the HTTP clients and
/// caches. No API key is needed for either service.
public typealias SpaceSdk = ExportedKotlinPackages.com.example.spacesdk.SpaceSdk
extension ExportedKotlinPackages.com.example.spacesdk {
    /// What an APOD entry shows. A plain enum, so Swift gets a native enum.
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
    public enum NewsUiState_SealedType: KotlinRuntimeSupport.SealedType {
        case error(ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Error_SealedType)
        case loading(ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Loading_SealedType)
        case success(ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Success_SealedType)
        public var value: ExportedKotlinPackages.com.example.spacesdk.NewsUiState {
            get {
                switch self {
                case let .error(type): type.value
                case let .loading(type): type.value
                case let .success(type): type.value
                }
            }
        }
    }
    public enum PictureOfTheDayResult_SealedType: KotlinRuntimeSupport.SealedType {
        case failure(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Failure_SealedType)
        case notFound(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.NotFound_SealedType)
        case success(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Success_SealedType)
        public var value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult {
            get {
                switch self {
                case let .failure(type): type.value
                case let .notFound(type): type.value
                case let .success(type): type.value
                }
            }
        }
    }
    public enum PictureOfTheDayUiState_SealedType: KotlinRuntimeSupport.SealedType {
        case error(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Error_SealedType)
        case loading(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Loading_SealedType)
        case notFound(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.NotFound_SealedType)
        case success(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Success_SealedType)
        public var value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState {
            get {
                switch self {
                case let .error(type): type.value
                case let .loading(type): type.value
                case let .notFound(type): type.value
                case let .success(type): type.value
                }
            }
        }
    }
    /// A spaceflight news article from the Spaceflight News API.
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
    /// Outcome of a news request. Errors are values, never exceptions.
    open class NewsResult: KotlinRuntime.KotlinBase {
        public final class Failure: ExportedKotlinPackages.com.example.spacesdk.NewsResult {
            public var message: Swift.String {
                get {
                    return com_example_spacesdk_NewsResult_Failure_message_get(self.__externalRCRef())
                }
            }
            public init(
                message: Swift.String
            ) {
                let __kt = com_example_spacesdk_NewsResult_Failure_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_NewsResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(__kt, message); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                message: Swift.String
            ) -> ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure {
                return ExportedKotlinPackages.com.example.spacesdk.NewsResult.Failure.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsResult_Failure_copy__TypesOfArguments__Swift_String__(self.__externalRCRef(), message))
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
    /// Shared UI-layer state holder for a news list. Starts loading immediately.
    /// Render [state]; call [refresh] for pull-to-refresh; call [close] when done.
    public final class NewsStateHolder: KotlinRuntime.KotlinBase {
        public var currentState: ExportedKotlinPackages.com.example.spacesdk.NewsUiState {
            get {
                return ExportedKotlinPackages.com.example.spacesdk.NewsUiState.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsStateHolder_currentState_get(self.__externalRCRef()))
            }
        }
        public var state: any KotlinCoroutineSupport.KotlinTypedFlow<ExportedKotlinPackages.com.example.spacesdk.NewsUiState> {
            get {
                return KotlinCoroutineSupport._KotlinTypedFlowImpl<ExportedKotlinPackages.com.example.spacesdk.NewsUiState>.create(KotlinRuntime.KotlinBase.__createProtocolWrapper(externalRCRef: com_example_spacesdk_NewsStateHolder_state_get(self.__externalRCRef()), conformsTo: ExportedKotlinPackages.kotlinx.coroutines.flow.Flow.Type.self) as! any ExportedKotlinPackages.kotlinx.coroutines.flow.Flow, ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Type.self)
            }
        }
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        public func close() -> Swift.Void {
            return { com_example_spacesdk_NewsStateHolder_close(self.__externalRCRef()); return () }()
        }
        /// Event: fetch the latest articles, bypassing the cache.
        public func refresh() -> Swift.Void {
            return { com_example_spacesdk_NewsStateHolder_refresh(self.__externalRCRef()); return () }()
        }
    }
    /// Everything a news list screen needs to render.
    open class NewsUiState: KotlinRuntime.KotlinBase {
        public final class Error: ExportedKotlinPackages.com.example.spacesdk.NewsUiState {
            public var message: Swift.String {
                get {
                    return com_example_spacesdk_NewsUiState_Error_message_get(self.__externalRCRef())
                }
            }
            public init(
                message: Swift.String
            ) {
                let __kt = com_example_spacesdk_NewsUiState_Error_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_NewsUiState_Error_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(__kt, message); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                message: Swift.String
            ) -> ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Error {
                return ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Error.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsUiState_Error_copy__TypesOfArguments__Swift_String__(self.__externalRCRef(), message))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.NewsUiState_SealedType {
                .error(.init(self))
            }
        }
        public final class Loading: ExportedKotlinPackages.com.example.spacesdk.NewsUiState {
            public static var shared: ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Loading {
                get {
                    return ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Loading.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsUiState_Loading_get())
                }
            }
            private init() {
                fatalError()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.NewsUiState_SealedType {
                .loading(.init(self))
            }
        }
        public final class Success: ExportedKotlinPackages.com.example.spacesdk.NewsUiState {
            public var articles: [ExportedKotlinPackages.com.example.spacesdk.NewsArticle] {
                get {
                    return com_example_spacesdk_NewsUiState_Success_articles_get(self.__externalRCRef()) as! Swift.Array<ExportedKotlinPackages.com.example.spacesdk.NewsArticle>
                }
            }
            public init(
                articles: [ExportedKotlinPackages.com.example.spacesdk.NewsArticle]
            ) {
                let __kt = com_example_spacesdk_NewsUiState_Success_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_NewsUiState_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(__kt, articles); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                articles: [ExportedKotlinPackages.com.example.spacesdk.NewsArticle]
            ) -> ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Success {
                return ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Success.__createClassWrapper(externalRCRef: com_example_spacesdk_NewsUiState_Success_copy__TypesOfArguments__Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(self.__externalRCRef(), articles))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.NewsUiState_SealedType {
                .success(.init(self))
            }
        }
        public struct Error_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Error
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Error
            ) {
                self.value = value
            }
        }
        public struct Loading_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Loading
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Loading
            ) {
                self.value = value
            }
        }
        public struct Success_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Success
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Success
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
        open func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.NewsUiState_SealedType {
            switch self {
            case let value as ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Error: .error(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Loading: .loading(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.NewsUiState.Success: .success(.init(value))
            default: fatalError("missing sealedType for \(self)")
            }
        }
    }
    /// NASA's Astronomy Picture of the Day.
    /// 
    /// Text fields are plain text (the SDK strips the HTML the API returns).
    /// Dates are ISO-8601 strings (`2026-11-22`) so the type crosses into Swift
    /// without exporting a date library.
    public final class PictureOfTheDay: KotlinRuntime.KotlinBase {
        /// Accessibility description, may be empty.
        public var altText: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_altText_get(self.__externalRCRef())
            }
        }
        /// Image credit, may be empty.
        public var credit: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_credit_get(self.__externalRCRef())
            }
        }
        public var date: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_date_get(self.__externalRCRef())
            }
        }
        public var explanation: Swift.String {
            get {
                return com_example_spacesdk_PictureOfTheDay_explanation_get(self.__externalRCRef())
            }
        }
        /// Full-size image, or null when the entry has none.
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
        /// The APOD web page for this entry.
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
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        public init(
            date: Swift.String,
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
            { com_example_spacesdk_PictureOfTheDay_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(__kt, date, title, explanation, mediaType.__externalRCRef(), imageUrl ?? nil, pageUrl, credit, altText); return () }()
        }
        public func copy(
            date: Swift.String,
            title: Swift.String,
            explanation: Swift.String,
            mediaType: ExportedKotlinPackages.com.example.spacesdk.MediaType,
            imageUrl: Swift.String?,
            pageUrl: Swift.String,
            credit: Swift.String,
            altText: Swift.String
        ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay {
            return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDay_copy__TypesOfArguments__Swift_String_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(self.__externalRCRef(), date, title, explanation, mediaType.__externalRCRef(), imageUrl ?? nil, pageUrl, credit, altText))
        }
    }
    /// Outcome of a picture-of-the-day request. Errors are values, never exceptions.
    open class PictureOfTheDayResult: KotlinRuntime.KotlinBase {
        public final class Failure: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult {
            public var message: Swift.String {
                get {
                    return com_example_spacesdk_PictureOfTheDayResult_Failure_message_get(self.__externalRCRef())
                }
            }
            public init(
                message: Swift.String
            ) {
                let __kt = com_example_spacesdk_PictureOfTheDayResult_Failure_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureOfTheDayResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(__kt, message); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                message: Swift.String
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Failure {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Failure.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayResult_Failure_copy__TypesOfArguments__Swift_String__(self.__externalRCRef(), message))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult_SealedType {
                .failure(.init(self))
            }
        }
        public final class NotFound: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult {
            public var date: Swift.String {
                get {
                    return com_example_spacesdk_PictureOfTheDayResult_NotFound_date_get(self.__externalRCRef())
                }
            }
            public init(
                date: Swift.String
            ) {
                let __kt = com_example_spacesdk_PictureOfTheDayResult_NotFound_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureOfTheDayResult_NotFound_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(__kt, date); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                date: Swift.String
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.NotFound {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.NotFound.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayResult_NotFound_copy__TypesOfArguments__Swift_String__(self.__externalRCRef(), date))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult_SealedType {
                .notFound(.init(self))
            }
        }
        public final class Success: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult {
            public var picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay {
                get {
                    return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayResult_Success_picture_get(self.__externalRCRef()))
                }
            }
            public init(
                picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
            ) {
                let __kt = com_example_spacesdk_PictureOfTheDayResult_Success_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureOfTheDayResult_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(__kt, picture.__externalRCRef()); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Success {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Success.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayResult_Success_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(self.__externalRCRef(), picture.__externalRCRef()))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult_SealedType {
                .success(.init(self))
            }
        }
        public struct Failure_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Failure
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Failure
            ) {
                self.value = value
            }
        }
        public struct NotFound_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.NotFound
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.NotFound
            ) {
                self.value = value
            }
        }
        public struct Success_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Success
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Success
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
        open func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult_SealedType {
            switch self {
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Failure: .failure(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.NotFound: .notFound(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.Success: .success(.init(value))
            default: fatalError("missing sealedType for \(self)")
            }
        }
    }
    /// Shared UI-layer state holder for a picture-of-the-day screen (the KMP
    /// equivalent of a ViewModel). Starts loading today's picture immediately.
    /// 
    /// Unidirectional data flow: the native UI renders [state] and sends events
    /// back with [loadLatest] and [load]. Call [close] when the screen goes away.
    public final class PictureOfTheDayStateHolder: KotlinRuntime.KotlinBase {
        /// Current state, for UIs that need a synchronous first frame.
        public var currentState: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState {
            get {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayStateHolder_currentState_get(self.__externalRCRef()))
            }
        }
        /// Emits the current state, then every change.
        public var state: any KotlinCoroutineSupport.KotlinTypedFlow<ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState> {
            get {
                return KotlinCoroutineSupport._KotlinTypedFlowImpl<ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState>.create(KotlinRuntime.KotlinBase.__createProtocolWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayStateHolder_state_get(self.__externalRCRef()), conformsTo: ExportedKotlinPackages.kotlinx.coroutines.flow.Flow.Type.self) as! any ExportedKotlinPackages.kotlinx.coroutines.flow.Flow, ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Type.self)
            }
        }
        package override init(
            __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
            options: KotlinRuntime.KotlinBaseConstructionOptions
        ) {
            super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
        }
        /// Cancels in-flight work. The holder can't be used afterwards.
        public func close() -> Swift.Void {
            return { com_example_spacesdk_PictureOfTheDayStateHolder_close(self.__externalRCRef()); return () }()
        }
        /// Event: show the picture for [date] (`YYYY-MM-DD`).
        public func load(
            date: Swift.String
        ) -> Swift.Void {
            return { com_example_spacesdk_PictureOfTheDayStateHolder_load__TypesOfArguments__Swift_String__(self.__externalRCRef(), date); return () }()
        }
        /// Event: show the most recent picture.
        public func loadLatest() -> Swift.Void {
            return { com_example_spacesdk_PictureOfTheDayStateHolder_loadLatest(self.__externalRCRef()); return () }()
        }
    }
    /// Everything a picture-of-the-day screen needs to render.
    open class PictureOfTheDayUiState: KotlinRuntime.KotlinBase {
        public final class Error: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState {
            public var message: Swift.String {
                get {
                    return com_example_spacesdk_PictureOfTheDayUiState_Error_message_get(self.__externalRCRef())
                }
            }
            public init(
                message: Swift.String
            ) {
                let __kt = com_example_spacesdk_PictureOfTheDayUiState_Error_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureOfTheDayUiState_Error_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(__kt, message); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                message: Swift.String
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Error {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Error.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayUiState_Error_copy__TypesOfArguments__Swift_String__(self.__externalRCRef(), message))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState_SealedType {
                .error(.init(self))
            }
        }
        public final class Loading: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState {
            public static var shared: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Loading {
                get {
                    return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Loading.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayUiState_Loading_get())
                }
            }
            private init() {
                fatalError()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState_SealedType {
                .loading(.init(self))
            }
        }
        public final class NotFound: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState {
            public var date: Swift.String {
                get {
                    return com_example_spacesdk_PictureOfTheDayUiState_NotFound_date_get(self.__externalRCRef())
                }
            }
            public init(
                date: Swift.String
            ) {
                let __kt = com_example_spacesdk_PictureOfTheDayUiState_NotFound_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureOfTheDayUiState_NotFound_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(__kt, date); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                date: Swift.String
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.NotFound {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.NotFound.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayUiState_NotFound_copy__TypesOfArguments__Swift_String__(self.__externalRCRef(), date))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState_SealedType {
                .notFound(.init(self))
            }
        }
        public final class Success: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState {
            public var picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay {
                get {
                    return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayUiState_Success_picture_get(self.__externalRCRef()))
                }
            }
            public init(
                picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
            ) {
                let __kt = com_example_spacesdk_PictureOfTheDayUiState_Success_init_allocate()
                super.init(__externalRCRefUnsafe: __kt, options: .asBoundBridge);
                { com_example_spacesdk_PictureOfTheDayUiState_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(__kt, picture.__externalRCRef()); return () }()
            }
            package override init(
                __externalRCRefUnsafe: Swift.UnsafeMutableRawPointer,
                options: KotlinRuntime.KotlinBaseConstructionOptions
            ) {
                super.init(__externalRCRefUnsafe: __externalRCRefUnsafe, options: options);
            }
            public func copy(
                picture: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDay
            ) -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Success {
                return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Success.__createClassWrapper(externalRCRef: com_example_spacesdk_PictureOfTheDayUiState_Success_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(self.__externalRCRef(), picture.__externalRCRef()))
            }
            public override func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState_SealedType {
                .success(.init(self))
            }
        }
        public struct Error_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Error
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Error
            ) {
                self.value = value
            }
        }
        public struct Loading_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Loading
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Loading
            ) {
                self.value = value
            }
        }
        public struct NotFound_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.NotFound
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.NotFound
            ) {
                self.value = value
            }
        }
        public struct Success_SealedType: KotlinRuntimeSupport.SealedType {
            public let value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Success
            init(
                _ value: ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Success
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
        open func sealedType() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState_SealedType {
            switch self {
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Error: .error(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Loading: .loading(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.NotFound: .notFound(.init(value))
            case let value as ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayUiState.Success: .success(.init(value))
            default: fatalError("missing sealedType for \(self)")
            }
        }
    }
    /// SDK entry point and composition root.
    /// 
    /// Wires the OpenAPI-generated clients (internal, from :space-api) into the
    /// data, domain and UI-state layers by hand (constructor injection). Create one
    /// instance and share it for the app's lifetime: it owns the HTTP clients and
    /// caches. No API key is needed for either service.
    public final class SpaceSdk: KotlinRuntime.KotlinBase {
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
        /// Creates a state holder for a news list showing [limit] articles.
        public func createNews(
            limit: Swift.Int32
        ) -> ExportedKotlinPackages.com.example.spacesdk.NewsStateHolder {
            return ExportedKotlinPackages.com.example.spacesdk.NewsStateHolder.__createClassWrapper(externalRCRef: com_example_spacesdk_SpaceSdk_createNews__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), limit))
        }
        /// Creates a state holder for a picture-of-the-day screen.
        public func createPictureOfTheDay() -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayStateHolder {
            return ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayStateHolder.__createClassWrapper(externalRCRef: com_example_spacesdk_SpaceSdk_createPictureOfTheDay(self.__externalRCRef()))
        }
        /// The [limit] most recent spaceflight news articles (1–50). Never throws.
        public func getLatestNews(
            limit: Swift.Int32
        ) async throws -> ExportedKotlinPackages.com.example.spacesdk.NewsResult {
            return try await withKotlinContinuation { continuation, exception, cancellation in
                let _: Bool = com_example_spacesdk_SpaceSdk_getLatestNews__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), limit, Unmanaged.passRetained((continuation as (ExportedKotlinPackages.com.example.spacesdk.NewsResult) -> Swift.Void) as AnyObject).toOpaque(), Unmanaged.passRetained((exception as (Swift.Optional<Swift.Error>) -> Swift.Void) as AnyObject).toOpaque(), cancellation.__externalRCRef())
            }
        }
        /// Today's (most recent) Astronomy Picture of the Day. Never throws.
        public func getPictureOfTheDay() async throws -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult {
            return try await withKotlinContinuation { continuation, exception, cancellation in
                let _: Bool = com_example_spacesdk_SpaceSdk_getPictureOfTheDay(self.__externalRCRef(), Unmanaged.passRetained((continuation as (ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult) -> Swift.Void) as AnyObject).toOpaque(), Unmanaged.passRetained((exception as (Swift.Optional<Swift.Error>) -> Swift.Void) as AnyObject).toOpaque(), cancellation.__externalRCRef())
            }
        }
        /// The picture for [date] (`YYYY-MM-DD`, 1995-06-16 or later). Never throws.
        public func getPictureOfTheDay(
            date: Swift.String
        ) async throws -> ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult {
            return try await withKotlinContinuation { continuation, exception, cancellation in
                let _: Bool = com_example_spacesdk_SpaceSdk_getPictureOfTheDay__TypesOfArguments__Swift_String__(self.__externalRCRef(), date, Unmanaged.passRetained((continuation as (ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult) -> Swift.Void) as AnyObject).toOpaque(), Unmanaged.passRetained((exception as (Swift.Optional<Swift.Error>) -> Swift.Void) as AnyObject).toOpaque(), cancellation.__externalRCRef())
            }
        }
    }
}
@_cdecl("SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_NewsResult__")
package func SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_NewsResult__(_ pointerToClosure: Swift.UnsafeMutableRawPointer, _ _1: Swift.UnsafeMutableRawPointer) -> Swift.Bool {
    let _result: Swift.Void = (Unmanaged<AnyObject>.fromOpaque(pointerToClosure).takeUnretainedValue() as! (ExportedKotlinPackages.com.example.spacesdk.NewsResult) -> Swift.Void)(ExportedKotlinPackages.com.example.spacesdk.NewsResult.__createClassWrapper(externalRCRef: _1))
    return { _result; return true }()
}

@_cdecl("SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDayResult__")
package func SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDayResult__(_ pointerToClosure: Swift.UnsafeMutableRawPointer, _ _1: Swift.UnsafeMutableRawPointer) -> Swift.Bool {
    let _result: Swift.Void = (Unmanaged<AnyObject>.fromOpaque(pointerToClosure).takeUnretainedValue() as! (ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult) -> Swift.Void)(ExportedKotlinPackages.com.example.spacesdk.PictureOfTheDayResult.__createClassWrapper(externalRCRef: _1))
    return { _result; return true }()
}

@_cdecl("SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Optional_Swift_Error___")
package func SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Optional_Swift_Error___(_ pointerToClosure: Swift.UnsafeMutableRawPointer, _ _1: Swift.UnsafeMutableRawPointer?) -> Swift.Bool {
    let _result: Swift.Void = (Unmanaged<AnyObject>.fromOpaque(pointerToClosure).takeUnretainedValue() as! (Swift.Optional<Swift.Error>) -> Swift.Void)({ switch _1 { case nil: .none; case let res?: KotlinRuntimeSupport.swiftError(fromKotlinThrowable: KotlinRuntime.KotlinBase.__createClassWrapper(externalRCRef: res)); } }())
    return { _result; return true }()
}

