# Engineer SNS App

Flutter製のエンジニア向けSNSアプリです。GitHubアカウントによるログイン、投稿、DM、プロフィール管理、フォロー機能などを備えたアプリです。

## 技術スタック

- **Flutter**: フロントエンド
- **Node.js (バックエンド)**: GitHub OAuth 認証、API構築
- **Neon + PostgreSQL**: データベース

## 主な機能

| 機能名 | 説明 |
|--------|------|
| GitHubログイン | OAuth認証により、GitHubアカウントでログイン可能 |
| 投稿機能 | テキストの投稿とタイムライン表示 |
| DM機能 | ユーザー間でのメッセージ送受信 |
| プロフィール | ユーザーアイコンと名前の表示 |
| フォロー機能 | 他ユーザーのフォロー／フォロワー確認 |

## ファイル構成

- `main.dart`：アプリのエントリーポイント
- `login.dart`：GitHub認証とDeepLink処理
- `main_screen.dart`：BottomNavigationBarで各画面を管理
- `home.dart`：投稿一覧画面
- `post.dart`：投稿作成画面
- `dm.dart`, `dm_home.dart`：DM機能
- `profile.dart`：プロフィール画面
- `followList.dart`：フォロー／フォロワーリスト

## 今後の展望

- 通知機能の追加
- 投稿へのリアクション（いいね・コメント）
- GitHubリポジトリとの連携（埋め込み・参照）
- レコメンド機能
- フォロー、フォロワー情報取得処理の改善

## 開発者

- **名前**：大瀬 怜（Shimane Univ.）
- **GitHub**：[nayu104](https://github.com/nayu104)

---

