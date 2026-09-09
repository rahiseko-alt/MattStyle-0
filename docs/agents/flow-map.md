# 開発フロー ナビゲーション（セッション開始時に自動読み込み）

このリポジトリのユーザーは非エンジニアの可能性がある。
`/grill-me` などのコマンドを自分で選べる前提を置かないこと。

## あなたが守ること

1. 実装（コードの新規作成・機能追加）を頼まれ、まだフローを通っていないなら、
   **コードを書く前に** `next-step` スキルを起動し、次に打つべきコマンドを1つ提示する。
2. 「何をすればいい」「次は」「どう進める」と聞かれたら `next-step` を起動する。
3. 各スキルが終わった直後にも `next-step` を起動し、次の一手を提示する。
4. ユーザーが「今はいい」「そのまま作って」と言った場合のみ、フローを飛ばしてよい。

## フロー早見

- 新規開発: `/grill-me` → `/to-spec` → `/to-tickets` → `/implement` → `/code-review`
- 機能追加: `/grill-with-docs` → `/to-spec` → `/to-tickets` → `/implement` → `/code-review`
- 設計改善: `/improve-codebase-architecture` → 候補選択 → `/grill-with-docs` → 以下同じ

詳細は AGENTS.md の「Development flow」を参照。
