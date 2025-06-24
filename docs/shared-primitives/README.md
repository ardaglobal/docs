# Shared Protocol Primitives

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

Arda defines a library of reusable, interoperable protocol primitives that form the foundation of asset lifecycle management, compliance enforcement, identity gating, accounting, and zero-knowledge interaction. These primitives are embedded in Arda Core and extended into all capital, trading, and registry applications.

Each primitive is deterministic, auditable, and portable across ArdaOS regions.

---

## Key Categories

| Category | Description |
|----------|-------------|
| Accounting | Rules for interest, repayment, fees, and sweep instructions |
| Compliance | Enforcement of TransferRules, KYC Tiers, JurisdictionProfiles |
| Governance | Role assignment, attestation rights, upgrade votes |
| Modules | Package-level logic for tokens, pools, agents, or asset states |
| ZK/TEE | Cryptographic enforcement mechanisms for privacy and integrity |

---

## Common Traits

- **Composable**: All primitives are SDK-loadable across modules
- **Auditable**: Events are captured in on-chain AuditLogs
- **Compliance-First**: Every transfer or event respects TransferRule policy
- **Deterministic**: No probabilistic logic; fully traceable state transitions
- **Cross-Chain Ready**: Supports bridging and replay proofs where needed

---

## Integration Points

- Used in Capital: Loan structures, TrancheTokens, Syndication rules
- Used in Trading: Order compliance, liquidity filters, settlement finality
- Used in Core: Identity gating, governance logic, bridge validation

---

## Related Docs

- [`accounting.md`](./accounting.md)
- [`compliance.md`](./compliance.md)
- [`governance.md`](./governance.md)
- [`modules.md`](./modules.md)
- [`zktees.md`](./zktees.md)

---

*© Arda OS Documentation • Licensed under MIT*
