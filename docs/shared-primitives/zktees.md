--8<-- "warning.md"
# ZK and TEE Primitives

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

Arda supports zero-knowledge (ZK) and trusted execution environment (TEE) primitives for enforcing privacy, integrity, and selective disclosure across its protocol stack. These cryptographic mechanisms enable users and agents to verify data or behavior without revealing the underlying values — essential for compliance, privacy law alignment, and regulated institutional usage.

ZK/TEE primitives are used in identity, vault, risk evaluation, deal execution, and settlement logic.

---

## Key Mechanisms

| Type | Description |
|------|-------------|
| ZK Proof | Proves something is true without revealing the input (e.g. "user is accredited") |
| MPC | Splits computation across multiple parties without any one party seeing all inputs |
| FHE | Allows arithmetic directly on encrypted data (e.g. for interest checks or audits) |
| TEE | Executes sensitive logic inside a hardware-secured enclave with remote attestation |

---

## Example: Accredited Investor Check (ZK)

```json
{
  "proofId": "ZK-INV-2201",
  "claim": "isAccreditedInvestor",
  "attestor": "KYCProvider-X",
  "valid": true,
  "proofHash": "0xabc...",
  "linkedWallet": "0x123..."
}
```

---

## Use Cases

- KYC Tier validation without leaking raw identity data
- Risk scoring of loan without disclosing underlying metrics
- Token sale eligibility checks at execution time
- Secure custody bridge: TEE-based execution in cross-chain swaps
- Institutional analytics and on-chain data masking for audit

---

## Integration Points

- **Vault**: FHE/MPC used for storing and querying sensitive documents
- **Compliance Engine**: Accepts ZK attestations for TransferRule decisions
- **Clear**: Uses proof-of-compliance before asset or fund movement
- **Interop**: Bridges may rely on ZK or TEE attestations for cross-chain validation
- **Agent Layer**: Monitoring Agents can issue ZK alerts for defaults or fraud triggers

---

## Design Considerations

- ZK circuits are audited and governed through upgrade proposals
- TEEs must publish attestation keys and are whitelisted via Agent Registry
- All proofs are hash-linked to AuditLog entries for traceability

---

## Related Docs

- [`vault.md`](../arda-core/vault.md)
- [`compliance.md`](./compliance.md)
- [`external-agents.md`](../reference/external-agents.md)

---

*© ArdaOS Documentation • Licensed under MIT*
