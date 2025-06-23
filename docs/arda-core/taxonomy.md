# Arda Taxonomy

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

The Arda Taxonomy module defines a universal classification framework for assets, rights, entities, and legal structures across the entire Arda ecosystem. It serves as the semantic backbone of Arda Core, ensuring interoperability, consistent compliance enforcement, and intelligent behavior across sovereign regions and capital products.

Every on-chain asset or transaction references taxonomy categories to define its legal meaning, economic function, and permissible use cases. The taxonomy is extensible via Arda Improvement Proposals (AIPs) and evolves through governance.

---

## Structure

The taxonomy is structured hierarchically with top-level categories, subtypes, and attributes. Examples include:

### Asset Classes
- **Real Estate**
  - Residential / Commercial / Industrial / Hospitality
- **Debt Instruments**
  - Mortgage / Bridge Loan / Convertible Note
- **Equity Instruments**
  - LP Interests / SPV Shares / REIT Units
- **Derivatives**
  - Perpetual Swap / Interest Rate Option

### Rights and Roles
- **Use Rights**: Right of abode, leasing rights, timeshare access
- **Economic Rights**: Yield entitlement, profit sharing, rent collection
- **Governance Rights**: Voting weight, proposal rights
- **Service Roles**: Custodian, Auditor, Manager, Verifier

### Entities
- **Natural Person** (individual investors or residents)
- **Legal Entity** (SPVs, REITs, custodians, etc.)
- **Regulator** (state or national compliance authority)
- **Agent** (e.g. Connect Agent, Monitoring Agent)

---

## Metadata Schema

Each taxonomy object includes:

| Field | Type | Description |
|-------|------|-------------|
| `id` | String | Unique taxonomy identifier |
| `name` | String | Human-readable label |
| `type` | Enum | Asset / Right / Entity / Role |
| `jurisdiction` | String | Optional scope of applicability |
| `attributes` | Map | Custom traits (e.g. LTV caps, expiration) |

---

## Governance & AIP Process

Taxonomy changes follow the Arda Improvement Proposal (AIP) governance flow:

1. **Proposal**: Anyone may submit a draft AIP defining new taxonomy entries or changes.
2. **Review**: Core team and compliance council review for consistency and regulatory soundness.
3. **Vote**: AIP is voted on by eligible tokenholders or appointed stewards.
4. **Activation**: Accepted entries are published to the on-chain taxonomy registry.

---

## Usage Across Arda

- **Token Factory**: Uses taxonomy entries to define token rights and restrictions.
- **Onboarding**: Maps real-world property or documents into a recognized category.
- **Compliance Engine**: Applies different rules depending on taxonomy-derived type.
- **Analytics**: Risk analytics and benchmarks segment portfolios by taxonomy labels.

---

## Related Docs

- [`token-factory.md`](./token-factory.md)
- [`compliance.md`](./compliance.md)
- [`identity.md`](./identity.md)
- [`README.md`](./README.md)

---

*© Arda OS Documentation • Licensed under MIT*
