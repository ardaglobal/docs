--8<-- "warning.md"

# Protocol Modules

Protocol modules in Arda are reusable, self-contained logic units that implement the behavior of tokens, pools, agents, settlements, or compliance enforcement. Each module can be deployed across ArdaOS regions, imported by SDKs, and extended by agents or DAOs to fit local requirements.

Modules encapsulate state machines, lifecycle hooks, and external integrations to drive Arda's programmable infrastructure.

---

## Key Module Types

| Module | Purpose |
|--------|---------|
| Token Module | Defines lifecycle and permissions for AssetToken, DebtToken, etc. |
| Pool Module | Manages capital commitment, risk filters, tranching, and redemption |
| Compliance Module | Enforces TransferRules, attestation gates, and audit logs |
| Agent Module | Encodes role permissions, agent activity, slashing logic |
| Treasury Module | Handles sweep, fee routing, float distribution |
| Governance Module | Proposals, voting, role binding, approval logic |

---

## Module Schema

```json
{
  "moduleId": "MOD-019",
  "type": "Token",
  "region": "UAE",
  "version": "1.1",
  "status": "active",
  "integrations": ["Vault", "Clear", "Compliance"]
}
```

---

## Lifecycle Hooks

Each module supports standardized lifecycle stages:

- `onCreate`
- `onActivate`
- `onTransfer`
- `onMature`
- `onSettle`
- `onRevoke`

These hooks trigger internal logic and external coordination (e.g. with Arda Clear or Vault).

---

## Composability & Deployment

- Modules are imported via SDK and initialized on-chain
- Deployment can be scoped to global (Arda Core) or regional (ArdaOS)
- DAO or council-approved proposals may update module logic
- Modules are versioned and audit-logged on update

---

## Integration Points

- **Token Factory**: Loads and applies token modules
- **Syndication Engine**: Applies pool module logic for risk and tranching
- **Clear**: Executes lifecycle hooks and disbursement logic
- **Interop**: Verifies module compatibility across chains
