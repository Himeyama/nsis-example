# インストーラーの名前を定義
OutFile "installer.exe"

# デフォルトのセクション
Section

    # スタートメニューのプログラムディレクトリに "new shortcut" という名前のショートカットを作成
    # 現在、新しいショートカットは何も呼び出さない（2番目のフィールドは空白）状態です
    CreateShortcut "$SMPROGRAMS\new shortcut.lnk" ""

    # ショートカットを削除するには、スタートメニューのディレクトリに移動して手動で削除

# デフォルトのセクションを終了
SectionEnd