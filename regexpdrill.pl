use strict; use warnings; use Switch;
my $quiz_ans;

print "
ーーーーーーーーーーーーーーーーーー
｜　　　　　　　　　　　　　　　　｜
｜　　　　　　　　　　　　　　　　｜
｜　　　　　　　　　　　　　　　　｜
｜　　　　　正規表現ドリル　　　　｜
｜　　　　　　　　　　　　　　　　｜
｜　　　　　　　　　　　　　　　　｜
｜　　　　　　　　　　　　　　　　｜
ーーーーーーーーーーーーーーーーーー\n\n";

for (my $count = 0; $count < 3; ) {
  &question(int(rand(8)) + 1);

  print "答え: ";
  if(<STDIN> == $quiz_ans ){
    print "正解です\n\n";
    print "ーーーーーーーーーーーーーーーーーー\n\n";
    $count++;
  } else {
    $count = 0;
    retry();
  }

  if($count == 3) {
    print "合格です！正解数は${count}です\n\n";
    exit(0);
  }
}

sub question {
  my $switch = $_[0];
  switch ($switch) {
    case 1 { print "No.１: ¥D+\n1:一個以上連続する数字以外の文字列\n2:一個以上連続する数字\n3:一個の数字以外の文字\n\n"; $quiz_ans = 1;}
    case 2 { print "No.２: ^yes　マッチするのは？\n1:Yes\n2:no yes\n3:yes no\n\n"; $quiz_ans = 3;}
    case 3 { print "No.３: ^　マッチするのは？\n1:すべての文字列\n2:記号\n3:数字\n\n"; $quiz_ans = 1;}
    case 4 { print "No.４: yes\$　マッチするのは？\n1:Yes\n2:no yes\n3:yes no\n\n"; $quiz_ans = 2;}
    case 5 { print "No.５: ^yes\$　マッチするのは？\n1:Yes\n2:yes\n3:yes no\n\n"; $quiz_ans = 2;}
    case 6 { print "No.６: ca.　マッチするのは？\n1:car\n2:CAT\n3:ca\n\n"; $quiz_ans = 1;}
    case 7 { print "No.７: point[0-9]　マッチするのは？\n1:pointA\n2:point 2\n3:point1\n\n"; $quiz_ans = 3;}
    case 8 { print "No.８: point[^0-9]　マッチするのは？\n1:pointA\n2:point 2\n3:point1\n\n"; $quiz_ans = 1;}
  }
}

sub retry {
  print "\n";
  print "＿人人人人人人人人人人人人人＿\n";
  print "＞　最初からやり直し！！！　＜\n";
  print "￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣\n";
  print "ーーーーーーーーーーーーーーーーーー\n";
  print "\n";
}