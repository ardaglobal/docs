# Arda Trading

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

Arda Trading provides secondary market infrastructure for real-world asset tokens, including fractional property, debt, and structured financial instruments. It supports both public orderbook and private RFQ-based trading, with embedded compliance enforcement and programmable settlement via Arda Clear.

Arda Trading enables institutions, brokers, and individuals to interact with tokenized real estate and private credit as seamlessly as modern equities—while remaining compliant with regional laws and regulations.

---

## 🧱 Key Features

### 1. **Hybrid Exchange Model**
- Supports both:
  - Public limit and market orders
  - Private negotiated RFQs and OTC trades
- Trade types:
  - AssetToken, DebtToken, TrancheToken, YieldToken

### 2. **Order Management System**
- Standard order types:
  - Limit, market, stop, TWAP, fill-or-kill
- Compliance checks triggered before order execution
- Wallet-level permissions integrated

### 3. **RFQ Engine**
- Brokers and agents can quote or respond to structured deals
- Settlement can be deferred or contingent
- Ideal for large block trades or illiquid asset types

### 4. **Compliance-Layer Matching**
- Matches only allowed trades:
  - Jurisdictional permission
  - Role and wallet status
  - KYC tier and holding limits
- Disallowed trades are rejected before matching

### 5. **Escrow & Conditional Settlement**
- Optional escrow of tokens or payments
- Delayed or phased release
- Useful for milestone-dependent deals or legal finality requirements

---

## 💸 Liquidity Features

- **Fractional Ownership**: Enables retail-sized positions
- **Liquidity Incentives**: Market makers and brokers rewarded for tight spreads
- **Asset Pools**: Group similar tokens for index or pooled liquidity
- **Exit Pathways**: For crowdfunded or long-term holders

---

## 🔗 Settlement

- Executed trades are routed through Arda Clear
- Supports:
  - Instant on-chain swaps
  - Cross-chain or fiat-linked netting
  - Delayed finality for regulated jurisdictions

---

## 🛠️ Developer Notes

- Orderbook and RFQ exposed via SDK and APIs
- Hooks allow post-trade compliance or event triggering
- Governance may whitelist new token types or matching logic via AIP

---

## 🧪 Example Flow

1. Investor lists 1% of a Dubai property token at market price
2. U.S. buyer submits RFQ for 5% total stake → price and terms agreed
3. Compliance engine verifies eligibility (KYC Tier 3, accredited)
4. Tokens held in escrow until fiat settlement completes
5. Final settlement posted via Arda Clear

---

## 📚 Related Specs

- [Settlement](../protocol/settlement.md)
- [Token Models](../protocol/token-models.md)
- [Compliance Engine](../protocol/compliance-engine.md)
- [Arda Clear](arda-core.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
