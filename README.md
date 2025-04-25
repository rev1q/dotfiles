# dotfiles
* Arch Linuxカスタマイズ

* dot_config
  * foot: terminal
  * sway: waylandコンポジタ
  * waybar: barの設定
  * zsh: zshの設定

* dot_zshenv: ユーザー環境変数
[XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/)に則って、以下の環境変数を設定している

| 用途 | 環境変数 | 設定値(デフォルト) | 説明 |
| --- | --- | --- | --- |
| config | $XDG_CONFIG_HOME | $XDG_CONFIG_HOME | 設定ファイル |
| cache | $XDG_CACHE_HOME | $HOME/.cache/ | キャッシュ |
| data | $XDG_DATA_HOME | $HOME/.local/share/ | データファイル | 
| state | $XDG_STATE_HOME | $HOME/.local/state/ | 状態ファイル |

## sway
* 基本的に追加設定は **include** している
