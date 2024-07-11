# インストーラファイルの名前を宣言
Outfile "hello world.exe"
 
# セクションを開始します
Section
 
# OK ボタンとテキストがあるポップアップボックスを作成
MessageBox MB_OK "デスクトップに Hello_world.txt を作成します"
 
# "Hello_world.txt" という名前の出力ファイルをデスクトップで書き込みモード開く
# このファイルはスクリプトがコンパイルされ実行される前に不要

FileOpen $0 "$DESKTOP\Hello_world.txt" w

# 出力ファイルに文字列 "hello world!" を書き込む
FileWrite $0 "hello world!"
 
# ファイルを閉じる
FileClose $0

# 成功メッセージを表示。
MessageBox MB_OK "Hello_world.txt がデスクトップに正常に作成されました"
 
# セクションを終了
SectionEnd