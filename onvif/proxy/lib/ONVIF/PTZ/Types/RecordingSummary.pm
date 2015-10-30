package ONVIF::PTZ::Types::RecordingSummary;
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

my %DataFrom_of :ATTR(:get<DataFrom>);
my %DataUntil_of :ATTR(:get<DataUntil>);
my %NumberRecordings_of :ATTR(:get<NumberRecordings>);

__PACKAGE__->_factory(
    [ qw(        DataFrom
        DataUntil
        NumberRecordings

    ) ],
    {
        'DataFrom' => \%DataFrom_of,
        'DataUntil' => \%DataUntil_of,
        'NumberRecordings' => \%NumberRecordings_of,
    },
    {
        'DataFrom' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'DataUntil' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'NumberRecordings' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'DataFrom' => 'DataFrom',
        'DataUntil' => 'DataUntil',
        'NumberRecordings' => 'NumberRecordings',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::RecordingSummary

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RecordingSummary from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * DataFrom


=item * DataUntil


=item * NumberRecordings




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::RecordingSummary
   DataFrom =>  $some_value, # dateTime
   DataUntil =>  $some_value, # dateTime
   NumberRecordings =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
