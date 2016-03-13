package ONVIF::Analytics::Types::GetRecordingsResponseItem;
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
my %Configuration_of :ATTR(:get<Configuration>);
my %Tracks_of :ATTR(:get<Tracks>);

__PACKAGE__->_factory(
    [ qw(        RecordingToken
        Configuration
        Tracks

    ) ],
    {
        'RecordingToken' => \%RecordingToken_of,
        'Configuration' => \%Configuration_of,
        'Tracks' => \%Tracks_of,
    },
    {
        'RecordingToken' => 'ONVIF::Analytics::Types::RecordingReference',
        'Configuration' => 'ONVIF::Analytics::Types::RecordingConfiguration',
        'Tracks' => 'ONVIF::Analytics::Types::GetTracksResponseList',
    },
    {

        'RecordingToken' => 'RecordingToken',
        'Configuration' => 'Configuration',
        'Tracks' => 'Tracks',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::GetRecordingsResponseItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GetRecordingsResponseItem from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RecordingToken


=item * Configuration


=item * Tracks




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::GetRecordingsResponseItem
   RecordingToken => $some_value, # RecordingReference
   Configuration =>  { # ONVIF::Analytics::Types::RecordingConfiguration
     Source =>  { # ONVIF::Analytics::Types::RecordingSourceInformation
       SourceId =>  $some_value, # anyURI
       Name => $some_value, # Name
       Location => $some_value, # Description
       Description => $some_value, # Description
       Address =>  $some_value, # anyURI
     },
     Content => $some_value, # Description
     MaximumRetentionTime =>  $some_value, # duration
   },
   Tracks =>  { # ONVIF::Analytics::Types::GetTracksResponseList
     Track =>  { # ONVIF::Analytics::Types::GetTracksResponseItem
       TrackToken => $some_value, # TrackReference
       Configuration =>  { # ONVIF::Analytics::Types::TrackConfiguration
         TrackType => $some_value, # TrackType
         Description => $some_value, # Description
       },
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

