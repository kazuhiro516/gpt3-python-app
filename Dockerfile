# Pythonイメージをベースにする
FROM python:3.9

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのコードをコピー
COPY . .

# ポート番号を設定
EXPOSE 8000

# アプリケーションを実行
CMD ["python", "app.py"]
