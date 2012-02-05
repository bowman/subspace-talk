  package To;
  use From 'counter', plus => { -as => 'add' };
  print counter(), ", " for 1..3; print "...\n";
  print "3+5 = ", add(3,5), "\n";
