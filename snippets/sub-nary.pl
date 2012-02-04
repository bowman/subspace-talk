  use Sub::Nary; use JSON::XS;

  sub x {
    if ($ENV{one})     { return 1;     }
    elsif (rand()<0.5) { return (1,2); }
    else               { return @ARGV; }
  }
  print encode_json(
            Sub::Nary->new->nary(\&x) );
