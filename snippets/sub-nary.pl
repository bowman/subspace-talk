#!/usr/bin/perl 
  use Sub::Nary; use YAML::XS;

  sub x {
    if ($ENV{one})     { return 1;     }
    elsif (rand()<0.5) { return (1,2); }
    else               { return @ARGV; }
  }

  print Dump(Sub::Nary->new->nary(\&x));
