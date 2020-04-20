# fgosccnt batch programs for Windows

[@fgophi](https://twitter.com/fgophi) さん作 [fgosccnt](https://github.com/fgophi/fgosccnt) をドラッグアンドドロップやダブルクリックで実行できるようにするバッチプログラム

# 必要なソフトウェア
* Windows
* Python 3.7以降
* OpenCV
* [fgosccnt](https://github.com/fgophi/fgosccnt)
* [pageinfo.py](https://github.com/max747/fgojunks/blob/master/pageinfo/pageinfo.py)


# ファイル
1. `Count drag and drop images.bat` :ドラッグアンドドロップで`fgosccnt.py` `csv2counter.py`を実行する (同時実行可、時刻でファイル名を作成、終了時に作成したアウトプットファイルを削除するかどうか確認)
2. `Count drag and drop images (simple).bat` :ドラッグアンドドロップで`fgosccnt.py` `csv2counter.py`を実行する (最小限のスクリプト)
3. `Count images in folder.bat`:ダブルクリックで`fgosccnt.py` `csv2counter.py`を実行する (同時実行可、時刻でファイル名を作成、終了時に作成したアウトプットファイルを削除するかどうか確認)
4. `Count images in folder (simple).bat`:ダブルクリックで`fgosccnt.py` `csv2counter.py`を実行する (最小限のスクリプト)

# インストール
1. `Count drag and drop images.bat` `Count images in folder.bat` を右クリックし編集をクリックして、以下の項目のパスを設定する
```
set python=
set fgosccnt=
set csv2counter=
set table_file_name=
set report_file_name=
```

# 使い方

## ドラッグアンドドロップの場合
1. `Count drag and drop images.bat` をデスクトップなどドロップしやすい場所に、batファイルを置くかショートカットを作成する
2. FGOの報酬画像をbatファイルかショートカットのアイコンにドラッグアンドドロップする

## ダブルクリックの場合
1. FGOの報酬画像が含まれるフォルダに`Count images in folder.bat`を移動するかコピーする
3. `Count images in folder.bat`をダブルクリックする

# 制限

#### コマンドバッファの最大長を超える数の画像は処理できません (Windows の制約)
WindowsXP以降の場合、cmd.exeのコマンドバッファの最長数は8,191文字です  
一度に引数を渡せる画像の枚数は、以下の要素に左右されます
* 画像が含まれるディレクトリのパスの長さ
* 画像のファイル名の長さ
* 画像ファイルの数

この制約により処理ができない場合は、ディレクトリをパス長の短い位置に移動したり、画像ファイルの数を減らして試してください

* `Count images in folder.bat`の対応拡張子はPNG/JPEGのみ
* その他は [fgosccnt の制限](https://github.com/fgophi/fgosccnt/blob/master/README.md) に準拠します
