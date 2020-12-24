use integer;
use strict;
sub primefactors{
    my $result = "";
    my $n = @_[0];
    for(2..sqrt(@_[0])){
        my $coef = $_;
        my $exp = 0;
        while($n % $coef == 0){
            $exp++;
            $n /= $coef;
        }
        $result .= $exp > 1 ? "($coef**$exp)" : $exp == 1 ? "($coef)" : "";
    }
    $result .= "($n)" if $n != 1;
    $result;
}

print primefactors(7919), "\n";
