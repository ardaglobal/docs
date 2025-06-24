# Lifecycle Specification

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

This specification defines the lifecycle model for key token types and facilities in the Arda protocol. Lifecycle events drive financial logic, compliance enforcement, and state changes across tokens, capital structures, and legal wrappers. These transitions are deterministic, event-driven, and anchored in Arda's core protocol state.

---

## 🔄 General Lifecycle Flow

Typical lifecycle phases (varies by object):

1. **Initialized** – Object created (SPV, Facility, AssetToken, DebtToken)
2. **Activated** – Meets minimum compliance/config requirements
3. **Issuance / Drawdown** – Capital deployed or token minted
4. **Active** – Ongoing financial and/or compliance state
5. **Repayment / Exit** – Principal or equity returned
6. **Closed / Finalized** – Object settled, closed, or burned

---

## 🧱 Lifecycle Objects

### 1. **FacilityStatus**
Tracks the current stage of a financing or issuance process.

- Phases: `Draft`, `Open`, `Subscribed`, `Funded`, `In Repayment`, `Closed`
- Used for: debt issuances, equity raises, structured pools

### 2. **Drawdown**
Represents capital released from a facility.

- Triggered by: investor subscription, milestone completion, disbursement logic
- May create or mint a DebtToken
- Includes: timestamp, amount, purpose, oracle snapshot

### 3. **InterestAccrual**
Defines how interest is accumulated.

- Types: fixed, floating, step-up, hybrid
- Frequency: daily, monthly, annual
- Integrated with fee and yield flows

### 4. **Repay / Burn Events**
- Tracks repayment or voluntary cancellation of debt or assets
- Tokens are updated or burned to reflect reduction in obligation

### 5. **PaymentSchedule**
Defines planned disbursement and repayment dates

- Example: construction loan may include 6 milestone-linked disbursements, then quarterly interest
- Can include grace periods, prepayment windows, and penalties

### 6. **EventHook**
Automated trigger for lifecycle transitions

- Can be time-based, oracle-based, or dependent on compliance state
- Examples:
  - Convert a development right token to an ownership token upon milestone completion
  - Auto-freeze transfers if tax documentation expires

---

## 📜 Compliance Integration

- All lifecycle transitions are gated by `TransferRule`, `JurisdictionProfile`, or `KYC Tier`.
- Lifecycle logs are added to `AuditLog` for traceability.
- Status transitions can only be triggered if permissions, risk, and documentation requirements are satisfied.

---

## 🔁 Reusability and Composition

- Multiple lifecycle objects can be linked:
  - One PaymentSchedule may cover several TrancheTokens
  - One EventHook may update both FacilityStatus and FeeEngine
- Lifecycle definitions can be cloned and reused across deal templates (via SDK)

---

## 🛠️ Developer Notes

- Lifecycle events are broadcast via the protocol event bus.
- SDK includes simulation and preview functions for all transitions.
- Status is queryable via `FacilityRegistry`, `TrancheIndex`, or object-specific endpoints.

---

## 📚 Related Specs

- [Core Primitives](../primitives/core-primitives.md)
- [Token Models](token-models.md)
- [Compliance Engine](compliance-engine.md)
- [Treasury Flow](treasury-flow.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
