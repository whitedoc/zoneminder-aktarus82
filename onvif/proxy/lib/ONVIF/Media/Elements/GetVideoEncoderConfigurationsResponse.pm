
package ONVIF::Media::Elements::GetVideoEncoderConfigurationsResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/media/wsdl' }

__PACKAGE__->__set_name('GetVideoEncoderConfigurationsResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Configurations_of :ATTR(:get<Configurations>);

__PACKAGE__->_factory(
    [ qw(        Configurations

    ) ],
    {
        'Configurations' => \%Configurations_of,
    },
    {
        'Configurations' => 'ONVIF::Media::Types::VideoEncoderConfiguration',
    },
    {

        'Configurations' => 'Configurations',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Media::Elements::GetVideoEncoderConfigurationsResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetVideoEncoderConfigurationsResponse from the namespace http://www.onvif.org/ver10/media/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Configurations

 $element->set_Configurations($data);
 $element->get_Configurations();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Media::Elements::GetVideoEncoderConfigurationsResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   Configurations =>  { # ONVIF::Media::Types::VideoEncoderConfiguration
     Encoding => $some_value, # VideoEncoding
     Resolution =>  { # ONVIF::Media::Types::VideoResolution
       Width =>  $some_value, # int
       Height =>  $some_value, # int
     },
     Quality =>  $some_value, # float
     RateControl =>  { # ONVIF::Media::Types::VideoRateControl
       FrameRateLimit =>  $some_value, # int
       EncodingInterval =>  $some_value, # int
       BitrateLimit =>  $some_value, # int
     },
     MPEG4 =>  { # ONVIF::Media::Types::Mpeg4Configuration
       GovLength =>  $some_value, # int
       Mpeg4Profile => $some_value, # Mpeg4Profile
     },
     H264 =>  { # ONVIF::Media::Types::H264Configuration
       GovLength =>  $some_value, # int
       H264Profile => $some_value, # H264Profile
     },
     Multicast =>  { # ONVIF::Media::Types::MulticastConfiguration
       Address =>  { # ONVIF::Media::Types::IPAddress
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
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

