package com.google.protobuf;

import android.app.m;
import com.android.internal.logging.nano.MetricsProto;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ListValue extends GeneratedMessageV3 implements ListValueOrBuilder {
    private static final ListValue DEFAULT_INSTANCE = new ListValue();
    private static final Parser<ListValue> PARSER = new AbstractParser<ListValue>() { // from class: com.google.protobuf.ListValue.1
        @Override // com.google.protobuf.Parser
        public ListValue parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            Builder builderNewBuilder = ListValue.newBuilder();
            try {
                builderNewBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                return builderNewBuilder.buildPartial();
            } catch (InvalidProtocolBufferException e2) {
                throw e2.setUnfinishedMessage(builderNewBuilder.buildPartial());
            } catch (UninitializedMessageException e3) {
                throw e3.asInvalidProtocolBufferException().setUnfinishedMessage(builderNewBuilder.buildPartial());
            } catch (IOException e4) {
                throw new InvalidProtocolBufferException(e4).setUnfinishedMessage(builderNewBuilder.buildPartial());
            }
        }
    };
    public static final int VALUES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Value> values_;

    public static ListValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return StructProto.internal_static_google_protobuf_ListValue_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListValue parseDelimitedFrom(InputStream inputStream) {
        return (ListValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListValue parseFrom(ByteBuffer byteBuffer) {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<ListValue> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListValue)) {
            return super.equals(obj);
        }
        ListValue listValue = (ListValue) obj;
        return getValuesList().equals(listValue.getValuesList()) && getUnknownFields().equals(listValue.getUnknownFields());
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<ListValue> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i2 = this.memoizedSize;
        if (i2 != -1) {
            return i2;
        }
        int iComputeMessageSize = 0;
        for (int i3 = 0; i3 < this.values_.size(); i3++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.values_.get(i3));
        }
        int serializedSize = getUnknownFields().getSerializedSize() + iComputeMessageSize;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public Value getValues(int i2) {
        return this.values_.get(i2);
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public int getValuesCount() {
        return this.values_.size();
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public List<Value> getValuesList() {
        return this.values_;
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public ValueOrBuilder getValuesOrBuilder(int i2) {
        return this.values_.get(i2);
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public List<? extends ValueOrBuilder> getValuesOrBuilderList() {
        return this.values_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i2 = this.memoizedHashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
        if (getValuesCount() > 0) {
            iHashCode = m.D(iHashCode, 37, 1, 53) + getValuesList().hashCode();
        }
        int iHashCode2 = getUnknownFields().hashCode() + (iHashCode * 29);
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return StructProto.internal_static_google_protobuf_ListValue_fieldAccessorTable.ensureFieldAccessorsInitialized(ListValue.class, Builder.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new ListValue();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) {
        for (int i2 = 0; i2 < this.values_.size(); i2++) {
            codedOutputStream.writeMessage(1, this.values_.get(i2));
        }
        getUnknownFields().writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ListValueOrBuilder {
        private int bitField0_;
        private RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> valuesBuilder_;
        private List<Value> values_;

        private void buildPartial0(ListValue listValue) {
        }

        private void buildPartialRepeatedFields(ListValue listValue) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                listValue.values_ = repeatedFieldBuilderV3.build();
                return;
            }
            if ((this.bitField0_ & 1) != 0) {
                this.values_ = Collections.unmodifiableList(this.values_);
                this.bitField0_ &= -2;
            }
            listValue.values_ = this.values_;
        }

        private void ensureValuesIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.values_ = new ArrayList(this.values_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return StructProto.internal_static_google_protobuf_ListValue_descriptor;
        }

        private RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> getValuesFieldBuilder() {
            if (this.valuesBuilder_ == null) {
                this.valuesBuilder_ = new RepeatedFieldBuilderV3<>(this.values_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.values_ = null;
            }
            return this.valuesBuilder_;
        }

        public Builder addAllValues(Iterable<? extends Value> iterable) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureValuesIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.values_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public Builder addValues(Value value) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureValuesIsMutable();
                this.values_.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Value.Builder addValuesBuilder() {
            return (Value.Builder) getValuesFieldBuilder().addBuilder(Value.getDefaultInstance());
        }

        public Builder clearValues() {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.values_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return StructProto.internal_static_google_protobuf_ListValue_descriptor;
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public Value getValues(int i2) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            return repeatedFieldBuilderV3 == null ? this.values_.get(i2) : (Value) repeatedFieldBuilderV3.getMessage(i2);
        }

        public Value.Builder getValuesBuilder(int i2) {
            return (Value.Builder) getValuesFieldBuilder().getBuilder(i2);
        }

        public List<Value.Builder> getValuesBuilderList() {
            return getValuesFieldBuilder().getBuilderList();
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public int getValuesCount() {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            return repeatedFieldBuilderV3 == null ? this.values_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public List<Value> getValuesList() {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.values_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public ValueOrBuilder getValuesOrBuilder(int i2) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            return repeatedFieldBuilderV3 == null ? this.values_.get(i2) : (ValueOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public List<? extends ValueOrBuilder> getValuesOrBuilderList() {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.values_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return StructProto.internal_static_google_protobuf_ListValue_fieldAccessorTable.ensureFieldAccessorsInitialized(ListValue.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder removeValues(int i2) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureValuesIsMutable();
                this.values_.remove(i2);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i2);
            }
            return this;
        }

        public Builder setValues(int i2, Value value) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureValuesIsMutable();
                this.values_.set(i2, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i2, value);
            }
            return this;
        }

        private Builder() {
            this.values_ = Collections.emptyList();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public ListValue build() {
            ListValue listValueBuildPartial = buildPartial();
            if (listValueBuildPartial.isInitialized()) {
                return listValueBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) listValueBuildPartial);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public ListValue buildPartial() {
            ListValue listValue = new ListValue(this);
            buildPartialRepeatedFields(listValue);
            if (this.bitField0_ != 0) {
                buildPartial0(listValue);
            }
            onBuilt();
            return listValue;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ListValue getDefaultInstanceForType() {
            return ListValue.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public Value.Builder addValuesBuilder(int i2) {
            return (Value.Builder) getValuesFieldBuilder().addBuilder(i2, Value.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.values_ = Collections.emptyList();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.bitField0_ = 0;
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.values_ = Collections.emptyList();
            } else {
                this.values_ = null;
                repeatedFieldBuilderV3.clear();
            }
            this.bitField0_ &= -2;
            return this;
        }

        public Builder addValues(int i2, Value value) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                ensureValuesIsMutable();
                this.values_.add(i2, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i2, value);
            }
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof ListValue) {
                return mergeFrom((ListValue) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setValues(int i2, Value.Builder builder) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureValuesIsMutable();
                this.values_.set(i2, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i2, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(ListValue listValue) {
            if (listValue == ListValue.getDefaultInstance()) {
                return this;
            }
            if (this.valuesBuilder_ == null) {
                if (!listValue.values_.isEmpty()) {
                    if (this.values_.isEmpty()) {
                        this.values_ = listValue.values_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureValuesIsMutable();
                        this.values_.addAll(listValue.values_);
                    }
                    onChanged();
                }
            } else if (!listValue.values_.isEmpty()) {
                if (this.valuesBuilder_.isEmpty()) {
                    this.valuesBuilder_.dispose();
                    this.valuesBuilder_ = null;
                    this.values_ = listValue.values_;
                    this.bitField0_ &= -2;
                    this.valuesBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getValuesFieldBuilder() : null;
                } else {
                    this.valuesBuilder_.addAllMessages(listValue.values_);
                }
            }
            mergeUnknownFields(listValue.getUnknownFields());
            onChanged();
            return this;
        }

        public Builder addValues(Value.Builder builder) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureValuesIsMutable();
                this.values_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public Builder addValues(int i2, Value.Builder builder) {
            RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureValuesIsMutable();
                this.values_.add(i2, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i2, builder.build());
            }
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            extensionRegistryLite.getClass();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag != 10) {
                                if (!super.parseUnknownField(codedInputStream, extensionRegistryLite, tag)) {
                                }
                            } else {
                                Value value = (Value) codedInputStream.readMessage(Value.parser(), extensionRegistryLite);
                                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                                if (repeatedFieldBuilderV3 == null) {
                                    ensureValuesIsMutable();
                                    this.values_.add(value);
                                } else {
                                    repeatedFieldBuilderV3.addMessage(value);
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.unwrapIOException();
                    }
                } catch (Throwable th) {
                    onChanged();
                    throw th;
                }
            }
            onChanged();
            return this;
        }
    }

    private ListValue(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Builder newBuilder(ListValue listValue) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(listValue);
    }

    public static ListValue parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static ListValue parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (ListValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static ListValue parseFrom(ByteString byteString) {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public ListValue getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    private ListValue() {
        this.memoizedIsInitialized = (byte) -1;
        this.values_ = Collections.emptyList();
    }

    public static ListValue parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static ListValue parseFrom(byte[] bArr) {
        return PARSER.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static ListValue parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static ListValue parseFrom(InputStream inputStream) {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ListValue parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static ListValue parseFrom(CodedInputStream codedInputStream) {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static ListValue parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
