import CawaenaSdkBin
public struct NewCaseIdResponse {
    public var case_id: RustString
    public var case_url: RustString

    public init(case_id: RustString,case_url: RustString) {
        self.case_id = case_id
        self.case_url = case_url
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$NewCaseIdResponse {
        { let val = self; return __swift_bridge__$NewCaseIdResponse(case_id: { let rustString = val.case_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), case_url: { let rustString = val.case_url.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$NewCaseIdResponse {
    @inline(__always)
    func intoSwiftRepr() -> NewCaseIdResponse {
        { let val = self; return NewCaseIdResponse(case_id: RustString(ptr: val.case_id), case_url: RustString(ptr: val.case_url)); }()
    }
}
extension __swift_bridge__$Option$NewCaseIdResponse {
    @inline(__always)
    func intoSwiftRepr() -> Optional<NewCaseIdResponse> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<NewCaseIdResponse>) -> __swift_bridge__$Option$NewCaseIdResponse {
        if let v = val {
            return __swift_bridge__$Option$NewCaseIdResponse(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$NewCaseIdResponse(is_some: false, val: __swift_bridge__$NewCaseIdResponse())
        }
    }
}
public struct CaseDetailsResponse {
    public var case_id: RustString
    public var archived: Bool
    public var status: RustString

    public init(case_id: RustString,archived: Bool,status: RustString) {
        self.case_id = case_id
        self.archived = archived
        self.status = status
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$CaseDetailsResponse {
        { let val = self; return __swift_bridge__$CaseDetailsResponse(case_id: { let rustString = val.case_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), archived: val.archived, status: { let rustString = val.status.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$CaseDetailsResponse {
    @inline(__always)
    func intoSwiftRepr() -> CaseDetailsResponse {
        { let val = self; return CaseDetailsResponse(case_id: RustString(ptr: val.case_id), archived: val.archived, status: RustString(ptr: val.status)); }()
    }
}
extension __swift_bridge__$Option$CaseDetailsResponse {
    @inline(__always)
    func intoSwiftRepr() -> Optional<CaseDetailsResponse> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<CaseDetailsResponse>) -> __swift_bridge__$Option$CaseDetailsResponse {
        if let v = val {
            return __swift_bridge__$Option$CaseDetailsResponse(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$CaseDetailsResponse(is_some: false, val: __swift_bridge__$CaseDetailsResponse())
        }
    }
}
public enum TxStatus {
    case Pending
    case WaitingForVerification
    case Valid
    case Invalid
    case ProcessingIncoming
    case ProcessingOutgoing
    case Completed
    case Failed
}
extension TxStatus {
    func intoFfiRepr() -> __swift_bridge__$TxStatus {
        switch self {
            case TxStatus.Pending:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$Pending)
            case TxStatus.WaitingForVerification:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$WaitingForVerification)
            case TxStatus.Valid:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$Valid)
            case TxStatus.Invalid:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$Invalid)
            case TxStatus.ProcessingIncoming:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$ProcessingIncoming)
            case TxStatus.ProcessingOutgoing:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$ProcessingOutgoing)
            case TxStatus.Completed:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$Completed)
            case TxStatus.Failed:
                return __swift_bridge__$TxStatus(tag: __swift_bridge__$TxStatus$Failed)
        }
    }
}
extension __swift_bridge__$TxStatus {
    func intoSwiftRepr() -> TxStatus {
        switch self.tag {
            case __swift_bridge__$TxStatus$Pending:
                return TxStatus.Pending
            case __swift_bridge__$TxStatus$WaitingForVerification:
                return TxStatus.WaitingForVerification
            case __swift_bridge__$TxStatus$Valid:
                return TxStatus.Valid
            case __swift_bridge__$TxStatus$Invalid:
                return TxStatus.Invalid
            case __swift_bridge__$TxStatus$ProcessingIncoming:
                return TxStatus.ProcessingIncoming
            case __swift_bridge__$TxStatus$ProcessingOutgoing:
                return TxStatus.ProcessingOutgoing
            case __swift_bridge__$TxStatus$Completed:
                return TxStatus.Completed
            case __swift_bridge__$TxStatus$Failed:
                return TxStatus.Failed
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$TxStatus {
    @inline(__always)
    func intoSwiftRepr() -> Optional<TxStatus> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<TxStatus>) -> __swift_bridge__$Option$TxStatus {
        if let v = val {
            return __swift_bridge__$Option$TxStatus(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$TxStatus(is_some: false, val: __swift_bridge__$TxStatus())
        }
    }
}
extension TxStatus: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_TxStatus$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_TxStatus$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_TxStatus$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TxStatus$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TxStatus$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TxStatus$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_TxStatus$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_TxStatus$len(vecPtr)
    }
}
public struct PurchaseDetails {
    public var main_address: RustString
    public var amount: Double
    public var status: TxStatus
    public var invalid_reasons: RustVec<RustString>

    public init(main_address: RustString,amount: Double,status: TxStatus,invalid_reasons: RustVec<RustString>) {
        self.main_address = main_address
        self.amount = amount
        self.status = status
        self.invalid_reasons = invalid_reasons
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$PurchaseDetails {
        { let val = self; return __swift_bridge__$PurchaseDetails(main_address: { let rustString = val.main_address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), amount: val.amount, status: val.status.intoFfiRepr(), invalid_reasons: { let val = val.invalid_reasons; val.isOwned = false; return val.ptr }()); }()
    }
}
extension __swift_bridge__$PurchaseDetails {
    @inline(__always)
    func intoSwiftRepr() -> PurchaseDetails {
        { let val = self; return PurchaseDetails(main_address: RustString(ptr: val.main_address), amount: val.amount, status: val.status.intoSwiftRepr(), invalid_reasons: RustVec(ptr: val.invalid_reasons)); }()
    }
}
extension __swift_bridge__$Option$PurchaseDetails {
    @inline(__always)
    func intoSwiftRepr() -> Optional<PurchaseDetails> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<PurchaseDetails>) -> __swift_bridge__$Option$PurchaseDetails {
        if let v = val {
            return __swift_bridge__$Option$PurchaseDetails(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$PurchaseDetails(is_some: false, val: __swift_bridge__$PurchaseDetails())
        }
    }
}
public struct NewViviswapUser {
    public var username: RustString

    public init(username: RustString) {
        self.username = username
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$NewViviswapUser {
        { let val = self; return __swift_bridge__$NewViviswapUser(username: { let rustString = val.username.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$NewViviswapUser {
    @inline(__always)
    func intoSwiftRepr() -> NewViviswapUser {
        { let val = self; return NewViviswapUser(username: RustString(ptr: val.username)); }()
    }
}
extension __swift_bridge__$Option$NewViviswapUser {
    @inline(__always)
    func intoSwiftRepr() -> Optional<NewViviswapUser> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<NewViviswapUser>) -> __swift_bridge__$Option$NewViviswapUser {
        if let v = val {
            return __swift_bridge__$Option$NewViviswapUser(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$NewViviswapUser(is_some: false, val: __swift_bridge__$NewViviswapUser())
        }
    }
}
public enum ViviswapVerificationStep {
    case Undefined
    case General
    case Personal
    case Residence
    case Identity
    case Amla
    case Documents
}
extension ViviswapVerificationStep {
    func intoFfiRepr() -> __swift_bridge__$ViviswapVerificationStep {
        switch self {
            case ViviswapVerificationStep.Undefined:
                return __swift_bridge__$ViviswapVerificationStep(tag: __swift_bridge__$ViviswapVerificationStep$Undefined)
            case ViviswapVerificationStep.General:
                return __swift_bridge__$ViviswapVerificationStep(tag: __swift_bridge__$ViviswapVerificationStep$General)
            case ViviswapVerificationStep.Personal:
                return __swift_bridge__$ViviswapVerificationStep(tag: __swift_bridge__$ViviswapVerificationStep$Personal)
            case ViviswapVerificationStep.Residence:
                return __swift_bridge__$ViviswapVerificationStep(tag: __swift_bridge__$ViviswapVerificationStep$Residence)
            case ViviswapVerificationStep.Identity:
                return __swift_bridge__$ViviswapVerificationStep(tag: __swift_bridge__$ViviswapVerificationStep$Identity)
            case ViviswapVerificationStep.Amla:
                return __swift_bridge__$ViviswapVerificationStep(tag: __swift_bridge__$ViviswapVerificationStep$Amla)
            case ViviswapVerificationStep.Documents:
                return __swift_bridge__$ViviswapVerificationStep(tag: __swift_bridge__$ViviswapVerificationStep$Documents)
        }
    }
}
extension __swift_bridge__$ViviswapVerificationStep {
    func intoSwiftRepr() -> ViviswapVerificationStep {
        switch self.tag {
            case __swift_bridge__$ViviswapVerificationStep$Undefined:
                return ViviswapVerificationStep.Undefined
            case __swift_bridge__$ViviswapVerificationStep$General:
                return ViviswapVerificationStep.General
            case __swift_bridge__$ViviswapVerificationStep$Personal:
                return ViviswapVerificationStep.Personal
            case __swift_bridge__$ViviswapVerificationStep$Residence:
                return ViviswapVerificationStep.Residence
            case __swift_bridge__$ViviswapVerificationStep$Identity:
                return ViviswapVerificationStep.Identity
            case __swift_bridge__$ViviswapVerificationStep$Amla:
                return ViviswapVerificationStep.Amla
            case __swift_bridge__$ViviswapVerificationStep$Documents:
                return ViviswapVerificationStep.Documents
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$ViviswapVerificationStep {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapVerificationStep> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapVerificationStep>) -> __swift_bridge__$Option$ViviswapVerificationStep {
        if let v = val {
            return __swift_bridge__$Option$ViviswapVerificationStep(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapVerificationStep(is_some: false, val: __swift_bridge__$ViviswapVerificationStep())
        }
    }
}
extension ViviswapVerificationStep: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_ViviswapVerificationStep$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_ViviswapVerificationStep$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_ViviswapVerificationStep$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ViviswapVerificationStep$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ViviswapVerificationStep$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ViviswapVerificationStep$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_ViviswapVerificationStep$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_ViviswapVerificationStep$len(vecPtr)
    }
}
public enum ViviswapVerificationStatus {
    case Verified
    case Unverified
    case PartiallyVerified
}
extension ViviswapVerificationStatus {
    func intoFfiRepr() -> __swift_bridge__$ViviswapVerificationStatus {
        switch self {
            case ViviswapVerificationStatus.Verified:
                return __swift_bridge__$ViviswapVerificationStatus(tag: __swift_bridge__$ViviswapVerificationStatus$Verified)
            case ViviswapVerificationStatus.Unverified:
                return __swift_bridge__$ViviswapVerificationStatus(tag: __swift_bridge__$ViviswapVerificationStatus$Unverified)
            case ViviswapVerificationStatus.PartiallyVerified:
                return __swift_bridge__$ViviswapVerificationStatus(tag: __swift_bridge__$ViviswapVerificationStatus$PartiallyVerified)
        }
    }
}
extension __swift_bridge__$ViviswapVerificationStatus {
    func intoSwiftRepr() -> ViviswapVerificationStatus {
        switch self.tag {
            case __swift_bridge__$ViviswapVerificationStatus$Verified:
                return ViviswapVerificationStatus.Verified
            case __swift_bridge__$ViviswapVerificationStatus$Unverified:
                return ViviswapVerificationStatus.Unverified
            case __swift_bridge__$ViviswapVerificationStatus$PartiallyVerified:
                return ViviswapVerificationStatus.PartiallyVerified
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$ViviswapVerificationStatus {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapVerificationStatus> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapVerificationStatus>) -> __swift_bridge__$Option$ViviswapVerificationStatus {
        if let v = val {
            return __swift_bridge__$Option$ViviswapVerificationStatus(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapVerificationStatus(is_some: false, val: __swift_bridge__$ViviswapVerificationStatus())
        }
    }
}
extension ViviswapVerificationStatus: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_ViviswapVerificationStatus$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_ViviswapVerificationStatus$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_ViviswapVerificationStatus$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ViviswapVerificationStatus$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ViviswapVerificationStatus$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ViviswapVerificationStatus$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_ViviswapVerificationStatus$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_ViviswapVerificationStatus$len(vecPtr)
    }
}
public struct ViviswapKycStatus {
    public var full_name: RustString
    public var submission_step: ViviswapVerificationStep
    public var verified_step: ViviswapVerificationStep
    public var verification_status: ViviswapVerificationStatus
    public var monthly_limit_eur: Float

    public init(full_name: RustString,submission_step: ViviswapVerificationStep,verified_step: ViviswapVerificationStep,verification_status: ViviswapVerificationStatus,monthly_limit_eur: Float) {
        self.full_name = full_name
        self.submission_step = submission_step
        self.verified_step = verified_step
        self.verification_status = verification_status
        self.monthly_limit_eur = monthly_limit_eur
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ViviswapKycStatus {
        { let val = self; return __swift_bridge__$ViviswapKycStatus(full_name: { let rustString = val.full_name.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), submission_step: val.submission_step.intoFfiRepr(), verified_step: val.verified_step.intoFfiRepr(), verification_status: val.verification_status.intoFfiRepr(), monthly_limit_eur: val.monthly_limit_eur); }()
    }
}
extension __swift_bridge__$ViviswapKycStatus {
    @inline(__always)
    func intoSwiftRepr() -> ViviswapKycStatus {
        { let val = self; return ViviswapKycStatus(full_name: RustString(ptr: val.full_name), submission_step: val.submission_step.intoSwiftRepr(), verified_step: val.verified_step.intoSwiftRepr(), verification_status: val.verification_status.intoSwiftRepr(), monthly_limit_eur: val.monthly_limit_eur); }()
    }
}
extension __swift_bridge__$Option$ViviswapKycStatus {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapKycStatus> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapKycStatus>) -> __swift_bridge__$Option$ViviswapKycStatus {
        if let v = val {
            return __swift_bridge__$Option$ViviswapKycStatus(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapKycStatus(is_some: false, val: __swift_bridge__$ViviswapKycStatus())
        }
    }
}
public struct ViviswapPartiallyKycDetails {
    public var is_individual: Optional<Bool>
    public var is_pep: Optional<Bool>
    public var is_us_citizen: Optional<Bool>
    public var is_regulatory_disclosure: Optional<Bool>
    public var country_of_residence: RustString
    public var nationality: RustString
    public var full_name: RustString
    public var date_of_birth: RustString

    public init(is_individual: Optional<Bool>,is_pep: Optional<Bool>,is_us_citizen: Optional<Bool>,is_regulatory_disclosure: Optional<Bool>,country_of_residence: RustString,nationality: RustString,full_name: RustString,date_of_birth: RustString) {
        self.is_individual = is_individual
        self.is_pep = is_pep
        self.is_us_citizen = is_us_citizen
        self.is_regulatory_disclosure = is_regulatory_disclosure
        self.country_of_residence = country_of_residence
        self.nationality = nationality
        self.full_name = full_name
        self.date_of_birth = date_of_birth
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ViviswapPartiallyKycDetails {
        { let val = self; return __swift_bridge__$ViviswapPartiallyKycDetails(is_individual: val.is_individual.intoFfiRepr(), is_pep: val.is_pep.intoFfiRepr(), is_us_citizen: val.is_us_citizen.intoFfiRepr(), is_regulatory_disclosure: val.is_regulatory_disclosure.intoFfiRepr(), country_of_residence: { let rustString = val.country_of_residence.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), nationality: { let rustString = val.nationality.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), full_name: { let rustString = val.full_name.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), date_of_birth: { let rustString = val.date_of_birth.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$ViviswapPartiallyKycDetails {
    @inline(__always)
    func intoSwiftRepr() -> ViviswapPartiallyKycDetails {
        { let val = self; return ViviswapPartiallyKycDetails(is_individual: val.is_individual.intoSwiftRepr(), is_pep: val.is_pep.intoSwiftRepr(), is_us_citizen: val.is_us_citizen.intoSwiftRepr(), is_regulatory_disclosure: val.is_regulatory_disclosure.intoSwiftRepr(), country_of_residence: RustString(ptr: val.country_of_residence), nationality: RustString(ptr: val.nationality), full_name: RustString(ptr: val.full_name), date_of_birth: RustString(ptr: val.date_of_birth)); }()
    }
}
extension __swift_bridge__$Option$ViviswapPartiallyKycDetails {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapPartiallyKycDetails> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapPartiallyKycDetails>) -> __swift_bridge__$Option$ViviswapPartiallyKycDetails {
        if let v = val {
            return __swift_bridge__$Option$ViviswapPartiallyKycDetails(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapPartiallyKycDetails(is_some: false, val: __swift_bridge__$ViviswapPartiallyKycDetails())
        }
    }
}
public struct KycAmlaQuestion {
    public var id: RustString
    public var question: RustString
    public var possible_answers: RustVec<RustString>
    public var is_free_text: Bool
    public var min_answers: Int32
    public var max_answers: Int32

    public init(id: RustString,question: RustString,possible_answers: RustVec<RustString>,is_free_text: Bool,min_answers: Int32,max_answers: Int32) {
        self.id = id
        self.question = question
        self.possible_answers = possible_answers
        self.is_free_text = is_free_text
        self.min_answers = min_answers
        self.max_answers = max_answers
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$KycAmlaQuestion {
        { let val = self; return __swift_bridge__$KycAmlaQuestion(id: { let rustString = val.id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), question: { let rustString = val.question.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), possible_answers: { let val = val.possible_answers; val.isOwned = false; return val.ptr }(), is_free_text: val.is_free_text, min_answers: val.min_answers, max_answers: val.max_answers); }()
    }
}
extension __swift_bridge__$KycAmlaQuestion {
    @inline(__always)
    func intoSwiftRepr() -> KycAmlaQuestion {
        { let val = self; return KycAmlaQuestion(id: RustString(ptr: val.id), question: RustString(ptr: val.question), possible_answers: RustVec(ptr: val.possible_answers), is_free_text: val.is_free_text, min_answers: val.min_answers, max_answers: val.max_answers); }()
    }
}
extension __swift_bridge__$Option$KycAmlaQuestion {
    @inline(__always)
    func intoSwiftRepr() -> Optional<KycAmlaQuestion> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<KycAmlaQuestion>) -> __swift_bridge__$Option$KycAmlaQuestion {
        if let v = val {
            return __swift_bridge__$Option$KycAmlaQuestion(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$KycAmlaQuestion(is_some: false, val: __swift_bridge__$KycAmlaQuestion())
        }
    }
}
public struct KycOpenDocument {
    public var id: RustString
    public var is_back_image_required: Bool
    public var document_type: RustString
    public var description: RustString

    public init(id: RustString,is_back_image_required: Bool,document_type: RustString,description: RustString) {
        self.id = id
        self.is_back_image_required = is_back_image_required
        self.document_type = document_type
        self.description = description
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$KycOpenDocument {
        { let val = self; return __swift_bridge__$KycOpenDocument(id: { let rustString = val.id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), is_back_image_required: val.is_back_image_required, document_type: { let rustString = val.document_type.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), description: { let rustString = val.description.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$KycOpenDocument {
    @inline(__always)
    func intoSwiftRepr() -> KycOpenDocument {
        { let val = self; return KycOpenDocument(id: RustString(ptr: val.id), is_back_image_required: val.is_back_image_required, document_type: RustString(ptr: val.document_type), description: RustString(ptr: val.description)); }()
    }
}
extension __swift_bridge__$Option$KycOpenDocument {
    @inline(__always)
    func intoSwiftRepr() -> Optional<KycOpenDocument> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<KycOpenDocument>) -> __swift_bridge__$Option$KycOpenDocument {
        if let v = val {
            return __swift_bridge__$Option$KycOpenDocument(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$KycOpenDocument(is_some: false, val: __swift_bridge__$KycOpenDocument())
        }
    }
}
public struct ViviswapAddressDetail {
    public var id: RustString
    public var address: RustString
    public var is_verified: Bool

    public init(id: RustString,address: RustString,is_verified: Bool) {
        self.id = id
        self.address = address
        self.is_verified = is_verified
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ViviswapAddressDetail {
        { let val = self; return __swift_bridge__$ViviswapAddressDetail(id: { let rustString = val.id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), address: { let rustString = val.address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), is_verified: val.is_verified); }()
    }
}
extension __swift_bridge__$ViviswapAddressDetail {
    @inline(__always)
    func intoSwiftRepr() -> ViviswapAddressDetail {
        { let val = self; return ViviswapAddressDetail(id: RustString(ptr: val.id), address: RustString(ptr: val.address), is_verified: val.is_verified); }()
    }
}
extension __swift_bridge__$Option$ViviswapAddressDetail {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapAddressDetail> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapAddressDetail>) -> __swift_bridge__$Option$ViviswapAddressDetail {
        if let v = val {
            return __swift_bridge__$Option$ViviswapAddressDetail(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapAddressDetail(is_some: false, val: __swift_bridge__$ViviswapAddressDetail())
        }
    }
}
public struct ViviswapDepositDetails {
    public var reference: RustString
    public var beneficiary: RustString
    public var name_of_bank: RustString
    public var address_of_bank: RustString
    public var iban: RustString
    public var bic: RustString

    public init(reference: RustString,beneficiary: RustString,name_of_bank: RustString,address_of_bank: RustString,iban: RustString,bic: RustString) {
        self.reference = reference
        self.beneficiary = beneficiary
        self.name_of_bank = name_of_bank
        self.address_of_bank = address_of_bank
        self.iban = iban
        self.bic = bic
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ViviswapDepositDetails {
        { let val = self; return __swift_bridge__$ViviswapDepositDetails(reference: { let rustString = val.reference.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), beneficiary: { let rustString = val.beneficiary.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), name_of_bank: { let rustString = val.name_of_bank.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), address_of_bank: { let rustString = val.address_of_bank.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), iban: { let rustString = val.iban.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), bic: { let rustString = val.bic.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$ViviswapDepositDetails {
    @inline(__always)
    func intoSwiftRepr() -> ViviswapDepositDetails {
        { let val = self; return ViviswapDepositDetails(reference: RustString(ptr: val.reference), beneficiary: RustString(ptr: val.beneficiary), name_of_bank: RustString(ptr: val.name_of_bank), address_of_bank: RustString(ptr: val.address_of_bank), iban: RustString(ptr: val.iban), bic: RustString(ptr: val.bic)); }()
    }
}
extension __swift_bridge__$Option$ViviswapDepositDetails {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapDepositDetails> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapDepositDetails>) -> __swift_bridge__$Option$ViviswapDepositDetails {
        if let v = val {
            return __swift_bridge__$Option$ViviswapDepositDetails(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapDepositDetails(is_some: false, val: __swift_bridge__$ViviswapDepositDetails())
        }
    }
}
public struct ViviswapDeposit {
    public var contract_id: RustString
    public var deposit_address: RustString
    public var details: ViviswapDepositDetails

    public init(contract_id: RustString,deposit_address: RustString,details: ViviswapDepositDetails) {
        self.contract_id = contract_id
        self.deposit_address = deposit_address
        self.details = details
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ViviswapDeposit {
        { let val = self; return __swift_bridge__$ViviswapDeposit(contract_id: { let rustString = val.contract_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), deposit_address: { let rustString = val.deposit_address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), details: val.details.intoFfiRepr()); }()
    }
}
extension __swift_bridge__$ViviswapDeposit {
    @inline(__always)
    func intoSwiftRepr() -> ViviswapDeposit {
        { let val = self; return ViviswapDeposit(contract_id: RustString(ptr: val.contract_id), deposit_address: RustString(ptr: val.deposit_address), details: val.details.intoSwiftRepr()); }()
    }
}
extension __swift_bridge__$Option$ViviswapDeposit {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapDeposit> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapDeposit>) -> __swift_bridge__$Option$ViviswapDeposit {
        if let v = val {
            return __swift_bridge__$Option$ViviswapDeposit(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapDeposit(is_some: false, val: __swift_bridge__$ViviswapDeposit())
        }
    }
}
public struct ViviswapWithdrawalDetails {
    public var reference: RustString
    public var wallet_id: RustString
    public var crypto_address: RustString

    public init(reference: RustString,wallet_id: RustString,crypto_address: RustString) {
        self.reference = reference
        self.wallet_id = wallet_id
        self.crypto_address = crypto_address
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ViviswapWithdrawalDetails {
        { let val = self; return __swift_bridge__$ViviswapWithdrawalDetails(reference: { let rustString = val.reference.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), wallet_id: { let rustString = val.wallet_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), crypto_address: { let rustString = val.crypto_address.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$ViviswapWithdrawalDetails {
    @inline(__always)
    func intoSwiftRepr() -> ViviswapWithdrawalDetails {
        { let val = self; return ViviswapWithdrawalDetails(reference: RustString(ptr: val.reference), wallet_id: RustString(ptr: val.wallet_id), crypto_address: RustString(ptr: val.crypto_address)); }()
    }
}
extension __swift_bridge__$Option$ViviswapWithdrawalDetails {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapWithdrawalDetails> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapWithdrawalDetails>) -> __swift_bridge__$Option$ViviswapWithdrawalDetails {
        if let v = val {
            return __swift_bridge__$Option$ViviswapWithdrawalDetails(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapWithdrawalDetails(is_some: false, val: __swift_bridge__$ViviswapWithdrawalDetails())
        }
    }
}
public struct ViviswapWithdrawal {
    public var contract_id: RustString
    public var deposit_address: RustString
    public var details: ViviswapWithdrawalDetails

    public init(contract_id: RustString,deposit_address: RustString,details: ViviswapWithdrawalDetails) {
        self.contract_id = contract_id
        self.deposit_address = deposit_address
        self.details = details
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ViviswapWithdrawal {
        { let val = self; return __swift_bridge__$ViviswapWithdrawal(contract_id: { let rustString = val.contract_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), deposit_address: { let rustString = val.deposit_address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), details: val.details.intoFfiRepr()); }()
    }
}
extension __swift_bridge__$ViviswapWithdrawal {
    @inline(__always)
    func intoSwiftRepr() -> ViviswapWithdrawal {
        { let val = self; return ViviswapWithdrawal(contract_id: RustString(ptr: val.contract_id), deposit_address: RustString(ptr: val.deposit_address), details: val.details.intoSwiftRepr()); }()
    }
}
extension __swift_bridge__$Option$ViviswapWithdrawal {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ViviswapWithdrawal> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ViviswapWithdrawal>) -> __swift_bridge__$Option$ViviswapWithdrawal {
        if let v = val {
            return __swift_bridge__$Option$ViviswapWithdrawal(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ViviswapWithdrawal(is_some: false, val: __swift_bridge__$ViviswapWithdrawal())
        }
    }
}
public struct PaymentDetail {
    public var id: RustString
    public var address: RustString
    public var is_verified: Optional<Bool>

    public init(id: RustString,address: RustString,is_verified: Optional<Bool>) {
        self.id = id
        self.address = address
        self.is_verified = is_verified
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$PaymentDetail {
        { let val = self; return __swift_bridge__$PaymentDetail(id: { let rustString = val.id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), address: { let rustString = val.address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), is_verified: val.is_verified.intoFfiRepr()); }()
    }
}
extension __swift_bridge__$PaymentDetail {
    @inline(__always)
    func intoSwiftRepr() -> PaymentDetail {
        { let val = self; return PaymentDetail(id: RustString(ptr: val.id), address: RustString(ptr: val.address), is_verified: val.is_verified.intoSwiftRepr()); }()
    }
}
extension __swift_bridge__$Option$PaymentDetail {
    @inline(__always)
    func intoSwiftRepr() -> Optional<PaymentDetail> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<PaymentDetail>) -> __swift_bridge__$Option$PaymentDetail {
        if let v = val {
            return __swift_bridge__$Option$PaymentDetail(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$PaymentDetail(is_some: false, val: __swift_bridge__$PaymentDetail())
        }
    }
}
public struct Order {
    public var id: RustString
    public var is_payed_out: Bool
    public var is_approved: Bool
    public var is_canceled: Bool
    public var fees_amount_eur: Float
    public var crypto_fees: Float
    public var contract_id: RustString
    public var incoming_payment_method_id: RustString
    public var incoming_payment_method_currency: RustString
    public var incoming_amount: Float
    public var incoming_course: Float
    public var outgoing_payment_method_id: RustString
    public var outgoing_payment_method_currency: RustString
    public var outgoing_amount: Float
    public var outgoing_course: Float
    public var refund_amount: Optional<Float>
    public var refund_course: Optional<Float>
    public var refund_payment_method_id: RustString
    public var status: Int32
    public var creation_date: RustString
    public var incoming_payment_detail: RustString
    public var outgoing_payment_detail: RustString
    public var refund_payment_detail: RustString

    public init(id: RustString,is_payed_out: Bool,is_approved: Bool,is_canceled: Bool,fees_amount_eur: Float,crypto_fees: Float,contract_id: RustString,incoming_payment_method_id: RustString,incoming_payment_method_currency: RustString,incoming_amount: Float,incoming_course: Float,outgoing_payment_method_id: RustString,outgoing_payment_method_currency: RustString,outgoing_amount: Float,outgoing_course: Float,refund_amount: Optional<Float>,refund_course: Optional<Float>,refund_payment_method_id: RustString,status: Int32,creation_date: RustString,incoming_payment_detail: RustString,outgoing_payment_detail: RustString,refund_payment_detail: RustString) {
        self.id = id
        self.is_payed_out = is_payed_out
        self.is_approved = is_approved
        self.is_canceled = is_canceled
        self.fees_amount_eur = fees_amount_eur
        self.crypto_fees = crypto_fees
        self.contract_id = contract_id
        self.incoming_payment_method_id = incoming_payment_method_id
        self.incoming_payment_method_currency = incoming_payment_method_currency
        self.incoming_amount = incoming_amount
        self.incoming_course = incoming_course
        self.outgoing_payment_method_id = outgoing_payment_method_id
        self.outgoing_payment_method_currency = outgoing_payment_method_currency
        self.outgoing_amount = outgoing_amount
        self.outgoing_course = outgoing_course
        self.refund_amount = refund_amount
        self.refund_course = refund_course
        self.refund_payment_method_id = refund_payment_method_id
        self.status = status
        self.creation_date = creation_date
        self.incoming_payment_detail = incoming_payment_detail
        self.outgoing_payment_detail = outgoing_payment_detail
        self.refund_payment_detail = refund_payment_detail
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$Order {
        { let val = self; return __swift_bridge__$Order(id: { let rustString = val.id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), is_payed_out: val.is_payed_out, is_approved: val.is_approved, is_canceled: val.is_canceled, fees_amount_eur: val.fees_amount_eur, crypto_fees: val.crypto_fees, contract_id: { let rustString = val.contract_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), incoming_payment_method_id: { let rustString = val.incoming_payment_method_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), incoming_payment_method_currency: { let rustString = val.incoming_payment_method_currency.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), incoming_amount: val.incoming_amount, incoming_course: val.incoming_course, outgoing_payment_method_id: { let rustString = val.outgoing_payment_method_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), outgoing_payment_method_currency: { let rustString = val.outgoing_payment_method_currency.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), outgoing_amount: val.outgoing_amount, outgoing_course: val.outgoing_course, refund_amount: val.refund_amount.intoFfiRepr(), refund_course: val.refund_course.intoFfiRepr(), refund_payment_method_id: { let rustString = val.refund_payment_method_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), status: val.status, creation_date: { let rustString = val.creation_date.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), incoming_payment_detail: { let rustString = val.incoming_payment_detail.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), outgoing_payment_detail: { let rustString = val.outgoing_payment_detail.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), refund_payment_detail: { let rustString = val.refund_payment_detail.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$Order {
    @inline(__always)
    func intoSwiftRepr() -> Order {
        { let val = self; return Order(id: RustString(ptr: val.id), is_payed_out: val.is_payed_out, is_approved: val.is_approved, is_canceled: val.is_canceled, fees_amount_eur: val.fees_amount_eur, crypto_fees: val.crypto_fees, contract_id: RustString(ptr: val.contract_id), incoming_payment_method_id: RustString(ptr: val.incoming_payment_method_id), incoming_payment_method_currency: RustString(ptr: val.incoming_payment_method_currency), incoming_amount: val.incoming_amount, incoming_course: val.incoming_course, outgoing_payment_method_id: RustString(ptr: val.outgoing_payment_method_id), outgoing_payment_method_currency: RustString(ptr: val.outgoing_payment_method_currency), outgoing_amount: val.outgoing_amount, outgoing_course: val.outgoing_course, refund_amount: val.refund_amount.intoSwiftRepr(), refund_course: val.refund_course.intoSwiftRepr(), refund_payment_method_id: RustString(ptr: val.refund_payment_method_id), status: val.status, creation_date: RustString(ptr: val.creation_date), incoming_payment_detail: RustString(ptr: val.incoming_payment_detail), outgoing_payment_detail: RustString(ptr: val.outgoing_payment_detail), refund_payment_detail: RustString(ptr: val.refund_payment_detail)); }()
    }
}
extension __swift_bridge__$Option$Order {
    @inline(__always)
    func intoSwiftRepr() -> Optional<Order> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<Order>) -> __swift_bridge__$Option$Order {
        if let v = val {
            return __swift_bridge__$Option$Order(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$Order(is_some: false, val: __swift_bridge__$Order())
        }
    }
}
public struct TxInfo {
    public var date: RustString
    public var sender: RustString
    public var receiver: RustString
    public var reference_id: RustString
    public var application_metadata: RustString
    public var amount: Double
    public var currency: RustString
    public var status: TxStatus
    public var transaction_hash: RustString
    public var course: Double
    public var invalid_reasons: RustVec<RustString>

    public init(date: RustString,sender: RustString,receiver: RustString,reference_id: RustString,application_metadata: RustString,amount: Double,currency: RustString,status: TxStatus,transaction_hash: RustString,course: Double,invalid_reasons: RustVec<RustString>) {
        self.date = date
        self.sender = sender
        self.receiver = receiver
        self.reference_id = reference_id
        self.application_metadata = application_metadata
        self.amount = amount
        self.currency = currency
        self.status = status
        self.transaction_hash = transaction_hash
        self.course = course
        self.invalid_reasons = invalid_reasons
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$TxInfo {
        { let val = self; return __swift_bridge__$TxInfo(date: { let rustString = val.date.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), sender: { let rustString = val.sender.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), receiver: { let rustString = val.receiver.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), reference_id: { let rustString = val.reference_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), application_metadata: { let rustString = val.application_metadata.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), amount: val.amount, currency: { let rustString = val.currency.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), status: val.status.intoFfiRepr(), transaction_hash: { let rustString = val.transaction_hash.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), course: val.course, invalid_reasons: { let val = val.invalid_reasons; val.isOwned = false; return val.ptr }()); }()
    }
}
extension __swift_bridge__$TxInfo {
    @inline(__always)
    func intoSwiftRepr() -> TxInfo {
        { let val = self; return TxInfo(date: RustString(ptr: val.date), sender: RustString(ptr: val.sender), receiver: RustString(ptr: val.receiver), reference_id: RustString(ptr: val.reference_id), application_metadata: RustString(ptr: val.application_metadata), amount: val.amount, currency: RustString(ptr: val.currency), status: val.status.intoSwiftRepr(), transaction_hash: RustString(ptr: val.transaction_hash), course: val.course, invalid_reasons: RustVec(ptr: val.invalid_reasons)); }()
    }
}
extension __swift_bridge__$Option$TxInfo {
    @inline(__always)
    func intoSwiftRepr() -> Optional<TxInfo> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<TxInfo>) -> __swift_bridge__$Option$TxInfo {
        if let v = val {
            return __swift_bridge__$Option$TxInfo(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$TxInfo(is_some: false, val: __swift_bridge__$TxInfo())
        }
    }
}
public struct WalletTxInfo {
    public var date: RustString
    public var block_id: RustString
    public var transaction_id: RustString
    public var incoming: Bool
    public var amount: Double
    public var network: RustString
    public var status: RustString
    public var explorer_url: RustString

    public init(date: RustString,block_id: RustString,transaction_id: RustString,incoming: Bool,amount: Double,network: RustString,status: RustString,explorer_url: RustString) {
        self.date = date
        self.block_id = block_id
        self.transaction_id = transaction_id
        self.incoming = incoming
        self.amount = amount
        self.network = network
        self.status = status
        self.explorer_url = explorer_url
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$WalletTxInfo {
        { let val = self; return __swift_bridge__$WalletTxInfo(date: { let rustString = val.date.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), block_id: { let rustString = val.block_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), transaction_id: { let rustString = val.transaction_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), incoming: val.incoming, amount: val.amount, network: { let rustString = val.network.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), status: { let rustString = val.status.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), explorer_url: { let rustString = val.explorer_url.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$WalletTxInfo {
    @inline(__always)
    func intoSwiftRepr() -> WalletTxInfo {
        { let val = self; return WalletTxInfo(date: RustString(ptr: val.date), block_id: RustString(ptr: val.block_id), transaction_id: RustString(ptr: val.transaction_id), incoming: val.incoming, amount: val.amount, network: RustString(ptr: val.network), status: RustString(ptr: val.status), explorer_url: RustString(ptr: val.explorer_url)); }()
    }
}
extension __swift_bridge__$Option$WalletTxInfo {
    @inline(__always)
    func intoSwiftRepr() -> Optional<WalletTxInfo> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<WalletTxInfo>) -> __swift_bridge__$Option$WalletTxInfo {
        if let v = val {
            return __swift_bridge__$Option$WalletTxInfo(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$WalletTxInfo(is_some: false, val: __swift_bridge__$WalletTxInfo())
        }
    }
}
public enum Currency {
    case Iota
    case Eth
}
extension Currency {
    func intoFfiRepr() -> __swift_bridge__$Currency {
        switch self {
            case Currency.Iota:
                return __swift_bridge__$Currency(tag: __swift_bridge__$Currency$Iota)
            case Currency.Eth:
                return __swift_bridge__$Currency(tag: __swift_bridge__$Currency$Eth)
        }
    }
}
extension __swift_bridge__$Currency {
    func intoSwiftRepr() -> Currency {
        switch self.tag {
            case __swift_bridge__$Currency$Iota:
                return Currency.Iota
            case __swift_bridge__$Currency$Eth:
                return Currency.Eth
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$Currency {
    @inline(__always)
    func intoSwiftRepr() -> Optional<Currency> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<Currency>) -> __swift_bridge__$Option$Currency {
        if let v = val {
            return __swift_bridge__$Option$Currency(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$Currency(is_some: false, val: __swift_bridge__$Currency())
        }
    }
}
extension Currency: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Currency$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Currency$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_Currency$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_Currency$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_Currency$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_Currency$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_Currency$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Currency$len(vecPtr)
    }
}
public enum PreferredCurrency {
    case None
    case Iota
    case Eth
}
extension PreferredCurrency {
    func intoFfiRepr() -> __swift_bridge__$PreferredCurrency {
        switch self {
            case PreferredCurrency.None:
                return __swift_bridge__$PreferredCurrency(tag: __swift_bridge__$PreferredCurrency$None)
            case PreferredCurrency.Iota:
                return __swift_bridge__$PreferredCurrency(tag: __swift_bridge__$PreferredCurrency$Iota)
            case PreferredCurrency.Eth:
                return __swift_bridge__$PreferredCurrency(tag: __swift_bridge__$PreferredCurrency$Eth)
        }
    }
}
extension __swift_bridge__$PreferredCurrency {
    func intoSwiftRepr() -> PreferredCurrency {
        switch self.tag {
            case __swift_bridge__$PreferredCurrency$None:
                return PreferredCurrency.None
            case __swift_bridge__$PreferredCurrency$Iota:
                return PreferredCurrency.Iota
            case __swift_bridge__$PreferredCurrency$Eth:
                return PreferredCurrency.Eth
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$PreferredCurrency {
    @inline(__always)
    func intoSwiftRepr() -> Optional<PreferredCurrency> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<PreferredCurrency>) -> __swift_bridge__$Option$PreferredCurrency {
        if let v = val {
            return __swift_bridge__$Option$PreferredCurrency(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$PreferredCurrency(is_some: false, val: __swift_bridge__$PreferredCurrency())
        }
    }
}
extension PreferredCurrency: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_PreferredCurrency$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_PreferredCurrency$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_PreferredCurrency$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_PreferredCurrency$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_PreferredCurrency$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_PreferredCurrency$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_PreferredCurrency$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_PreferredCurrency$len(vecPtr)
    }
}
public enum OfficialDocumentType {
    case Id
    case Passport
    case DriversLicense
}
extension OfficialDocumentType {
    func intoFfiRepr() -> __swift_bridge__$OfficialDocumentType {
        switch self {
            case OfficialDocumentType.Id:
                return __swift_bridge__$OfficialDocumentType(tag: __swift_bridge__$OfficialDocumentType$Id)
            case OfficialDocumentType.Passport:
                return __swift_bridge__$OfficialDocumentType(tag: __swift_bridge__$OfficialDocumentType$Passport)
            case OfficialDocumentType.DriversLicense:
                return __swift_bridge__$OfficialDocumentType(tag: __swift_bridge__$OfficialDocumentType$DriversLicense)
        }
    }
}
extension __swift_bridge__$OfficialDocumentType {
    func intoSwiftRepr() -> OfficialDocumentType {
        switch self.tag {
            case __swift_bridge__$OfficialDocumentType$Id:
                return OfficialDocumentType.Id
            case __swift_bridge__$OfficialDocumentType$Passport:
                return OfficialDocumentType.Passport
            case __swift_bridge__$OfficialDocumentType$DriversLicense:
                return OfficialDocumentType.DriversLicense
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$OfficialDocumentType {
    @inline(__always)
    func intoSwiftRepr() -> Optional<OfficialDocumentType> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<OfficialDocumentType>) -> __swift_bridge__$Option$OfficialDocumentType {
        if let v = val {
            return __swift_bridge__$Option$OfficialDocumentType(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$OfficialDocumentType(is_some: false, val: __swift_bridge__$OfficialDocumentType())
        }
    }
}
extension OfficialDocumentType: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_OfficialDocumentType$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_OfficialDocumentType$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_OfficialDocumentType$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_OfficialDocumentType$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_OfficialDocumentType$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_OfficialDocumentType$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_OfficialDocumentType$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_OfficialDocumentType$len(vecPtr)
    }
}
public struct File {
    public var data: RustVec<UInt8>
    public var filename: RustString

    public init(data: RustVec<UInt8>,filename: RustString) {
        self.data = data
        self.filename = filename
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$File {
        { let val = self; return __swift_bridge__$File(data: { let val = val.data; val.isOwned = false; return val.ptr }(), filename: { let rustString = val.filename.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$File {
    @inline(__always)
    func intoSwiftRepr() -> File {
        { let val = self; return File(data: RustVec(ptr: val.data), filename: RustString(ptr: val.filename)); }()
    }
}
extension __swift_bridge__$Option$File {
    @inline(__always)
    func intoSwiftRepr() -> Optional<File> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<File>) -> __swift_bridge__$Option$File {
        if let v = val {
            return __swift_bridge__$Option$File(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$File(is_some: false, val: __swift_bridge__$File())
        }
    }
}
public struct IdentityOfficialDocumentData {
    public var doc_type: OfficialDocumentType
    public var expiration_date: RustString
    public var document_number: RustString
    public var front_image: File
    public var back_image: Optional<File>

    public init(doc_type: OfficialDocumentType,expiration_date: RustString,document_number: RustString,front_image: File,back_image: Optional<File>) {
        self.doc_type = doc_type
        self.expiration_date = expiration_date
        self.document_number = document_number
        self.front_image = front_image
        self.back_image = back_image
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$IdentityOfficialDocumentData {
        { let val = self; return __swift_bridge__$IdentityOfficialDocumentData(doc_type: val.doc_type.intoFfiRepr(), expiration_date: { let rustString = val.expiration_date.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), document_number: { let rustString = val.document_number.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), front_image: val.front_image.intoFfiRepr(), back_image: __swift_bridge__$Option$File.fromSwiftRepr(val.back_image)); }()
    }
}
extension __swift_bridge__$IdentityOfficialDocumentData {
    @inline(__always)
    func intoSwiftRepr() -> IdentityOfficialDocumentData {
        { let val = self; return IdentityOfficialDocumentData(doc_type: val.doc_type.intoSwiftRepr(), expiration_date: RustString(ptr: val.expiration_date), document_number: RustString(ptr: val.document_number), front_image: val.front_image.intoSwiftRepr(), back_image: val.back_image.intoSwiftRepr()); }()
    }
}
extension __swift_bridge__$Option$IdentityOfficialDocumentData {
    @inline(__always)
    func intoSwiftRepr() -> Optional<IdentityOfficialDocumentData> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<IdentityOfficialDocumentData>) -> __swift_bridge__$Option$IdentityOfficialDocumentData {
        if let v = val {
            return __swift_bridge__$Option$IdentityOfficialDocumentData(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$IdentityOfficialDocumentData(is_some: false, val: __swift_bridge__$IdentityOfficialDocumentData())
        }
    }
}
public struct IdentityPersonalDocumentData {
    public var video: File

    public init(video: File) {
        self.video = video
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$IdentityPersonalDocumentData {
        { let val = self; return __swift_bridge__$IdentityPersonalDocumentData(video: val.video.intoFfiRepr()); }()
    }
}
extension __swift_bridge__$IdentityPersonalDocumentData {
    @inline(__always)
    func intoSwiftRepr() -> IdentityPersonalDocumentData {
        { let val = self; return IdentityPersonalDocumentData(video: val.video.intoSwiftRepr()); }()
    }
}
extension __swift_bridge__$Option$IdentityPersonalDocumentData {
    @inline(__always)
    func intoSwiftRepr() -> Optional<IdentityPersonalDocumentData> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<IdentityPersonalDocumentData>) -> __swift_bridge__$Option$IdentityPersonalDocumentData {
        if let v = val {
            return __swift_bridge__$Option$IdentityPersonalDocumentData(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$IdentityPersonalDocumentData(is_some: false, val: __swift_bridge__$IdentityPersonalDocumentData())
        }
    }
}

public class CawaenaSdk: CawaenaSdkRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$CawaenaSdk$_free(ptr)
        }
    }
}
extension CawaenaSdk {
    public convenience init() {
        self.init(ptr: __swift_bridge__$CawaenaSdk$new())
    }
}
public class CawaenaSdkRefMut: CawaenaSdkRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class CawaenaSdkRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension CawaenaSdkRef {
    public func setConfig<GenericIntoRustString: IntoRustString>(_ config: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_config>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_config(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_config(wrapperPtr, onComplete, ptr, { let rustString = config.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$set_config {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getNodeUrls() async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_node_urls>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustString(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustString, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_node_urls(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_node_urls(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_node_urls {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setCurrency(_ currency: Currency) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_currency>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_currency(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_currency(wrapperPtr, onComplete, ptr, currency.intoFfiRepr())
        })
    }
    class CbWrapper$CawaenaSdk$set_currency {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func destroy() async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$destroy>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$destroy(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$destroy(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$destroy {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createNewUser<GenericIntoRustString: IntoRustString>(_ username: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$create_new_user>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$create_new_user(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$create_new_user(wrapperPtr, onComplete, ptr, { let rustString = username.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$create_new_user {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func initUser<GenericIntoRustString: IntoRustString>(_ username: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$init_user>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$init_user(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$init_user(wrapperPtr, onComplete, ptr, { let rustString = username.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$init_user {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func refreshAccessToken<GenericIntoRustString: IntoRustString>(_ access_token: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$refresh_access_token>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$refresh_access_token(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$refresh_access_token(wrapperPtr, onComplete, ptr, { let rustString = access_token.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$refresh_access_token {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func isKycVerified<GenericIntoRustString: IntoRustString>(_ username: GenericIntoRustString) async throws -> Bool {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultBoolAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$is_kyc_verified>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultBoolAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultBoolAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Bool, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$is_kyc_verified(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$is_kyc_verified(wrapperPtr, onComplete, ptr, { let rustString = username.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$is_kyc_verified {
        var cb: (Result<Bool, Error>) -> ()
    
        public init(cb: @escaping (Result<Bool, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func verifyMnemonic<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ mnemonic: GenericIntoRustString) async throws -> Bool {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultBoolAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$verify_mnemonic>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultBoolAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultBoolAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Bool, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$verify_mnemonic(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$verify_mnemonic(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = mnemonic.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$verify_mnemonic {
        var cb: (Result<Bool, Error>) -> ()
    
        public init(cb: @escaping (Result<Bool, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createNewWallet<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$create_new_wallet>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustString(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustString, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$create_new_wallet(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$create_new_wallet(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$create_new_wallet {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createWalletFromMnemonic<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ mnemonic: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$create_wallet_from_mnemonic>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$create_wallet_from_mnemonic(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$create_wallet_from_mnemonic(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = mnemonic.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$create_wallet_from_mnemonic {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func restoreWalletFromBackup<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ backup: RustVec<UInt8>, _ backup_password: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$restore_wallet_from_backup>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$restore_wallet_from_backup(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$restore_wallet_from_backup(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let val = backup; val.isOwned = false; return val.ptr }(), { let rustString = backup_password.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$restore_wallet_from_backup {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createWalletBackup<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ password: GenericIntoRustString) async throws -> RustVec<UInt8> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$create_wallet_backup>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustVec<UInt8>(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustVec<UInt8>, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$create_wallet_backup(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$create_wallet_backup(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = password.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$create_wallet_backup {
        var cb: (Result<RustVec<UInt8>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<UInt8>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func deleteWallet<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$delete_wallet>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$delete_wallet(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$delete_wallet(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$delete_wallet {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func generateNewAddress<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$generate_new_address>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustString(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustString, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$generate_new_address(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$generate_new_address(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$generate_new_address {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getWalletBalance<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> Double {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultF64AndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_balance>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultF64AndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultF64AndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Double, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_balance(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_balance(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$get_balance {
        var cb: (Result<Double, Error>) -> ()
    
        public init(cb: @escaping (Result<Double, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func initKycVerificationForPostident() async throws -> NewCaseIdResponse {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultNewCaseIdResponseAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$init_kyc_verification_for_postident>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultNewCaseIdResponseAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultNewCaseIdResponseAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<NewCaseIdResponse, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$init_kyc_verification_for_postident(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$init_kyc_verification_for_postident(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$init_kyc_verification_for_postident {
        var cb: (Result<NewCaseIdResponse, Error>) -> ()
    
        public init(cb: @escaping (Result<NewCaseIdResponse, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getKycDetailsForPostident() async throws -> CaseDetailsResponse {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultCaseDetailsResponseAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_kyc_details_for_postident>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultCaseDetailsResponseAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultCaseDetailsResponseAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<CaseDetailsResponse, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_kyc_details_for_postident(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_kyc_details_for_postident(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_kyc_details_for_postident {
        var cb: (Result<CaseDetailsResponse, Error>) -> ()
    
        public init(cb: @escaping (Result<CaseDetailsResponse, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func updateKycDetailsForPostident<GenericIntoRustString: IntoRustString>(_ case_id: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$update_kyc_details_for_postident>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$update_kyc_details_for_postident(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$update_kyc_details_for_postident(wrapperPtr, onComplete, ptr, { let rustString = case_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$update_kyc_details_for_postident {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createPurchaseRequest<GenericIntoRustString: IntoRustString>(_ receiver: GenericIntoRustString, _ amount: Double, _ product_hash: GenericIntoRustString, _ app_data: GenericIntoRustString, _ purchase_type: GenericIntoRustString) async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$create_purchase_request>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustString(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustString, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$create_purchase_request(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$create_purchase_request(wrapperPtr, onComplete, ptr, { let rustString = receiver.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), amount, { let rustString = product_hash.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = app_data.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = purchase_type.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$create_purchase_request {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getPurchaseDetails<GenericIntoRustString: IntoRustString>(_ purchase_id: GenericIntoRustString) async throws -> PurchaseDetails {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultPurchaseDetailsAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_purchase_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultPurchaseDetailsAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultPurchaseDetailsAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<PurchaseDetails, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_purchase_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_purchase_details(wrapperPtr, onComplete, ptr, { let rustString = purchase_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$get_purchase_details {
        var cb: (Result<PurchaseDetails, Error>) -> ()
    
        public init(cb: @escaping (Result<PurchaseDetails, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func confirmPurchaseRequest<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ purchase_id: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$confirm_purchase_request>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$confirm_purchase_request(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$confirm_purchase_request(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = purchase_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$confirm_purchase_request {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func startKycVerificationForViviswap<GenericIntoRustString: IntoRustString>(_ mail: GenericIntoRustString, _ terms_accepted: Bool) async throws -> NewViviswapUser {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultNewViviswapUserAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$start_kyc_verification_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultNewViviswapUserAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultNewViviswapUserAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<NewViviswapUser, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$start_kyc_verification_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$start_kyc_verification_for_viviswap(wrapperPtr, onComplete, ptr, { let rustString = mail.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), terms_accepted)
        })
    }
    class CbWrapper$CawaenaSdk$start_kyc_verification_for_viviswap {
        var cb: (Result<NewViviswapUser, Error>) -> ()
    
        public init(cb: @escaping (Result<NewViviswapUser, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getKycDetailsForViviswap() async throws -> ViviswapKycStatus {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapKycStatusAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_kyc_details_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapKycStatusAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapKycStatusAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapKycStatus, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_kyc_details_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_kyc_details_for_viviswap(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_kyc_details_for_viviswap {
        var cb: (Result<ViviswapKycStatus, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapKycStatus, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func updateKycPartiallyStatusForViviswap<GenericIntoRustString: IntoRustString>(_ is_individual: Optional<Bool>, _ is_pep: Optional<Bool>, _ is_us_citizen: Optional<Bool>, _ is_regulatory_disclosure: Optional<Bool>, _ country_of_residence: Optional<GenericIntoRustString>, _ nationality: Optional<GenericIntoRustString>, _ full_name: Optional<GenericIntoRustString>, _ date_of_birth: Optional<GenericIntoRustString>) async throws -> ViviswapPartiallyKycDetails {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapPartiallyKycDetailsAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$update_kyc_partially_status_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapPartiallyKycDetailsAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapPartiallyKycDetailsAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapPartiallyKycDetails, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$update_kyc_partially_status_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$update_kyc_partially_status_for_viviswap(wrapperPtr, onComplete, ptr, is_individual.intoFfiRepr(), is_pep.intoFfiRepr(), is_us_citizen.intoFfiRepr(), is_regulatory_disclosure.intoFfiRepr(), { if let rustString = optionalStringIntoRustString(country_of_residence) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(nationality) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(full_name) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(date_of_birth) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$CawaenaSdk$update_kyc_partially_status_for_viviswap {
        var cb: (Result<ViviswapPartiallyKycDetails, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapPartiallyKycDetails, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func submitKycPartiallyStatusForViviswap() async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$submit_kyc_partially_status_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$submit_kyc_partially_status_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$submit_kyc_partially_status_for_viviswap(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$submit_kyc_partially_status_for_viviswap {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycIdentityDetails(_ identity_official_document_data: IdentityOfficialDocumentData, _ identity_personal_document_data: IdentityPersonalDocumentData) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_viviswap_kyc_identity_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_viviswap_kyc_identity_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_viviswap_kyc_identity_details(wrapperPtr, onComplete, ptr, identity_official_document_data.intoFfiRepr(), identity_personal_document_data.intoFfiRepr())
        })
    }
    class CbWrapper$CawaenaSdk$set_viviswap_kyc_identity_details {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycResidenceDetails<GenericIntoRustString: IntoRustString>(_ country_code: GenericIntoRustString, _ region: GenericIntoRustString, _ zip_code: GenericIntoRustString, _ city: GenericIntoRustString, _ address_line_1: GenericIntoRustString, _ address_line_2: GenericIntoRustString, _ is_public_entry: Bool, _ public_entry_reference: Optional<GenericIntoRustString>, _ has_no_official_document: Bool, _ official_document: Optional<File>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_viviswap_kyc_residence_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_viviswap_kyc_residence_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_viviswap_kyc_residence_details(wrapperPtr, onComplete, ptr, { let rustString = country_code.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = region.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = zip_code.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = city.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address_line_1.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address_line_2.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), is_public_entry, { if let rustString = optionalStringIntoRustString(public_entry_reference) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), has_no_official_document, __swift_bridge__$Option$File.fromSwiftRepr(official_document))
        })
    }
    class CbWrapper$CawaenaSdk$set_viviswap_kyc_residence_details {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getViviswapKycAmlaOpenQuestions() async throws -> RustVec<KycAmlaQuestion> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_viviswap_kyc_amla_open_questions>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustVec<KycAmlaQuestion>(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustVec<KycAmlaQuestion>, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_viviswap_kyc_amla_open_questions(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_viviswap_kyc_amla_open_questions(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_viviswap_kyc_amla_open_questions {
        var cb: (Result<RustVec<KycAmlaQuestion>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<KycAmlaQuestion>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getViviswapKycOpenDocuments() async throws -> RustVec<KycOpenDocument> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_viviswap_kyc_open_documents>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustVec<KycOpenDocument>(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustVec<KycOpenDocument>, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_viviswap_kyc_open_documents(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_viviswap_kyc_open_documents(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_viviswap_kyc_open_documents {
        var cb: (Result<RustVec<KycOpenDocument>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<KycOpenDocument>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycDocument<GenericIntoRustString: IntoRustString>(_ document_id: GenericIntoRustString, _ expiration_date: GenericIntoRustString, _ document_number: GenericIntoRustString, _ front_image: Optional<File>, _ back_image: Optional<File>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_viviswap_kyc_document>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_viviswap_kyc_document(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_viviswap_kyc_document(wrapperPtr, onComplete, ptr, { let rustString = document_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = expiration_date.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = document_number.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), __swift_bridge__$Option$File.fromSwiftRepr(front_image), __swift_bridge__$Option$File.fromSwiftRepr(back_image))
        })
    }
    class CbWrapper$CawaenaSdk$set_viviswap_kyc_document {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycAmlaAnswer<GenericIntoRustString: IntoRustString>(_ question_id: GenericIntoRustString, _ answers: RustVec<GenericIntoRustString>, _ freetext_answer: Optional<GenericIntoRustString>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_viviswap_kyc_amla_answer>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_viviswap_kyc_amla_answer(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_viviswap_kyc_amla_answer(wrapperPtr, onComplete, ptr, { let rustString = question_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let val = answers; val.isOwned = false; return val.ptr }(), { if let rustString = optionalStringIntoRustString(freetext_answer) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$CawaenaSdk$set_viviswap_kyc_amla_answer {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func verifyPin<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$verify_pin>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$verify_pin(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$verify_pin(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$verify_pin {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func resetPin<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ new_pin: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$reset_pin>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$reset_pin(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$reset_pin(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = new_pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$reset_pin {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setPassword<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ new_password: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_password>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_password(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_password(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = new_password.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$set_password {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func isPasswordSet() async throws -> Bool {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultBoolAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$is_password_set>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultBoolAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultBoolAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Bool, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$is_password_set(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$is_password_set(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$is_password_set {
        var cb: (Result<Bool, Error>) -> ()
    
        public init(cb: @escaping (Result<Bool, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func sendAmount<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ address: GenericIntoRustString, _ amount: Double, _ tag: Optional<RustVec<UInt8>>, _ data: Optional<RustVec<UInt8>>, _ message: Optional<GenericIntoRustString>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$send_amount>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$send_amount(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$send_amount(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), amount, { if let val = tag { val.isOwned = false; return val.ptr } else { return nil } }(), { if let val = data { val.isOwned = false; return val.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(message) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$CawaenaSdk$send_amount {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func updateIbanViviswap<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ address: GenericIntoRustString) async throws -> ViviswapAddressDetail {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapAddressDetailAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$update_iban_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapAddressDetail, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$update_iban_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$update_iban_viviswap(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$update_iban_viviswap {
        var cb: (Result<ViviswapAddressDetail, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapAddressDetail, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getIbanViviswap() async throws -> ViviswapAddressDetail {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapAddressDetailAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_iban_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapAddressDetail, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_iban_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_iban_viviswap(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_iban_viviswap {
        var cb: (Result<ViviswapAddressDetail, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapAddressDetail, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func depositWithViviswap<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> ViviswapDeposit {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapDepositAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$deposit_with_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapDepositAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapDepositAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapDeposit, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$deposit_with_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$deposit_with_viviswap(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$deposit_with_viviswap {
        var cb: (Result<ViviswapDeposit, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapDeposit, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createDetailViviswap<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> ViviswapAddressDetail {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapAddressDetailAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$create_detail_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapAddressDetail, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$create_detail_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$create_detail_viviswap(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$create_detail_viviswap {
        var cb: (Result<ViviswapAddressDetail, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapAddressDetail, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func withdrawWithViviswap<GenericIntoRustString: IntoRustString>(_ amount: Double, _ pin: Optional<GenericIntoRustString>, _ tag: Optional<RustVec<UInt8>>, _ data: Optional<RustVec<UInt8>>, _ message: Optional<GenericIntoRustString>) async throws -> ViviswapWithdrawal {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapWithdrawalAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$withdraw_with_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapWithdrawalAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapWithdrawalAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapWithdrawal, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$withdraw_with_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$withdraw_with_viviswap(wrapperPtr, onComplete, ptr, amount, { if let rustString = optionalStringIntoRustString(pin) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let val = tag { val.isOwned = false; return val.ptr } else { return nil } }(), { if let val = data { val.isOwned = false; return val.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(message) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$CawaenaSdk$withdraw_with_viviswap {
        var cb: (Result<ViviswapWithdrawal, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapWithdrawal, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getSwapDetails<GenericIntoRustString: IntoRustString>(_ order_id: GenericIntoRustString) async throws -> Order {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultOrderAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_swap_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultOrderAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultOrderAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Order, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_swap_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_swap_details(wrapperPtr, onComplete, ptr, { let rustString = order_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$get_swap_details {
        var cb: (Result<Order, Error>) -> ()
    
        public init(cb: @escaping (Result<Order, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getExchangeRate() async throws -> Double {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultF64AndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_exchange_rate>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultF64AndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultF64AndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Double, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_exchange_rate(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_exchange_rate(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_exchange_rate {
        var cb: (Result<Double, Error>) -> ()
    
        public init(cb: @escaping (Result<Double, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createCustomer<GenericIntoRustString: IntoRustString>(_ country_code: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$create_customer>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$create_customer(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$create_customer(wrapperPtr, onComplete, ptr, { let rustString = country_code.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$create_customer {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getCustomer() async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_customer>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_customer(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_customer(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_customer {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func claimOutputs<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$claim_outputs>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$claim_outputs(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$claim_outputs(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$claim_outputs {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func deleteUser<GenericIntoRustString: IntoRustString>(_ pin: Optional<GenericIntoRustString>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$delete_user>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$delete_user(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$delete_user(wrapperPtr, onComplete, ptr, { if let rustString = optionalStringIntoRustString(pin) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$CawaenaSdk$delete_user {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getSwapList(_ start: UInt32, _ limit: UInt32) async throws -> RustVec<Order> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_swap_list>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustVec<Order>(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustVec<Order>, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_swap_list(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_swap_list(wrapperPtr, onComplete, ptr, start, limit)
        })
    }
    class CbWrapper$CawaenaSdk$get_swap_list {
        var cb: (Result<RustVec<Order>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<Order>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getTransactionList(_ start: UInt32, _ limit: UInt32) async throws -> RustVec<TxInfo> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_transaction_list>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustVec<TxInfo>(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustVec<TxInfo>, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_transaction_list(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_transaction_list(wrapperPtr, onComplete, ptr, start, limit)
        })
    }
    class CbWrapper$CawaenaSdk$get_transaction_list {
        var cb: (Result<RustVec<TxInfo>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<TxInfo>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getWalletTransactionList<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ start: UInt, _ limit: UInt) async throws -> RustVec<WalletTxInfo> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_wallet_transaction_list>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustVec<WalletTxInfo>(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustVec<WalletTxInfo>, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_wallet_transaction_list(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_wallet_transaction_list(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), start, limit)
        })
    }
    class CbWrapper$CawaenaSdk$get_wallet_transaction_list {
        var cb: (Result<RustVec<WalletTxInfo>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<WalletTxInfo>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getWalletTransaction<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ transaction_id: GenericIntoRustString) async throws -> WalletTxInfo {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultWalletTxInfoAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_wallet_transaction>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultWalletTxInfoAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultWalletTxInfoAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<WalletTxInfo, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_wallet_transaction(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_wallet_transaction(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = transaction_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$get_wallet_transaction {
        var cb: (Result<WalletTxInfo, Error>) -> ()
    
        public init(cb: @escaping (Result<WalletTxInfo, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getRecoveryShare() async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_recovery_share>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustString(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustString, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_recovery_share(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_recovery_share(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_recovery_share {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setRecoveryShare<GenericIntoRustString: IntoRustString>(_ share: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_recovery_share>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_recovery_share(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_recovery_share(wrapperPtr, onComplete, ptr, { let rustString = share.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$CawaenaSdk$set_recovery_share {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getPreferredCurrency() async throws -> PreferredCurrency {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultPreferredCurrencyAndString) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$get_preferred_currency>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultPreferredCurrencyAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultPreferredCurrencyAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<PreferredCurrency, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$get_preferred_currency(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$get_preferred_currency(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$CawaenaSdk$get_preferred_currency {
        var cb: (Result<PreferredCurrency, Error>) -> ()
    
        public init(cb: @escaping (Result<PreferredCurrency, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setPreferredCurrency(_ currency: PreferredCurrency) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$CawaenaSdk$set_preferred_currency>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal == nil {
                wrapper.cb(.success(()))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<(), Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$CawaenaSdk$set_preferred_currency(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$CawaenaSdk$set_preferred_currency(wrapperPtr, onComplete, ptr, currency.intoFfiRepr())
        })
    }
    class CbWrapper$CawaenaSdk$set_preferred_currency {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getBuildInfo() -> RustString {
        RustString(ptr: __swift_bridge__$CawaenaSdk$get_build_info(ptr))
    }
}
extension CawaenaSdk: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_CawaenaSdk$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_CawaenaSdk$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: CawaenaSdk) {
        __swift_bridge__$Vec_CawaenaSdk$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_CawaenaSdk$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (CawaenaSdk(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<CawaenaSdkRef> {
        let pointer = __swift_bridge__$Vec_CawaenaSdk$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return CawaenaSdkRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<CawaenaSdkRefMut> {
        let pointer = __swift_bridge__$Vec_CawaenaSdk$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return CawaenaSdkRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<CawaenaSdkRef> {
        UnsafePointer<CawaenaSdkRef>(OpaquePointer(__swift_bridge__$Vec_CawaenaSdk$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_CawaenaSdk$len(vecPtr)
    }
}



