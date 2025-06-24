# Fractional Ownership and Trading

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

Arda supports fractional ownership of real-world assets through AssetTokens, enabling investors to buy and sell portions of properties or financial rights. This lowers the barrier to entry, improves liquidity, and enables portfolio diversification at smaller capital sizes.

The trading of fractional interests is fully compliance-gated, supporting retail, accredited, and institutional flows while respecting regional legal boundaries.

---

## Key Features

| Feature | Description |
|---------|-------------|
| Micro-ownership | Allows purchases as low as 0.01% of an asset |
| Transfer Restricted | Enforces KYC tier, jurisdiction, and token limits on every trade |
| Aggregation Support | Brokers or marketplaces can bundle fractions into portfolios |
| Real Yield Distribution | Fractional holders can receive pro-rata rent or dividend payouts |
| Early Liquidity | Enables crowdfunding exit before full asset maturity |

---

## Lifecycle

1. **Issuance** — AssetTokens minted representing fractional rights
2. **Primary Distribution** — Via Arda Capital, Crowdfunding, or Direct Sale
3. **Secondary Trading** — Listed on Arda Trading with KYC filters
4. **Yield Streams** — Optional rental yield, income, or tax distribution
5. **Exit/Maturity** — Asset is sold or converted; fractions redeemed via Arda Clear

---

## Compliance Controls

- **Minimum Denomination** — Configured per jurisdiction (e.g., 0.1%, $1,000 equivalent)
- **Transfer Whitelist** — Only eligible investors may receive tokens
- **Lockups / Vesting** — Optional time gating for early participants
- **Tax Reporting** — Optional automatic tax and capital gains tracking

---

## Integration Points

- **Token Factory** — Defines fractional rights in metadata schema
- **Vault** — Anchors legal title, tax compliance, and offer documents
- **Clear** — Manages payouts and final redemptions
- **Compliance Engine** — Enforces per-fraction regulatory logic
- **Orderbook / RFQ** — Enables public or private market trading

---

## Example

```json
{
  "tokenId": "AssetToken-002",
  "fractionOwned": 0.005,
  "entitlements": ["rental_income", "appreciation"],
  "region": "UAE",
  "restrictions": {
    "minAmountUSD": 1000,
    "kycTier": 2
  }
}
```

---

## Related Docs

- [`token-factory.md`](../arda-core/token-factory.md)
- [`orderbook.md`](./orderbook.md)
- [`clear.md`](../arda-core/clear.md)
- [`wallet.md`](../arda-core/wallet.md)

---

*© Arda OS Documentation • Licensed under MIT*
