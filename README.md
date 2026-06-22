# crypto-legal-skill

> AI legal guidance for Solana founders — from incorporation and token launches to KYC/AML compliance and emerging market regulations.

A skill for the [Solana AI Kit](https://github.com/solanabr/solana-ai-kit) that turns any AI coding agent into a knowledgeable legal advisor for Solana builders. Covers the most common legal questions founders hit when building and launching on Solana.

---

## The problem this solves

Solana builders constantly hit legal walls:
- "Is my token a security?"
- "How do I incorporate my protocol?"
- "Do I need KYC for my DEX?"
- "I'm in Pakistan / Nigeria / UAE — what can I actually do?"

Good legal answers cost $500–1,000/hour from a crypto lawyer. This skill gives founders structured, research-backed guidance instantly — so they ask better questions, move faster, and spend lawyer time where it actually counts.

---

## What's covered

| Skill file | What it covers |
|-----------|---------------|
| `skill/SKILL.md` | Entry point — routes to the right file |
| `skill/incorporation.md` | Cayman, BVI, Wyoming, UAE, Marshall Islands entity setup |
| `skill/token-launch-legal.md` | Howey Test, securities law, safe launch checklist |
| `skill/compliance.md` | KYC/AML, FATF Travel Rule, OFAC sanctions screening |
| `skill/stablecoin-regs.md` | USDC/USDT integration, issuing stablecoins, MiCA, US law |
| `skill/dao-legal.md` | DAO wrappers, governance liability, contributor payments |
| `skill/emerging-markets.md` | Pakistan, UAE, Nigeria, Turkey, India — specific guidance |

---

## Why emerging markets coverage matters

Most existing crypto legal resources are written for US and EU founders. This skill specifically covers **Pakistan, UAE, Nigeria, Turkey, and India** — regions that represent a massive and growing share of Solana builders but have almost no AI-accessible legal guidance.

The `emerging-markets.md` file covers:
- What's legal vs. restricted in each country (2026 status)
- How founders from each region structure offshore entities
- The "Dubai sandwich" structure used by MENA/South Asian founders
- Local regulatory bodies and registration requirements

---

## Installation

```bash
# One-line install (adds to your Claude Code skill directory)
curl -fsSL https://raw.githubusercontent.com/vemi-viu/crypto-legal-skill/main/install.sh | bash
```

Or manually:

```bash
git clone https://github.com/vemi-viu/crypto-legal-skill
cp -r crypto-legal-skill/skill ~/.claude/skills/crypto-legal/
```

Then add to your `CLAUDE.md` or `SKILL.md`:
```
- crypto-legal: skill/crypto-legal/SKILL.md
```

---

## Usage examples

Once installed, ask your AI agent:

```
"What legal structure should I use for my Solana DEX?"
→ Reads incorporation.md

"Is my governance token a security?"
→ Reads token-launch-legal.md

"I'm building from Pakistan — how do I accept USDC legally?"
→ Reads emerging-markets.md

"Do I need KYC for my Solana lending protocol?"
→ Reads compliance.md

"How do I set up a legal wrapper for my DAO?"
→ Reads dao-legal.md
```

---

## Design principles

**Progressive loading:** The main `SKILL.md` routes to sub-files only when needed — no token bloat loading irrelevant context.

**2026 accuracy:** All regulatory information reflects current frameworks (MiCA, US Payment Stablecoin Act, UAE VARA/ADGM rules, Pakistan Crypto Council developments).

**Actionable, not just informational:** Every file ends with practical next steps, cost ranges, and real service provider recommendations.

**Honest about limits:** This skill explicitly tells founders when they need a real lawyer — it prepares them, it doesn't replace counsel.

---

## Disclaimer

This skill provides general educational information about legal and regulatory frameworks. It does not constitute legal advice. Always consult a qualified attorney before making legal or business decisions.

---

## License

MIT — free to use, modify, and contribute.

## Contributing

PRs welcome. Please keep all content:
- Jurisdiction-specific and accurately dated
- Actionable (not just informational)
- Free of specific legal advice (educational framing only)

## Contact

Built for the Superteam Brasil Solana AI Kit bounty. Questions? Open an issue.
