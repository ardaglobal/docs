--8<-- "warning.md"
# Arda Core

---

## Overview

Arda Core is the foundational infrastructure layer of the Arda protocol. It defines the global primitives, compliance logic, identity structure, and encrypted data handling that underpins all regional deployments and capital applications. It provides the protocol-wide semantic coherence, secure data access, token lifecycle control, and cross-chain interoperability necessary to support programmable real estate and private capital markets at scale.

Arda Core is jurisdiction-agnostic and interacts with sovereign ArdaOS chains through deterministic APIs, providing global coordination and consistency without enforcing a monolithic execution model.

Arda Core is the global coordination layer of the Arda architecture. It provides shared infrastructure across sovereign ArdaOS chains, enabling standardized semantics, identity registry, compliance enforcement, and global liquidity routing. It acts as the "semantic and compliance operating system" for Arda's ecosystem.

---

## Key Modules in Arda Core

- **Taxonomy** — A universal classification system for assets, rights, entities, and legal structures across the entire Arda ecosystem.
- **Vault** — Privacy-preserving data layer with FHE/MPC-enabled encrypted storage for sensitive property and legal data.
- **Wallet** — Governs user and institutional access with KYC tier enforcement, custody configurations, and compliance integration.
- **Onboarding** — Handles user, entity, and real-world asset registration with automated and manual verification workflows.
- **Compliance** — Dynamic compliance engine with KYC/AML, TransferRules, JurisdictionProfiles, and audit logging.
- **Arda Foundry** — Protocol-native legal entity and structure creation system for SPVs, trusts, and other legal wrappers.
- **Token Factory** — Generates token types like AssetToken, DebtToken, TrancheToken with full compliance bindings and lifecycle management.
- **Clear** — Settlement engine for asset transfers, capital netting, and cross-chain clearing with escrow support.
- **Network-as-a-Service (NaaS)** — Framework for deploying regional chains with sovereign control and compliance alignment.
- **Identity** — Core entity structures like Entity, WalletGroup, KYC Tiers, and attestation-backed identity management.

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

## Architecture Summary

Arda Core is not a smart contract or monolithic chain — it is a protocol specification and set of modules, implemented as:

- Deterministic SDK primitives used by regional chains.
- Enforced compliance policies at transfer and onboarding layers.
- A global coordination standard for syncing state across sovereign Arda chains.

Each sovereign ArdaOS instance imports Core definitions for compliance, taxonomy, and identity but can override execution rules locally to match jurisdictional law.

---

## Integration Overview

| Module          | Consumes / Emits | External Systems         |
|-----------------|------------------|--------------------------|
| Token Factory   | AssetToken       | SDK, Compliance Engine   |
| Vault           | Encrypted Blobs  | FHE/MPC Services         |
| Identity        | KYC Tiers        | Custody APIs, Verifiers  |
| Clear           | Transfers/Settles| Global bridges, NaaS     |

## Coordination Responsibilities

- Manages global registry of:
  - Wallet Groups and Entities
  - Assets and SPVs
  - Taxonomies and jurisdictions
- Synchronizes permissioning across sovereign ArdaOS chains
- Orchestrates liquidity flows and bridges across regions

---

## Security and Permissions

- Validators are permissioned per region but coordinated globally.
- Vault access controlled by on-chain attestations and role-specific keys.
- Compliance checks are enforced before execution—not post hoc.

---

## Developer Notes

- SDK provides interfaces for taxonomy registration, vault access, compliance queries.
- Governance proposals (AIPs) can be submitted and simulated via SDK.
- Arda Clear exposes endpoints for submitting and tracking multi-leg settlements.
