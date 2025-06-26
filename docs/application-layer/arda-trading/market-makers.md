--8<-- "warning.md"

# Market Makers and Liquidity Incentives

---

## Overview

Arda Trading incentivizes liquidity providers, brokers, and market makers to seed secondary markets for tokenized assets. These actors are rewarded for tightening spreads, improving depth, and facilitating early adoption of thinly traded tokens, such as real estate shares or private debt instruments.

Market maker participation is permissioned and compliance-aware, with programs tailored to institutional agents, DAO participants, and regulated brokers.

---

## Key Roles

| Role | Description |
|------|-------------|
| Protocol Market Maker | Contracts directly with Arda DAO to provide base liquidity |
| Broker Partner | Onboards assets and maintains liquidity with performance-linked incentives |
| LP Syndicate | Whitelisted addresses collectively manage a market-making strategy |
| Autonomous Agent | Smart contract-based bots using programmatic rules to provide quotes |

---

## Incentive Mechanisms

- **Spread Rebates**: Earned for providing tight bid/ask spreads
- **Volume Rewards**: Based on trading volume and order persistence
- **Token Incentives**: $ARDA or PoolShare tokens distributed weekly
- **Listing Bounties**: For onboarding landmark or illiquid assets
- **Fee Sharing**: Optional fee split with marketplaces or listing platforms

---

## Participation Requirements

- **KYC Tier**: Tier 2+ required for all market maker wallets
- **Jurisdiction Limits**: Certain assets restricted to regional actors
- **Liquidity Thresholds**: Must maintain minimum size and uptime
- **Disclosure**: Brokers must disclose conflicts and sources of funds

---

## Performance Monitoring

Metrics tracked include:

- Spread %
- Orderbook depth (per token)
- Quote frequency and uptime
- Trade fulfillment ratio
- Regional coverage and asset class diversity

These are published in the Agent Registry and on-chain analytics dashboards.

---

## Integration Points

- **Orderbook**: Posts and updates limit orders
- **RFQ Engine**: Fulfills quotes manually or via API
- **Vault**: Stores registration documents, broker agreements
- **Compliance Engine**: Filters based on KYC, region, and mandate status
- **Agent Registry**: Tracks score, participation, and governance eligibility

---

## Example Market Maker Record

```json
{
  "agentId": "MM-041",
  "entity": "PropBridge Capital Ltd",
  "region": "EU",
  "authorizedTokens": ["AssetToken-001", "TrancheToken-011"],
  "performance": {
    "spreadAvg": 0.85,
    "dailyVolume": 98000,
    "uptimePct": 98.7
  }
}
```
