  use Sub::Clone;
  sub get_callback { return sub { "hi!" }; }
  my $first = get_callback(); my $second = get_callback();
  my $third = clone_sub $second;
  print "# $first == $second\n"; # same refaddr
  print "# $third != $second\n"; # diff refaddr
