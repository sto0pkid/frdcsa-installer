#!/usr/local/bin/perl -w

#
#  ex_ICT.pl
#
#　ファイルから ICTCLAS の�I尖�Y惚を�iみ函り
#  ���奮�薦に���T喘�Zとその嶷勣業を卦すプログラム
#
#   version 0.07
#
#

use TermExtract::ICTCLAS;
#use strict;
my $data = new TermExtract::ICTCLAS;
my $InputFile = "ICT_out.txt";    # 秘薦ファイル峺協

# プロセスの��械�K阻�r�I尖
# (ロックディレクトリを聞喘した��栽のみ��
$SIG{INT} = $SIG{QUIT} = $SIG{TERM} = 'sigexit';

# 竃薦モ�`ドを峺協
# 1 ★ ���T喘�Z��嶷勣業、2 ★ ���T喘�Zのみ
# 3 ★ カンマ曝俳り
my $output_mode = 1;

#
# 嶷勣業��麻で、�B俊�Zの"决べ方"、"��なり方"、"パ�`プレキシティ"のい
# ずれをとるか�x�k。パ�`プレキシティは仝僥���C嬬々を聞えない
# また、"�B俊�Zの秤�鵑鯤垢錣覆�"�x�kもあり、この��栽は喘�Z竃�F指方
# (と�O協されていればIDFの�Mみ栽わせ��で嶷勣業��麻を佩う
# �┘妊侫�ルトは"决べ方"をとる $obj->use_total)
#
#$data->use_total;      # 决べ方をとる
#$data->use_uniq;       # ��なり方をとる
#$data->use_Perplexity; # パ�`プレキシティをとる(TermExtract 3.04 參貧)
#$data->no_LR;          # �O俊秤�鵑鯤垢錣覆� (TermExtract 4.02 參貧)

#
# 嶷勣業��麻で、�B俊秤�鵑��譴浦呂錣擦誡稚Z竃�F�l業秤�鵑鰡x�kする
# $data->no_LR; との�Mみ栽わせで喘�Z竃�F�l業のみの嶷勣業も麻竃辛嬬
# �┘妊侫�ルトは "Frequency" $data->use_frq)
# TFはある喘�Zが麿の喘�Zの匯何に聞われていた��栽にもカウント
# Frequency は喘�Zが麿の喘�Zの匯何に聞われていた��栽にカウントしない
#
#$data->use_TF;   # TF (Term Frequency) (TermExtract 4.02 參貧)
#$data->use_frq;  # Frequencyによる喘�Z�l業
#$data->no_frq;   # �l業秤�鵑鯤垢錣覆�

#
# 嶷勣業��麻で、僥���C嬬を聞うかどうか�x�k
# �┘妊侫�ルトは、聞喘しない $obj->no_stat)
#
#$data->use_stat; # 僥���C嬬を聞う
#$data->no_stat;  # 僥���C嬬を聞わない

#
# 嶷勣業��麻で、仝ドキュメント嶄の喘�Zの�l業々と仝�B俊�Zの嶷勣業々
# のどちらに曳嶷をおくかを�O協する。
# デフォルト�､錬�
# �､�寄きいほど仝ドキュメント嶄の喘�Zの�l業々の曳嶷が互まる
#
#$data->average_rate(0.5);

#
# 僥���C嬬喘DBにデ�`タを們�eするかどうか�x�k
# 嶷勣業��麻で、僥���C嬬を聞うときは、セットしておいたほうが
# �o�y。�I尖���鵑朴Я��C嬬喘DBに鞠�hされていない�Zが根まれる
# と屎しく�嘛�しない。
# �┘妊侫�ルトは、們�eしない $obj->no_storage��
#
#$data->use_storage; # 們�eする
#$data->no_storage;  # 們�eしない

#
# 僥���C嬬喘DBに聞喘するDBMをSDBM_Fileに峺協
# �┘妊侫�ルトは、DB_FileのBTREE?皎`ド��
#
#$data->use_SDBM;

#
# �^肇のドキュメントの拙�e�y��を聞う��栽のデ�`タベ�`スの
# ファイル兆をセット
# �┘妊侫�ルトは "stat.db"と"comb.db"��
#
$data->stat_db("statICT.db");
$data->comb_db("combICT.db");

#
# デ�`タベ�`スの電麿ロックのための匯�rディレクトリを峺協
# ディレクトリ兆が腎猟忖双�┘妊侫�ルト��の��栽はロックしない
#
#$data->lock_dir("lock_dir");

#
# 瞳�~タグ原け�gみのテキストから、デ�`タを�iみ�zみ
# ���T喘�Zリストを塘双に卦す
# �╂朷e�y��DB聞喘、ドキュメント嶄の�l業聞喘にセット��
#
#my @noun_list = $data->get_imp_word($str, 'var');     # 秘薦が�篳�
my @noun_list = $data->get_imp_word($InputFile); # 秘薦がファイル

#
# 念指�iみ�zんだ瞳�~タグ原け�gみテキストファイルを圷に
# モ�`ドを�笋┐董����T喘�Zリストを塘双に卦す
#$data->use_stat->no_frq;
#my @noun_list2 = $data->get_imp_word();
# また、その�Y惚を�eのモ�`ドによる�Y惚と�譴浦呂錣擦�
#@noun_list = $data->result_filter (\@noun_list, \@noun_list2, 30, 1000);

#
#  ���T喘�Zリストと��麻した嶷勣業を���奮�薦に竃す
#
foreach (@noun_list) {
   # 方�､里澆榔輅召靴覆�
   next if $_->[0] =~ /^\d+$/;
   # 1猟忖(GB)のみは燕幣しない
   next if $_->[0] =~ /^[\x00-\x7F]$/;
   next if $_->[0] =~ /^[\x81-\xFE][\x40-\xFE]$/;
   next if $_->[0] =~ /^[\x81-\xEF][\x30-\x39][\x81-\xEF][\x30-\x39]$/;    # �Y惚燕幣
   printf "%-60s %16.2f\n", $_->[0], $_->[1] if $output_mode == 1;
   printf "%s\n",           $_->[0]          if $output_mode == 2;
   printf "%s,",            $_->[0]          if $output_mode == 3;
}