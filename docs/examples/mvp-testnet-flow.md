# MVP Testnet Flow

---

## Overview

This example outlines a Minimum Viable Product (MVP) flow for testing tokenized real estate functionality in a regional Arda OS testnet. It includes onboarding, asset registration, token issuance, compliance enforcement, and secondary trading—all under test conditions.

---

## Scenario Summary

A developer launches a testnet instance for a fictional city (e.g. Testburg) and simulates the lifecycle of a fractionalized residential property:

- Owner tokenizes a property
- Investors KYC and contribute funds
- AssetToken issued and traded
- Compliance and settlement validated

---

## Step-by-Step Flow

### 1. **Create Region Testnet**
- Launch Arda OS using `testburg-genesis.json`
- Deploy KYC engine with local T1/T2 schema
- Register `TEST.USD` MoneyToken and connect Arda Vault node

### 2. **Register SPV and Upload Deed**
- Call `createEntity()` → SPV owner onboarded
- Use Arda Vault to register property deed with metadata:
  - Location: "123 Test Street"
  - Valuation: $500,000
  - Document: `deed-testburg.pdf`

### 3. **Issue AssetToken**
- Call `createAssetToken()` and link to Vault doc hash
- Mint 10,000 fractional tokens
- Lock into PermissionedPool scoped to KYC Tier 2+

### 4. **Investor Onboarding**
- 3 investors complete simulated KYC (Tiers 1–3)
- Tier 2 investor contributes $50,000 via testnet `TEST.USD`

### 5. **Transfer and Compliance Enforcement**
- KYC Tier 1 investor attempts transfer → rejected
- Tier 2 transfer → passes compliance and transfer rule
- Event logs recorded in AuditLog

### 6. **Secondary Trading**
- Tier 2 investor lists 1,000 tokens via Arda Trading RFQ
- Tier 3 investor accepts → Arda Clear finalizes cross-account settlement

---

## Deployment Checklist

- [ ] Arda OS testnet running
- [ ] KYC module deployed and configured
- [ ] Vault storage and event anchoring enabled
- [ ] Arda Trading and Arda Clear modules live
- [ ] Compliance rules scoped to TEST jurisdiction

---

## Developer Notes

- All SDK calls tested using Arda CLI and Postman collection
- Events can be queried via `queryAuditLog()` or testnet explorer
- Tracing support via OpenTelemetry plugin

---

## Related Specs

- [Asset Primitives](../primitives/asset-primitives.md)
- [Token Models](../protocol/token-models.md)
- [Compliance Engine](../protocol/compliance-engine.md)
- [Arda Trading](../product/arda-trading.md)

---

## Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
