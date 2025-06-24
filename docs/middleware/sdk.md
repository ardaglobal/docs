--8<-- "warning.md"
# Arda SDK

---

## Overview

The Arda SDK provides a developer-facing interface to interact with the Arda protocol stack. It abstracts core functionality across sovereign chains, the Arda Core coordination layer, compliance enforcement, token lifecycles, and agentic logic. 

It is the primary toolkit for building applications, integrations, agents, and dashboards on Arda.

---

## Key Modules

### 1. **Identity & Access**
- Methods:
  - `registerEntity()`, `verifyKYC()`, `linkWalletGroup()`
- Used to onboard users, investors, originators, and regulators

### 2. **Token Operations**
- Methods:
  - `createAssetToken()`, `mintDebtToken()`, `splitTrancheToken()`
  - `transferWithComplianceCheck()`, `burnToken()`
- Tokens scoped to region, asset type, compliance class

### 3. **Facility & Capital Logic**
- Methods:
  - `createFacility()`, `drawdown()`, `repay()`
  - `registerWaterfall()`, `distributeYield()`

### 4. **Vault Integration**
- Methods:
  - `registerDoc()`, `linkToToken()`, `verifyAccess()`

### 5. **Compliance**
- Methods:
  - `simulateTransfer()`, `checkTransferRule()`, `getJurisdictionProfile()`

### 6. **Agent Framework**
- Methods:
  - `registerAgent()`, `publishTemplate()`, `triggerEventHook()`
  - Agent roles include Connect, Risk, Structuring, Monitoring

### 7. **Settlement & Treasury**
- Methods:
  - `enqueueSettlement()`, `settleBatch()`, `createSweepInstruction()`

### 8. **Governance**
- Methods:
  - `submitAIP()`, `castVote()`, `queryPolicy()`

---

## Chain Abstraction Layer

- The SDK handles routing and message encoding across:
  - Arda OS regional chains (via RPC or message bus)
  - Arda Core coordination logic
  - External chains via Arda Clear bridge adapters

---

## Permissions & Role Control

- SDK actions restricted by:
  - WalletGroup affiliation
  - KYC tier
  - Jurisdiction and role scope
- Session tokens, agent keys, and signature wrapping are supported

---

## Example Usage

```ts
const investor = await sdk.registerEntity("Investor", KYC_TIER_2)
const token = await sdk.createAssetToken(propertyMetadata)
await sdk.transferWithComplianceCheck(token.id, investor.wallet, 100)
```
