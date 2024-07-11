# 日本語UI
LoadLanguageFile "${NSISDIR}\\Contrib\\Language files\\Japanese.nlf"

# アプリケーション名
Name "Hikari Server"

# 作成されるインストーラ
OutFile "Install.exe"

# インストールされるディレクトリ
InstallDir "$LOCALAPPDATA\hikari-server"

# ページ
Page directory
Page instfiles

# アンインストーラ ページ
UninstPage uninstConfirm
UninstPage instfiles

# デフォルト セクション
Section
    # 出力先を指定します。
    SetOutPath "$INSTDIR"

    # インストールされるファイル
    File /r "hikari-server\*.*"

    # アンインストーラを出力
    WriteUninstaller "$INSTDIR\\Uninstall.exe"

    # スタート メニューにショートカットを登録
    CreateDirectory "$SMPROGRAMS\\Hikari Server"
    SetOutPath "$INSTDIR"
    CreateShortcut "$SMPROGRAMS\\Hikari Server\\Hikari Server.lnk" "$INSTDIR\\hikari-server.exe" ""

    # レジストリに登録
    WriteRegStr HKLM "Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\HikariServer" "DisplayName" "Hikari Server"
    WriteRegStr HKLM "Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\HikariServer" "UninstallString" '"$INSTDIR\\Uninstall.exe"'
SectionEnd

# アンインストーラ
Section "Uninstall"
    # アンインストーラを削除
    Delete "$INSTDIR\\Uninstall.exe"

    # ファイルを削除
    Delete "$INSTDIR\\hikari-server.exe"

    # ディレクトリを削除
    RMDir /r "$INSTDIR"

    # スタート メニューから削除
    Delete "$SMPROGRAMS\\Hikari Server\\Hikari Server.lnk"
    RMDir "$SMPROGRAMS\\Hikari Server"

    # レジストリ キーを削除
    DeleteRegKey HKLM "Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\HikariServer"
SectionEnd