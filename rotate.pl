sub max_rot {
  my $s = "$_[0]";
  my @F = ();
  for my $i (0..length($s)-1){
    push(@F, int($s));
    my ($c, $e, $d) = (substr($s, 0, $i), substr($s, $i, 1), substr($s, $i + 1));
    $s = $c . $d . $e;
  }
  max(@F);
}
