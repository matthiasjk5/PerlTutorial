use strict;
use warnings;
use diagnostics;

# print a line followed by new line
use feature 'say'; 

use feature "switch";

# print "Hello World\n";

# my $name = 'Andy';

# my ($age, $street) = (40, 'Paisley Blvd W');

# my $my_info = "$name lives on \"$street\"\n";

# $my_info = qq{$name lives on "$street"\n};

# print $my_info;

# my $bunch_on_info = <<"END";
# This is a
# bunch of information
# on multiple lines
# END

# say $bunch_on_info;

# my $big_int = 18446744073709551615;

# # %c : Character
# # %s : string
# # %d : Decimal
# # %u : Unsigned integer
# # %f : Floating Point (Decimal Notation)
# # %e : Floating Point (Scientific Notation)

# printf("%u \n", $big_int + 1);

# my $big_float = .1000000000000001;

# printf("%.16f \n", $big_float + .1000000000000001);

# my $first = 1;
# my $second = 2;

# ($first, $second) = ($second, $first);

# say "$first $second";

# say "EXP 1 = ", exp 1;
# say "HEX 10 = ", hex 10;
# say "OCT 10 = ", oct 10;
# say "INT 6.45 = ", int(6.45);
# say "LOG 2 = ", log 2;
# say "Random between 0 - 10 = ", int(rand 11);
# say "SQRT 9 = ", sqrt 9;

# my $age = 80;
# my $is_not_intoxicated = 1;
# my $age_last_exam = 16;

# if('a' eq 'b') {
#   say "a equals b";
# } else {
#   say "a doesn't equal b";
# }

# unless(!$is_not_intoxicated) {
#   say "Get Sober";
# }

# say (($age > 18) ? "Can Vote": "Can't vote");

# for(my $i = 0; $i < 10; $i++) {
#   say $i;
# }

# my $i = 1;

# while ($i < 10) {
#   if ($i % 2 == 0) {
#     $i++;
#     next;
#   }

#   if ($i == 7) {last};

#   say $i;
#   $i++;
# }

my $i = 1;
my $lucky_num = 7;
my $guess;

do {
  say "Guess a NUmber Between 1 and 10";

  # This is how you get user input
  $guess = <STDIN>
} while $guess != $lucky_num;

say "You guessed 7";

# Given When Perl Switch statement
my $age_old = 18;
given ($age_old) {
  when($_ > 16) {
    say "Drive";
 
    # Will continue with the next cases
    continue;
  }
  when($_ > 17) {say "Go Vote";}
  default {say "Nothing Special";}
}

# ---------- STRINGS ----------
my $long_string = "Random Long String";
say "Length of String ", length $long_string;

# index returns the location of a String
printf("Long is at %d \n", index $long_string, "Long");

# rindex returns the last occurance
printf("Last g is at %d \n", rindex $long_string, "g");

# concatenate string with .
$long_string = $long_string . " isn\'t that long";
say $long_string;

# substr receives a string, the starting index and the number of characters to retrieve

say "Index 7 through 10 ", substr $long_string, 7, 4;

my $animal = "animals";

# chop deletes and returns the last character
printf("Last character is %s \n", chop $animal);
say $animal;

# chomp deletes the last newline
my $no_newline = "No Newline\n";
chomp $no_newline;
say $no_newline;

# Uppercase and lowercase functions
printf("Uppercase : %s \n", uc $long_string);
printf("Lowercase : %s \n", lc $long_string);
printf("1st Uppercase : %s \n", ucfirst $long_string);