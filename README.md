# Common Lispの学習プロジェクト

## References

- <https://lisp-lang.org/learn/>
- [逆引きCommon Lisp](https://lisphub.jp/common-lisp/cookbook/)

## Emacs操作方法

- [Emacsの基本操作](http://www.rsch.tuis.ac.jp/~ohmi/literacy/emacs/index.html)

```
Ctrl-[fbnp]
Ctrl-[ae], ahead,
Ctrl-d
Ctrl-m return
C-x C-c end

C-x C-s save
C-x C-f file open
C-x C-w write named file.
C-k, C-y cut line from cursor. and paste
C-space C-k cut
C-space M-w copy to memory.
C-g C-g cancel
```

### バッファ操作
```
C-x C-b buffer list
C-x o move
C-x 0 close buffer
C-x 2 2 pain
C-x b change buffer
```

## WSL2 Ubuntu 20.04 Emacs + Slime + Quicklisp

Emacsはエディタ。Quicklispはライブラリーマネージャー。SLIMEはEmacsのLisp統合開発環境。

[Quicklisp beta](https://www.quicklisp.org/beta/)に従い、quicklispはインストール。

```
sudo apt install sbcl
sudo apt install emacs-nox
curl -O https://beta.quicklisp.org/quicklisp.lisp
sbcl --load quicklisp.lisp
sudo apt install slime

```


