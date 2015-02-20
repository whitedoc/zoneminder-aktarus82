package ONVIF::Device::Types::PaneConfiguration;
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

my %PaneName_of :ATTR(:get<PaneName>);
my %AudioOutputToken_of :ATTR(:get<AudioOutputToken>);
my %AudioSourceToken_of :ATTR(:get<AudioSourceToken>);
my %AudioEncoderConfiguration_of :ATTR(:get<AudioEncoderConfiguration>);
my %ReceiverToken_of :ATTR(:get<ReceiverToken>);
my %Token_of :ATTR(:get<Token>);

__PACKAGE__->_factory(
    [ qw(        PaneName
        AudioOutputToken
        AudioSourceToken
        AudioEncoderConfiguration
        ReceiverToken
        Token

    ) ],
    {
        'PaneName' => \%PaneName_of,
        'AudioOutputToken' => \%AudioOutputToken_of,
        'AudioSourceToken' => \%AudioSourceToken_of,
        'AudioEncoderConfiguration' => \%AudioEncoderConfiguration_of,
        'ReceiverToken' => \%ReceiverToken_of,
        'Token' => \%Token_of,
    },
    {
        'PaneName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'AudioOutputToken' => 'ONVIF::Device::Types::ReferenceToken',
        'AudioSourceToken' => 'ONVIF::Device::Types::ReferenceToken',
        'AudioEncoderConfiguration' => 'ONVIF::Device::Types::AudioEncoderConfiguration',
        'ReceiverToken' => 'ONVIF::Device::Types::ReferenceToken',
        'Token' => 'ONVIF::Device::Types::ReferenceToken',
    },
    {

        'PaneName' => 'PaneName',
        'AudioOutputToken' => 'AudioOutputToken',
        'AudioSourceToken' => 'AudioSourceToken',
        'AudioEncoderConfiguration' => 'AudioEncoderConfiguration',
        'ReceiverToken' => 'ReceiverToken',
        'Token' => 'Token',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::PaneConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PaneConfiguration from the namespace http://www.onvif.org/ver10/schema.

Configuration of the streaming and coding settings of a Video window.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PaneName


=item * AudioOutputToken


=item * AudioSourceToken


=item * AudioEncoderConfiguration


=item * ReceiverToken


=item * Token




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::PaneConfiguration
   PaneName =>  $some_value, # string
   AudioOutputToken => $some_value, # ReferenceToken
   AudioSourceToken => $some_value, # ReferenceToken
   AudioEncoderConfiguration =>  { # ONVIF::Device::Types::AudioEncoderConfiguration
     Encoding => $some_value, # AudioEncoding
     Bitrate =>  $some_value, # int
     SampleRate =>  $some_value, # int
     Multicast =>  { # ONVIF::Device::Types::MulticastConfiguration
       Address =>  { # ONVIF::Device::Types::IPAddress
         Type => $some_value, # IPType
         IPv4Address => $some_value, # IPv4Address
         IPv6Address => $some_value, # IPv6Address
       },
       Port =>  $some_value, # int
       TTL =>  $some_value, # int
       AutoStart =>  $some_value, # boolean
     },
     SessionTimeout =>  $some_value, # duration
   },
   ReceiverToken => $some_value, # ReferenceToken
   Token => $some_value, # ReferenceToken
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
