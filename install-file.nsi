# インストーラーの名前を定義
Outfile "simple installer.exe"

# インストール先のディレクトリを定義
# この場合、$DESKTOP 変数で指定されたデスクトップ
InstallDir $DESKTOP

# デフォルトのセクション
Section

# このファイルの出力パスを定義
SetOutPath $INSTDIR

# インストールする内容を定義し、出力パスに配置
File README.md

SectionEnd