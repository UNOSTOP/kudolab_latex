# kudolab_latexによる論文製作方法

**kudolab_latex**は、texを使用した論文製作を行うための環境構築方法とテンプレートをまとめたものです。提供するのは、VScodeと実行ファイル.latexmkrcを用いたtexの環境構築方法です。

---

## 内容物

---

* **template**
論文のテンプレート
* **.latexmkrc**
ビルドコマンド実行ファイル
* **settings.json**
VScode内のLaTex Workshop設定ファイル

---

## 環境構築の方法

---

### 1. ツールのインストール

**Tex Live**と**VScode**のインストールを行います。

* Tex Live

  * Windows

    [公式](https://www.tug.org/texlive/acquire-netinstall.html)の<mark>install-tl-windows.exe</mark>をクリックしてダウンロード、GUIのインストーラに従ってください。

  * Mac

    ```shell
    brew install mactex-no-gui --cask
    ```

* VScode

  * Windows
  
    [公式](https://code.visualstudio.com/download)からインストーラ―をダウンロード、GUIのインストーラーに従ってください。

  * Mac
  
    ```shell
    brew install visual-studio-code --cask
    ```