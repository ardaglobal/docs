# Arda Foundry

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

Arda Foundry is the protocol-native legal entity and structure creation system. It automates the instantiation of SPVs, trusts, funds, and other wrappers to provide legal enforceability and investor protections for real-world asset tokenization.

Foundry is essential for bridging the on-chain logic of Arda with the off-chain legal frameworks that govern real estate, credit, and structured products.

---

## 🧱 Core Capabilities

### 1. **SPV Creation**
- Instantiates special-purpose vehicles in supported jurisdictions.
- Supported structures:
  - LLC (Delaware, DIFC, etc.)
  - RAK ICC
  - UAE Free Zone Entities
  - Cayman Trusts

### 2. **Legal Wrapper Binding**
- Links SPVs to AssetTokens or DebtTokens.
- Enables enforceability of:
  - Ownership
  - Liens
  - Payment rights
- Anchored via document hashes in Arda Vault.

### 3. **Lifecycle Integration**
- Foundry-issued entities can:
  - Track cap table via Arda Ledger
  - Issue or revoke tokens based on legal status
  - Receive treasury flows (rent, fees, repayments)

### 4. **Investor & Board Management**
- Permissions for entity-level roles:
  - Directors
  - Auditors
  - Beneficiaries
- Changes to governance encoded via on-chain proposals or verified docs

### 5. **Template Library**
- Reusable legal and operational templates for:
  - Equity-only SPVs
  - Tranche-based debt facilities
  - Property co-ownership schemes

### 6. **Digital Twin Creation**
- Generate a compliant, enforceable digital representation of any asset.

### 7. **Automated Governance**
- Embed rules for transfer, reporting, and lifecycle events directly into the asset.

---

## 📜 Compliance & Validity

- Document notarization or regulator-issued filings can be anchored in Vault
- Vault entries link document + metadata + hash + jurisdiction
- KYC/KYB required for directors and founding entities
- Expiry, modification, or revocation updates status across protocol

---

## 🛠️ Developer Notes

- SDK includes `createEntity()`, `bindAsset()`, `registerDoc()`
- Role permissions programmable via policy templates
- Events logged into `AuditLog` and indexed via `FacilityRegistry`

---

## 🧪 Example Flow

1. Developer creates a Dubai SPV to hold a commercial building
2. Files Articles of Association + title deed to Arda Vault
3. Mints AssetToken and links it to the SPV via Foundry
4. Investors participate in PermissionedPool governed by that SPV
5. Monthly rent routed to SPV, then to TrancheToken holders

---

## 📚 Related Specs

- [Core Primitives](../primitives/core-primitives.md)
- [Asset Primitives](../primitives/asset-primitives.md)
- [Arda Vault](../middleware/arda-vault.md)
- [Compliance Engine](../protocol/compliance-engine.md)
- [Token Models](../protocol/token-models.md)

---

## 📚 See Also

- [Core Primitives](../primitives/core-primitives.md)
- [Asset Primitives](../primitives/asset-primitives.md)
- [Token Models](../protocol/token-models.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
