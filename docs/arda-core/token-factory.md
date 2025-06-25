--8<-- "warning.md"

# Arda Token Factory

---

## Overview

The Arda Token Factory is responsible for issuing all tokenized representations of real-world assets and financial rights within the Arda ecosystem. It encodes jurisdiction-specific compliance logic directly into token definitions and supports modular issuance workflows for AssetTokens, DebtTokens, TrancheTokens, and YieldTokens.

This module ensures that every token on Arda conforms to a shared taxonomy, enforces permissions on transfer and use, and is traceable throughout its lifecycle.

---

## Supported Token Types

| Token Type | Purpose | Key Features |
|------------|---------|--------------|
| `AssetToken` | Real estate ownership/fractional rights | KYC-gated, regional transfer logic, royalty support |
| `DebtToken` | Borrower obligations, loan representations | Interest accrual, repay/burn lifecycle, callable |
| `YieldToken` | Participation in revenue/yield rights | Streaming payments, claim periods, waterfalls |
| `TrancheToken` | Securitized risk layer in pooled capital | Fixed/variable tranche logic, maturity flags |

---

## Lifecycle Stages

Each token is managed across multiple states via embedded hooks and compliance enforcement:

1. **Creation** – Issuer mints token with metadata, restrictions, and jurisdiction config.
2. **Offering** – Token is made available for purchase or syndication (with gating).
3. **Transfer** – On secondary markets or P2P, checked via `TransferRule`.
4. **Maturity** – Token reaches defined endpoint (e.g., loan repaid, asset sold).
5. **Settlement** – Assets and/or proceeds distributed via Arda Clear.
6. **Burn** – Token optionally destroyed to finalize lifecycle.

---

## Compliance Integration

All tokens issued by the Token Factory automatically link to:

- **TransferRules**: Jurisdictional + KYC enforcement at transfer level.
- **AttestationRegistry**: Identity-based rights assignment.
- **Vault**: Metadata and legal proofs anchoring token claims.
- **JurisdictionProfiles**: Dynamic interpretation of legal scopes.

---

## Metadata Schema

```json
{
  "tokenId": "0x...",
  "type": "AssetToken",
  "jurisdiction": "UAE",
  "linkedEntity": "SPV-123",
  "rights": ["ownership", "rental_income"],
  "restrictions": {
    "kycTier": 2,
    "regionWhitelist": ["UAE", "EU"]
  },
  "lifecycleHooks": {
    "onTransfer": "checkTransferRules",
    "onMaturity": "notifySettlement"
  }
}
```

---

## Token Templates

Issuers may use pre-approved templates for rapid issuance, e.g.:

- **Residential Freehold** (UAE)
- **Fractional REIT Unit** (US Reg D)
- **Construction Bridge Loan** (Multi-tranche)
- **Rental Yield Participation** (Tokenized cashflow rights)

These templates enforce type-specific behavior and ease validation for secondary markets and custodians.
