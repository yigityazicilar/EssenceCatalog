#!/usr/bin/perl -w
# random Nonogram generator for nonogram.essence
# parameters: rows columns density stickiness scatter seed
# intention behind parameters:
# density is fraction of cells containing 1s
# stickiness is probability that a new 1 is next to an old 1
# scatter controls fraction of 1 cells initially scattered ignoring stickiness
# seed is optional integer random seed, use to regenerate a previous instance
#
# example: nonogram-generator.pl 10 5 0.52 0.8 0.4 1024

my ($rows,$cols,$density,$stickiness,$scatter,$seed) = @ARGV;
if (defined($seed)) {
  srand($seed);
} else {
  $seed = srand;
}

my $maxlength = 0;
my $total = 0;
my @g;
for $y (0..$rows-1) {
  for $x (0..$cols-1) {
    $g[$y][$x] = 0;
  }
}

# first scatter some fraction of required 1s uniformly at random into grid
while ($total < $rows*$cols*$density*$scatter) {
  $y = rand($rows);
  $x = rand($cols);
  $total += (1-$g[$y][$x]);
  $g[$y][$x] = 1;
}

# now add random 1s, enforcing stickiness, until target number of 1s reached
while ($total < $rows*$cols*$density) {
  $y = rand($rows);
  $x = rand($cols);
  my $q = rand(1);
  if (($q < (1-$density)) or
      ($x > 1 and
        ($g[$y][$x-1] or
          ($y > 1 and $g[$y-1][$x-1]) or
          ($y < $cols - 1 and $g[$y+1][$x-1])
        )
      ) or
      ($x < $cols - 1 and
        ($g[$y][$x+1] or
          ($y > 1 and $g[$y-1][$x+1]) or
          ($y < $cols - 1 and $g[$y+1][$x+1])
        )
      ) or
      (($y > 1 and $g[$y-1][$x]) or ($y < $cols - 1 and $g[$y+1][$x]))
     )
  {
    $total += (1-$g[$y][$x]);
    $g[$y][$x] = 1;
  }
}

print "\$ nonogram instance, generated by: nonogen $rows $cols $density $stickiness $scatter $seed\n";
for $y (0..$rows-1) {
  print '$ ';
  for $x (0..$cols-1) {
    print $g[$y][$x]?'#':'.';
  }
  print "\n";
}

print "letting m be $rows\n";
print "letting n be $cols\n";

print "letting rowRules be [\n";
my $sep = '';
for my $y (0..$rows-1) {
  print $sep."sequence(";
  $sep = ",\n";
  my $spat = join '', map { $g[$y][$_] } 0..($cols-1);
  my @cons = map { length } grep { defined and length > 0 } ($spat =~ /(1+)*/g);
  print join ',', @cons;
  $maxlength = ((0+@cons) > $maxlength ? (0+@cons) : $maxlength);
  print ")";
}

print "]\nletting colRules be [\n";
$sep = '';
for my $x (0..$cols-1) {
  print $sep."sequence(";
  $sep = ",\n";
  my $spat = join '', map { $g[$_][$x] } 0..($rows-1);
  my @cons = map { length } grep { defined and length > 0 } ($spat =~ /(1+)*/g);
  print join ',', @cons;
  $maxlength = (0+@cons) if (0+@cons) > $maxlength;
  print ")";
}

print "]\n";
print "letting r be $maxlength\n";

