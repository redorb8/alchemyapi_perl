package AlchemyAPI_ImageParams;

use 5.008000;
use strict;
use warnings;

require Exporter;
use AutoLoader qw(AUTOLOAD);
use base qw(AlchemyAPI_BaseParams);
use Error qw(:try);
use URI::Escape;


our %EXPORT_TAGS = ( 'all' => [ qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(

);

our $VERSION = '0.10';

sub new() {

    my $class = shift;

    my $self = {
        _outputMode => AlchemyAPI_BaseParams::OUTPUT_MODE_XML,
    };

    bless $self, $class;

    return $self;
}


sub GetParameterString {
	my($self) = @_;
	my $retString = $self->SUPER::GetParameterString();

	return $retString;
}
1;
__END__
