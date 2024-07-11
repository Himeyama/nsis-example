# インストーラーの名前を定義
OutFile "installer.exe"

# インストール先のディレクトリをデスクトップに設定
InstallDir $DESKTOP

# デフォルトのセクションを開始
Section

# 出力パスを定義
SetOutPath $INSTDIR

# 出力パスに配置するファイルを指定
File README.md

# アンインストーラーの名前を定義
WriteUninstaller $INSTDIR\uninstaller.exe

# デフォルトのセクションを終了
SectionEnd

# アンインストーラーの動作を定義するセクションを作成
# セクション名は常に "Uninstall" になります
Section "Uninstall"

# インストールされたファイルを削除
Delete $INSTDIR\README.md

# アンインストーラー自体を削除
Delete $INSTDIR\uninstaller.exe

# ディレクトリを削除
RMDir $INSTDIR
SectionEnd