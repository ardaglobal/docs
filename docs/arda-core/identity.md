--8<-- "warning.md"

# Arda Identity

The Arda Identity module provides the foundational structures for defining and enforcing participant roles in the Arda ecosystem. It models entities, wallets, KYC tiers, and attestations — enabling secure, compliant, and programmable identity enforcement across all protocol modules.

Identity in Arda is persistent, privacy-aware, and supports role-based permissioning at both the wallet and entity level.

---

## Core Concepts

| Component | Description |
|-----------|-------------|
| `Entity` | A legal person (individual or organization) represented by one or more wallets |
| `WalletGroup` | A collection of wallets associated with an Entity for custody, execution, or accounting |
| `KycTier` | Numeric level (0–3) reflecting user verification and access permissions |
| `Attestation` | On-chain signed statement verifying identity attributes or credentials |
| `RoleBinding` | Assignment of protocol-level capabilities (e.g., asset issuer, syndicate agent) to an Entity |

---

## Identity Lifecycle

1. **Initialization** — A wallet or group of wallets registers or is linked to an Entity.
2. **Verification** — One or more KYC providers issue attestations for that Entity or WalletGroup.
3. **Tier Assignment** — KYC Tier is set based on aggregated attestations and jurisdictional logic.
4. **Role Configuration** — Optional binding to a Role (e.g., Underwriter, Custodian, Asset Originator).
5. **Interaction** — Entity uses its wallets to transact, access modules, or represent tokenized rights.
6. **Revocation / Re-attestation** — Credentials may be revoked or re-issued over time as needed.

---

## KYC Tier Permissions

| Tier | Description | Permissions |
|------|-------------|-------------|
| 0 | Anonymous or unverified | View-only, no protocol access |
| 1 | Light KYC | Limited trade, read access |
| 2 | Verified retail user | Full protocol access, moderate size limits |
| 3 | Institutional or regulated entity | Unlimited size, issuer and governance roles |

---

## Attestation Model

Attestations are signed by trusted verifiers and stored on-chain or in encrypted form (via Vault) with hashes anchored to identity profiles.

### Example Attestation

```json
{
  "entityId": "ENTITY-001",
  "attestor": "KYCProvider-X",
  "attributes": {
    "country": "SG",
    "accredited": true,
    "entityType": "LLC"
  },
  "signature": "0xabc..."
}
```

Attestations may cover jurisdictional eligibility, investor status, or role qualifications.

---

## Use Cases

- **Permissioned Pools**: Restrict pool access to certain KYC tiers or jurisdictions.
- **Cross-Module Sync**: Identity tier reflected in Trading, Capital, and Compliance modules.
- **Custom Roles**: Assign capabilities to agents (e.g., Monitoring Agent, Risk Assessor).
- **Revocation/Resync**: Real-time revocation and refresh of user permissions via attestation updates.
