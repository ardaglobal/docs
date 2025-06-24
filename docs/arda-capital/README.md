--8<-- "warning.md"
# Arda Capital

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

Arda Capital is the programmable debt and capital formation layer of the Arda protocol. It enables compliant lending, borrowing, syndication, and securitization of real-world assets using composable, interoperable primitives across sovereign ArdaOS chains.

The module is designed to serve the full capital lifecycle — from deal origination and underwriting to tranche structuring, yield distribution, and loan repayment. Arda Capital integrates deeply with the Compliance Engine, Token Factory, Vault, and Arda Clear for enforcement, data, and settlement.

---

## Key Modules

| Module | Description |
|--------|-------------|
| `Loan Structures` | Defines supported loan types and configurations |
| `Underwriting` | Risk scoring, collateral analysis, dynamic LTV enforcement |
| `Syndication Engine` | Permissioned capital formation using programmable pools |
| `Tranche System` | Tokenizes risk layers and defines cashflow waterfalls |
| `Treasury/Float` | Manages interest, fees, and idle capital allocation |
| `Permissioned Pools` | KYC/attestation-gated capital markets for specific jurisdictions |

---

## Key Token Types

- **DebtToken**: Represents a borrower's principal and interest obligation
- **YieldToken**: Grants rights to a portion of cashflows from assets or loans
- **TrancheToken**: Encodes a risk-adjusted share of a syndicated capital pool

Each token type is lifecycle-managed and complies with TransferRules and jurisdictional logic.

---

## Capital Lifecycle

```mermaid
flowchart TD
    A[Deal Origination] --> B[Underwriting]
    B --> C[Syndication + Allocation]
    C --> D[Token Issuance (Tranche / Debt)]
    D --> E[Interest Accrual + Repayment]
    E --> F[Settlement via Arda Clear]
```

---

## Interop & Compliance

- **Compliance First**: Only verified participants can join pools or execute deals.
- **Jurisdiction Sync**: Capital rules adapt per region via JurisdictionProfiles.
- **Global Liquidity**: Tranche and YieldTokens may be tradable cross-chain via Interop.
- **Audit-Ready**: Capital flows and token events are logged to on-chain AuditLog.

---

## Use Cases

- Real estate-backed loans
- Tokenized bridge financing
- REIT syndication and redemption
- Crowdfunding and retail-accessible capital pools
- Institutional-grade structured products
