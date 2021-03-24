sub change{
  my @x = split /\n/, $_[0];
  return "ERROR: VERSION or PHONE" if( $x[3] !~ /\+1-\d{3}-\d{3}-\d{4}$/ ||  $x[5] !~ /Version: \d+\.\d+$/);
  "Program: $_[1] Author: g964 Phone: +1-503-555-0090 Date: 2019-01-01 Version: ${\($x[5] eq \"Version: 2.0\" ? '2.0' : $_[2])}";
}
