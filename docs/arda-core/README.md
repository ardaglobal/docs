# Arda Core

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

Arda Core is the foundational infrastructure layer of the Arda protocol. It defines the global primitives, compliance logic, identity structure, and encrypted data handling that underpins all regional deployments and capital applications. It provides the protocol-wide semantic coherence, secure data access, token lifecycle control, and cross-chain interoperability necessary to support programmable real estate and private capital markets at scale.

Arda Core is jurisdiction-agnostic and interacts with sovereign ArdaOS chains through deterministic APIs, providing global coordination and consistency without enforcing a monolithic execution model.

---

## Key Modules in Arda Core

- **ArdaOS** — Sovereign rollup operating system for region-specific compliance and execution.
- **Taxonomy** — A universal classification system for assets, rights, and obligations.
- **Vault** — FHE/MPC-enabled encrypted storage for sensitive property and legal data.
- **Wallet** — Supports custody, multisig, and KYC tier enforcement.
- **Onboarding** — Handles asset and user registration, with fallback to manual verification.
- **Compliance Engine** — Defines and enforces TransferRules, JurisdictionProfiles, and permissions.
- **Token Factory** — Generates token types like AssetToken, DebtToken, TrancheToken with full compliance bindings.
- **Arda Clear** — Settlement engine for asset transfers and capital netting across chains.
- **Network-as-a-Service (NaaS)** — Arda's framework for deploying regional chains with sovereign control.
- **Identity** — Core entity structures like Entity, WalletGroup, and attestation-backed KYC Tiers.
- **Interop** — SDK and bridge routing layer, enabling state discovery and message passing across sovereign Arda chains.

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
| ArdaOS          | SDK Interfaces   | Arda Core Modules        |
| Identity        | KYC Tiers        | Custody APIs, Verifiers  |
| Arda Clear      | Transfers/Settles| Global bridges, NaaS     |

---

## Related Docs

- [`ardaos.md`](./ardaos.md)
- [`compliance.md`](./compliance.md)
- [`token-factory.md`](./token-factory.md)
- [`vault.md`](./vault.md)

---

*© Arda OS Documentation • Licensed under MIT*
