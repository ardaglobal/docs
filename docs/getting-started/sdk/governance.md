--8<-- "warning.md"

# Governance

---

## Overview

Arda Governance enables decentralized, structured decision-making across the Arda ecosystem. It governs protocol upgrades, taxonomy changes, jurisdictional policy updates, and ecosystem funding allocations. Governance is enforced both on-chain and via cryptographic attestations.

It is designed for flexibility across sovereign regions, while retaining coherent global coordination.

---

## Core Components

### 1. **Arda Improvement Proposals (AIPs)**

- Proposal format for:
  - Taxonomy extensions
  - Token model upgrades
  - Compliance rule changes
  - Infrastructure or treasury proposals
- Includes rationale, impact, region scope, and executable logic

### 2. **Governance Registry**

- Tracks:
  - Active proposals
  - Region, scope, and eligibility
  - Vote results and execution status

### 3. **Voting Engine**

- Modular architecture:
  - Token-weighted (e.g. VOTE, GOV)
  - Role-weighted (e.g. regional validator veto)
  - Reputation-weighted (future roadmap)
- Supports quadratic or delegated voting

### 4. **Execution Engine**

- Executes approved AIPs on:
  - Token config
  - Transfer rules
  - Fee sinks
  - Vault permission schemas

### 5. **Governance Token Model**

- Optional native governance token: `GOV`
- Utility:
  - Proposal rights
  - Voting power
  - Slashing for malicious behavior
- Earned via contribution, staking, and reputation

---

## Regional Autonomy

- Jurisdictions may define:
  - Local policies
  - Whitelisted assets
  - Custom voting quorums or emergency controls
- All local policies must be interoperable with Arda Core

---

## Role and Identity Controls

- Voting and proposals gated by:
  - Entity registration
  - KYC Tier
  - Stake or delegated role (e.g. auditor, notary)
- Agent proposals allowed if agent is staked + attributed

---

## Developer Notes

- SDK methods:
  - `submitAIP()`, `vote()`, `executeProposal()`, `queryPolicy()`
- Governance execution is auditable and logged to Arda AuditLog
- Proposal templates are available for standard policy types
