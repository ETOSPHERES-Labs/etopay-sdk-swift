import ETOPaySdkBin
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
public struct GasCostEstimation {
    public var max_fee_per_gas: RustString
    public var max_priority_fee_per_gas: RustString
    public var gas_limit: RustString

    public init(max_fee_per_gas: RustString,max_priority_fee_per_gas: RustString,gas_limit: RustString) {
        self.max_fee_per_gas = max_fee_per_gas
        self.max_priority_fee_per_gas = max_priority_fee_per_gas
        self.gas_limit = gas_limit
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$GasCostEstimation {
        { let val = self; return __swift_bridge__$GasCostEstimation(max_fee_per_gas: { let rustString = val.max_fee_per_gas.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), max_priority_fee_per_gas: { let rustString = val.max_priority_fee_per_gas.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), gas_limit: { let rustString = val.gas_limit.intoRustString(); rustString.isOwned = false; return rustString.ptr }()); }()
    }
}
extension __swift_bridge__$GasCostEstimation {
    @inline(__always)
    func intoSwiftRepr() -> GasCostEstimation {
        { let val = self; return GasCostEstimation(max_fee_per_gas: RustString(ptr: val.max_fee_per_gas), max_priority_fee_per_gas: RustString(ptr: val.max_priority_fee_per_gas), gas_limit: RustString(ptr: val.gas_limit)); }()
    }
}
extension __swift_bridge__$Option$GasCostEstimation {
    @inline(__always)
    func intoSwiftRepr() -> Optional<GasCostEstimation> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<GasCostEstimation>) -> __swift_bridge__$Option$GasCostEstimation {
        if let v = val {
            return __swift_bridge__$Option$GasCostEstimation(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$GasCostEstimation(is_some: false, val: __swift_bridge__$GasCostEstimation())
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

public class KycOpenDocument: KycOpenDocumentRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$KycOpenDocument$_free(ptr)
        }
    }
}
public class KycOpenDocumentRefMut: KycOpenDocumentRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class KycOpenDocumentRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension KycOpenDocumentRef {
    public func id() -> RustString {
        RustString(ptr: __swift_bridge__$KycOpenDocument$id(ptr))
    }

    public func is_back_image_required() -> Bool {
        __swift_bridge__$KycOpenDocument$is_back_image_required(ptr)
    }

    public func document_type() -> RustString {
        RustString(ptr: __swift_bridge__$KycOpenDocument$document_type(ptr))
    }

    public func description() -> RustString {
        RustString(ptr: __swift_bridge__$KycOpenDocument$description(ptr))
    }
}
extension KycOpenDocument: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_KycOpenDocument$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_KycOpenDocument$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: KycOpenDocument) {
        __swift_bridge__$Vec_KycOpenDocument$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_KycOpenDocument$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (KycOpenDocument(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<KycOpenDocumentRef> {
        let pointer = __swift_bridge__$Vec_KycOpenDocument$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return KycOpenDocumentRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<KycOpenDocumentRefMut> {
        let pointer = __swift_bridge__$Vec_KycOpenDocument$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return KycOpenDocumentRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<KycOpenDocumentRef> {
        UnsafePointer<KycOpenDocumentRef>(OpaquePointer(__swift_bridge__$Vec_KycOpenDocument$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_KycOpenDocument$len(vecPtr)
    }
}


public class KycAmlaQuestion: KycAmlaQuestionRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$KycAmlaQuestion$_free(ptr)
        }
    }
}
public class KycAmlaQuestionRefMut: KycAmlaQuestionRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class KycAmlaQuestionRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension KycAmlaQuestionRef {
    public func id() -> RustString {
        RustString(ptr: __swift_bridge__$KycAmlaQuestion$id(ptr))
    }

    public func is_free_text() -> Bool {
        __swift_bridge__$KycAmlaQuestion$is_free_text(ptr)
    }

    public func question() -> RustString {
        RustString(ptr: __swift_bridge__$KycAmlaQuestion$question(ptr))
    }

    public func min_answers() -> Int32 {
        __swift_bridge__$KycAmlaQuestion$min_answers(ptr)
    }

    public func max_answers() -> Int32 {
        __swift_bridge__$KycAmlaQuestion$max_answers(ptr)
    }

    public func possible_answers() -> RustVec<RustString> {
        RustVec(ptr: __swift_bridge__$KycAmlaQuestion$possible_answers(ptr))
    }
}
extension KycAmlaQuestion: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_KycAmlaQuestion$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_KycAmlaQuestion$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: KycAmlaQuestion) {
        __swift_bridge__$Vec_KycAmlaQuestion$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_KycAmlaQuestion$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (KycAmlaQuestion(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<KycAmlaQuestionRef> {
        let pointer = __swift_bridge__$Vec_KycAmlaQuestion$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return KycAmlaQuestionRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<KycAmlaQuestionRefMut> {
        let pointer = __swift_bridge__$Vec_KycAmlaQuestion$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return KycAmlaQuestionRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<KycAmlaQuestionRef> {
        UnsafePointer<KycAmlaQuestionRef>(OpaquePointer(__swift_bridge__$Vec_KycAmlaQuestion$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_KycAmlaQuestion$len(vecPtr)
    }
}


public class Order: OrderRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$Order$_free(ptr)
        }
    }
}
public class OrderRefMut: OrderRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class OrderRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension OrderRef {
    public func id() -> RustString {
        RustString(ptr: __swift_bridge__$Order$id(ptr))
    }

    public func is_payed_out() -> Bool {
        __swift_bridge__$Order$is_payed_out(ptr)
    }

    public func is_approved() -> Bool {
        __swift_bridge__$Order$is_approved(ptr)
    }

    public func is_canceled() -> Bool {
        __swift_bridge__$Order$is_canceled(ptr)
    }

    public func fees_amount_eur() -> Float {
        __swift_bridge__$Order$fees_amount_eur(ptr)
    }

    public func crypto_fees() -> Float {
        __swift_bridge__$Order$crypto_fees(ptr)
    }

    public func contract_id() -> RustString {
        RustString(ptr: __swift_bridge__$Order$contract_id(ptr))
    }

    public func incoming_payment_method_id() -> RustString {
        RustString(ptr: __swift_bridge__$Order$incoming_payment_method_id(ptr))
    }

    public func incoming_payment_method_currency() -> RustString {
        RustString(ptr: __swift_bridge__$Order$incoming_payment_method_currency(ptr))
    }

    public func incoming_amount() -> Float {
        __swift_bridge__$Order$incoming_amount(ptr)
    }

    public func incoming_course() -> Float {
        __swift_bridge__$Order$incoming_course(ptr)
    }

    public func outgoing_payment_method_id() -> RustString {
        RustString(ptr: __swift_bridge__$Order$outgoing_payment_method_id(ptr))
    }

    public func outgoing_payment_method_currency() -> RustString {
        RustString(ptr: __swift_bridge__$Order$outgoing_payment_method_currency(ptr))
    }

    public func outgoing_amount() -> Float {
        __swift_bridge__$Order$outgoing_amount(ptr)
    }

    public func outgoing_course() -> Float {
        __swift_bridge__$Order$outgoing_course(ptr)
    }

    public func refund_amount() -> Optional<Float> {
        __swift_bridge__$Order$refund_amount(ptr).intoSwiftRepr()
    }

    public func refund_course() -> Optional<Float> {
        __swift_bridge__$Order$refund_course(ptr).intoSwiftRepr()
    }

    public func refund_payment_method_id() -> RustString {
        RustString(ptr: __swift_bridge__$Order$refund_payment_method_id(ptr))
    }

    public func status() -> Int32 {
        __swift_bridge__$Order$status(ptr)
    }

    public func creation_date() -> RustString {
        RustString(ptr: __swift_bridge__$Order$creation_date(ptr))
    }

    public func incoming_payment_detail() -> RustString {
        RustString(ptr: __swift_bridge__$Order$incoming_payment_detail(ptr))
    }

    public func outgoing_payment_detail() -> RustString {
        RustString(ptr: __swift_bridge__$Order$outgoing_payment_detail(ptr))
    }

    public func refund_payment_detail() -> RustString {
        RustString(ptr: __swift_bridge__$Order$refund_payment_detail(ptr))
    }
}
extension Order: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Order$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Order$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Order) {
        __swift_bridge__$Vec_Order$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_Order$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (Order(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<OrderRef> {
        let pointer = __swift_bridge__$Vec_Order$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return OrderRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<OrderRefMut> {
        let pointer = __swift_bridge__$Vec_Order$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return OrderRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<OrderRef> {
        UnsafePointer<OrderRef>(OpaquePointer(__swift_bridge__$Vec_Order$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Order$len(vecPtr)
    }
}


public class TxInfo: TxInfoRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$TxInfo$_free(ptr)
        }
    }
}
public class TxInfoRefMut: TxInfoRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class TxInfoRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension TxInfoRef {
    public func date() -> RustString {
        RustString(ptr: __swift_bridge__$TxInfo$date(ptr))
    }

    public func sender() -> RustString {
        RustString(ptr: __swift_bridge__$TxInfo$sender(ptr))
    }

    public func receiver() -> RustString {
        RustString(ptr: __swift_bridge__$TxInfo$receiver(ptr))
    }

    public func reference_id() -> RustString {
        RustString(ptr: __swift_bridge__$TxInfo$reference_id(ptr))
    }

    public func application_metadata() -> RustString {
        RustString(ptr: __swift_bridge__$TxInfo$application_metadata(ptr))
    }

    public func amount() -> Double {
        __swift_bridge__$TxInfo$amount(ptr)
    }

    public func currency() -> RustString {
        RustString(ptr: __swift_bridge__$TxInfo$currency(ptr))
    }

    public func status() -> TxStatus {
        __swift_bridge__$TxInfo$status(ptr).intoSwiftRepr()
    }

    public func transaction_hash() -> RustString {
        RustString(ptr: __swift_bridge__$TxInfo$transaction_hash(ptr))
    }

    public func course() -> Double {
        __swift_bridge__$TxInfo$course(ptr)
    }

    public func invalid_reasons() -> RustVec<RustString> {
        RustVec(ptr: __swift_bridge__$TxInfo$invalid_reasons(ptr))
    }
}
extension TxInfo: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_TxInfo$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_TxInfo$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: TxInfo) {
        __swift_bridge__$Vec_TxInfo$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_TxInfo$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (TxInfo(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<TxInfoRef> {
        let pointer = __swift_bridge__$Vec_TxInfo$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return TxInfoRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<TxInfoRefMut> {
        let pointer = __swift_bridge__$Vec_TxInfo$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return TxInfoRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<TxInfoRef> {
        UnsafePointer<TxInfoRef>(OpaquePointer(__swift_bridge__$Vec_TxInfo$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_TxInfo$len(vecPtr)
    }
}

public enum WalletTxStatus {
    case Pending
    case Confirmed
    case Conflicting
}
extension WalletTxStatus {
    func intoFfiRepr() -> __swift_bridge__$WalletTxStatus {
        switch self {
            case WalletTxStatus.Pending:
                return __swift_bridge__$WalletTxStatus(tag: __swift_bridge__$WalletTxStatus$Pending)
            case WalletTxStatus.Confirmed:
                return __swift_bridge__$WalletTxStatus(tag: __swift_bridge__$WalletTxStatus$Confirmed)
            case WalletTxStatus.Conflicting:
                return __swift_bridge__$WalletTxStatus(tag: __swift_bridge__$WalletTxStatus$Conflicting)
        }
    }
}
extension __swift_bridge__$WalletTxStatus {
    func intoSwiftRepr() -> WalletTxStatus {
        switch self.tag {
            case __swift_bridge__$WalletTxStatus$Pending:
                return WalletTxStatus.Pending
            case __swift_bridge__$WalletTxStatus$Confirmed:
                return WalletTxStatus.Confirmed
            case __swift_bridge__$WalletTxStatus$Conflicting:
                return WalletTxStatus.Conflicting
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$WalletTxStatus {
    @inline(__always)
    func intoSwiftRepr() -> Optional<WalletTxStatus> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<WalletTxStatus>) -> __swift_bridge__$Option$WalletTxStatus {
        if let v = val {
            return __swift_bridge__$Option$WalletTxStatus(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$WalletTxStatus(is_some: false, val: __swift_bridge__$WalletTxStatus())
        }
    }
}
extension WalletTxStatus: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_WalletTxStatus$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_WalletTxStatus$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_WalletTxStatus$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_WalletTxStatus$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_WalletTxStatus$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_WalletTxStatus$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_WalletTxStatus$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_WalletTxStatus$len(vecPtr)
    }
}

public class WalletTxInfo: WalletTxInfoRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$WalletTxInfo$_free(ptr)
        }
    }
}
public class WalletTxInfoRefMut: WalletTxInfoRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class WalletTxInfoRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension WalletTxInfoRef {
    public func date() -> RustString {
        RustString(ptr: __swift_bridge__$WalletTxInfo$date(ptr))
    }

    public func block_number() -> Optional<UInt64> {
        __swift_bridge__$WalletTxInfo$block_number(ptr).intoSwiftRepr()
    }

    public func block_hash() -> Optional<RustString> {
        { let val = __swift_bridge__$WalletTxInfo$block_hash(ptr); if val != nil { return RustString(ptr: val!) } else { return nil } }()
    }

    public func transaction_hash() -> RustString {
        RustString(ptr: __swift_bridge__$WalletTxInfo$transaction_hash(ptr))
    }

    public func sender() -> RustString {
        RustString(ptr: __swift_bridge__$WalletTxInfo$sender(ptr))
    }

    public func receiver() -> RustString {
        RustString(ptr: __swift_bridge__$WalletTxInfo$receiver(ptr))
    }

    public func amount() -> Double {
        __swift_bridge__$WalletTxInfo$amount(ptr)
    }

    public func network_key() -> RustString {
        RustString(ptr: __swift_bridge__$WalletTxInfo$network_key(ptr))
    }

    public func status() -> WalletTxStatus {
        __swift_bridge__$WalletTxInfo$status(ptr).intoSwiftRepr()
    }

    public func explorer_url() -> RustString {
        RustString(ptr: __swift_bridge__$WalletTxInfo$explorer_url(ptr))
    }
}
extension WalletTxInfo: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_WalletTxInfo$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_WalletTxInfo$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: WalletTxInfo) {
        __swift_bridge__$Vec_WalletTxInfo$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_WalletTxInfo$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (WalletTxInfo(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<WalletTxInfoRef> {
        let pointer = __swift_bridge__$Vec_WalletTxInfo$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return WalletTxInfoRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<WalletTxInfoRefMut> {
        let pointer = __swift_bridge__$Vec_WalletTxInfo$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return WalletTxInfoRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<WalletTxInfoRef> {
        UnsafePointer<WalletTxInfoRef>(OpaquePointer(__swift_bridge__$Vec_WalletTxInfo$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_WalletTxInfo$len(vecPtr)
    }
}

public enum Protocol {
    case Evm
    case EvmERC20
    case IotaRebased
}
extension Protocol {
    func intoFfiRepr() -> __swift_bridge__$Protocol {
        switch self {
            case Protocol.Evm:
                return __swift_bridge__$Protocol(tag: __swift_bridge__$Protocol$Evm)
            case Protocol.EvmERC20:
                return __swift_bridge__$Protocol(tag: __swift_bridge__$Protocol$EvmERC20)
            case Protocol.IotaRebased:
                return __swift_bridge__$Protocol(tag: __swift_bridge__$Protocol$IotaRebased)
        }
    }
}
extension __swift_bridge__$Protocol {
    func intoSwiftRepr() -> Protocol {
        switch self.tag {
            case __swift_bridge__$Protocol$Evm:
                return Protocol.Evm
            case __swift_bridge__$Protocol$EvmERC20:
                return Protocol.EvmERC20
            case __swift_bridge__$Protocol$IotaRebased:
                return Protocol.IotaRebased
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$Protocol {
    @inline(__always)
    func intoSwiftRepr() -> Optional<Protocol> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<Protocol>) -> __swift_bridge__$Option$Protocol {
        if let v = val {
            return __swift_bridge__$Option$Protocol(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$Protocol(is_some: false, val: __swift_bridge__$Protocol())
        }
    }
}
extension Protocol: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Protocol$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Protocol$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_Protocol$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_Protocol$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_Protocol$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_Protocol$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_Protocol$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Protocol$len(vecPtr)
    }
}

public class Network: NetworkRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$Network$_free(ptr)
        }
    }
}
public class NetworkRefMut: NetworkRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class NetworkRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension NetworkRef {
    public func key() -> RustString {
        RustString(ptr: __swift_bridge__$Network$key(ptr))
    }

    public func is_testnet() -> Bool {
        __swift_bridge__$Network$is_testnet(ptr)
    }

    public func display_name() -> RustString {
        RustString(ptr: __swift_bridge__$Network$display_name(ptr))
    }

    public func display_symbol() -> RustString {
        RustString(ptr: __swift_bridge__$Network$display_symbol(ptr))
    }

    public func coin_type() -> UInt32 {
        __swift_bridge__$Network$coin_type(ptr)
    }

    public func node_urls() -> RustVec<RustString> {
        RustVec(ptr: __swift_bridge__$Network$node_urls(ptr))
    }

    public func decimals() -> UInt32 {
        __swift_bridge__$Network$decimals(ptr)
    }

    public func can_do_purchases() -> Bool {
        __swift_bridge__$Network$can_do_purchases(ptr)
    }

    public func block_explorer_url() -> RustString {
        RustString(ptr: __swift_bridge__$Network$block_explorer_url(ptr))
    }

    public func protocol_type() -> Protocol {
        __swift_bridge__$Network$protocol_type(ptr).intoSwiftRepr()
    }

    public func protocol_chain_id() -> Optional<UInt64> {
        __swift_bridge__$Network$protocol_chain_id(ptr).intoSwiftRepr()
    }

    public func protocol_contract_address() -> Optional<RustString> {
        { let val = __swift_bridge__$Network$protocol_contract_address(ptr); if val != nil { return RustString(ptr: val!) } else { return nil } }()
    }
}
extension Network: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Network$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Network$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Network) {
        __swift_bridge__$Vec_Network$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_Network$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (Network(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<NetworkRef> {
        let pointer = __swift_bridge__$Vec_Network$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return NetworkRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<NetworkRefMut> {
        let pointer = __swift_bridge__$Vec_Network$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return NetworkRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<NetworkRef> {
        UnsafePointer<NetworkRef>(OpaquePointer(__swift_bridge__$Vec_Network$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Network$len(vecPtr)
    }
}


public class ETOPaySdk: ETOPaySdkRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$ETOPaySdk$_free(ptr)
        }
    }
}
extension ETOPaySdk {
    public convenience init() {
        self.init(ptr: __swift_bridge__$ETOPaySdk$new())
    }
}
public class ETOPaySdkRefMut: ETOPaySdkRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class ETOPaySdkRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension ETOPaySdkRef {
    public func setConfig<GenericIntoRustString: IntoRustString>(_ config: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_config>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_config(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_config(wrapperPtr, onComplete, ptr, { let rustString = config.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$set_config {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getNetworks() async throws -> RustVec<Network> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_networks>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(RustVec<Network>(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<RustVec<Network>, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_networks(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_networks(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_networks {
        var cb: (Result<RustVec<Network>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<Network>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setNetwork<GenericIntoRustString: IntoRustString>(_ network_key: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_network>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_network(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_network(wrapperPtr, onComplete, ptr, { let rustString = network_key.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$set_network {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func destroy() async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$destroy>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$destroy(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$destroy(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$destroy {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createNewUser<GenericIntoRustString: IntoRustString>(_ username: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$create_new_user>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$create_new_user(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$create_new_user(wrapperPtr, onComplete, ptr, { let rustString = username.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$create_new_user {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func initUser<GenericIntoRustString: IntoRustString>(_ username: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$init_user>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$init_user(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$init_user(wrapperPtr, onComplete, ptr, { let rustString = username.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$init_user {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func refreshAccessToken<GenericIntoRustString: IntoRustString>(_ access_token: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$refresh_access_token>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$refresh_access_token(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$refresh_access_token(wrapperPtr, onComplete, ptr, { let rustString = access_token.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$refresh_access_token {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func isKycVerified<GenericIntoRustString: IntoRustString>(_ username: GenericIntoRustString) async throws -> Bool {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultBoolAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$is_kyc_verified>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultBoolAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultBoolAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Bool, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$is_kyc_verified(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$is_kyc_verified(wrapperPtr, onComplete, ptr, { let rustString = username.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$is_kyc_verified {
        var cb: (Result<Bool, Error>) -> ()
    
        public init(cb: @escaping (Result<Bool, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func verifyMnemonic<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ mnemonic: GenericIntoRustString) async throws -> Bool {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultBoolAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$verify_mnemonic>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultBoolAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultBoolAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Bool, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$verify_mnemonic(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$verify_mnemonic(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = mnemonic.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$verify_mnemonic {
        var cb: (Result<Bool, Error>) -> ()
    
        public init(cb: @escaping (Result<Bool, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createNewWallet<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$create_new_wallet>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$create_new_wallet(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$create_new_wallet(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$create_new_wallet {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createWalletFromMnemonic<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ mnemonic: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$create_wallet_from_mnemonic>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$create_wallet_from_mnemonic(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$create_wallet_from_mnemonic(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = mnemonic.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$create_wallet_from_mnemonic {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func restoreWalletFromBackup<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ backup: RustVec<UInt8>, _ backup_password: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$restore_wallet_from_backup>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$restore_wallet_from_backup(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$restore_wallet_from_backup(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let val = backup; val.isOwned = false; return val.ptr }(), { let rustString = backup_password.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$restore_wallet_from_backup {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createWalletBackup<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ password: GenericIntoRustString) async throws -> RustVec<UInt8> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$create_wallet_backup>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$create_wallet_backup(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$create_wallet_backup(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = password.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$create_wallet_backup {
        var cb: (Result<RustVec<UInt8>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<UInt8>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func deleteWallet<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$delete_wallet>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$delete_wallet(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$delete_wallet(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$delete_wallet {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func generateNewAddress<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$generate_new_address>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$generate_new_address(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$generate_new_address(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$generate_new_address {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getWalletBalance<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> Double {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultF64AndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_balance>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultF64AndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultF64AndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Double, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_balance(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_balance(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$get_balance {
        var cb: (Result<Double, Error>) -> ()
    
        public init(cb: @escaping (Result<Double, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func initKycVerificationForPostident() async throws -> NewCaseIdResponse {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultNewCaseIdResponseAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$init_kyc_verification_for_postident>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultNewCaseIdResponseAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultNewCaseIdResponseAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<NewCaseIdResponse, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$init_kyc_verification_for_postident(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$init_kyc_verification_for_postident(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$init_kyc_verification_for_postident {
        var cb: (Result<NewCaseIdResponse, Error>) -> ()
    
        public init(cb: @escaping (Result<NewCaseIdResponse, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getKycDetailsForPostident() async throws -> CaseDetailsResponse {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultCaseDetailsResponseAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_kyc_details_for_postident>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultCaseDetailsResponseAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultCaseDetailsResponseAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<CaseDetailsResponse, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_kyc_details_for_postident(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_kyc_details_for_postident(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_kyc_details_for_postident {
        var cb: (Result<CaseDetailsResponse, Error>) -> ()
    
        public init(cb: @escaping (Result<CaseDetailsResponse, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func updateKycDetailsForPostident<GenericIntoRustString: IntoRustString>(_ case_id: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$update_kyc_details_for_postident>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$update_kyc_details_for_postident(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$update_kyc_details_for_postident(wrapperPtr, onComplete, ptr, { let rustString = case_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$update_kyc_details_for_postident {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createPurchaseRequest<GenericIntoRustString: IntoRustString>(_ receiver: GenericIntoRustString, _ amount: Double, _ product_hash: GenericIntoRustString, _ app_data: GenericIntoRustString, _ purchase_type: GenericIntoRustString) async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$create_purchase_request>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$create_purchase_request(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$create_purchase_request(wrapperPtr, onComplete, ptr, { let rustString = receiver.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), amount, { let rustString = product_hash.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = app_data.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = purchase_type.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$create_purchase_request {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getPurchaseDetails<GenericIntoRustString: IntoRustString>(_ purchase_id: GenericIntoRustString) async throws -> PurchaseDetails {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultPurchaseDetailsAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_purchase_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultPurchaseDetailsAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultPurchaseDetailsAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<PurchaseDetails, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_purchase_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_purchase_details(wrapperPtr, onComplete, ptr, { let rustString = purchase_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$get_purchase_details {
        var cb: (Result<PurchaseDetails, Error>) -> ()
    
        public init(cb: @escaping (Result<PurchaseDetails, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func confirmPurchaseRequest<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ purchase_id: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$confirm_purchase_request>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$confirm_purchase_request(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$confirm_purchase_request(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = purchase_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$confirm_purchase_request {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func startKycVerificationForViviswap<GenericIntoRustString: IntoRustString>(_ mail: GenericIntoRustString, _ terms_accepted: Bool) async throws -> NewViviswapUser {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultNewViviswapUserAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$start_kyc_verification_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultNewViviswapUserAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultNewViviswapUserAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<NewViviswapUser, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$start_kyc_verification_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$start_kyc_verification_for_viviswap(wrapperPtr, onComplete, ptr, { let rustString = mail.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), terms_accepted)
        })
    }
    class CbWrapper$ETOPaySdk$start_kyc_verification_for_viviswap {
        var cb: (Result<NewViviswapUser, Error>) -> ()
    
        public init(cb: @escaping (Result<NewViviswapUser, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getKycDetailsForViviswap() async throws -> ViviswapKycStatus {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapKycStatusAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_kyc_details_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapKycStatusAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapKycStatusAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapKycStatus, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_kyc_details_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_kyc_details_for_viviswap(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_kyc_details_for_viviswap {
        var cb: (Result<ViviswapKycStatus, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapKycStatus, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func updateKycPartiallyStatusForViviswap<GenericIntoRustString: IntoRustString>(_ is_individual: Optional<Bool>, _ is_pep: Optional<Bool>, _ is_us_citizen: Optional<Bool>, _ is_regulatory_disclosure: Optional<Bool>, _ country_of_residence: Optional<GenericIntoRustString>, _ nationality: Optional<GenericIntoRustString>, _ full_name: Optional<GenericIntoRustString>, _ date_of_birth: Optional<GenericIntoRustString>) async throws -> ViviswapPartiallyKycDetails {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapPartiallyKycDetailsAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$update_kyc_partially_status_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapPartiallyKycDetailsAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapPartiallyKycDetailsAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapPartiallyKycDetails, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$update_kyc_partially_status_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$update_kyc_partially_status_for_viviswap(wrapperPtr, onComplete, ptr, is_individual.intoFfiRepr(), is_pep.intoFfiRepr(), is_us_citizen.intoFfiRepr(), is_regulatory_disclosure.intoFfiRepr(), { if let rustString = optionalStringIntoRustString(country_of_residence) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(nationality) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(full_name) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let rustString = optionalStringIntoRustString(date_of_birth) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$ETOPaySdk$update_kyc_partially_status_for_viviswap {
        var cb: (Result<ViviswapPartiallyKycDetails, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapPartiallyKycDetails, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func submitKycPartiallyStatusForViviswap() async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$submit_kyc_partially_status_for_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$submit_kyc_partially_status_for_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$submit_kyc_partially_status_for_viviswap(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$submit_kyc_partially_status_for_viviswap {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycIdentityDetails(_ identity_official_document_data: IdentityOfficialDocumentData, _ identity_personal_document_data: IdentityPersonalDocumentData) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_viviswap_kyc_identity_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_viviswap_kyc_identity_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_viviswap_kyc_identity_details(wrapperPtr, onComplete, ptr, identity_official_document_data.intoFfiRepr(), identity_personal_document_data.intoFfiRepr())
        })
    }
    class CbWrapper$ETOPaySdk$set_viviswap_kyc_identity_details {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycResidenceDetails<GenericIntoRustString: IntoRustString>(_ country_code: GenericIntoRustString, _ region: GenericIntoRustString, _ zip_code: GenericIntoRustString, _ city: GenericIntoRustString, _ address_line_1: GenericIntoRustString, _ address_line_2: GenericIntoRustString, _ is_public_entry: Bool, _ public_entry_reference: Optional<GenericIntoRustString>, _ has_no_official_document: Bool, _ official_document: Optional<File>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_viviswap_kyc_residence_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_viviswap_kyc_residence_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_viviswap_kyc_residence_details(wrapperPtr, onComplete, ptr, { let rustString = country_code.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = region.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = zip_code.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = city.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address_line_1.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address_line_2.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), is_public_entry, { if let rustString = optionalStringIntoRustString(public_entry_reference) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), has_no_official_document, __swift_bridge__$Option$File.fromSwiftRepr(official_document))
        })
    }
    class CbWrapper$ETOPaySdk$set_viviswap_kyc_residence_details {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getViviswapKycAmlaOpenQuestions() async throws -> RustVec<KycAmlaQuestion> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_viviswap_kyc_amla_open_questions>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$get_viviswap_kyc_amla_open_questions(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_viviswap_kyc_amla_open_questions(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_viviswap_kyc_amla_open_questions {
        var cb: (Result<RustVec<KycAmlaQuestion>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<KycAmlaQuestion>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getViviswapKycOpenDocuments() async throws -> RustVec<KycOpenDocument> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_viviswap_kyc_open_documents>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$get_viviswap_kyc_open_documents(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_viviswap_kyc_open_documents(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_viviswap_kyc_open_documents {
        var cb: (Result<RustVec<KycOpenDocument>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<KycOpenDocument>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycDocument<GenericIntoRustString: IntoRustString>(_ document_id: GenericIntoRustString, _ expiration_date: GenericIntoRustString, _ document_number: GenericIntoRustString, _ front_image: Optional<File>, _ back_image: Optional<File>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_viviswap_kyc_document>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_viviswap_kyc_document(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_viviswap_kyc_document(wrapperPtr, onComplete, ptr, { let rustString = document_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = expiration_date.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = document_number.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), __swift_bridge__$Option$File.fromSwiftRepr(front_image), __swift_bridge__$Option$File.fromSwiftRepr(back_image))
        })
    }
    class CbWrapper$ETOPaySdk$set_viviswap_kyc_document {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setViviswapKycAmlaAnswer<GenericIntoRustString: IntoRustString>(_ question_id: GenericIntoRustString, _ answers: RustVec<GenericIntoRustString>, _ freetext_answer: Optional<GenericIntoRustString>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_viviswap_kyc_amla_answer>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_viviswap_kyc_amla_answer(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_viviswap_kyc_amla_answer(wrapperPtr, onComplete, ptr, { let rustString = question_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let val = answers; val.isOwned = false; return val.ptr }(), { if let rustString = optionalStringIntoRustString(freetext_answer) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$ETOPaySdk$set_viviswap_kyc_amla_answer {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func verifyPin<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$verify_pin>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$verify_pin(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$verify_pin(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$verify_pin {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func resetPin<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ new_pin: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$reset_pin>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$reset_pin(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$reset_pin(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = new_pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$reset_pin {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setWalletPassword<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ new_password: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_wallet_password>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_wallet_password(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_wallet_password(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = new_password.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$set_wallet_password {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func isWalletPasswordSet() async throws -> Bool {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultBoolAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$is_wallet_password_set>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultBoolAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultBoolAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Bool, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$is_wallet_password_set(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$is_wallet_password_set(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$is_wallet_password_set {
        var cb: (Result<Bool, Error>) -> ()
    
        public init(cb: @escaping (Result<Bool, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func sendAmount<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ address: GenericIntoRustString, _ amount: Double, _ data: Optional<RustVec<UInt8>>) async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$send_amount>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$send_amount(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$send_amount(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), amount, { if let val = data { val.isOwned = false; return val.ptr } else { return nil } }())
        })
    }
    class CbWrapper$ETOPaySdk$send_amount {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func estimateGas<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ address: GenericIntoRustString, _ amount: Double, _ data: Optional<RustVec<UInt8>>) async throws -> GasCostEstimation {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultGasCostEstimationAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$estimate_gas>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultGasCostEstimationAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultGasCostEstimationAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<GasCostEstimation, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$estimate_gas(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$estimate_gas(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), amount, { if let val = data { val.isOwned = false; return val.ptr } else { return nil } }())
        })
    }
    class CbWrapper$ETOPaySdk$estimate_gas {
        var cb: (Result<GasCostEstimation, Error>) -> ()
    
        public init(cb: @escaping (Result<GasCostEstimation, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func updateIbanViviswap<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ address: GenericIntoRustString) async throws -> ViviswapAddressDetail {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapAddressDetailAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$update_iban_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapAddressDetail, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$update_iban_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$update_iban_viviswap(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = address.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$update_iban_viviswap {
        var cb: (Result<ViviswapAddressDetail, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapAddressDetail, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getIbanViviswap() async throws -> ViviswapAddressDetail {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapAddressDetailAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_iban_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapAddressDetail, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_iban_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_iban_viviswap(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_iban_viviswap {
        var cb: (Result<ViviswapAddressDetail, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapAddressDetail, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func depositWithViviswap<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> ViviswapDeposit {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapDepositAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$deposit_with_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapDepositAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapDepositAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapDeposit, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$deposit_with_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$deposit_with_viviswap(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$deposit_with_viviswap {
        var cb: (Result<ViviswapDeposit, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapDeposit, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func createDetailViviswap<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString) async throws -> ViviswapAddressDetail {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapAddressDetailAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$create_detail_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapAddressDetailAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapAddressDetail, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$create_detail_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$create_detail_viviswap(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$create_detail_viviswap {
        var cb: (Result<ViviswapAddressDetail, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapAddressDetail, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func withdrawWithViviswap<GenericIntoRustString: IntoRustString>(_ amount: Double, _ pin: Optional<GenericIntoRustString>, _ data: Optional<RustVec<UInt8>>) async throws -> ViviswapWithdrawal {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultViviswapWithdrawalAndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$withdraw_with_viviswap>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultViviswapWithdrawalAndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok.intoSwiftRepr())) case __swift_bridge__$ResultViviswapWithdrawalAndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ViviswapWithdrawal, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$withdraw_with_viviswap(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$withdraw_with_viviswap(wrapperPtr, onComplete, ptr, amount, { if let rustString = optionalStringIntoRustString(pin) { rustString.isOwned = false; return rustString.ptr } else { return nil } }(), { if let val = data { val.isOwned = false; return val.ptr } else { return nil } }())
        })
    }
    class CbWrapper$ETOPaySdk$withdraw_with_viviswap {
        var cb: (Result<ViviswapWithdrawal, Error>) -> ()
    
        public init(cb: @escaping (Result<ViviswapWithdrawal, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getSwapDetails<GenericIntoRustString: IntoRustString>(_ order_id: GenericIntoRustString) async throws -> Order {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_swap_details>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(Order(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Order, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_swap_details(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_swap_details(wrapperPtr, onComplete, ptr, { let rustString = order_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$get_swap_details {
        var cb: (Result<Order, Error>) -> ()
    
        public init(cb: @escaping (Result<Order, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getExchangeRate() async throws -> Double {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __swift_bridge__$ResultF64AndString) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_exchange_rate>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            switch rustFnRetVal.tag { case __swift_bridge__$ResultF64AndString$ResultOk: wrapper.cb(.success(rustFnRetVal.payload.ok)) case __swift_bridge__$ResultF64AndString$ResultErr: wrapper.cb(.failure(RustString(ptr: rustFnRetVal.payload.err))) default: fatalError() }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<Double, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_exchange_rate(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_exchange_rate(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_exchange_rate {
        var cb: (Result<Double, Error>) -> ()
    
        public init(cb: @escaping (Result<Double, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func deleteUser<GenericIntoRustString: IntoRustString>(_ pin: Optional<GenericIntoRustString>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$delete_user>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$delete_user(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$delete_user(wrapperPtr, onComplete, ptr, { if let rustString = optionalStringIntoRustString(pin) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$ETOPaySdk$delete_user {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getSwapList(_ start: UInt32, _ limit: UInt32) async throws -> RustVec<Order> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_swap_list>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$get_swap_list(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_swap_list(wrapperPtr, onComplete, ptr, start, limit)
        })
    }
    class CbWrapper$ETOPaySdk$get_swap_list {
        var cb: (Result<RustVec<Order>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<Order>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getTransactionList(_ start: UInt32, _ limit: UInt32) async throws -> RustVec<TxInfo> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_transaction_list>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$get_transaction_list(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_transaction_list(wrapperPtr, onComplete, ptr, start, limit)
        })
    }
    class CbWrapper$ETOPaySdk$get_transaction_list {
        var cb: (Result<RustVec<TxInfo>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<TxInfo>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getWalletTransactionList<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ start: UInt, _ limit: UInt) async throws -> RustVec<WalletTxInfo> {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_wallet_transaction_list>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$get_wallet_transaction_list(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_wallet_transaction_list(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), start, limit)
        })
    }
    class CbWrapper$ETOPaySdk$get_wallet_transaction_list {
        var cb: (Result<RustVec<WalletTxInfo>, Error>) -> ()
    
        public init(cb: @escaping (Result<RustVec<WalletTxInfo>, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getWalletTransaction<GenericIntoRustString: IntoRustString>(_ pin: GenericIntoRustString, _ transaction_id: GenericIntoRustString) async throws -> WalletTxInfo {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_wallet_transaction>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
            if rustFnRetVal.is_ok {
                wrapper.cb(.success(WalletTxInfo(ptr: rustFnRetVal.ok_or_err!)))
            } else {
                wrapper.cb(.failure(RustString(ptr: rustFnRetVal.ok_or_err!)))
            }
        }

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<WalletTxInfo, Error>) in
            let callback = { rustFnRetVal in
                continuation.resume(with: rustFnRetVal)
            }

            let wrapper = CbWrapper$ETOPaySdk$get_wallet_transaction(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_wallet_transaction(wrapperPtr, onComplete, ptr, { let rustString = pin.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = transaction_id.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$get_wallet_transaction {
        var cb: (Result<WalletTxInfo, Error>) -> ()
    
        public init(cb: @escaping (Result<WalletTxInfo, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getRecoveryShare() async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_recovery_share>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$get_recovery_share(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_recovery_share(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_recovery_share {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setRecoveryShare<GenericIntoRustString: IntoRustString>(_ share: GenericIntoRustString) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_recovery_share>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_recovery_share(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_recovery_share(wrapperPtr, onComplete, ptr, { let rustString = share.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
        })
    }
    class CbWrapper$ETOPaySdk$set_recovery_share {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getPreferredNetwork() async throws -> RustString {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: __private__ResultPtrAndPtr) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$get_preferred_network>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$get_preferred_network(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$get_preferred_network(wrapperPtr, onComplete, ptr)
        })
    }
    class CbWrapper$ETOPaySdk$get_preferred_network {
        var cb: (Result<RustString, Error>) -> ()
    
        public init(cb: @escaping (Result<RustString, Error>) -> ()) {
            self.cb = cb
        }
    }

    public func setPreferredNetwork<GenericIntoRustString: IntoRustString>(_ network_key: Optional<GenericIntoRustString>) async throws -> () {
        func onComplete(cbWrapperPtr: UnsafeMutableRawPointer?, rustFnRetVal: UnsafeMutableRawPointer?) {
            let wrapper = Unmanaged<CbWrapper$ETOPaySdk$set_preferred_network>.fromOpaque(cbWrapperPtr!).takeRetainedValue()
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

            let wrapper = CbWrapper$ETOPaySdk$set_preferred_network(cb: callback)
            let wrapperPtr = Unmanaged.passRetained(wrapper).toOpaque()

            __swift_bridge__$ETOPaySdk$set_preferred_network(wrapperPtr, onComplete, ptr, { if let rustString = optionalStringIntoRustString(network_key) { rustString.isOwned = false; return rustString.ptr } else { return nil } }())
        })
    }
    class CbWrapper$ETOPaySdk$set_preferred_network {
        var cb: (Result<(), Error>) -> ()
    
        public init(cb: @escaping (Result<(), Error>) -> ()) {
            self.cb = cb
        }
    }

    public func getBuildInfo() -> RustString {
        RustString(ptr: __swift_bridge__$ETOPaySdk$get_build_info(ptr))
    }
}
extension ETOPaySdk: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_ETOPaySdk$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_ETOPaySdk$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: ETOPaySdk) {
        __swift_bridge__$Vec_ETOPaySdk$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_ETOPaySdk$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (ETOPaySdk(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<ETOPaySdkRef> {
        let pointer = __swift_bridge__$Vec_ETOPaySdk$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return ETOPaySdkRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<ETOPaySdkRefMut> {
        let pointer = __swift_bridge__$Vec_ETOPaySdk$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return ETOPaySdkRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<ETOPaySdkRef> {
        UnsafePointer<ETOPaySdkRef>(OpaquePointer(__swift_bridge__$Vec_ETOPaySdk$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_ETOPaySdk$len(vecPtr)
    }
}



