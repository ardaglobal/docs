--8<-- "warning.md"
# Core Protocol Primitives

Arda's protocol is built on a set of well-defined primitives that model real-world legal, financial, and operational structures as composable on-chain objects. These primitives define the semantics, permissions, and behaviors of all entities and assets within the Arda ecosystem.

They are deterministic, auditable, and designed to enable secure automation, compliance enforcement, and modular expansion.

---

## Core Entities

### 1. **Entity**
Represents a person, organization, or legal wrapper (e.g. SPV, Trust).
- Fields: `entity_id`, `jurisdiction`, `type`, `kyc_status`, `linked_wallets`
- Behaviors: Create, update, verify, associate with roles or mandates

### 2. **Wallet Group**
Logical grouping of wallets tied to a single Entity.
- Used for role separation (e.g. trader vs controller), compliance, and audit.

### 3. **KYC Tier**
Permissioning schema for identity verification.
- Tiers define transaction limits, asset access, and compliance scope.

---

## Token Primitives

### 4. **MoneyToken**
Fungible tokens used for payments, stablecoins, or fiat representations.
- Example: `USD.ae`, `AED.regulated`, `USDC.wrapped`

### 5. **AssetToken**
Represents a property right (e.g. deed, lease, title) or fractional ownership.
- Supports metadata (valuation, zoning, unit economics)

### 6. **DebtToken**
Represents a claim against future cash flows (e.g. mortgage, bond, credit facility).
- Lifecycle: Drawdown → Accrual → Repayment → Closure

### 7. **YieldToken**
Derived from cash flow streams (e.g. interest strip, rent share).
- Can be sliced and recombined for structured products.

### 8. **TrancheToken**
Represents structured risk exposure within a facility (senior, mezzanine, equity).
- Tied to waterfalls and allocation logic.

### 9. **PermissionedPool**
Smart container for capital constrained by compliance rules.
- Used in syndication, lending, and primary offerings.

---

## Legal & Operational Structures

### 10. **SPV**
Special-purpose vehicle tied to one or more assets and/or investors.
- Legal anchor for enforceability and rights flow.

### 11. **Mandate**
Defines operational intent for a facility, portfolio, or investment.
- Example: "Lend to SMEs in UAE with <65% LTV"

### 12. **CustodyRelationship**
Models asset custodianship, e.g. when a bank or trust holds tokens or off-chain property.

---

## Financial Logic

### 13. **Drawdown**
Represents an authorized capital disbursement in a facility.

### 14. **Repay / Burn**
Tracks repayment events and token deflation.

### 15. **InterestAccrual**
Rules and rates for interest calculation (e.g. daily, compounding, fixed/floating).

### 16. **FeeEngine**
Manages originator, servicer, platform, and regulatory fees.

---

## Treasury & Capital Flow

### 17. **SweepInstruction**
Automated treasury actions for cash flows (e.g. daily sweep to issuer).

### 18. **InterestSplitRule**
Allocation logic for accrued interest.

### 19. **OracleUpdate**
Permissioned price or valuation input.

---

## Syndication & Structuring

### 20. **OrderBook**
Used in primary issuance or lending syndication.

### 21. **Bid**
Investor offer in a facility or issuance.

### 22. **AllocationEngine**
Logic for clearing price, winner selection, and over-subscription.

### 23. **Waterfall**
Defines payment priority for a pool or facility.

---

## Compliance & Permissioning

### 24. **TransferRule**
Enforces allowable transfers between participants or regions.

### 25. **JurisdictionProfile**
Bundle of rules governing behavior within a region.

### 26. **AuditLog**
Immutable record of all compliance-relevant protocol events.

---

## Lifecycle & Execution

### 27. **FacilityStatus**
Tracks lifecycle stages of an issuance or facility.

### 28. **PaymentSchedule**
Enforces disbursement, repayment, or vesting flows.

### 29. **EventHook**
Triggers logic based on time, status, or oracle condition.

---

## Settlement

### 30. **SettlementQueue**
Tracks pending state changes requiring confirmation.

### 31. **FeeSink**
Receives fees and distributes per protocol logic.

### 32. **NettingEngine**
Performs multi-party netting and finalizes token movements.
