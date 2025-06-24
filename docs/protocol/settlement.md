--8<-- "warning.md"
# Settlement Specification

---

## Overview

The Arda Settlement system provides finality, netting, and token movement infrastructure across Arda OS chains and external blockchains. It underpins Arda Clear and ensures compliant, auditable, and efficient settlement of real estate and capital markets transactions.

This spec defines the settlement-related primitives, flows, and constraints.

---

## Core Components

### 1. **SettlementQueue**
- Queue of pending transfers and nettable events.
- Types:
  - Internal (same chain, direct finality)
  - Cross-region (requires bridging)
  - Conditional (e.g. legal check, fiat clearance)
- Each entry includes:
  - Source and destination wallet
  - Token type and amount
  - Dependencies (e.g. compliance check or hook)

### 2. **NettingEngine**
- Aggregates multi-party flows into net positions for final settlement.
- Reduces gas and execution overhead.
- Example:
  - 5 buyers contribute funds to a pool → net to SPV
  - 3 lenders repay a tranche → net repayment to token holders

### 3. **FeeSink**
- Final recipient for all protocol or regulatory fees.
- Configured by governance or jurisdiction profile.
- Can route to:
  - DAO treasury
  - Regulator
  - Operating company
  - Burn address

---

## Cross-Chain / Cross-Asset Logic

Arda Clear handles cross-network finality via:

- **Bridged messages**: Validated via light clients, TEE, or ZK proof
- **Delay buffers**: Regulatory or fiat buffers (e.g. 24h notice)
- **Confirmation events**: Settlement posted to protocol event log

---

## Compliance Integration

- All settlement actions must pass:
  - `TransferRule`
  - `JurisdictionProfile`
  - Role-based access
- SettlementQueue entries are subject to slashing or rejection if unauthorized

---

## Developer Notes

- `enqueueSettlement()` call creates queue entry
- `settle()` or `batchSettle()` finalizes and clears nettable items
- Hooks can trigger post-settlement logic (e.g. token minting, custody transfer)

---

## Examples

**Example 1: Token Transfer on Same Chain**
```json
{
  "source": "walletA",
  "destination": "walletB",
  "token": "AssetToken.001",
  "amount": "100",
  "type": "internal"
}
```

**Example 2: Cross-Region Debt Repayment**
```json
{
  "source": "borrower.wallet",
  "destination": "SPV.wallet",
  "token": "MoneyToken.USD.ae",
  "amount": "25000",
  "type": "cross-region",
  "jurisdiction": "UAE → USA"
}
```
