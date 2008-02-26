package PPM::Repositories;

require Exporter;

use vars qw[ @ISA $VERSION @EXPORT ];
@ISA = qw( Exporter );


@EXPORT = qw(
	%Repositories
);

$VERSION = '0.02';

=for COMMENTING_OUT_CAUSE_THESE_YOU_SHOULD_ALREADY_HAVE
    ASPR => {
        location  => 'http://ppm-ia.ActiveState.com/PPM/ppmserver.plex?urn:/PPM/Server/SQL',
        Type      => 'PPMServer 3.0',
        Active    => 1,
        Notes     => 'This one you should already have',
        PerlV     => [],
        PerlO     => [],
    },
    ASPPM2R => {
        location  => 'http://ppm.ActiveState.com/cgibin/PPM/ppmserver.pl?urn:/PPMServer',
        Type      => '',
        Active    => 1,
        Notes     => '',
        PerlV     => [],
        PerlO     => [],
    },

=cut

%Repositories = (

    spurkis => {
        location  => 'http://www.epn.ml.org/~spurkis/Agent/repository',
        Type      => '??',
        Active    => 0,
        Notes     => 'GONE FOREVER',
        PerlV     => [],
        PerlO     => [],
    },
    crazy => {
        location  => 'http://crazyinsomniac.perlmonk.org/perl/ppm/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Maintainer takes requests',
        PerlV     => [ 5.6 ],
        PerlO     => ['MSWin32'],
    },
    crazy58 => {
        Name      => 'crazy',
        location  => 'http://crazyinsomniac.perlmonk.org/perl/ppm/5.8/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Maintainer takes requests',
        PerlV     => [ 5.8 ],
        PerlO     => ['MSWin32'],
    },
    theory => {
        location  => 'http://theoryx5.uwinnipeg.ca/cgi-bin/ppmserver?urn:/PPMServer',
        Type      => 'PPMServer',
        Active    => 1,
        Notes     => 'Get your mod_perl(s) here',
        PerlV     => [ 5.6 ],
        PerlO     => ['MSWin32'],
    },
    theoryS => {
        location  => 'http://theoryx5.uwinnipeg.ca/ppmpackages/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your mod_perl(s) here(SLOWER)',
        PerlV     => [ 5.6 ],
        PerlO     => ['MSWin32'],
    },
    theory58 => {
        location  => 'http://theoryx5.uwinnipeg.ca/cgi-bin/ppmserver?urn:/PPMServer58',
        Type      => 'PPMServer',
        Active    => 1,
        Notes     => 'Get your mod_perl(s) here',
        PerlV     => [ 5.8 ],
        PerlO     => ['MSWin32'],
    },
    theory58S => {
        location  => 'http://theoryx5.uwinnipeg.ca/ppms/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your mod_perl(s) here(SLOWER)',
        PerlV     => [ 5.8 ],
        PerlO     => ['MSWin32'],
    },
    devhelp => {
        location  => 'http://ppd.develop-help.com/ppd/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your Apache::Session here',
        PerlV     => [ 5.6 ],
        PerlO     => ['MSWin32'],
    },
    dada => {
        location  => 'http://dada.perl.it/PPM',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your Win32::API here',
        PerlV     => [ 5.5, 5.6 ],
        PerlO     => ['MSWin32'],
    },
    rto => {
        location  => 'http://rto.dk/packages/',
        Type      => 'Webpage',
        Active    => 0,
        Notes     => 'GONE (forget what was there)',
        PerlV     => [ 5.6 ],
        PerlO     => [],
    },
    jenda => {
        location  => 'http://jenda.krynicky.cz/perl',
        Type      => 'Webpage or PPMServer?',
        Active    => 1,
        Notes     => 'AWSOME (tons of Win32 related stuff by him)',
        PerlV     => [ 5.6, 5.8 ],
        PerlO     => ['MSWin32'],
    },
    xray => {
        location  => 'http://www.xray.mpe.mpg.de/~ach/ptk/ppm/',
        Type      => '??',
        Active    => 0,
        Notes     => 'long gone',
        PerlV     => [ 5.6 ],
        PerlO     => [],
    },
    openi => {
        location  => 'http://openinteract.sourceforge.net/ppmpackages/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Template Toolkit!!!',
        PerlV     => [ 5.6, 5.8 ],
        PerlO     => ['MSWin32'],
    },
    
    roth => {
        location  => 'http://www.roth.net/perl/packages/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'More Win32:: stuff (roth busy, no updates)',
        PerlV     => [ 5.5, 5.6],
        PerlO     => ['MSWin32'],
    },

    sablot => {
        location  => 'http://ppm.gingerall.cz',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your XML::Sablotron here',
        PerlV     => [ 5.5, 5.6, 5.8 ],
        PerlO     => ['MSWin32'],
    },
    perlxml => {
        location  => 'http://www.perlxml.net/PPM/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your libxml-perl here. Please note that this is known to disappear for a few days and come back.',
        PerlV     => [ 5.6, 5.8 ],
        PerlO     => ['MSWin32'],
    },
    datetime => {
        location  => 'http://datetime.perl.org/download/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your DateTime modules here',
        PerlV     => [ 5.6, 5.8 ],
        PerlO     => ['MSWin32'],
    },
);



1;
__END__
=head1 NAME

PPM::Repositories - a list of all I<known> ppm package repositories

=head1 SYNOPSIS

    use PPM::Repositories;
                                                    #
    # Print out all *Active* repositories for perl 5.8.x
                                                    #
    for my $rep ( keys %Repositories ) {
        next unless $Repositories{$rep}->{Active};
        next unless grep { $_ == 5.8 } @{ $Repositories{$rep}->{PerlV} };
        print $rep,$/,
            $Repositories{$rep}->{location},$/,
            $Repositories{$rep}->{Notes},$/,
            $/;
# uncomment the following lines to automatically add them to your config
#        use PPM;
#        PPM::AddRepository(
#            "repository" => $rep,
#            "location"   => $Repositories{$rep}->{location},
#            "save" => 'yes');
    }

=head1 DESCRIPTION

This is a list of all known ppm repositores (barring the activestate ones).
Currently, most of them are Win32 specific,
mainly because the *nix folks have CPAN/CPANPLUS
as well as free compilers.

An example entry in C<%Repositories> looks like:

    datetime => {
        location  => 'http://datetime.perl.org/download/',
        Type      => 'Webpage',
        Active    => 1,
        Notes     => 'Get your DateTime modules here',
        PerlV     => [ 5.6, 5.8 ],
        PerlO     => ['MSWin32'],
    },

The meaning of the key/value pairs should be obvious.

Active is either 1, or 0, and it indicated whether or not
that particular repository existed (you could reach it via the internet),
and contained ppm packages, when this module was created.

PerlO is the value of $^O.

    $^O values for various operating systems:
        http://alma.ch/perl/perloses.htm
        http://crazyinsomniac.perlmonk.org/perl/misc/perloses.htm


See the L<SYNOPSIS|/"SYNOPSIS"> for example usage.
See L<PPM|PPM> for help with ppm.

=head2 EXPORT

C<%Repositories> is exported by default.

=head1 BUGS/ADDITIONS

Please use
https://rt.cpan.org/NoAuth/Bugs.html?Dist=PPM-Repositories
to report I<bugs>/additions.

=head1 AUTHOR

D. H. aka PodMaster

=head1 LICENSE

Copyright (c) 2003 by D.H. aka PodMaster. All rights reserved.

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself. If you don't know what this means,
visit http://perl.com/ or http://cpan.org/.

=head1 SEE ALSO

L<PPM>, L<PPM::Make>, L<CPANPLUS>, L<CPAN>.

=cut

This is not quite a repository
#http://softserv.murdoch.edu.au/pub/mswin/Perl/cpans/DBD-Oracle/
#http://softserv.murdoch.edu.au/pub/mswin/Perl/cpans/DBI/