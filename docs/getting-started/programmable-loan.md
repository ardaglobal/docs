--8<-- "warning.md"

# Programmable Loan Example

---

## Overview

This example demonstrates how to structure and deploy a programmable loan using Arda Capital. It covers facility creation, drawdown logic, interest accrual, repayment schedules, and event-triggered transitions—all under embedded compliance and risk monitoring.

---

## Scenario Summary

A developer sets up a $2M construction loan facility for a residential project using a programmable SPV and automated milestone-based drawdowns. Yield and tranche structuring logic is included.

---

## Step-by-Step Flow

### 1. **Create SPV and Facility**

- SPV entity initialized with `createEntity()`
- Legal documents uploaded via Arda Vault
- Call `createFacility()` with:
    - Max principal: $2M
    - Term: 24 months
    - Interest: 6% fixed
    - Jurisdiction: UAE
    - Repayment type: Bullet

### 2. **Define Drawdown Milestones**

- Register PaymentSchedule:
    - Tranche 1: $500k upon permitting
    - Tranche 2: $700k upon foundation
    - Tranche 3: $800k upon roofing
- Milestones tracked by Monitoring Agent

### 3. **Deploy Compliance Rules**

- KYC Tier 2 minimum
- JurisdictionProfile = UAE
- PermissionedPool scoped to investors in GCC only

### 4. **Raise Capital**

- PermissionedPool receives $2M across 5 investors
- Auto-allocate pro-rata TrancheTokens

### 5. **Disburse and Accrue**

- Milestone 1 completed → Monitoring Agent submits attestation
- `drawdown()` releases $500k to borrower
- `accrueInterest()` starts for TrancheToken holders

### 6. **Repayment and Finalization**

- At maturity, borrower sends $2.24M (principal + interest)
- `repay()` splits to TrancheToken holders via InterestSplitRule
- `burnDebtToken()` finalizes loan lifecycle

---

## Event Hooks Used

- `onMilestoneCompleted()` → triggers drawdown
- `onLatePayment()` → apply penalty and alert agent
- `onRepaymentComplete()` → auto-close facility and update AuditLog

---

## Developer Notes

- SDK used:
    - `createFacility()`, `registerSchedule()`, `drawdown()`, `repay()`
- Milestone status queryable via Monitoring Agent output
- Tranche data viewable in `TrancheIndex`
