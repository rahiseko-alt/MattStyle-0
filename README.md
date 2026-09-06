# MattStyle-0

Matt Pocock 氏の [mattpocock/skills](https://github.com/mattpocock/skills) をそのまま使う開発フロー用リポジトリです。

## セットアップ済みの内容

- `.claude/skills/` に本家のスキルを 12 個インストール（`npx skills add mattpocock/skills`、`skills-lock.json` でバージョン固定）
  - ユーザー起動: `grill-me` / `grill-with-docs` / `to-spec` / `to-tickets` / `implement` / `improve-codebase-architecture` / `setup-matt-pocock-skills`
  - モデル起動: `grilling` / `domain-modeling` / `codebase-design` / `tdd` / `code-review`
- `AGENTS.md`: `## Agent skills` 設定ブロックと開発フロー
- `docs/agents/issue-tracker.md`: Issue tracker は GitHub Issues（`gh` CLI）
- `docs/agents/domain.md`: ドメイン文書は single-context（`CONTEXT.md` + `docs/adr/`）

`triage` スキルは未導入のため、本家 `setup-matt-pocock-skills` の仕様どおり `docs/agents/triage-labels.md` は作成していません。

## 使い方

フローは [AGENTS.md](./AGENTS.md) の「Development flow」を参照してください。

- 新規開発: `/grill-me` → 必要に応じて `/to-spec` → `/to-tickets` → `/implement`
- 機能追加: `/grill-with-docs` → 必要に応じて `/to-spec` → `/to-tickets` → `/implement`
- 設計改善: `/improve-codebase-architecture` → 候補を選択 → `/grill-with-docs` または `/codebase-design` → `/to-spec` → `/to-tickets` → `/implement`

`/implement` は `/tdd` で RED → GREEN の vertical slice を繰り返し、最後に `/code-review` を実行します。

## スキルの更新

```bash
npx skills update
```

スキル本体は本家のまま使う方針のため、ローカルで書き換えないでください。
