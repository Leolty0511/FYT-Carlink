package com.google.protobuf;

import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
@CheckReturnValue
public interface Message extends MessageLite, MessageOrBuilder {

    public interface Builder extends MessageLite.Builder, MessageOrBuilder {
        @CanIgnoreReturnValue
        Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        Message build();

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* bridge */ /* synthetic */ MessageLite build();

        Message buildPartial();

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* bridge */ /* synthetic */ MessageLite buildPartial();

        @CanIgnoreReturnValue
        Builder clear();

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder clear();

        @CanIgnoreReturnValue
        Builder clearField(Descriptors.FieldDescriptor fieldDescriptor);

        @CanIgnoreReturnValue
        Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor);

        /* JADX INFO: renamed from: clone */
        Builder mo58clone();

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* JADX INFO: renamed from: clone */
        /* bridge */ /* synthetic */ MessageLite.Builder mo58clone();

        @Override // com.google.protobuf.MessageOrBuilder
        Descriptors.Descriptor getDescriptorForType();

        Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor);

        Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i2);

        @Override // com.google.protobuf.MessageLite.Builder
        boolean mergeDelimitedFrom(InputStream inputStream);

        @Override // com.google.protobuf.MessageLite.Builder
        boolean mergeDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite);

        @CanIgnoreReturnValue
        Builder mergeFrom(ByteString byteString);

        @CanIgnoreReturnValue
        Builder mergeFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite);

        @CanIgnoreReturnValue
        Builder mergeFrom(CodedInputStream codedInputStream);

        @CanIgnoreReturnValue
        Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);

        @CanIgnoreReturnValue
        Builder mergeFrom(Message message);

        @CanIgnoreReturnValue
        Builder mergeFrom(InputStream inputStream);

        @CanIgnoreReturnValue
        Builder mergeFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite);

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] bArr);

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] bArr, int i2, int i3);

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] bArr, int i2, int i3, ExtensionRegistryLite extensionRegistryLite);

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(ByteString byteString);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(CodedInputStream codedInputStream);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(InputStream inputStream);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(byte[] bArr);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(byte[] bArr, int i2, int i3);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(byte[] bArr, int i2, int i3, ExtensionRegistryLite extensionRegistryLite);

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        @CanIgnoreReturnValue
        /* bridge */ /* synthetic */ MessageLite.Builder mergeFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite);

        @CanIgnoreReturnValue
        Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet);

        Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor);

        @CanIgnoreReturnValue
        Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        @CanIgnoreReturnValue
        Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj);

        @CanIgnoreReturnValue
        Builder setUnknownFields(UnknownFieldSet unknownFieldSet);
    }

    boolean equals(Object obj);

    Parser<? extends Message> getParserForType();

    int hashCode();

    Builder newBuilderForType();

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* bridge */ /* synthetic */ MessageLite.Builder newBuilderForType();

    Builder toBuilder();

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* bridge */ /* synthetic */ MessageLite.Builder toBuilder();

    String toString();
}
