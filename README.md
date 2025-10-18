# おじさんバウンス 🚃

駅に出没する悪質なおじさんを退治するタイミングアクションゲーム！

## ゲーム概要

### コンセプト

日常のストレスを昇華する、コミカルで楽しいゲームです。架空の路線を移動しながら、悪質な行動をするおじさんたちをタイミングよく退治して、ポイントを獲得しましょう。

### 遊び方

1. **難易度選択**: タイトル画面で「かんたん」「ふつう」「むずかしい」から選択
2. **チュートリアル**: 初回プレイ時は5ステップのチュートリアルで操作方法を学習
3. **サイコロを振る**: ターン開始時にサイコロを振って、駅間を移動
4. **おじさん遭遇**: 移動先で悪質おじさんと遭遇する可能性（難易度により変動）
5. **タイミングアクション**: おじさんが現れたら、視覚的インジケーターを見ながら最適なタイミングでタップ！
6. **スコア獲得**: タイミングに応じてポイント獲得
    - PERFECT!: ポイント x3 ✨
    - GREAT!: ポイント x2 👍
    - GOOD: ポイント x1 👌
    - MISS...: ポイントなし 💦

### 難易度設定

3つの難易度から選択可能です

#### かんたん 😊

- タイミング判定: ±300ms (PERFECT), ±600ms (GREAT), ±1000ms (GOOD)
- おじさん出現率: 50%
- 最大ターン数: 25
- 目標: ポイント80以上、撃退数8人以上

#### ふつう 😐（推奨）

- タイミング判定: ±150ms (PERFECT), ±300ms (GREAT), ±500ms (GOOD)
- おじさん出現率: 70%
- 最大ターン数: 30
- 目標: ポイント150以上、撃退数15人以上

#### むずかしい 😤

- タイミング判定: ±50ms (PERFECT), ±100ms (GREAT), ±200ms (GOOD)
- おじさん出現率: 80%
- 最大ターン数: 35
- 目標: ポイント200以上、撃退数20人以上

### 勝利条件

以下の3つの条件をすべて満たすとゲームクリア：

- ✅ 全10駅を訪問
- ✅ 難易度に応じたポイント獲得
- ✅ 難易度に応じた撃退数達成

### おじさんの種類

悪辣度によって5種類のおじさんが登場します：

- 🤓 マンスプおじさん (★☆☆☆☆ / 10pt)
- 👀 ストーカーおじさん (★★☆☆☆ / 20pt)
- 🚬 路上喫煙おじさん (★★★☆☆ / 30pt)
- 🍺 酔っ払いおじさん (★★★★☆ / 40pt)
- 😡 ハラスメントおじさん (★★★★★ / 50pt)

※ 悪辣度が高いほど、最適タイミングが速くなります

## 技術スタック

### フレームワーク

- **Flutter 3.9+**: クロスプラットフォーム開発
- **Dart 3.9+**: プログラミング言語

### 主要パッケージ

- **flutter_riverpod ^3.0.0**: 状態管理（Notifierパターン）
- **freezed ^2.5.7**: イミュータブルモデル
- **json_serializable ^6.8.0**: JSONシリアライゼーション
- **audioplayers ^6.1.0**: サウンドエフェクト（8-bit風ゲーム音）

### アーキテクチャ

```shell
lib/
├── main.dart                   # エントリーポイント
├── models/                     # データモデル（Freezed使用）
│   ├── difficulty.dart         # 難易度設定
│   ├── station.dart            # 駅データ
│   ├── player.dart             # プレイヤー状態
│   ├── ojisan.dart             # おじさんキャラクター＆タイミング判定
│   └── game_state.dart         # ゲーム状態
├── providers/                  # Riverpodプロバイダー
│   └── game_provider.dart      # ゲーム状態管理（Notifier）
├── services/                   # サービス層
│   ├── sound_service.dart      # サウンド＆バイブレーション管理
│   └── data_loader.dart        # JSONデータ読み込み
├── screens/                    # 画面
│   ├── title_screen.dart       # タイトル画面
│   ├── tutorial_screen.dart    # チュートリアル画面（5ステップ）
│   ├── game_screen.dart        # メインゲーム画面
│   └── result_screen.dart      # リザルト画面
├── widgets/                    # 再利用可能ウィジェット
│   ├── station_map.dart        # 路線図表示（CustomPainter）
│   ├── dice_widget.dart        # サイコロUI（アニメーション付き）
│   ├── ojisan_widget.dart      # おじさん表示（バウンスアニメーション）
│   ├── action_button.dart      # アクションボタン（パルスアニメーション）
│   └── timing_indicator.dart   # タイミングインジケーター
└── utils/                      # ユーティリティ
    ├── constants.dart          # 定数定義（駅データ、色定義）
    └── game_logic.dart         # ゲームロジック（純粋関数）
```

## セットアップ

### 必要要件

- Flutter SDK 3.9.2以上
- Dart SDK 3.9.2以上

### インストール手順

1. リポジトリをクローン

    ```bash
    git clone <repository-url>
    cd ojisan_bounce
    ```

2. 依存関係をインストール

    ```bash
    flutter pub get
    ```

3. コード生成（Freezed）

    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4. アプリを実行

    ```bash
    # iOS Simulator
    flutter run -d ios

    # Android Emulator
    flutter run -d android

    # Webブラウザ
    flutter run -d chrome
    ```

## 開発

### テスト実行

```bash
# ユニットテスト実行
flutter test

# カバレッジ付きテスト実行
flutter test --coverage

# カバレッジレポート生成
genhtml coverage/lcov.info -o coverage/html
```

**テストカバレッジ**: 23.7% (260/1098 lines)

- コアロジック（models, utils）: 高カバレッジ
- UI層: Maestro統合テストでカバー

### 統合テスト（Maestro）

```bash
# Maestroテスト実行
maestro test .maestro/

# 個別テスト実行
maestro test .maestro/title_screen_test.yaml
maestro test .maestro/tutorial_test.yaml
maestro test .maestro/game_flow_test.yaml
```

### 静的解析

```bash
flutter analyze
```

### コード生成

```bash
# 一度だけ生成
dart run build_runner build --delete-conflicting-outputs

# 監視モード（開発時推奨）
dart run build_runner watch
```

### ビルド

```bash
# Android APK（リリース版）
flutter build apk --release

# iOS（リリース版）
flutter build ios --release

# インストール（Android実機）
adb install build/app/outputs/flutter-apk/app-release.apk
```

## ゲームデザイン原則

### 倫理的配慮

- キャラクターは抽象的な絵文字表現
- 暴力的な描写を避け、コミカルな演出
- マナー向上のポジティブメッセージ

### UI/UXデザイン

- ポップで明るいカラースキーム
- 直感的な操作性
- 即座のフィードバック（サウンド＆バイブレーション）
- アニメーションによる楽しさの演出（Curves.elasticOut使用）
- 視覚的タイミングインジケーター

## 実装済み機能

### Phase 1: MVP完成 ✅

- ✅ 10駅の路線図（JSONデータ駆動）
- ✅ 3段階の難易度設定（Easy/Normal/Hard）
- ✅ タイトル画面での難易度選択UI
- ✅ 5ステップチュートリアル
- ✅ タイミング判定システム（業界標準に準拠）
- ✅ 視覚的タイミングインジケーター
- ✅ 8-bit風サウンドエフェクト（8種類）
- ✅ バイブレーションフィードバック
- ✅ アニメーション（Curves.elasticOut）
- ✅ ゲームバランス調整（難易度別）
- ✅ メモリリーク対策（履歴上限管理）
- ✅ 非同期処理の競合状態対策（Timer使用）
- ✅ ユニットテスト（カバレッジ23.7%）
- ✅ Maestro統合テスト（4フロー）

## 今後の拡張予定

### Phase 2: ゲームループ拡張

- 駅数を20-30に拡大
- より複雑な路線網（分岐・急行）
- 特殊イベント追加
- キャラクターバリエーション増加
- ハイスコア保存（Hive）

### Phase 3: 収益化

- 広告統合（AdMob）
- アプリ内課金（IAP）
- キャラクタースキン
- 特殊能力アイテム
- Firebase Analytics統合

### Phase 4: ソーシャル機能

- ランキング（Firebase）
- 協力モード
- ユーザー投稿コンテンツ
- デイリーチャレンジ

## ライセンス

Private project - All rights reserved

## 作者

開発: ojisan_bounce team

---

**注意**: このゲームは架空の設定であり、実在の人物・団体・路線とは一切関係ありません。
