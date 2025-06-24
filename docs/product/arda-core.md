--8<-- "warning.md"
# Arda Core

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

Arda Core is the global coordination layer of the Arda architecture. It provides shared infrastructure across sovereign Arda OS chains, enabling standardized semantics, identity registry, compliance enforcement, and global liquidity routing. It acts as the "semantic and compliance operating system" for Arda’s ecosystem.

---

## 🧱 Key Modules

### 1. **Arda Taxonomy**
- A shared data model for describing assets, rights, entities, and relationships.
- Supports on-chain enforceability of legal, financial, and regulatory semantics.
- Includes:
  - Asset classes, rights types, unit standards
  - Structured tagging and metadata schemas
  - Governance via Arda Improvement Proposals (AIPs)

### 2. **Arda Vault**
- Privacy-preserving data layer for sensitive documents (e.g. deeds, SPV docs, valuations).
- Supports:
  - FHE/MPC-encrypted access control
  - Document anchoring
  - Queryable zero-knowledge proofs

### 3. **Arda Compliance**
- Dynamic compliance engine and registry.
- Includes:
  - KYC / AML Engine
  - JurisdictionProfile
  - TransferRule
  - AuditLog
- Governs all cross-chain, cross-border activity.

### 4. **Arda Governance**
- Upgrades and rule changes are driven via decentralized governance.
- AIPs define schema evolution, protocol parameters, and jurisdictional rules.

### 5. **Arda Clear**
- Global clearing and net settlement engine.
- Supports:
  - Cross-chain transaction routing
  - Delayed or escrowed settlement
  - Fiat settlement anchoring

---

## 🔁 Coordination Responsibilities

- Manages global registry of:
  - Wallet Groups and Entities
  - Assets and SPVs
  - Taxonomies and jurisdictions
- Synchronizes permissioning across sovereign Arda OS chains
- Orchestrates liquidity flows and bridges across regions

---

## 🔐 Security and Permissions

- Validators are permissioned per region but coordinated globally.
- Vault access controlled by on-chain attestations and role-specific keys.
- Compliance checks are enforced before execution—not post hoc.

---

## 🛠️ Developer Notes

- SDK provides interfaces for taxonomy registration, vault access, compliance queries.
- Governance proposals (AIPs) can be submitted and simulated via SDK.
- Arda Clear exposes endpoints for submitting and tracking multi-leg settlements.

---

## 📚 Related Specs

- [Compliance Engine](../protocol/compliance-engine.md)
- [Settlement](../protocol/settlement.md)
- [SDK / Middleware](../middleware/sdk.md)
- [Governance](../middleware/governance.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
