package App::colsummary ;  
our $VERSION = '0.056' ; 
our $DATE = '2021-06-11T01:18+09:00' ; 

=encoding utf8

=head1 NAME

App::colsummary

=head1 SYNOPSIS

This module provides a Unix-like command `F<colsummary>'. 

=head1 DESCRIPTION

colsummary 

$0
     データファイル(TSV形式、一行目はヘッダ)について、各列の有用な情報を出力する。

     出力項目:
       1. 列番号 ; 白
       2. 異なり数(各列に異なる値が何個出現したか) ; 明るい緑
       3. 平均値 ( -m で平均値の出力は抑制可能) ; 青
       4. 列名 (ヘッダから取り出す) ; 黄色
       5. 値の範囲 ; 明るい白
       6. 値の頻出ランキング ; 暗い白
       7. 頻出上位と下位についての出現回数 ; 明るい緑
       8. 値の文字列長の範囲 ; 青

     [オプション] :

       (入力オプション)
      -=     ; 入力の最初の行が列名の並びと仮定。この指定をしない場合は列名は連番になる。
      -i STR : 区切り文字をタブ文字ではなくて、 str  に変更。
      -v N   ; 各セルの値の長さを指定文字数に制限する。(列名には適用されない。)
      -s     ; 各セルの末尾の空白を除去。-uがあると半角空白だけで無くて全角空白も除去。
      -u     ; utf-8 として処理することとする。 -u が指定されないと、バイト単位の処理となる。
      -z     ; 入力は gzip 圧縮されていることを仮定。
      -\# REGEX ; 除外する値の正規表現の指定。 '^部分正規表現$' のような指定の仕方をよく使うことになるだろう。
      -@ N : N 秒ごとに，何行を読んだかを報告する。 Report how many have read every N seconds.

      -R 0   ; 改行区切りが\r\nであっても何もオプション指定せずに対処しているが、不具合があれば使う。

       (出力オブション)
      -0 0 : 出力の変数の名前の並びを出力しない。
      -g N ;  具体的な値を何個表示させるか指定する。未指定なら6。
      -j : 出力の各列の名前を日本語で出力する。
      -m 0 ; 平均値を表示しない。(平均値は strtod を使っている。)
      -r STR ; 未指定なら ~ 。範囲を表す。
      -c STR ; 異なるものを並べるときに間に使う。未指定なら "|" 。

      --help : この $0 のヘルプメッセージを出す。  perldoc -t $0 | cat でもほぼ同じ。
      --help opt : オプションのみのヘルプを出す。opt以外でも options と先頭が1文字以上一致すれば良い。

=head1 SEE ALSO


=cut

1 ;
