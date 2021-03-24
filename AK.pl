sub add_key {
  my @matches = ($_[0] =~ /(\d)/g);
  if((my$L = @matches) < 8){return 0;}
  @matches = @matches[0..7];
  my $p = sum(map $matches[$_] * (3, 7, 1)[$_ % 3] , 0..8);
  push(@matches, 10*ceil($p/10) - $p);
  int(join "",@matches)
}
