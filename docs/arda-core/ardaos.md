# ArdaOS

---

## Overview

ArdaOS is the sovereign execution layer for individual jurisdictions within the Arda ecosystem. It enables each region—such as the UAE, United States, or Singapore—to run a dedicated rollup with its own compliance, settlement, and performance rules, while still conforming to the global Arda Core standard.

Each ArdaOS instance is a zk-augmented rollup (or optionally a POA appchain) designed to enforce jurisdiction-specific regulatory constraints, enable low-latency execution, and interoperate with the global coordination layer via the Arda SDK.

---

## Key Characteristics

- **Sovereignty**: Local regulators or authorities govern validator sets and upgrade policies.
- **Compliance-first Execution**: Integrates real-time enforcement of KYC, AML, and asset-transfer restrictions at the protocol level.
- **Rollup-enabled**: Uses ZK Rollups, POA chains, or hybrid architectures based on local deployment requirements.
- **Bridge Compatibility**: Works with Celestia IPC, Hyperlane, and native light clients for cross-chain operations.
- **Upgradeable Runtime**: Modular SDK enables safe evolution of regional logic over time.

---

## Components

- **Execution Engine**: Region-specific smart contract or native logic for assets, tokens, and workflows.
- **Validator Set**: Typically 3–5 approved validators per region, often anchored in government or trusted institutions.
- **Compliance Hooks**: Tightly integrated with Arda Core's TransferRule, JurisdictionProfile, and KYC Tier enforcement modules.
- **Data Availability (Optional)**: Built-in support for Celestia DA layer or local data anchoring strategies.
- **Bridge Gateway**: Manages cross-region or cross-chain transfers using verifiable proofs or consensus snapshots.

---

## Deployment Topology

| Region      | Consensus | DA Layer   | Custody | Compliance Anchor |
|-------------|-----------|------------|---------|-------------------|
| Arda UAE    | POA       | Celestia   | Local Bank (Dirham) | Dubai Land Department |
| Arda US-NY  | POA       | None (local only) | Reg D Custodians  | SEC + State Regulator |
| Arda SG     | ZK Rollup | Celestia   | MAS-backed Provider | Monetary Authority of Singapore |

---

## SDK Interface

Each ArdaOS deployment includes a reference SDK interface that:

- Implements all Arda Core modules
- Exposes cross-chain callable methods (`xcall`)
- Maps global asset IDs to local chain representations
- Routes compliance requests to Arda Core's attestation layer

---

## Related Docs

- [`README.md`](./README.md)
- [`compliance.md`](./compliance.md)
- [`interop.md`](./interop.md)
- [`naas.md`](./naas.md)

---

*© Arda OS Documentation • Licensed under MIT*
