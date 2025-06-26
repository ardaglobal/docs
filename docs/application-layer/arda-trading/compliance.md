--8<-- "warning.md"

# Trading Compliance Layer

---

## Overview

Arda Trading integrates real-time compliance enforcement into every trade-related action. This ensures that token listings, order submissions, quote responses, and settlements all conform to regional regulations, KYC levels, and asset-specific restrictions.

The Compliance Engine provides deterministic validation via TransferRules and JurisdictionProfiles, preventing unauthorized trading behavior.

---

## Enforcement Points

| Action | Compliance Logic |
|--------|------------------|
| Order Submission | Verifies wallet tier, region, and token type |
| Order Visibility | Filters orderbook by jurisdictional eligibility |
| Match Execution | Checks TransferRule, blacklists, and volume limits |
| Quote Handling | Validates eligibility before RFQ or OTC deal is shown |
| Settlement | Triggers TransferRule, AttestationRegistry, and AuditLog hooks |

---

## Compliance Structures

- **TransferRule** — Enforced on every token move
- **JurisdictionProfile** — Applies per-region caps, opt-ins, or asset constraints
- **AttestationRegistry** — Governs RFQ access, broker role eligibility
- **AuditLog** — Records full trade and action history immutably

---

## Example: Regional Rule

```json
{
  "tokenType": "AssetToken",
  "jurisdiction": "US",
  "fromKycTier": 2,
  "toKycTier": 2,
  "restrictions": {
    "accredited_investor_required": true,
    "maxTransactionSizeUSD": 250000
  }
}
```

---

## Listings & Visibility

Before a token can be listed or traded:

- Metadata must be verified and anchored in the Vault
- Token originator must have a valid issuer mandate
- Minimum KYC tier and attestation checks apply
- Region-based opt-in logic ensures local compliance

---

## RFQ-Specific Controls

RFQ messages undergo pre-execution filtering:

- **Initiator Check**: Can only submit if tier and attestation are valid
- **Counterparty Filter**: Auto-matches based on shared eligibility
- **Jurisdiction Mapping**: Ensures both sides meet regional requirements
