--8<-- "warning.md"
# Token Models

Arda's token models are modular, compliance-aware, and is designed to interoperate across ArdaOS chains and external networks via bridges.

This specification outlines the key token categories and their lifecycle logic, permissions, and data structure standards.

Each token model is built upon Arda's [Core Primitives](../primitives/core-primitives.md) and inherits the protocol's compliance and lifecycle management capabilities. This document specifies the key token types and their attributes.

---

## Token Categories

### 1. **MoneyToken**
- Represents fiat or stablecoin value.
- Used for payments, sweeps, fees, and interest settlement.
- Can be backed by bank deposits, fiat ramps, or bridged stablecoins.
- Examples: `USD.ae`, `AED.regulated`, `USDC.wrapped`

### 2. **AssetToken**
- Represents rights to real property or real-world assets.
- Backed by legal enforceability via Arda Foundry (e.g. SPVs).
- Metadata includes geolocation, unit economics, and rights descriptors.
- Supports:
  - Fractional ownership
  - Rental or usage rights
  - Development or option rights

### 3. **DebtToken**
- Represents credit exposure to a facility, mortgage, or bond.
- Includes scheduled repayment, interest, and optional callable terms.
- Tied to a `Drawdown` and amortized over time.
- Convertible into `TrancheToken` for syndication.

### 4. **YieldToken**
- Represents entitlement to income streams (e.g. rent, interest).
- Can be split or aggregated into pools.
- Used in structured products or tokenized cash flow instruments.

### 5. **TrancheToken**
- Represents structured credit exposure to a pool or facility.
- Supports seniority, leverage, and liquidity layering.
- Examples:
  - Senior / Mezzanine / Equity tranches
  - Tokenized REIT slices
- Underpinned by a `Waterfall` and allocation engine.

### 6. **PermissionedPool**
- Virtual container for constrained token interactions.
- Enforces KYC, jurisdiction, role, and deal-specific rules.
- Supports pro-rata exposure or tiered access.
- Often used in primary issuance or private placement flows.

---

## Token Lifecycle Components

Each token type may use the following lifecycle extensions:

- **Mintable**: Token can be issued on demand (e.g. upon legal settlement or capital contribution).
- **Burnable**: Token can be destroyed (e.g. repaid, expired, revoked).
- **TransferRestricted**: Transfer requires validation via `TransferRule`.
- **MetadataUpdatable**: Non-financial metadata can evolve (e.g. inspection, valuation).
- **HookEnabled**: Supports `EventHooks` for compliance or financial triggers.

---

## Compliance Features

All tokens implement:

- **Jurisdiction-aware transfer rules**
- **Audit logging and traceability**
- **Attribution to originating Entity or SPV**
- **Tied to KYC tier and permissioned wallet groups**

---

## Bridging & Interoperability

- Tokens can be wrapped for EVM chains (ERC-20 compatible wrappers).
- Cosmos IBC or ZK light-client bridges supported for secure inter-region movement.
- Off-chain representation is cryptographically anchored to Arda Vault data.

---

## Developer Notes

- All tokens are natively indexed in the Arda Ledger and visible via APIs.
- Token schema follows a strict standard defined in the SDK.
- Validators and bridge relayers enforce token properties and lifecycle constraints.
