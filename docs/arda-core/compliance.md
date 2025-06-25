--8<-- "warning.md"

# Arda Compliance Engine

The Arda Compliance Engine is the foundational policy enforcement layer that governs identity, asset, and transaction behavior across the Arda ecosystem. It acts as the runtime permission system for the protocol, ensuring all activity aligns with regional regulations, KYC requirements, investor eligibility, and capital controls.

Compliance is embedded directly into the protocol's deterministic logic and is enforced at every interaction—from onboarding and token issuance to trading and lending.

---

## Core Components

### 1. **KYC / AML Engine & Attestation Registry**

This component manages identity verification and credentials. It records KYC completion, accreditation status, sanctions screening results, and legal agreements. These attestations are used to dynamically determine user permissions and eligibility across the protocol.

- Supports tiered verification levels (e.g. KYC Tier 0–3).
- Includes continuous sanctions screening, risk scoring, and jurisdictional blacklists/whitelists.
- All attestations are tied to an `Entity` and `WalletGroup`.

### 2. **Transfer Rules**

Transfer Rules define the dynamic logic that determines whether a token transfer is allowed between two parties. They are evaluated before any token movement.

| Field | Description |
|-------|-------------|
| `fromKycTier` | Minimum tier required by sender |
| `toKycTier` | Minimum tier required by receiver |
| `jurisdiction` | Applicable region for the rule |
| `tokenType` | Token class this rule applies to (e.g., AssetToken, DebtToken) |
| `restrictions` | Any conditional logic or flags (e.g., accredited only, investor caps) |

**Example:**

```yaml
transfer_rule:
  tokenType: AssetToken
  fromKycTier: 2
  toKycTier: 2
  jurisdiction: US
  restrictions:
    - accredited_investor_required: true
    - region_blacklist: ["OFAC", "North Korea"]
```

### 3. **Jurisdiction Profiles**

Jurisdiction Profiles encode regulatory policies and schemas for specific regions, allowing the protocol to adapt its behavior based on an asset's or user's location.

Profiles include:

- Approved currencies
- Maximum LTVs for lending
- Permitted legal asset types
- Holding period constraints
- Local tax and reporting hooks

| Region | Enforcement Scope Examples |
|--------|-------------------|
| UAE | Property law, AML, Dirham controls |
| US | SEC Reg D/Reg S, investor accreditation |
| EU | GDPR, MiFID II, cross-border disclosure |

### 4. **Audit Logs**

The engine maintains an immutable, on-chain registry of all compliance-relevant actions, including onboarding events, token transfer approvals and denials, attestations, and revocations. For sensitive data, logs are anchored on-chain with secure off-chain storage in Arda Vault, supporting audit trails for regulators and institutional users.

---

## Enforcement

### Invocation Points

Compliance checks are invoked at critical points in the transaction lifecycle:

- **Token Transfer**: Validates both sender and receiver against the applicable `TransferRule` and `JurisdictionProfile`.
- **Module Interaction**: Blocks access to protocol modules (e.g., creating a facility, joining a pool) if identity or jurisdiction restrictions are unmet.
- **KYC Tier Sync**: Reflects changes in a user's verification tier dynamically across all associated wallets and entities.
- **Attestation Matching**: Validates a user's on-chain proofs before enabling sensitive actions like investing or governance voting.

### Enforcement Modes

The engine operates in multiple modes to provide flexible and robust enforcement:

- **Preventative**: Disallows non-compliant actions before execution (e.g., rejecting a transfer).
- **Reactive**: Flags suspicious behavior for review or requires additional approvals (e.g., for unusual transaction volumes).
- **Adaptive**: Dynamically adapts to regulatory updates or new token rules via governance or validator instructions.

---

## Integration Points

- All token transfers must pass validation by a `TransferRule`.
- SPV creation and capital participation in facilities are constrained by `JurisdictionProfile`.
- Oracle updates and on-chain risk events (e.g., a breach of a collateral coverage ratio) can trigger compliance flags or actions.
- Governance can propose updates to `JurisdictionProfiles` or global rules via Arda Improvement Proposals (AIPs).

---

## Use Cases

- **Trading Gatekeeping**: Ensuring only whitelisted jurisdictions can trade high-risk asset classes.
- **Investor Qualification**: Restricting offerings to accredited or professional investors based on their verified attestations.
- **Cross-Border Controls**: Blocking specific transfers or requiring additional documentation for international capital movement.
- **Lifecycle Enforcement**: Applying different rules at each stage of an asset's lifecycle (e.g., primary issuance vs. secondary trading).
- **Real-time Hooks**: Disallowing market participation if a user's required license or tax ID has expired.

---

## Developer Notes

- Validators run compliance checks in deterministic protocol logic, not at the application layer.
- The Arda SDK provides methods to simulate compliance outcomes for a given transaction before submission.
- `EventLogs` can be queried by external regulators or auditors with permissioned access via Arda Vault.
