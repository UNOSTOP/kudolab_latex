# kudolab_latexによる論文制作方法

**kudolab_latex**は、texを使用した論文制作を行うための環境構築方法とテンプレートをまとめたものです。提供するのは、VScodeと実行ファイル.latexmkrcを用いたtexの環境構築方法です。

## 内容物

* **template**

    論文のテンプレート

* **template_preprint**

    予稿のテンプレート


* **.latexmkrc**

    ビルドコマンド実行ファイル

* **settings.json**

    VScode内のLaTex Workshop設定ファイル

## 環境構築の方法

---

### 1. ツールのインストール

---

**Tex Live**と**VScode**のインストールを行います。

* Tex Live

  * Windows

    [公式](https://www.tug.org/texlive/acquire-netinstall.html)のinstall-tl-windows.exeをクリックしてダウンロード、GUIのインストーラに従ってください。

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

---

### 2. latexmkの作成

---

**latexmk**ではビルド方法などの設定を~/.latexmkrc（Windowsでは%USERPROFILE%\.latexmkrc）に書くのが標準的です。（UNOSTOPのUnofaceProでは、"C:\Users\shint(ユーザー名)\\.latexmkrc"に配置）

.latexmkrcの内容は、ネットに様々なものがあげられています。初心者の方、特にこだわりのない方は、上記内容物の**latexmkrc**を先ほど示したディレクトリ位置に配置してください。ダウンロード方法は、上記 " **<>Code▼** " ボタンから " **Download ZIP** "を押してください。

---

### 3. VScodeの設定

---

ここからはVScodeの設定を行っていきます。

### 3.1 拡張機能Latex Workshopのインストール

---

VScode左側の拡張機能パネルを開いてlatexと入力し、" **LaTeX Workshop** " をインストールしてください。

### 3.2 settings.jsonの編集

---

VScode内の左下の歯車マークから " **設定** " を選択し、タブ右上のファイルマークを押すとJSONが開きます。.latexmkrc同様に、settings.jsonの内容も、ネットに様々なものがあげられています。初心者の方、特にこだわりのない方は、上記内容物の**settings.json**をコピペして使用してください。

✨🚀 ＼(＾O＾)／ 🎉 **以上で環境構築が完了しました！** 🎉＼(＾O＾)／🚀✨

## templateの使い方

templateを使って、正しくビルドできるか確かめましょう。

1. 上記内容物の " **template** " をダウンロード
2. フォルダ名を適宜変更。

==※初build時のフォルダ名と異なるフォルダ名で2回目以降のbuildを実行するとErrorが発生する原因になるので、以後、むやみにフォルダ名は変えないでください。==

1. " **template** "フォルダをVScodeで開く
2. " **作成者を信頼しますか** "と出た場合、" **はい、作成者を信頼します** "をクリック。
3. VScode内の左のフォルダマークから" **main.tex** "を選択し開く
4. タブ右上の緑の▶ボタンを押して実行する。
5. 左下の警告欄に警告が表示されなければ、OK＼(＾O＾)／
6. 後は、必要な個所を変更し論文を書き続ける。FIGHT💪 ＼(°▽°)／

## 参考サイト

[1] VScodeで最高のLatex環境をつくる,
https://qiita.com/rainbartown/items/d7718f12d71e688f3573

