package ONVIF::Analytics::Types::FindMetadataResult;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %RecordingToken_of :ATTR(:get<RecordingToken>);
my %TrackToken_of :ATTR(:get<TrackToken>);
my %Time_of :ATTR(:get<Time>);

__PACKAGE__->_factory(
    [ qw(        RecordingToken
        TrackToken
        Time

    ) ],
    {
        'RecordingToken' => \%RecordingToken_of,
        'TrackToken' => \%TrackToken_of,
        'Time' => \%Time_of,
    },
    {
        'RecordingToken' => 'ONVIF::Analytics::Types::RecordingReference',
        'TrackToken' => 'ONVIF::Analytics::Types::TrackReference',
        'Time' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
    },
    {

        'RecordingToken' => 'RecordingToken',
        'TrackToken' => 'TrackToken',
        'Time' => 'Time',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::FindMetadataResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FindMetadataResult from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RecordingToken


=item * TrackToken


=item * Time




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::FindMetadataResult
   RecordingToken => $some_value, # RecordingReference
   TrackToken => $some_value, # TrackReference
   Time =>  $some_value, # dateTime
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

