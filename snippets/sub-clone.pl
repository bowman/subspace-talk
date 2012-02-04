  use Sub::Clone;
  sub get_callback { return sub { "hi!" }; }

  my $first = get_callback();
  my $second = get_callback();
  my $third = clone_sub $second;

  warn "$first == $second"; # prints the same refaddr
  warn "$third != $second"; # prints the diff refaddr
