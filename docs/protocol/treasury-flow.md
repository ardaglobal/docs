# Treasury Flow

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

Arda’s Treasury Flow system manages the movement of funds across facilities, tokens, fee recipients, and compliance-controlled accounts. It supports programmable distribution, interest allocation, and sweeping logic, all enforced by deterministic, permissioned protocol logic.

This enables real-time capital flows across structured financial products with full auditability and regulatory compliance.

---

## 🧱 Core Components

### 1. **SweepInstruction**
- Defines automatic movement of MoneyTokens from one account to another.
- Examples:
  - Daily sweep from borrower wallet to facility escrow
  - Weekly distribution from SPV to yield token holders
- Can be conditional (e.g. only if >$10,000 available)

### 2. **InterestSplitRule**
- Governs how interest is allocated across stakeholders.
- Fields:
  - Percentage to senior tranche, junior tranche, servicer, protocol
  - Optional floors and caps
- Can dynamically change based on FacilityStatus

### 3. **FeeEngine**
- Central routing hub for fees in a transaction.
- Supported fee types:
  - Origination
  - Platform
  - Servicer
  - Auditor
  - Regulatory reserve
- Fees are expressed as flat amounts or basis points, and paid in MoneyToken

### 4. **OracleUpdate**
- Triggers price or valuation changes.
- Used to:
  - Update LTV calculations
  - Drive dynamic repayment terms
  - Adjust reserve ratios

---

## 🔁 Flow Example: Mortgage Facility

1. User draws $1M from a facility → triggers FeeEngine
2. Origination fees (1%) sent to protocol, servicer, and SPV reserve
3. Monthly payments routed via SweepInstruction to a custodial account
4. InterestSplitRule allocates yield to senior and junior tranche holders
5. Late payment triggers EventHook that adjusts schedule and penalties

---

## 🧮 Compliance & Audit

- All treasury flows logged in `AuditLog`
- KYC tier, jurisdiction, and role must be validated before funds move
- Some instructions require additional approvals (e.g. sovereign capital flows)

---

## 🛠️ Developer Notes

- SDK exposes `createSweep`, `registerSplitRule`, and `simulateFeeImpact`
- Events are posted to protocol event bus for downstream systems
- Integration with Arda Clear allows off-chain fiat or cross-chain bridging to follow same logic

---

## 📚 Related Specs

- [Lifecycle](lifecycle.md)
- [Compliance Engine](compliance-engine.md)
- [Core Primitives](core-primitives.md)
- [Settlement](settlement.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
