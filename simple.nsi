# インストーラーの名前
OutFile "Installer.exe"
 
# デフォルトセクションの開始
# すべての NSIS スクリプトは、少なくとも 1 つの section を持つ
Section

# ポップアップボックスを作成し、OK ボタンと "Hello world!" というテキストを表示する。
MessageBox MB_OK "Hello world!"

# デフォルトセクション終了
SectionEnd