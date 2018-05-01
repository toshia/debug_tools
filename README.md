# なにこれ

デバッグに使えるmikutterコマンドを追加するプラグインです。

# インストール方法

以下のコマンドを実行してください。

```
mkdir -p ~/.mikutter/plugin/; git clone https://github.com/toshia/debug_tools.git ~/.mikutter/plugin/debug_tool
```

# 使い方

## Messageに対するコマンド

タイムライン上でMessageを右クリックしたときなんかに、以下のようなメニューが追加されています。

### JSONをコピー

`message.to_json` の結果をクリップボードにコピーします。JSON表現には、Modelで宣言されたフィールドしか入っていないため、全ての項目を得ることができない可能性があることに注意してください。

### 全てのキーをコピー

messageオブジェクトの全ての値を闇の力によって取得し、クリップボードにコピーします。

先の「JSONをコピー」とちがい、APIレスポンスとして得られたがModelのフィールドとして宣言されていないキーも含まれています。
