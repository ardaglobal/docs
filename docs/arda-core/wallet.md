--8<-- "warning.md"

# Arda Wallet

The Arda Wallet module governs user and institutional access to tokenized real estate and capital markets infrastructure. It enforces compliance policies through KYC tiers, permissions, and custody configurations, supporting both Web3-native users and regulated financial institutions.

Arda Wallet is designed for flexibility and security, enabling non-custodial key management, institutional custody integration, and real-time enforcement of access controls across jurisdictions.

---

## Key Features

- **KYC Tier Enforcement**: Every wallet is assigned a KYC Tier, determining its permissions and transfer eligibility.
- **Wallet Groups**: Multiple wallets can be grouped under a single entity to represent institutional portfolios or legal entities.
- **Custody-Aware Design**: Supports integration with third-party custodians, multi-sig wallets, or self-custody configurations.
- **Compliance-Embedded**: Wallet actions are gated by jurisdictional rules defined in the Compliance Engine.
- **Auditability**: All transfers and permissions are logged on-chain for traceability.

---

## Wallet Types

| Type | Description | Use Case |
|------|-------------|----------|
| `SelfCustody` | Non-custodial, managed by the user | Retail investors, developers |
| `InstitutionalCustody` | Managed by an approved custodian | Funds, REITs, family offices |
| `WalletGroup` | Collection of wallets tied to one legal Entity | Multi-account firms |
| `AgentWallet` | Designated wallets with elevated execution roles | Connect/Risk/Monitoring agents |

---

## KYC Tiers

| Tier | Capabilities | Intended Users |
|------|--------------|----------------|
| Tier 0 | View-only, no transfers | Anonymous browsers |
| Tier 1 | Basic interactions, limited volume | Low-risk jurisdictions |
| Tier 2 | Full asset access, most protocols | Verified retail users |
| Tier 3 | Institutional-grade, high limits | Funds, banks, corporates |

KYC tiers are enforced via `TransferRule` and `JurisdictionProfile` hooks during every asset transfer or contract interaction.

---

## Wallet Lifecycle

1. **Creation** — User initializes or links a wallet.
2. **KYC Assignment** — Identity attestation assigns tier level.
3. **Binding** — Wallets can be grouped or associated with an Entity.
4. **Permission Sync** — Wallet permissions reflect latest compliance rules.
5. **Activity** — Users interact with the Arda platform via permitted functions.
6. **Audit & Review** — All actions are logged for compliance oversight.

---

## Compliance Integrations

- **TransferRules**: Wallet transfer requests are checked against jurisdictional rules.
- **JurisdictionProfiles**: Limits wallet activity based on geographic regulatory mappings.
- **AuditLogs**: Chain-level record of every wallet action and permission update.
