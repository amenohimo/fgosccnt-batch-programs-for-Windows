# fgosccnt batch programs for Windows

[@fgophi](https://twitter.com/fgophi) さん作 [fgosccnt](https://github.com/fgophi/fgosccnt) をドラッグアンドドロップやダブルクリックで実行できるようにするバッチプログラム

# 必要なソフトウェア
* Windows
* その他は [fgosccnt の要件](https://github.com/fgophi/fgosccnt/blob/master/README.md) に準拠します

# 使い方

## ドラッグアンドドロップの場合
1. `Count png images in folder.bat` を右クリックし編集をクリックして、以下の項目のパスを設定する
```
set python=
set fgosccnt=
set csv2counter=
set table_file_name=
set report_file_name=
```
2. デスクトップなど、ドロップしやすい場所にbatファイルを置くか、ショートカットを作成する
3. FGOの報酬画像をbatファイルかショートカットのアイコンにドラッグアンドドロップする

## ダブルクリックの場合
1. `Count png images in folder.bat` を右クリックし編集をクリックして、以下の項目のパスを設定する
```
set python=
set fgosccnt=
set csv2counter=
set table_file_name=
set report_file_name=
```
2. FGOの報酬画像が含まれるフォルダに`Count png images in folder.bat`を移動するかコピーする
3. `Count png images in folder.bat`をダブルクリックする

# 制限

### コマンドバッファの最大長を超える数の画像は処理できません (window の制約)
WindowsXP以降の場合、コマンドバッファの最長数が8,191文字です
一度に引数を渡せる画像の枚数は、以下の要素に左右されます
* 画像が含まれるディレクトリのパスの長さ
* 画像のファイル名の長さ
* 画像ファイルの数

この制約により処理ができない場合は、ディレクトリをパス長の短い位置に移動したり、画像ファイルの数を減らして試してください

* `Count png images in folder.bat`の対応拡張子はPNGのみ
* その他は [fgosccnt の制限](https://github.com/fgophi/fgosccnt/blob/master/README.md) に準拠します
