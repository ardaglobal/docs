--8<-- "warning.md"

# Arda Network-as-a-Service (NaaS)

---

## Overview

Arda Network-as-a-Service (NaaS) is the deployment layer that enables sovereign regions to operate independent ArdaOS chains with full compliance alignment and infrastructure control. It supports both permissioned and semi-public deployments tailored to local performance, regulatory, and data residency requirements.

Arda NaaS abstracts infrastructure complexity, offering pre-configured environments with pluggable compliance modules and SDK compatibility.

---

## Key Capabilities

| Feature | Description |
|---------|-------------|
| Sovereign Deployment | Chains launched under control of local regulators or authorities |
| Regional Compliance Profiles | Automatically scoped TransferRules, identity tiers, and restrictions |
| Managed Validator Setup | Supports POA, ZK rollups, or hybrid validator architectures |
| Hosted Infrastructure | Optional managed deployments in AWS, Azure, GCP, or sovereign cloud |
| Bridge Gateway Integration | Out-of-the-box support for inter-region and inter-chain bridging |

---

## Deployment Modes

| Mode | Description | Example Use Case |
|------|-------------|------------------|
| `Public-ZK-Rollup` | Open state, public verification, ZK-proof rollup on Celestia | Singapore national land registry |
| `POA-Private` | Validator-governed chain with KYC-gated access | UAE real estate compliance network |
| `Hybrid` | Partially public, part permissioned with attestation filters | US Reg D private markets |

---

## Deployment Flow

1. **Region Onboarding** – Define jurisdiction profile, entity types, validator criteria.
2. **Compliance Scope Setup** – Load TransferRules, KYC tiers, tax and data rules.
3. **Validator Bootstrapping** – Launch with 3–5 initial trusted validators.
4. **Chain Initialization** – Deploy base ArdaOS chain with Arda Core modules.
5. **Bridge Configuration** – Link to Arda Core and other ArdaOS regions via SDK.

---

## Interop & Global Coordination

Arda NaaS chains are sovereign but interoperable via:

- **Bridge Contracts**: Secure message-passing across ArdaOS instances.
- **Global SDK Registry**: Tracks region endpoints, validator anchors, compliance schemas.
- **Shared Asset Identifiers**: Global registry maps asset tokens across regions.

---

## Use Cases

- **GovTech Infrastructure**: Digitized land, licensing, or public asset systems.
- **Private Markets**: Regionally bounded capital formation or tokenized finance platforms.
- **Sandbox Environments**: Custom testnets for partners or regulators to simulate jurisdictional logic.
