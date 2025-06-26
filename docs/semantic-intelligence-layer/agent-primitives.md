--8<-- "warning.md"

# Agent Primitives

Agent primitives are modular, programmable actors within Arda that facilitate structured decision-making and execution for credit, compliance, trading, and monitoring. These agents operate within the protocol, follow deterministic rules or AI-augmented logic, and are permissioned by role and jurisdiction.

They can be composed into deal flows, delegated to users or institutions, or used as standalone modules in Arda applications.

---

## Core Agent Types

### 1. **Connect Agent**

- Matches originators with investors based on:
    - Jurisdiction
    - Risk appetite
    - Facility structure
- Scores matches using protocol-native data and mandate filters.

### 2. **Risk Agent**

- Ingests loan tapes, cohort history, market data.
- Outputs:
    - PD, LGD, Sharpe, volatility
    - Tagging schemes
    - Red flags
- Used in underwriting, pricing, and surveillance.

### 3. **Structuring Agent**

- Models deal structures (waterfalls, tranches, schedules).
- Parameterizes:
    - Reserve ratios
    - Tranche sizes
    - Coupon terms
- Publishes programmable templates or auto-populates deal drafts.

### 4. **Monitoring Agent**

- Tracks post-close performance.
- Monitors:
    - Payment behavior
    - Trigger breaches
    - Underperformance or risk migration
- Sends alerts or triggers event hooks (e.g. pause disbursement).

### 5. **IM Agent (Investment Memo Agent)**

- Composes a standardized investment memo using:
    - Facility details
    - Risk tags
    - Structuring outputs
- Designed to reduce manual underwriting friction.

---

## Agent Registry & Permissions

- Each agent is registered with:
    - Agent ID
    - Creator Entity
    - Staking status
    - Role and jurisdiction scope

- Permissioned by:
    - Asset type
    - Region
    - Risk band

---

## Staking and Attribution

- Agents may be required to stake tokens to operate.
- Bad behavior may result in slashing or blacklist.
- Usage and performance tracked for attribution and rewards.
