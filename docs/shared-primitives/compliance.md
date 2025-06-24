# Compliance Primitives

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

The compliance primitives in Arda define the standardized, protocol-level enforcement rules for identity, jurisdiction, and transaction eligibility. These components are embedded across token issuance, trading, settlement, lending, and governance workflows.

They ensure every interaction adheres to KYC, AML, investor protection, and cross-border regulatory frameworks.

---

## Key Compliance Objects

| Object | Description |
|--------|-------------|
| TransferRule | Governs if a token transfer is permitted |
| JurisdictionProfile | Defines regional-specific policy constraints |
| AttestationRegistry | Validates user credentials and qualifications |
| AuditLog | Immutable record of protocol actions |
| KycTier | User access tier derived from identity verification level |

---

## TransferRule Fields

```json
{
  "tokenType": "DebtToken",
  "fromKycTier": 2,
  "toKycTier": 2,
  "jurisdiction": "US",
  "restrictions": {
    "accredited_only": true,
    "blacklistedRegions": ["OFAC"]
  }
}
```

---

## JurisdictionProfile Use

Each ArdaOS chain or pool applies a scoped profile:

- **Transaction Limits**: Size, asset type, daily thresholds
- **Investor Class**: Retail, Accredited, Institutional
- **Regulatory Hooks**: Compliance with SEC, MiFID, MAS, etc.
- **Tax Logic**: Optional modules for withholding or VAT

---

## Compliance Lifecycle Hooks

- Pre-transfer enforcement
- Pre-wrap / bridge evaluation
- Pool entry / order submission filtering
- Settlement hold or rejection
- Logging for later audit or appeal

---

## Shared Enforcement Logic

These primitives are imported by:

- TokenFactory (token gating)
- Wallet (tier validation)
- Clear (settlement rejection)
- Syndication Engine (pool filtering)
- Trading Engine (order rejection)
- Agents (access and permissions)

---

## Related Docs

- [`token-factory.md`](../arda-core/token-factory.md)
- [`wallet.md`](../arda-core/wallet.md)
- [`compliance.md`](../arda-core/compliance.md)

---

*© Arda OS Documentation • Licensed under MIT*
