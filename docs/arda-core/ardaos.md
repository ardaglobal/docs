--8<-- "warning.md"
# ArdaOS

---

## Overview

ArdaOS is the sovereign execution layer for individual jurisdictions within the Arda ecosystem. It enables each region—such as the UAE, United States, or Singapore—to run a dedicated rollup with its own compliance, settlement, and performance rules, while still conforming to the global Arda Core standard.

Each ArdaOS instance is a zk-augmented rollup (or optionally a POA appchain) designed to enforce jurisdiction-specific regulatory constraints, enable low-latency execution, and interoperate with the global coordination layer via the Arda SDK.

ArdaOS is the regional execution environment layer within the Arda architecture. Each ArdaOS instance operates as a sovereign, compliant, high-performance blockchain tailored to the needs of a specific jurisdiction. These chains integrate with Arda Core to ensure shared semantics, compliance rules, and interoperability.

---

## Key Characteristics

- **Sovereignty**: Local regulators or authorities govern validator sets and upgrade policies.
- **Compliance-first Execution**: Integrates real-time enforcement of KYC, AML, and asset-transfer restrictions at the protocol level.
- **Rollup-enabled**: Uses ZK Rollups, POA chains, or hybrid architectures based on local deployment requirements.
- **Bridge Compatibility**: Works with Celestia IPC, Hyperlane, and native light clients for cross-chain operations.
- **Upgradeable Runtime**: Modular SDK enables safe evolution of regional logic over time.
- **Sovereign by Default**: Each region controls validators, compliance schema, and data residency.
- **Vertically Integrated**: Includes execution logic, compliance checks, treasury flows, and event triggers natively.
- **Coordination-Enabled**: Synchronizes with Arda Core for cross-region functionality and shared identity.

### 1. **POA / Rollup Architecture**
- Supported as sovereign Proof-of-Authority chains or zk-enabled rollups.
- Optimized for <100ms latency and regional scalability.

### 2. **Localized Compliance Layer**
- KYC/AML, jurisdiction rules, investor limits, and transaction gating enforced on-chain.
- Built on the same primitives as Arda Core but scoped to local legal frameworks.

### 3. **Arda Network-as-a-Service (NaaS)**
- Regional deployments on cloud or local infra (e.g. AWS Middle East, EU on-prem).
- Ensures compliance with data localization laws and regulator access.

### 4. **Validator Coordination**
- 3–7 regionally approved validators per chain.
- Includes notaries, registrars, public agencies, or approved financial institutions.

### 5. **Native Asset Support**
- Region-specific MoneyTokens, AssetTokens, DebtTokens, and YieldTokens.
- Customizable bridge wrappers and token templates.

### 6. **Shared Security & Compliance**: Inherit global compliance rules and validator security from Arda Core.
### 7. **Low-Cost, High-Throughput**: Optimized for enterprise-grade workloads without the high fees of public mainnets.

---

## Components

- **Execution Engine**: Region-specific smart contract or native logic for assets, tokens, and workflows.
- **Validator Set**: Typically 3–5 approved validators per region, often anchored in government or trusted institutions.
- **Compliance Hooks**: Tightly integrated with Arda Core's TransferRule, JurisdictionProfile, and KYC Tier enforcement modules.
- **Data Availability (Optional)**: Built-in support for Celestia DA layer or local data anchoring strategies.
- **Bridge Gateway**: Manages cross-region or cross-chain transfers using verifiable proofs or consensus snapshots.

---

## Cross-Chain Coordination

- Cross-region transactions routed through Arda Clear.
- ArdaOS instances interact via:
  - Message relays (ZK, TEE, multisig)
  - Validator signatures
  - State snapshot proofs

---

## SDK Interface

Each ArdaOS deployment includes a reference SDK interface that:

- Implements all Arda Core modules
- Exposes cross-chain callable methods (`xcall`)
- Maps global asset IDs to local chain representations
- Routes compliance requests to Arda Core's attestation layer

---

## Developer Notes

- SDK allows for modular deployment and permission configuration.
- Compliance engine templates are region-specific but interoperable.
- Chains are indexed in Arda Core for routing and discovery.

## Key Interactions

- ArdaOS instances interact via:
  - **Arda Core**: For identity, compliance, and governance syncs.
  - **IBC/Bridges**: For asset transfers and cross-chain messaging.
