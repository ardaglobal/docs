# Trading RFQ Example

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

This example demonstrates how to execute a compliant off-chain negotiated trade using Arda Trading’s Request-for-Quote (RFQ) engine. It simulates a fractional real estate token being offered and acquired through an RFQ flow, with embedded eligibility checks and escrowed settlement.

---

## 🧪 Scenario Summary

A Tier 3 investor negotiates to acquire a 5% stake in a Dubai residential building via an RFQ exchange with a Tier 2 seller. Settlement is delayed until regulatory approval and escrow validation.

---

## 🧱 Step-by-Step Flow

### 1. **List RFQ Offer**
- Seller calls `createRFQ()` via SDK:
  - Token: `AssetToken.009`
  - Quantity: 5,000 (5% stake)
  - Ask price: $50,000
  - Valid for: 72 hours
  - Conditions: UAE KYC Tier 2+ buyer only

### 2. **Buyer Discovery and Validation**
- RFQ listed in Arda Trading portal
- Buyer (Tier 3, accredited) initiates `respondToRFQ()`
- Compliance engine runs:
  - Jurisdictional match → ✅
  - KYC Tier match → ✅
  - Holding limit → ✅

### 3. **Escrow Setup**
- Buyer deposits $50,000 in `TEST.USD` via PermissionedPool
- Seller pre-commits 5,000 tokens to escrow contract
- Both parties sign execution intent

### 4. **Arda Clear Settlement**
- SettlementQueue entry created
- Compliance re-check executed before final swap
- Delay buffer: 24h for optional regulator review
- Final token transfer and fund release triggered by `finalizeRFQTrade()`

---

## 🔁 Hooks and Logs

- `onEscrowReady()` → triggers buffer countdown
- `onEscrowExpired()` → triggers rollback
- `onSettlementComplete()` → triggers AuditLog entry

---

## 🛠️ Developer Notes

- SDK:
  - `createRFQ()`, `respondToRFQ()`, `finalizeRFQTrade()`
- All trades visible via `queryRFQBook()` and `SettlementQueue`
- AuditLog indexed by jurisdiction and token ID

---

## 📚 Related Specs

- [Arda Trading](../product/arda-trading.md)
- [Compliance Engine](../protocol/compliance-engine.md)
- [Settlement](../protocol/settlement.md)
- [Token Models](../protocol/token-models.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
