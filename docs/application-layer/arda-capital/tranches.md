--8<-- "warning.md"
# Tranches

---

## Overview

The Tranche System in Arda Capital enables the creation, distribution, and lifecycle management of TrancheTokens. These tokens represent layered claims on cashflows within a syndicated capital pool, allowing for structured risk and return profiles.

Tranches are used in private credit, securitized real estate deals, bridge lending, and other forms of asset-backed capital markets. Each tranche is programmable and governed by an embedded waterfall engine to determine payout order and rules.

---

## Key Features

| Feature | Description |
|---------|-------------|
| Tokenized Tranches | ERC-20 compatible tokens for each risk layer |
| Waterfall Logic | Defines payout priority across tranches |
| Lifecycle Hooks | Tracks issuance, maturity, and settlement |
| Compliance Filtering | Limits access to tranches based on KYC, jurisdiction, or role |
| Yield Distribution | Streams or batches returns based on protocol rules |

---

## Tranche Metadata

```json
{
  "trancheId": "TRANCHE-001",
  "poolId": "POOL-001",
  "riskClass": "Mezzanine",
  "interestRate": 0.10,
  "maturityDate": "2026-01-01",
  "priority": 2,
  "token": "TrancheToken-0xabc123"
}
```

---

## Tranche Priority

Tranches are ordered by payout priority. Higher priority tranches receive payments first:

| Priority | Tranche Type | Risk | Example Return |
|----------|--------------|------|----------------|
| 1 | Senior | Low | 4–6% |
| 2 | Mezzanine | Medium | 8–12% |
| 3 | Junior | High | 12–20%+ |

Arda Clear uses this priority when executing the waterfall during settlement.

---

## Lifecycle

1. **Issued** — When a pool is funded, TrancheTokens are minted.
2. **Active** — While the underlying facility is accruing or disbursing cashflows.
3. **Partial Repayment** — Tranches may receive interest or principal based on priority and availability.
4. **Matured** — When the facility ends or reaches final payment.
5. **Closed/Burned** — Tokens are burned and recorded as closed in AuditLog.

---

## Waterfall Engine

Arda Clear applies the following waterfall rules:

- Satisfy all accrued interest to senior tranches
- Then repay principal in order of priority
- Any residual funds allocated to junior tranches or issuer (if agreed)

---

## Compliance

Tranches embed:

- **TransferRule**: Restrict trading to verified addresses
- **JurisdictionProfile**: Enforce maximum exposure or total AUM
- **AuditLog**: Records all mint, transfer, burn, and distribution events
