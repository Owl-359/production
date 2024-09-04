FROM python:3.10 
# PythonのイメージをDockerhubからプル
COPY ./requirements.txt /app/requirements.txt  
#Pythonの依存関係やパッケージ情報をイメージにコピー*/
WORKDIR /app 
#作業ディレクトリを イメージ先の/appに切り替える
RUN pip install -r requirements.txt
# 依存関係やパッケージをイメージ内でダウンロード
COPY . /app
#ローカルのファイルやフォルダをイメージ内にコピー
ENTRYPOINT [ "python" ] 
#コンテナを起動する際のコマンドを設定
CMD ["app.py" ]
