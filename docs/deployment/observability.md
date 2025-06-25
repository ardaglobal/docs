--8<-- "warning.md"
# Observability

Arda's observability stack provides unified logging, metrics, tracing, and alerting across sovereign ArdaOS chains and Arda Core coordination logic.

---

## Overview

Observability in Arda ensures operational integrity, regulatory traceability, and developer visibility across all deployed chains, agents, and vaults. It includes metrics, logging, tracing, and alerting across sovereign ArdaOS chains and Arda Core coordination logic.

Arda's observability layer is modular, privacy-aware, and compatible with enterprise security standards.

---

## Key Components

### 1. **Metrics & Monitoring**
- Collected from:
  - Validators
  - Arda Vaults
  - SettlementQueue
  - SDK clients
- Exported to:
  - Prometheus
  - Grafana
  - Cloud-native dashboards (e.g. AWS CloudWatch)

### 2. **Logs**
- Categories:
  - Transaction logs
  - Compliance events (KYC, transfer rejections)
  - Governance proposals
  - Lifecycle transitions (drawdown, default, repayment)
- Persisted with timestamp and hash for auditability
- Anchored to AuditLog

### 3. **Tracing**
- Cross-service tracing via OpenTelemetry
- Transaction ID and wallet-based correlation
- Used to diagnose stuck flows, slashing triggers, or performance bottlenecks

### 4. **Alerting**
- Rule-based triggers for:
  - Missed validator heartbeats
  - Slashed agent actions
  - Bridge latency anomalies
  - Jurisdictional rule drift

- Alert channels:
  - Email/SMS/webhook
  - Slack, Discord bots
  - Regulator dashboards

---

## Data Privacy

- Logs can be scoped by:
  - Jurisdiction
  - Role (regulator, investor, validator)
- PII redacted unless access key approved via Arda Vault

---

## Developer Notes

- ArdaOS and Core export metrics via `/metrics` and log JSON files
- SDK includes:
  - `subscribeLogs()`, `queryMetrics()`, `reportIssue()`
- Agent telemetry is opt-in with staking-backed incentives for uptime
- Bridges and relayers provide transaction-level logs
- Vault nodes log access control and encryption/decryption events

## Data Sources

- ArdaOS and Core export metrics via `/metrics` and log JSON files
- Bridges and relayers provide transaction-level logs
- Vault nodes log access control and encryption/decryption events
