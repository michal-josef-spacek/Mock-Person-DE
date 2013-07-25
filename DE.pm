package Mock::Person::DE;

# Pragmas.
use base qw(Exporter);
use strict;
use utf8;
use warnings;

# Modules.
use Readonly;

# Constants.
Readonly::Scalar our $SPACE => q{ };
Readonly::Array our @EXPORT_OK => qw(name first_name first_female middle_male
	middle_female last_male last_female);

# Version.
our $VERSION = '0.03';

# First and middle male names.
my @first_male = my @middle_male = qw(
Adam
Adrian
Alex
Alexander
Alexandre
Ali
Amin
Andreas
Andy
Anton
Ben
Cedric
Chris
Christian
Claus
Daniel
David
Dennis
Dominic
Dominik
Fabian
Fabio
Felix
Florian
Frank
Freddy
Frederic
Gregor
Hans
Henry
Hermann
Ingo
Jan
Jan-Willem
Jasper
Jean
Joe
Jonas
Jonathan
Julian
Kai
Kay
Kevin
Lars
Leon
Lucas
Ludwig
Lukas
Manuel
Marcel
Marco
Marcus
Mark
Markus
Martin
Marvin
Matthias
Max
Maximilian
Micha
Michael
Moeppel
Nick
Nico
Niklas
Nils
Pascal
Patrick
Paul
Peter
Phil
Philipp
Ralf
Raoul
Ray
Rene
Rico
Robert
Robin
Ryan
Sami
Samuel
Sebastian
Simon
Someone
Stefan
Steffen
Stephan
Sven
Thomas
Till
Tim
Timo
Tobias
Tom
Victor
Vincent
Vinz
Virgil
Yannik
);

# First nad middle female names.
my @first_female = my @middle_female = qw(
Alexandra
Amelie
Andrea
Angela
Anja
Anjeli
Anna
Anne
Anni
Annika
Antonia
Bianca
Carina
Caro
Carolin
Charlotte
Christin
Christina
Clara
Claudia
Daniela
Diana
Emma
Esther
Eva
Franzi
Franziska
Gabi
Hanna
Hannah
Helene
Ina
Isabell
Jacqueline
Jana
Janina
Janine
Jasmin
Jennifer
Jenny
Jessica
Johanna
Judith
Jule
Julia
Julie
Kate
Katharina
Kathi
Kathrin
Katja
Kim
Kristin
Kristina
Lara
Laura
Lea
Lena
Leonie
Lina
Linda
Lisa
Luisa
Maike
Mara
Maria
Marie
Marina
Melanie
Meli
Melissa
Michelle
Miriam
Nadine
Nicole
Nina
Pia
Ramona
Rebecca
Rieke
Sabrina
Sandra
Sara
Sarah
Saskia
Silke
Simone
Sonja
Sophia
Sophie
Stefanie
Steffi
Stella
Stephanie
Svenja
Teresa
Theresa
Tina
Vanessa
Verena
);

# Last names.
my @last_male = my @last_female = qw(
Müller
Schmidt
Schneider
Fischer
Weber
Schäfer
Meyer
Wagner
Becker
Bauer
Hoffmann
Schulz
Koch
Richter
Klein
Wolf
Schröder
Neumann
Braun
Werner
Schwarz
Hofmann
Zimmermann
Schmitt
Hartmann
Schmid
Weiß
Schmitz
Krüger
Lange
Meier
Walter
Köhler
Maier
Beck
König
Krause
Schulze
Huber
Mayer
Frank
Lehmann
Kaiser
Fuchs
Herrmann
Lang
Thomas
Peters
Stein
Jung
Möller
Berger
Martin
Friedrich
Scholz
Keller
Groß
Hahn
Roth
Günther
Vogel
Schubert
Winkler
Schuster
Jäger
Lorenz
Ludwig
Baumann
Heinrich
Otto
Simon
Graf
Kraus
Krämer
Böhm
Schulte
Albrecht
Franke
Winter
Schumacher
Vogt
Haas
Sommer
Schreiber
Engel
Ziegler
Dietrich
Brandt
Seidel
Kuhn
Busch
Horn
Arnold
Kühn
Bergmann
Pohl
Pfeiffer
Wolff
Voigt
Sauer
);

# Get random first male name.
sub first_male {
	return $first_male[rand @first_male];
}

# Get random first female name.
sub first_female {
	return $first_female[rand @first_female];
}

# Get random last male name.
sub last_male {
	return $last_male[rand @last_male];
}

# Get random last female name.
sub last_female {
	return $last_female[rand @last_female];
}

# Get random middle male name.
sub middle_male {
	return $middle_male[rand @middle_male];
}

# Get random middle female name.
sub middle_female {
	return $middle_female[rand @middle_female];
}

# Get random name.
sub name {
	my $sex = shift;
	if (defined $sex && $sex eq 'female') {
		return last_female().$SPACE.first_female().$SPACE.middle_female();
	} else {
		return last_male().$SPACE.first_male().$SPACE.middle_male();
	}
}

1;

__END__

=encoding UTF-8

=cut

=head1 NAME

Mock::Person::DE - Generate random sets of German names.

=cut

=head1 DESCRIPTION

Data for this module was found on these pages:

=over

=item B<Last names>

L<about.com|http://german.about.com/od/names/a/German-Surnames.htm>

=item B<Middle names>

There's usually no distinction between a first and middle name in Germany.

=item B<First names>

L<indiachildnames.com|http://www.indiachildnames.com/top100/germannames.html>

=back

=cut

=head1 SUBROUTINES

=over 8

=item B<first_male()>

Returns random fists name of male person.

=item B<first_female()>

Returns random fists name of female person.

=item B<last_male()>

Returns random last name of male person.

=item B<last_female()>

Returns random last name of female person.

=item B<middle_male()>

Returns random middle name of male person.

=item B<middle_female()>

Returns random middle name of female person.

=item B<name([$sex])>

Recieves scalar with sex of the person ('male' or 'female') and returns
scalar with generated name.
Default value of $sex variable is 'male'.

=back

=head1 EXAMPLE

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Encode qw(encode_utf8);
 use Mock::Person::DE qw(name);

 # Error.
 print encode_utf8(name())."\n";

 # Output like.
 # Baumann Cedric Nick

=head1 DEPENDENCIES

L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

L<Mock::Person>,
L<Mock::Person::SV>,
L<Mock::Person::RU>.

=head1 REPOSITORY

L<https://github.com/tupinek/Mock-Person-DE>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
