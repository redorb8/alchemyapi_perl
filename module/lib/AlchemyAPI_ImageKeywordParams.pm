package AlchemyAPI_ImageKeywordParams;

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
        _image => undef,
        _imagePostMode => undef,
        
    };

    bless $self, $class;

    return $self;
}

sub SetImagePostMode {
    my($self, $imagePostMode) = @_;

    if ( "not-raw" eq $imagePostMode ||
         "raw" eq $imagePostMode )
    {
        $self->{_imagePostMode} = $imagePostMode;
    }
    else
    {
        throw Error::Simple("Error: Cannot set imagePostMode to ".$imagePostMode);
    }
}

sub GetImagePostMode {
    my($self) = @_;
    return $self->{_imagePostMode};
}

sub SetImage {

    my($self, $imagePostMode) = @_;
    
    $self->{_imagePostMode} = $imagePostMode;

}

sub GetImage {
    my($self) = @_;
    return $self->{_image};
}

sub GetParameterString {
	my($self) = @_;
	my $retString = $self->SUPER::GetParameterString();

    if( defined $self->{_image} )
    {
        $retString .= "&image=".$self->{_image};
    }
    if( defined $self->{_imagePostMode} )
    {
        $retString .= "&imagePostMode=".$self->{_imagePostMode};
    }
	if( defined $self->{_outputMode} ) 
    {
		$retString .= "&outputMode=".$self->{_outputMode};
	}
	return $retString;
}
1;
__END__
