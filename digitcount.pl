sub nb_dig {
    my $p = join "", map $_**2, 0..$_[0];
    $p =~ s/[^$_[1]]//g;
    length($p);
}
