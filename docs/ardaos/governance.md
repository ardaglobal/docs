--8<-- "warning.md"
# Governance Primitives

Arda's governance primitives define how roles, rights, and protocol upgrades are managed in a modular, jurisdiction-aware, and compliance-first fashion. Governance spans asset configuration, pool rules, agent registration, and protocol module evolution.

All governance actions are tracked and scoped via identity, attestation, and jurisdictional logic — ensuring region-specific control where needed while enabling global coordination.

---

## Core Primitives

| Primitive | Description |
|-----------|-------------|
| RoleBinding | Maps wallet or entity to governance or operational capability |
| Proposal | Defines a change request to a protocol configuration or state |
| VoteWeight | Determines influence in a vote (based on tokens, role, or identity) |
| ApprovalThreshold | Defines quorum and majority logic per scope |
| Delegation | Enables proxy participation by approved agents or entities |

---

## Example: RoleBinding

```json
{
  "role": "ProtocolUpgrader",
  "entityId": "ENTITY-101",
  "wallet": "0xabc",
  "jurisdiction": "SG",
  "expires": "2026-01-01"
}
```

---

## Proposal Lifecycle

1. **Draft** — Created by eligible proposer
2. **Review** — Shared with compliance or DAO council (if applicable)
3. **Vote** — Executed by eligible tokenholders or role-bound voters
4. **Execution** — Triggered on-chain via function call or module update
5. **Log** — Captured in AuditLog for traceability

---

## Governance Scopes

| Scope | Participants | Use Case |
|-------|--------------|----------|
| Global | Tokenholders + Council | Core module upgrades |
| Regional | Jurisdiction-bound actors | Asset rules, pool configs |
| Pool-Level | LPs, Managers | Allocation and payout settings |
| Agent-Level | Protocol Ops | Registration and slashing |

---

## Compliance Alignment

- **AttestationRegistry**: Confirms voter or delegate eligibility
- **JurisdictionProfile**: Filters proposal scope or access
- **AuditLog**: Tracks proposal status, outcome, and signers

---

## Integration

- **Token Factory** — Role gating for issuer and metadata updaters
- **Agent Registry** — Role assignment and revocation
- **Vault** — Anchored policies and decision history
- **Interop** — Optional global config propagation across ArdaOS chains

---

## Related Docs

- [`identity.md`](../arda-core/identity.md)
- [`token-factory.md`](../arda-core/token-factory.md)
- [`external-agents.md`](../appendix/external-agents.md)

---

*© ArdaOS Documentation • Licensed under MIT*
