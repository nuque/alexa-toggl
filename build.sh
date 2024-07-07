#!/bin/bash

# エラーが発生した場合にスクリプトを終了する
set -e

# 現在のディレクトリを保存
CURRENT_DIR=$(pwd)

# 仮想環境に依存関係をインストール
# pip install -r requirements.txt -t skill_env

# lambdaディレクトリの内容をskill_envディレクトリにコピー
cp -r lambda/* skill_env/

# skill_envディレクトリに移動
cd skill_env/

# ディレクトリの内容をzipファイルに圧縮
zip -r9 ../lambda.zip .

# 元のディレクトリに戻る
cd "$CURRENT_DIR"

# スクリプトの終了メッセージ
echo "lambda.zip has been created successfully and you are back in the original directory."

