use Sub::Information as => 'inspect';

my $code_info = inspect(\&inspect);
print "$_ = ", $code_info->$_, "\n"
for qw(name package address blessed file
        variables code dump);
