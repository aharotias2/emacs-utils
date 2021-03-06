Emacs-Utils
===================================================

Emacsで使えそうな関数をファイルごとに分類したユーティリティ集です。

何故今、Emacsなのか？
--------------------------------------------------------------------

いや単にこの凄すぎるIT時代を築いてきた偉大なる天才達にあやかりたいだけですが？
最近はAtomやVSCodeが主流ですが、それらによって作られたソフトウェアで革新的なものはまだないですからね。
要するにブランド信仰に過ぎない。大して使いこなせてないですし。

説明
--------------------------------------------------------------------

### color-names.el

洋色大辞典 (https://www.colordic.org/y) というサイトからパクってきた色名を変数に割り当てました。
emacsのカラーテーマを自作する時などに便利に使っていただければ。

### keybind.el

キーバインドを一気に割り当てるための関数を二つ用意しました。

こんな感じで使います。正直使いやすくはないと思いますが参考までに。

    (global-set-key-list
     '(("C-h" (backward-delete-char-untabify 1))
       ("C-}" (other-window 1))
       ("C-{" (other-window -1))))

引数のリストを `do-list` でそれぞれ `global-set-key` 関数に渡しているだけです。

### mito-zuki-theme.el

明るい色合いのカラーテーマです。プログラミングのお供に。
ダークモードが流行りですが、実は科学的には明るい色の方が目に良いそうです。

### tt-vala-mode.el

vala用のテーマを自作しました。シンプルさを心掛けました。色分け以外の機能一切なしです。
このファイルを(load)関数により読み込んだら、`M-x tt-vala-mode` で起動します。

#### おすすめのtt-vala-mode-hookの設定

    (add-hook 'tt-vala-mode-hook
          (lambda ()
            (local-set-key-list
             '(("C-i" (my-indent my-indent-offset))
               ("M-i" (my-indent (- 0 my-indent-offset)))
               ("C-m" (my-newline-and-indent))))
            (setq tab-width 4)
            (display-line-numbers-mode)
            (toggle-truncate-lines 1)))

### tt-po-mode.el

GetTextのPOファイル用のモードを作りました。色分け以外の機能一切なしです。
このファイルを(load)関数により読み込んだら、`M-x tt-po-mode` で起動します。


インストール方法
-----------------------------------------------------------

これらの `.el` ファイルを好きな場所に配置し、`load` 関数で読み込めばファイルで定義された関数を
使うことができるようになります。

謝辞
------------------------------------------------------------

ネットで有益な情報を提供してくださる全ての方々に感謝いたします。

特にEmacs Wikiにはお世話になっています。もちろんEmacsの公式ドキュメントにも。
あと色んなブログやコミュニティサイトなどでも意外と今でもEmacsユーザーは多く、とても頼もしいです。
では良きEmacsライフを。

2021年2月23日
