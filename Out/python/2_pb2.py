# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: 2.proto

from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import descriptor_pb2
# @@protoc_insertion_point(imports)




DESCRIPTOR = _descriptor.FileDescriptor(
  name='2.proto',
  package='Protocal',
  serialized_pb='\n\x07\x32.proto\x12\x08Protocal\")\n\x04Info\x12\x0f\n\x07\x61\x63\x63ount\x18\x01 \x02(\t\x12\x10\n\x08password\x18\x02 \x02(\t')




_INFO = _descriptor.Descriptor(
  name='Info',
  full_name='Protocal.Info',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='account', full_name='Protocal.Info.account', index=0,
      number=1, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=unicode("", "utf-8"),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='password', full_name='Protocal.Info.password', index=1,
      number=2, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=unicode("", "utf-8"),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  extension_ranges=[],
  serialized_start=21,
  serialized_end=62,
)

DESCRIPTOR.message_types_by_name['Info'] = _INFO

class Info(_message.Message):
  __metaclass__ = _reflection.GeneratedProtocolMessageType
  DESCRIPTOR = _INFO

  # @@protoc_insertion_point(class_scope:Protocal.Info)


# @@protoc_insertion_point(module_scope)
