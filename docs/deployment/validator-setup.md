# Validator Setup

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

Validators are responsible for block production, compliance enforcement, and cross-chain message signing within each Arda OS region. This guide outlines the setup process, role permissions, and operational requirements for regional validator nodes.

---

## 🧱 Validator Roles

### 1. **Block Producer**
- Participates in consensus (POA or rollup sequencer)
- Signs blocks, orders transactions

### 2. **Compliance Executor**
- Applies TransferRules and JurisdictionProfiles
- Ensures pre-trade and post-trade validation

### 3. **Bridge Attestor**
- Signs outbound cross-chain messages for Arda Clear
- Provides proofs for external bridge validation (ZK, multisig, etc.)

---

## 🧩 Setup Requirements

- **Hardware**:
  - 4–8 vCPUs, 16–32 GB RAM, SSD storage
  - Redundant network interface
- **Hosting**:
  - Regional cloud infra (AWS, Azure) or approved sovereign data center
- **Software**:
  - Arda Node binary (Rollkit/Cosmos SDK variant)
  - Validator keygen utility
  - Access to compliance module

---

## 🔐 Key Management

- Validator keys are generated per chain ID
- Stored securely using:
  - HSM modules (for government deployments)
  - Encrypted local or cloud KMS
- Supports hot or cold key rotation

---

## ⚙️ Lifecycle Operations

- Join validator set via governance or allowlist
- Run observability and heartbeats
- Rotate keys or stake via SDK or CLI
- Auto-pause if offline or in breach of protocol (via slashing logic)

---

## 🛠️ Developer Notes

- SDK methods:
  - `registerValidator()`, `rotateKeys()`, `submitProof()`
- Validators can be assigned compliance zones
- Alerting via Prometheus or Arda observability plugin

---

## 📚 Related Specs

- [Regional Deployment](regional-deployment.md)
- [Compliance Engine](../protocol/compliance-engine.md)
- [Cross-Chain](../middleware/cross-chain.md)
- [Governance](../middleware/governance.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
