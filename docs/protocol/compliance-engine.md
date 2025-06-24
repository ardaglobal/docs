# Compliance Engine

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

The Arda Compliance Engine is a foundational layer responsible for enforcing real-time regulatory compliance across identity, jurisdiction, transaction, and asset-related constraints. It acts as the runtime permission system for the protocol and integrates with every primitive that involves movement of assets or allocation of rights.

---

## 🧱 Key Components

### 1. **KYC / AML Engine**
- Identity verification tied to Entity and Wallet Group.
- Supports tiered verification levels (e.g. KYC Tier 0–3).
- Includes:
  - Continuous sanctions screening
  - Risk scoring
  - Jurisdictional blacklists/whitelists

### 2. **TransferRule**
- A dynamic rule that determines whether a token transfer is allowed.
- Evaluates:
  - Sender & receiver jurisdiction
  - KYC tier match
  - Token type
  - Deal-specific restrictions

### 3. **JurisdictionProfile**
- Defines compliance schema for a specific region.
- Includes:
  - Approved currencies
  - Maximum LTVs
  - Legal asset types
  - Holding period constraints
  - Local reporting hooks

### 4. **AuditLog**
- Immutable event record of all compliance-relevant transactions.
- Anchored on-chain with secure off-chain logs (Vault-linked if necessary).
- Supports audit trails for regulators and institutional users.

---

## ⚖️ Enforcement Modes

- **Preventative**: Disallows non-compliant actions before execution (e.g. transfer rejections).
- **Reactive**: Flags suspicious behavior or requires additional approvals (e.g. unusual volume).
- **Adaptive**: Can dynamically adapt to regulatory updates or new token rules via governance or validator instructions.

---

## 📜 Integration Points

- Token transfers must pass through the `TransferRule` validator.
- SPV creation and capital participation are constrained by `JurisdictionProfile`.
- Oracle updates and risk events (e.g. breach of coverage ratio) can trigger compliance flags.
- Governance may propose updates to `JurisdictionProfiles` or global rules via AIPs.

---

## 🛡️ Example Use Cases

- **Cross-border restriction**: A UAE resident can’t receive equity in a US-regulated SPV without additional KYC.
- **Restricted instruments**: US retail investor blocked from high-risk tranches.
- **Real-time compliance hooks**: Disallow primary market participation if a participant’s tax ID is invalid or expired.

---

## 🛠️ Developer Notes

- Validators run compliance checks in deterministic protocol logic (not app layer).
- Developers can simulate compliance outcomes via SDK call.
- EventLogs can be queried by external regulators with permissioned access.

---

## 📚 Related Specs

- [Core Primitives](core-primitives.md)
- [Token Models](token-models.md)
- [Lifecycle](lifecycle.md)
- [Governance](../middleware/governance.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
