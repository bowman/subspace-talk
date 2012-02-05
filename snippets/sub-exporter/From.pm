  package From;
  use Sub::Exporter -setup => {
      exports => [ 'plus',
        counter => sub { my $i = 0; sub { $i++ } },
      ],
  };
  sub plus { $_[0] + $_[1] };
  1;
