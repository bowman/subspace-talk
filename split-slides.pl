#!/usr/bin/perl 

use strict;
use warnings;
use 5.10.0;
use IO::All;

my $header = '';
my $footer = "</body></html>\n";

if (-d "split.slides") {
    system("rm split.slides/*");
} else {
    mkdir "split.slides";
}

while (<>) {
    last if /^<div.*class=".*slide.*"/;
    $header .= $_;
}

my $slide = '';
my $count = 1;
while (<>) {
    if (/^<div.*class=".*slide.*"/ || m{</body>} ) {
        my $slide_file = sprintf "split.slides/s%03d.html", $count;
        $header >> io($slide_file);
        $slide >> io($slide_file);
        $footer >> io($slide_file);
        #($header, $slide, $footer) >> io($slide_file);
        $slide = '';
        $count++;
        last if m{^</body>};
    }
    $slide .= $_;
}

