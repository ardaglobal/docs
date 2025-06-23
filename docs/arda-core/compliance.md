# Arda Compliance Engine

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

The Arda Compliance Engine is the policy enforcement layer that governs identity, asset, and transaction behavior across the Arda ecosystem. It ensures all protocol activity aligns with regional regulations, KYC requirements, investor eligibility, and capital controls.

Compliance is embedded directly into protocol logic and is enforced at every interaction — from onboarding and token issuance to trading and lending.

---

## Core Components

### 1. Transfer Rules

Defines the logic that determines whether a token transfer is allowed between two parties.

| Field | Description |
|-------|-------------|
| `fromKycTier` | Minimum tier required by sender |
| `toKycTier` | Minimum tier required by receiver |
| `jurisdiction` | Applicable region for the rule |
| `tokenType` | Token class this rule applies to (e.g., AssetToken, DebtToken) |
| `restrictions` | Any conditional logic or flags (e.g., accredited only, investor caps) |

### 2. Jurisdiction Profiles

Encodes regulatory policies for specific regions.

| Region | Enforcement Scope |
|--------|-------------------|
| UAE | Property law, AML, Dirham controls |
| US | SEC, Reg D/Reg S, investor accreditation |
| EU | GDPR, MiFID II, cross-border disclosure |

### 3. Attestation Registry

Records identity verification, KYC completion, accreditation status, and legal agreements. Used to dynamically determine user permissions and eligibility.

### 4. Audit Logs

Immutable, on-chain registry of all compliance-relevant actions including onboarding, token transfer denials, attestations, and revocations.

---

## Enforcement Model

Compliance checks are invoked via:

- **Token Transfer**: Validates both sender and receiver against applicable TransferRule and JurisdictionProfile.
- **Module Interaction**: Blocks access to protocol modules if identity or jurisdiction restrictions are unmet.
- **KYC Tier Sync**: Reflects changes in user tier dynamically across all wallet and entity references.
- **Attestation Matching**: Validates user's on-chain identity proofs before enabling sensitive actions (e.g., investing, governance).

---

## Example

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

---

## Use Cases

- **Trading Gatekeeping**: Ensure only whitelisted jurisdictions can trade high-risk asset classes.
- **Cross-Border Limits**: Block specific transfers or require additional documentation for international movement.
- **Investor Qualification**: Restrict offerings to accredited or professional investors.
- **Lifecycle Enforcement**: Apply different rules at each stage of an asset’s lifecycle (issuance, transfer, redemption).

---

## Related Docs

- [`identity.md`](./identity.md)
- [`onboarding.md`](./onboarding.md)
- [`token-factory.md`](./token-factory.md)
- [`vault.md`](./vault.md)

---

*© Arda OS Documentation • Licensed under MIT*
