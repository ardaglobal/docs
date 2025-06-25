--8<-- "warning.md"
# Tokenomics

Arda’s programmable capital platform is underpinned by a dual-token model and a compliance-first token factory architecture. This page outlines the foundational token types in the Arda ecosystem, their roles, and future expansion plans.

## Core Tokens

### ARDA (Native Protocol Token)

The ARDA token is the native coin of the Arda network and serves as the foundational economic and governance instrument.

**Functions:**

- Pay protocol-level transaction and service fees
- Stake for protocol governance and network security
- Participate in governance decisions (protocol upgrades, treasury allocation)
- Earn rewards via staking and protocol contributions

**Supply:**

- 1,000,000,000 ARDA
- 100% of ARDA supply is minted at genesis
- Unlock and distribution schedule TBD

**Example Mechanics:**

- Portion of protocol fees are sent to an on chain insurance fund that can buy ARDA back from the market. This fund could be used to seed new ArdaOS regions.

### Arda Stablecoin (Region-Specific)

Arda chains may issue a compliant, fiat-backed or regulated stablecoin that reflects local currency value (e.g., ArdaUSD, ArdaAED).

**Functions:**

- Serve as the unit of account for real estate and capital transactions
- Enable compliance-first settlement with integrated KYC/AML enforcement
- Plug into escrow, waterfall, and loan repayment modules

## Token Factory

The Arda Token Factory module enables compliant issuance of custom, on-chain financial representations. These tokens are modular and programmable, supporting transfer restrictions, vesting logic, and lifecycle automation.

### Categories of Factory-Issued Tokens

#### Ownership Tokens
- Represent direct or fractional ownership of real-world properties or entities (e.g., SPVs)
- Linked to legal wrappers (e.g., Delaware LLCs, Dubai SPVs)
- Subject to jurisdictional transfer restrictions

#### Representative Tokens
- Mirror the ownership tokens but are optimized for trading or use as collateral
- Can be wrapped or reissued versions of core asset tokens
- Useful in liquidity pools, cross-chain transfer, or synthetic index creation

#### Loan Tokens
- Represent on-chain obligations like mortgages, bridge loans, or structured notes
- Contain payment schedule metadata, interest terms, and amortization logic
- Traded or syndicated via Arda’s programmable capital markets

#### Equity Tokens
- Track the residual or preferred value of an underlying asset (e.g., mezzanine tranches)
- Integrate with Waterfall distribution contracts
- Potentially tied to governance rights or dividend flows

## Governance & Incentives

Arda’s governance structure enables token-weighted participation, reputation gating, and compliance-enforced roles.

**Mechanisms:**

- On-chain DAO voting via ARDA token
- Reputation boosts for verified contributors (agents, data providers, liquidity suppliers)
- Treasury incentives for onboarding strategic assets or participants

**Incentive Recipients:**

- Agents (structuring, risk, monitoring)
- Originators and asset onboarders
- Data providers and oracle publishers
- Investors staking capital into programmable pools

## General Lifecycle Flow

Typical lifecycle phases (varies by object):

1. **Initialized** – Object created (SPV, Facility, AssetToken, DebtToken)
2. **Activated** – Meets minimum compliance/config requirements
3. **Issuance / Drawdown** – Capital deployed or token minted
4. **Active** – Ongoing financial and/or compliance state
5. **Repayment / Exit** – Principal or equity returned
6. **Closed / Finalized** – Object settled, closed, or burned

## Lifecycle Objects

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

## Future Token Concepts

- **Yield Tokens**: Stream future cashflows from property rent, escrow interest, or waterfall tranches.
- **Tranche Tokens**: Represent senior/mezz/junior risk profiles in syndicated loans or real estate projects.
- **Permissioned Pool Shares**: Tokenized shares in capital pools gated by investor KYC tier and strategy mandate.

## Compliance by Design

All tokens issued in Arda adhere to a “compliance-by-default” design:

- Whitelist-based transfer enforcement
- Region-aware permissioning logic
- Lifecycle event logging for audit and transparency
- Optional zk-based attestations for private transfer proofs
- All lifecycle transitions are gated by `TransferRule`, `JurisdictionProfile`, or `KYC Tier`.
- Lifecycle logs are added to `AuditLog` for traceability.
- Status transitions can only be triggered if permissions, risk, and documentation requirements are satisfied.

## Reusability and Composition

- Multiple lifecycle objects can be linked:
  - One PaymentSchedule may cover several TrancheTokens
  - One EventHook may update both FacilityStatus and FeeEngine
- Lifecycle definitions can be cloned and reused across deal templates (via SDK)

## Summary

Arda’s token architecture is modular, jurisdiction-aware, and future-proof. The native ARDA token and stablecoin form the backbone of protocol activity and compliance-enabled settlement. Around them, the Token Factory supports programmable real-world finance across ownership, credit, and liquidity domains.

