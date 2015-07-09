use strict; use warnings; use Switch;
my $quiz_ans;

print "
ーーーーーーーーー
｜　　　　　　　｜
｜　　　　　　　｜
｜　　　　　　　｜
｜正規表現ドリル｜
｜　　　　　　　｜
｜　　　　　　　｜
｜　　　　　　　｜
ーーーーーーーーー\n\n";

for (my $count = 0; $count < 3; ) {
  &question(int(rand(2)) + 1);

  print "答え: ";
  if(<STDIN> == $quiz_ans ){
    print "正解です\n\n";
    $count++;
  } else {
    end();
  }
}

sub question {
  my $switch = $_[0];
  switch ($switch) {
    case 1 { print "No.１: ¥D+\n1:一個以上連続する数字以外の文字列\n2:一個以上連続する数字\n3:一個の数字以外の文字\n\n"; $quiz_ans = 1;}
    case 2 { print "No.２: ^yes　マッチするのは？\n1:Yes\n2:no yes\n3:yes no\n\n"; $quiz_ans = 3;}
  }
}

sub end {
  print "\n";
  print "＿人人人人人人人人人人人人人＿\n";
  print "＞　最初からやり直し！！！　＜\n";
  print "￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣\n";
  print "\n";
  exit(0);
}