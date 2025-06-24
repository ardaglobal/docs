# Asset Primitives

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

Asset Primitives in Arda define how physical, legal, and economic characteristics of real-world assets are modeled on-chain. These primitives serve as the foundation for tokenizing and interacting with real estate, infrastructure, commodities, and their associated rights.

Each asset primitive is tied to compliance metadata, valuation logic, and lifecycle status—making them programmable, composable, and enforceable.

This document outlines the key primitives that define assets on Arda. For a broader overview of Arda's core data structures, see the [Core Primitives](core-primitives.md) documentation.

---

## 🧱 Core Asset Types

### 1. **AssetToken**
- Tokenized representation of a physical or legal asset.
- Includes:
  - Ownership structure (e.g. fractional, collective)
  - Metadata (valuation, square footage, usage rights)
  - Jurisdictional tag

### 2. **UsageRight**
- Encodes non-ownership entitlements such as:
  - Rental use
  - Time-share access
  - Right of abode or commercial operation

### 3. **DevelopmentRight**
- Represents forward-looking rights:
  - Air rights
  - Zoning approvals
  - Construction licenses
- May convert into full ownership upon event or milestone completion

### 4. **RegistryRecord**
- Anchors asset in a recognized registry (e.g. land department).
- Links Vault entry (e.g. deed or title document hash) to AssetToken.
- Used to assert enforceability and legitimacy of claims.

---

## 🧬 Metadata Schema

Each asset has a standardized schema:

```json
{
  "asset_id": "AST-00X",
  "type": "residential",
  "location": "Dubai Marina, UAE",
  "size_sqft": 2800,
  "valuation_usd": 1500000,
  "jurisdiction": "UAE",
  "governing_spv": "SPV-XYZ",
  "rights": ["ownership", "rental"],
  "registry_ref": "vault://deed-dxb-2024"
}
```

---

## 🔁 Lifecycle Hooks

Assets can evolve through:

- Renovation or revaluation (metadata update)
- Transfer of ownership (compliance-validated)
- Burn or conversion (e.g. fractional token consolidation)
- Triggered updates via `EventHook`

---

## 🔐 Compliance & Permissions

- Ownership transfers require:
  - KYC Tier match
  - Jurisdiction compliance
  - Valid registry entry or override
- Assets may have restricted transferability or use based on legal constraints

---

## 🛠️ Developer Notes

- Asset metadata managed via Arda Ledger
- Linked documents stored and hashed in Arda Vault
- Queryable via asset registry APIs with filter by jurisdiction, SPV, usage

---

## 📚 Related Specs

- [Core Primitives](core-primitives.md)
- [Token Models](../protocol/token-models.md)
- [Arda Foundry](../product/arda-foundry.md)
- [Arda Vault](../middleware/arda-vault.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
