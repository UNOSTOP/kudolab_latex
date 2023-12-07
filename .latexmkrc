#!/usr/bin/env perl
# latexmkはLaTeXによる一連のビルド作業を自動で行ってくれます。
# VSCodeでは、このlatexmkを呼び出してTeXファイルをビルドします。
# latexmkはデフォルトでpdfTeXを使用します。
# 英語のTeXファイルであれば特に設定しなくてもPDFを作成できますが、pdfTeXは日本語に非対応なので、(u)pLaTeXやLuaTeXなど日本語環境に合わせたものに変更する必要があります。
# ここでは日本語環境で一番メジャーなplatexとpbibtexを使用しましたが、自分の環境にあわせて適宜変更してください。
# ホーム・ディレクトリ（ユーザー名がUSERNAMEの場合、Mac, Linuxの場合は /home/USERNAME/、Windowsの場合は C:\Users\USERNAME）に次の .latexmkrc というファイルを作成します。

# LaTeX
#$latex = 'platex -synctex=1 -halt-on-error -file-line-error -interaction=batchmode %O %S';
$latex = 'platex %O %S';
#$max_repeat = 5;

# BibTeX
#$bibtex = 'pbibtex -kanji=utf8 %O %B';
$bibtex = 'pbibtex %O %B';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %B';

# index
$makeindex = 'mendex %O -o %D %S';

# DVI / PDF
$dvipdf = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3;# 0: none, 1: pdflatex, 2: ps2pdf, 3: dvipdfmx

$max_repeat = 5;

# LaTeX文書のプレビュー（表示）設定（toolsに"-pv"オプションを追加する場合に必要）
# preview
$pvc_view_file_via_temporary = 0;
if ($^O eq 'linux') {
    $dvi_previewer = "xdg-open %S";
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $dvi_previewer = "open %S";
    $pdf_previewer = "open %S";
} else {
    $dvi_previewer = "start %S";
    $pdf_previewer = "start %S";
}

# 補助ファイルの自動削除の設定（setting.jsonに書いたのでいらない）
# clean up
#$clean_full_ext = "%R.synctex.gz"
