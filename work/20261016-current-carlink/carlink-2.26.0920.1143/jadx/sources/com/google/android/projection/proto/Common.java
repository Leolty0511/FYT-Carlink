package com.google.android.projection.proto;

import android.app.m;
import android.media.ExifInterface;
import com.android.internal.logging.nano.MetricsProto;
import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class Common {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\fcommon.proto\u0012\u0006common\"r\n\tPhoneInfo\u0012\u0013\n\u000binstance_id\u0018\u0001 \u0001(\t\u0012 \n\u0018connectivity_lifetime_id\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bdevice_name\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011bluetooth_address\u0018\u0004 \u0001(\t\"Ä\u0001\n\fHeadUnitInfo\u0012\f\n\u0004make\u0018\u0001 \u0001(\t\u0012\r\n\u0005model\u0018\u0002 \u0001(\t\u0012\f\n\u0004year\u0018\u0003 \u0001(\t\u0012\u0012\n\nvehicle_id\u0018\u0004 \u0001(\t\u0012\u0016\n\u000ehead_unit_make\u0018\u0005 \u0001(\t\u0012\u0017\n\u000fhead_unit_model\u0018\u0006 \u0001(\t\u0012 \n\u0018head_unit_software_build\u0018\u0007 \u0001(\t\u0012\"\n\u001ahead_unit_software_version\u0018\b \u0001(\tB/\n#com.google.android.projection.protoB\u0006CommonH\u0003"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Descriptor internal_static_common_HeadUnitInfo_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_common_HeadUnitInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_common_PhoneInfo_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_common_PhoneInfo_fieldAccessorTable;

    public static final class HeadUnitInfo extends GeneratedMessageV3 implements HeadUnitInfoOrBuilder {
        public static final int HEAD_UNIT_MAKE_FIELD_NUMBER = 5;
        public static final int HEAD_UNIT_MODEL_FIELD_NUMBER = 6;
        public static final int HEAD_UNIT_SOFTWARE_BUILD_FIELD_NUMBER = 7;
        public static final int HEAD_UNIT_SOFTWARE_VERSION_FIELD_NUMBER = 8;
        public static final int MAKE_FIELD_NUMBER = 1;
        public static final int MODEL_FIELD_NUMBER = 2;
        public static final int VEHICLE_ID_FIELD_NUMBER = 4;
        public static final int YEAR_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object headUnitMake_;
        private volatile Object headUnitModel_;
        private volatile Object headUnitSoftwareBuild_;
        private volatile Object headUnitSoftwareVersion_;
        private volatile Object make_;
        private byte memoizedIsInitialized;
        private volatile Object model_;
        private volatile Object vehicleId_;
        private volatile Object year_;
        private static final HeadUnitInfo DEFAULT_INSTANCE = new HeadUnitInfo();

        @Deprecated
        public static final Parser<HeadUnitInfo> PARSER = new AbstractParser<HeadUnitInfo>() { // from class: com.google.android.projection.proto.Common.HeadUnitInfo.1
            @Override // com.google.protobuf.Parser
            public HeadUnitInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new HeadUnitInfo(codedInputStream, extensionRegistryLite);
            }
        };

        public static HeadUnitInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Common.internal_static_common_HeadUnitInfo_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HeadUnitInfo parseDelimitedFrom(InputStream inputStream) {
            return (HeadUnitInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HeadUnitInfo parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<HeadUnitInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof HeadUnitInfo)) {
                return super.equals(obj);
            }
            HeadUnitInfo headUnitInfo = (HeadUnitInfo) obj;
            if (hasMake() != headUnitInfo.hasMake()) {
                return false;
            }
            if ((hasMake() && !getMake().equals(headUnitInfo.getMake())) || hasModel() != headUnitInfo.hasModel()) {
                return false;
            }
            if ((hasModel() && !getModel().equals(headUnitInfo.getModel())) || hasYear() != headUnitInfo.hasYear()) {
                return false;
            }
            if ((hasYear() && !getYear().equals(headUnitInfo.getYear())) || hasVehicleId() != headUnitInfo.hasVehicleId()) {
                return false;
            }
            if ((hasVehicleId() && !getVehicleId().equals(headUnitInfo.getVehicleId())) || hasHeadUnitMake() != headUnitInfo.hasHeadUnitMake()) {
                return false;
            }
            if ((hasHeadUnitMake() && !getHeadUnitMake().equals(headUnitInfo.getHeadUnitMake())) || hasHeadUnitModel() != headUnitInfo.hasHeadUnitModel()) {
                return false;
            }
            if ((hasHeadUnitModel() && !getHeadUnitModel().equals(headUnitInfo.getHeadUnitModel())) || hasHeadUnitSoftwareBuild() != headUnitInfo.hasHeadUnitSoftwareBuild()) {
                return false;
            }
            if ((!hasHeadUnitSoftwareBuild() || getHeadUnitSoftwareBuild().equals(headUnitInfo.getHeadUnitSoftwareBuild())) && hasHeadUnitSoftwareVersion() == headUnitInfo.hasHeadUnitSoftwareVersion()) {
                return (!hasHeadUnitSoftwareVersion() || getHeadUnitSoftwareVersion().equals(headUnitInfo.getHeadUnitSoftwareVersion())) && this.unknownFields.equals(headUnitInfo.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getHeadUnitMake() {
            Object obj = this.headUnitMake_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.headUnitMake_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getHeadUnitMakeBytes() {
            Object obj = this.headUnitMake_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.headUnitMake_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getHeadUnitModel() {
            Object obj = this.headUnitModel_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.headUnitModel_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getHeadUnitModelBytes() {
            Object obj = this.headUnitModel_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.headUnitModel_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getHeadUnitSoftwareBuild() {
            Object obj = this.headUnitSoftwareBuild_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.headUnitSoftwareBuild_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getHeadUnitSoftwareBuildBytes() {
            Object obj = this.headUnitSoftwareBuild_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.headUnitSoftwareBuild_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getHeadUnitSoftwareVersion() {
            Object obj = this.headUnitSoftwareVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.headUnitSoftwareVersion_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getHeadUnitSoftwareVersionBytes() {
            Object obj = this.headUnitSoftwareVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.headUnitSoftwareVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getMake() {
            Object obj = this.make_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.make_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getMakeBytes() {
            Object obj = this.make_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.make_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getModel() {
            Object obj = this.model_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.model_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getModelBytes() {
            Object obj = this.model_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.model_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<HeadUnitInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.make_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.model_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.year_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.vehicleId_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(5, this.headUnitMake_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(6, this.headUnitModel_);
            }
            if ((this.bitField0_ & 64) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(7, this.headUnitSoftwareBuild_);
            }
            if ((this.bitField0_ & 128) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(8, this.headUnitSoftwareVersion_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeStringSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getVehicleId() {
            Object obj = this.vehicleId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.vehicleId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getVehicleIdBytes() {
            Object obj = this.vehicleId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.vehicleId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public String getYear() {
            Object obj = this.year_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.year_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public ByteString getYearBytes() {
            Object obj = this.year_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.year_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasHeadUnitMake() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasHeadUnitModel() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasHeadUnitSoftwareBuild() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasHeadUnitSoftwareVersion() {
            return (this.bitField0_ & 128) != 0;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasMake() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasModel() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasVehicleId() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
        public boolean hasYear() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasMake()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getMake().hashCode();
            }
            if (hasModel()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getModel().hashCode();
            }
            if (hasYear()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + getYear().hashCode();
            }
            if (hasVehicleId()) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + getVehicleId().hashCode();
            }
            if (hasHeadUnitMake()) {
                iHashCode = m.D(iHashCode, 37, 5, 53) + getHeadUnitMake().hashCode();
            }
            if (hasHeadUnitModel()) {
                iHashCode = m.D(iHashCode, 37, 6, 53) + getHeadUnitModel().hashCode();
            }
            if (hasHeadUnitSoftwareBuild()) {
                iHashCode = m.D(iHashCode, 37, 7, 53) + getHeadUnitSoftwareBuild().hashCode();
            }
            if (hasHeadUnitSoftwareVersion()) {
                iHashCode = m.D(iHashCode, 37, 8, 53) + getHeadUnitSoftwareVersion().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Common.internal_static_common_HeadUnitInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(HeadUnitInfo.class, Builder.class);
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
            return new HeadUnitInfo();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.make_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.model_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.year_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.vehicleId_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.headUnitMake_);
            }
            if ((this.bitField0_ & 32) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.headUnitModel_);
            }
            if ((this.bitField0_ & 64) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.headUnitSoftwareBuild_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.headUnitSoftwareVersion_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements HeadUnitInfoOrBuilder {
            private int bitField0_;
            private Object headUnitMake_;
            private Object headUnitModel_;
            private Object headUnitSoftwareBuild_;
            private Object headUnitSoftwareVersion_;
            private Object make_;
            private Object model_;
            private Object vehicleId_;
            private Object year_;

            public static final Descriptors.Descriptor getDescriptor() {
                return Common.internal_static_common_HeadUnitInfo_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearHeadUnitMake() {
                this.bitField0_ &= -17;
                this.headUnitMake_ = HeadUnitInfo.getDefaultInstance().getHeadUnitMake();
                onChanged();
                return this;
            }

            public Builder clearHeadUnitModel() {
                this.bitField0_ &= -33;
                this.headUnitModel_ = HeadUnitInfo.getDefaultInstance().getHeadUnitModel();
                onChanged();
                return this;
            }

            public Builder clearHeadUnitSoftwareBuild() {
                this.bitField0_ &= -65;
                this.headUnitSoftwareBuild_ = HeadUnitInfo.getDefaultInstance().getHeadUnitSoftwareBuild();
                onChanged();
                return this;
            }

            public Builder clearHeadUnitSoftwareVersion() {
                this.bitField0_ &= -129;
                this.headUnitSoftwareVersion_ = HeadUnitInfo.getDefaultInstance().getHeadUnitSoftwareVersion();
                onChanged();
                return this;
            }

            public Builder clearMake() {
                this.bitField0_ &= -2;
                this.make_ = HeadUnitInfo.getDefaultInstance().getMake();
                onChanged();
                return this;
            }

            public Builder clearModel() {
                this.bitField0_ &= -3;
                this.model_ = HeadUnitInfo.getDefaultInstance().getModel();
                onChanged();
                return this;
            }

            public Builder clearVehicleId() {
                this.bitField0_ &= -9;
                this.vehicleId_ = HeadUnitInfo.getDefaultInstance().getVehicleId();
                onChanged();
                return this;
            }

            public Builder clearYear() {
                this.bitField0_ &= -5;
                this.year_ = HeadUnitInfo.getDefaultInstance().getYear();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Common.internal_static_common_HeadUnitInfo_descriptor;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getHeadUnitMake() {
                Object obj = this.headUnitMake_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.headUnitMake_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getHeadUnitMakeBytes() {
                Object obj = this.headUnitMake_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.headUnitMake_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getHeadUnitModel() {
                Object obj = this.headUnitModel_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.headUnitModel_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getHeadUnitModelBytes() {
                Object obj = this.headUnitModel_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.headUnitModel_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getHeadUnitSoftwareBuild() {
                Object obj = this.headUnitSoftwareBuild_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.headUnitSoftwareBuild_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getHeadUnitSoftwareBuildBytes() {
                Object obj = this.headUnitSoftwareBuild_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.headUnitSoftwareBuild_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getHeadUnitSoftwareVersion() {
                Object obj = this.headUnitSoftwareVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.headUnitSoftwareVersion_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getHeadUnitSoftwareVersionBytes() {
                Object obj = this.headUnitSoftwareVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.headUnitSoftwareVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getMake() {
                Object obj = this.make_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.make_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getMakeBytes() {
                Object obj = this.make_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.make_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getModel() {
                Object obj = this.model_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.model_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getModelBytes() {
                Object obj = this.model_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.model_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getVehicleId() {
                Object obj = this.vehicleId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.vehicleId_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getVehicleIdBytes() {
                Object obj = this.vehicleId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vehicleId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public String getYear() {
                Object obj = this.year_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.year_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public ByteString getYearBytes() {
                Object obj = this.year_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.year_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasHeadUnitMake() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasHeadUnitModel() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasHeadUnitSoftwareBuild() {
                return (this.bitField0_ & 64) != 0;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasHeadUnitSoftwareVersion() {
                return (this.bitField0_ & 128) != 0;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasMake() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasModel() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasVehicleId() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // com.google.android.projection.proto.Common.HeadUnitInfoOrBuilder
            public boolean hasYear() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return Common.internal_static_common_HeadUnitInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(HeadUnitInfo.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setHeadUnitMake(String str) {
                str.getClass();
                this.bitField0_ |= 16;
                this.headUnitMake_ = str;
                onChanged();
                return this;
            }

            public Builder setHeadUnitMakeBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 16;
                this.headUnitMake_ = byteString;
                onChanged();
                return this;
            }

            public Builder setHeadUnitModel(String str) {
                str.getClass();
                this.bitField0_ |= 32;
                this.headUnitModel_ = str;
                onChanged();
                return this;
            }

            public Builder setHeadUnitModelBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 32;
                this.headUnitModel_ = byteString;
                onChanged();
                return this;
            }

            public Builder setHeadUnitSoftwareBuild(String str) {
                str.getClass();
                this.bitField0_ |= 64;
                this.headUnitSoftwareBuild_ = str;
                onChanged();
                return this;
            }

            public Builder setHeadUnitSoftwareBuildBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 64;
                this.headUnitSoftwareBuild_ = byteString;
                onChanged();
                return this;
            }

            public Builder setHeadUnitSoftwareVersion(String str) {
                str.getClass();
                this.bitField0_ |= 128;
                this.headUnitSoftwareVersion_ = str;
                onChanged();
                return this;
            }

            public Builder setHeadUnitSoftwareVersionBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 128;
                this.headUnitSoftwareVersion_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMake(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.make_ = str;
                onChanged();
                return this;
            }

            public Builder setMakeBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.make_ = byteString;
                onChanged();
                return this;
            }

            public Builder setModel(String str) {
                str.getClass();
                this.bitField0_ |= 2;
                this.model_ = str;
                onChanged();
                return this;
            }

            public Builder setModelBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 2;
                this.model_ = byteString;
                onChanged();
                return this;
            }

            public Builder setVehicleId(String str) {
                str.getClass();
                this.bitField0_ |= 8;
                this.vehicleId_ = str;
                onChanged();
                return this;
            }

            public Builder setVehicleIdBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 8;
                this.vehicleId_ = byteString;
                onChanged();
                return this;
            }

            public Builder setYear(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.year_ = str;
                onChanged();
                return this;
            }

            public Builder setYearBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 4;
                this.year_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.make_ = "";
                this.model_ = "";
                this.year_ = "";
                this.vehicleId_ = "";
                this.headUnitMake_ = "";
                this.headUnitModel_ = "";
                this.headUnitSoftwareBuild_ = "";
                this.headUnitSoftwareVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public HeadUnitInfo build() {
                HeadUnitInfo headUnitInfoBuildPartial = buildPartial();
                if (headUnitInfoBuildPartial.isInitialized()) {
                    return headUnitInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) headUnitInfoBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public HeadUnitInfo buildPartial() {
                HeadUnitInfo headUnitInfo = new HeadUnitInfo(this);
                int i2 = this.bitField0_;
                int i3 = (i2 & 1) != 0 ? 1 : 0;
                headUnitInfo.make_ = this.make_;
                if ((i2 & 2) != 0) {
                    i3 |= 2;
                }
                headUnitInfo.model_ = this.model_;
                if ((i2 & 4) != 0) {
                    i3 |= 4;
                }
                headUnitInfo.year_ = this.year_;
                if ((i2 & 8) != 0) {
                    i3 |= 8;
                }
                headUnitInfo.vehicleId_ = this.vehicleId_;
                if ((i2 & 16) != 0) {
                    i3 |= 16;
                }
                headUnitInfo.headUnitMake_ = this.headUnitMake_;
                if ((i2 & 32) != 0) {
                    i3 |= 32;
                }
                headUnitInfo.headUnitModel_ = this.headUnitModel_;
                if ((i2 & 64) != 0) {
                    i3 |= 64;
                }
                headUnitInfo.headUnitSoftwareBuild_ = this.headUnitSoftwareBuild_;
                if ((i2 & 128) != 0) {
                    i3 |= 128;
                }
                headUnitInfo.headUnitSoftwareVersion_ = this.headUnitSoftwareVersion_;
                headUnitInfo.bitField0_ = i3;
                onBuilt();
                return headUnitInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public HeadUnitInfo getDefaultInstanceForType() {
                return HeadUnitInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.make_ = "";
                int i2 = this.bitField0_ & (-2);
                this.model_ = "";
                this.year_ = "";
                this.vehicleId_ = "";
                this.headUnitMake_ = "";
                this.headUnitModel_ = "";
                this.headUnitSoftwareBuild_ = "";
                this.headUnitSoftwareVersion_ = "";
                this.bitField0_ = i2 & (-3) & (-5) & (-9) & (-17) & (-33) & (-65) & (-129);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof HeadUnitInfo) {
                    return mergeFrom((HeadUnitInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(HeadUnitInfo headUnitInfo) {
                if (headUnitInfo == HeadUnitInfo.getDefaultInstance()) {
                    return this;
                }
                if (headUnitInfo.hasMake()) {
                    this.bitField0_ |= 1;
                    this.make_ = headUnitInfo.make_;
                    onChanged();
                }
                if (headUnitInfo.hasModel()) {
                    this.bitField0_ |= 2;
                    this.model_ = headUnitInfo.model_;
                    onChanged();
                }
                if (headUnitInfo.hasYear()) {
                    this.bitField0_ |= 4;
                    this.year_ = headUnitInfo.year_;
                    onChanged();
                }
                if (headUnitInfo.hasVehicleId()) {
                    this.bitField0_ |= 8;
                    this.vehicleId_ = headUnitInfo.vehicleId_;
                    onChanged();
                }
                if (headUnitInfo.hasHeadUnitMake()) {
                    this.bitField0_ |= 16;
                    this.headUnitMake_ = headUnitInfo.headUnitMake_;
                    onChanged();
                }
                if (headUnitInfo.hasHeadUnitModel()) {
                    this.bitField0_ |= 32;
                    this.headUnitModel_ = headUnitInfo.headUnitModel_;
                    onChanged();
                }
                if (headUnitInfo.hasHeadUnitSoftwareBuild()) {
                    this.bitField0_ |= 64;
                    this.headUnitSoftwareBuild_ = headUnitInfo.headUnitSoftwareBuild_;
                    onChanged();
                }
                if (headUnitInfo.hasHeadUnitSoftwareVersion()) {
                    this.bitField0_ |= 128;
                    this.headUnitSoftwareVersion_ = headUnitInfo.headUnitSoftwareVersion_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) headUnitInfo).unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.make_ = "";
                this.model_ = "";
                this.year_ = "";
                this.vehicleId_ = "";
                this.headUnitMake_ = "";
                this.headUnitModel_ = "";
                this.headUnitSoftwareBuild_ = "";
                this.headUnitSoftwareVersion_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                HeadUnitInfo headUnitInfo = null;
                try {
                    try {
                        HeadUnitInfo partialFrom = HeadUnitInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        HeadUnitInfo headUnitInfo2 = (HeadUnitInfo) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            headUnitInfo = headUnitInfo2;
                            if (headUnitInfo != null) {
                                mergeFrom(headUnitInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (headUnitInfo != null) {
                        mergeFrom(headUnitInfo);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(HeadUnitInfo headUnitInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(headUnitInfo);
        }

        public static HeadUnitInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private HeadUnitInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeadUnitInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (HeadUnitInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static HeadUnitInfo parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public HeadUnitInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static HeadUnitInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private HeadUnitInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.make_ = "";
            this.model_ = "";
            this.year_ = "";
            this.vehicleId_ = "";
            this.headUnitMake_ = "";
            this.headUnitModel_ = "";
            this.headUnitSoftwareBuild_ = "";
            this.headUnitSoftwareVersion_ = "";
        }

        public static HeadUnitInfo parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static HeadUnitInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static HeadUnitInfo parseFrom(InputStream inputStream) {
            return (HeadUnitInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static HeadUnitInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (HeadUnitInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static HeadUnitInfo parseFrom(CodedInputStream codedInputStream) {
            return (HeadUnitInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static HeadUnitInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (HeadUnitInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        private HeadUnitInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.make_ = bytes;
                            } else if (tag == 18) {
                                ByteString bytes2 = codedInputStream.readBytes();
                                this.bitField0_ |= 2;
                                this.model_ = bytes2;
                            } else if (tag == 26) {
                                ByteString bytes3 = codedInputStream.readBytes();
                                this.bitField0_ |= 4;
                                this.year_ = bytes3;
                            } else if (tag == 34) {
                                ByteString bytes4 = codedInputStream.readBytes();
                                this.bitField0_ |= 8;
                                this.vehicleId_ = bytes4;
                            } else if (tag == 42) {
                                ByteString bytes5 = codedInputStream.readBytes();
                                this.bitField0_ |= 16;
                                this.headUnitMake_ = bytes5;
                            } else if (tag == 50) {
                                ByteString bytes6 = codedInputStream.readBytes();
                                this.bitField0_ |= 32;
                                this.headUnitModel_ = bytes6;
                            } else if (tag == 58) {
                                ByteString bytes7 = codedInputStream.readBytes();
                                this.bitField0_ |= 64;
                                this.headUnitSoftwareBuild_ = bytes7;
                            } else if (tag != 66) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                ByteString bytes8 = codedInputStream.readBytes();
                                this.bitField0_ |= 128;
                                this.headUnitSoftwareVersion_ = bytes8;
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }
    }

    public interface HeadUnitInfoOrBuilder extends MessageOrBuilder {
        String getHeadUnitMake();

        ByteString getHeadUnitMakeBytes();

        String getHeadUnitModel();

        ByteString getHeadUnitModelBytes();

        String getHeadUnitSoftwareBuild();

        ByteString getHeadUnitSoftwareBuildBytes();

        String getHeadUnitSoftwareVersion();

        ByteString getHeadUnitSoftwareVersionBytes();

        String getMake();

        ByteString getMakeBytes();

        String getModel();

        ByteString getModelBytes();

        String getVehicleId();

        ByteString getVehicleIdBytes();

        String getYear();

        ByteString getYearBytes();

        boolean hasHeadUnitMake();

        boolean hasHeadUnitModel();

        boolean hasHeadUnitSoftwareBuild();

        boolean hasHeadUnitSoftwareVersion();

        boolean hasMake();

        boolean hasModel();

        boolean hasVehicleId();

        boolean hasYear();
    }

    public static final class PhoneInfo extends GeneratedMessageV3 implements PhoneInfoOrBuilder {
        public static final int BLUETOOTH_ADDRESS_FIELD_NUMBER = 4;
        public static final int CONNECTIVITY_LIFETIME_ID_FIELD_NUMBER = 2;
        public static final int DEVICE_NAME_FIELD_NUMBER = 3;
        public static final int INSTANCE_ID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object bluetoothAddress_;
        private volatile Object connectivityLifetimeId_;
        private volatile Object deviceName_;
        private volatile Object instanceId_;
        private byte memoizedIsInitialized;
        private static final PhoneInfo DEFAULT_INSTANCE = new PhoneInfo();

        @Deprecated
        public static final Parser<PhoneInfo> PARSER = new AbstractParser<PhoneInfo>() { // from class: com.google.android.projection.proto.Common.PhoneInfo.1
            @Override // com.google.protobuf.Parser
            public PhoneInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new PhoneInfo(codedInputStream, extensionRegistryLite);
            }
        };

        public static PhoneInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Common.internal_static_common_PhoneInfo_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PhoneInfo parseDelimitedFrom(InputStream inputStream) {
            return (PhoneInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PhoneInfo parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<PhoneInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PhoneInfo)) {
                return super.equals(obj);
            }
            PhoneInfo phoneInfo = (PhoneInfo) obj;
            if (hasInstanceId() != phoneInfo.hasInstanceId()) {
                return false;
            }
            if ((hasInstanceId() && !getInstanceId().equals(phoneInfo.getInstanceId())) || hasConnectivityLifetimeId() != phoneInfo.hasConnectivityLifetimeId()) {
                return false;
            }
            if ((hasConnectivityLifetimeId() && !getConnectivityLifetimeId().equals(phoneInfo.getConnectivityLifetimeId())) || hasDeviceName() != phoneInfo.hasDeviceName()) {
                return false;
            }
            if ((!hasDeviceName() || getDeviceName().equals(phoneInfo.getDeviceName())) && hasBluetoothAddress() == phoneInfo.hasBluetoothAddress()) {
                return (!hasBluetoothAddress() || getBluetoothAddress().equals(phoneInfo.getBluetoothAddress())) && this.unknownFields.equals(phoneInfo.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public String getBluetoothAddress() {
            Object obj = this.bluetoothAddress_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.bluetoothAddress_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public ByteString getBluetoothAddressBytes() {
            Object obj = this.bluetoothAddress_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bluetoothAddress_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public String getConnectivityLifetimeId() {
            Object obj = this.connectivityLifetimeId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.connectivityLifetimeId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public ByteString getConnectivityLifetimeIdBytes() {
            Object obj = this.connectivityLifetimeId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.connectivityLifetimeId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public String getDeviceName() {
            Object obj = this.deviceName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public ByteString getDeviceNameBytes() {
            Object obj = this.deviceName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deviceName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public String getInstanceId() {
            Object obj = this.instanceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.instanceId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public ByteString getInstanceIdBytes() {
            Object obj = this.instanceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.instanceId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PhoneInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.instanceId_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.connectivityLifetimeId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.deviceName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.bluetoothAddress_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeStringSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public boolean hasBluetoothAddress() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public boolean hasConnectivityLifetimeId() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public boolean hasDeviceName() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
        public boolean hasInstanceId() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasInstanceId()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getInstanceId().hashCode();
            }
            if (hasConnectivityLifetimeId()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getConnectivityLifetimeId().hashCode();
            }
            if (hasDeviceName()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + getDeviceName().hashCode();
            }
            if (hasBluetoothAddress()) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + getBluetoothAddress().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Common.internal_static_common_PhoneInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(PhoneInfo.class, Builder.class);
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
            return new PhoneInfo();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.instanceId_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.connectivityLifetimeId_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.deviceName_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.bluetoothAddress_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PhoneInfoOrBuilder {
            private int bitField0_;
            private Object bluetoothAddress_;
            private Object connectivityLifetimeId_;
            private Object deviceName_;
            private Object instanceId_;

            public static final Descriptors.Descriptor getDescriptor() {
                return Common.internal_static_common_PhoneInfo_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearBluetoothAddress() {
                this.bitField0_ &= -9;
                this.bluetoothAddress_ = PhoneInfo.getDefaultInstance().getBluetoothAddress();
                onChanged();
                return this;
            }

            public Builder clearConnectivityLifetimeId() {
                this.bitField0_ &= -3;
                this.connectivityLifetimeId_ = PhoneInfo.getDefaultInstance().getConnectivityLifetimeId();
                onChanged();
                return this;
            }

            public Builder clearDeviceName() {
                this.bitField0_ &= -5;
                this.deviceName_ = PhoneInfo.getDefaultInstance().getDeviceName();
                onChanged();
                return this;
            }

            public Builder clearInstanceId() {
                this.bitField0_ &= -2;
                this.instanceId_ = PhoneInfo.getDefaultInstance().getInstanceId();
                onChanged();
                return this;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public String getBluetoothAddress() {
                Object obj = this.bluetoothAddress_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.bluetoothAddress_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public ByteString getBluetoothAddressBytes() {
                Object obj = this.bluetoothAddress_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bluetoothAddress_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public String getConnectivityLifetimeId() {
                Object obj = this.connectivityLifetimeId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.connectivityLifetimeId_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public ByteString getConnectivityLifetimeIdBytes() {
                Object obj = this.connectivityLifetimeId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.connectivityLifetimeId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Common.internal_static_common_PhoneInfo_descriptor;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public String getDeviceName() {
                Object obj = this.deviceName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.deviceName_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public ByteString getDeviceNameBytes() {
                Object obj = this.deviceName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public String getInstanceId() {
                Object obj = this.instanceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.instanceId_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public ByteString getInstanceIdBytes() {
                Object obj = this.instanceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.instanceId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public boolean hasBluetoothAddress() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public boolean hasConnectivityLifetimeId() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public boolean hasDeviceName() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.android.projection.proto.Common.PhoneInfoOrBuilder
            public boolean hasInstanceId() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return Common.internal_static_common_PhoneInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(PhoneInfo.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setBluetoothAddress(String str) {
                str.getClass();
                this.bitField0_ |= 8;
                this.bluetoothAddress_ = str;
                onChanged();
                return this;
            }

            public Builder setBluetoothAddressBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 8;
                this.bluetoothAddress_ = byteString;
                onChanged();
                return this;
            }

            public Builder setConnectivityLifetimeId(String str) {
                str.getClass();
                this.bitField0_ |= 2;
                this.connectivityLifetimeId_ = str;
                onChanged();
                return this;
            }

            public Builder setConnectivityLifetimeIdBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 2;
                this.connectivityLifetimeId_ = byteString;
                onChanged();
                return this;
            }

            public Builder setDeviceName(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.deviceName_ = str;
                onChanged();
                return this;
            }

            public Builder setDeviceNameBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 4;
                this.deviceName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setInstanceId(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.instanceId_ = str;
                onChanged();
                return this;
            }

            public Builder setInstanceIdBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.instanceId_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.instanceId_ = "";
                this.connectivityLifetimeId_ = "";
                this.deviceName_ = "";
                this.bluetoothAddress_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PhoneInfo build() {
                PhoneInfo phoneInfoBuildPartial = buildPartial();
                if (phoneInfoBuildPartial.isInitialized()) {
                    return phoneInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) phoneInfoBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PhoneInfo buildPartial() {
                PhoneInfo phoneInfo = new PhoneInfo(this);
                int i2 = this.bitField0_;
                int i3 = (i2 & 1) != 0 ? 1 : 0;
                phoneInfo.instanceId_ = this.instanceId_;
                if ((i2 & 2) != 0) {
                    i3 |= 2;
                }
                phoneInfo.connectivityLifetimeId_ = this.connectivityLifetimeId_;
                if ((i2 & 4) != 0) {
                    i3 |= 4;
                }
                phoneInfo.deviceName_ = this.deviceName_;
                if ((i2 & 8) != 0) {
                    i3 |= 8;
                }
                phoneInfo.bluetoothAddress_ = this.bluetoothAddress_;
                phoneInfo.bitField0_ = i3;
                onBuilt();
                return phoneInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PhoneInfo getDefaultInstanceForType() {
                return PhoneInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.instanceId_ = "";
                int i2 = this.bitField0_ & (-2);
                this.connectivityLifetimeId_ = "";
                this.deviceName_ = "";
                this.bluetoothAddress_ = "";
                this.bitField0_ = i2 & (-3) & (-5) & (-9);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof PhoneInfo) {
                    return mergeFrom((PhoneInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.instanceId_ = "";
                this.connectivityLifetimeId_ = "";
                this.deviceName_ = "";
                this.bluetoothAddress_ = "";
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(PhoneInfo phoneInfo) {
                if (phoneInfo == PhoneInfo.getDefaultInstance()) {
                    return this;
                }
                if (phoneInfo.hasInstanceId()) {
                    this.bitField0_ |= 1;
                    this.instanceId_ = phoneInfo.instanceId_;
                    onChanged();
                }
                if (phoneInfo.hasConnectivityLifetimeId()) {
                    this.bitField0_ |= 2;
                    this.connectivityLifetimeId_ = phoneInfo.connectivityLifetimeId_;
                    onChanged();
                }
                if (phoneInfo.hasDeviceName()) {
                    this.bitField0_ |= 4;
                    this.deviceName_ = phoneInfo.deviceName_;
                    onChanged();
                }
                if (phoneInfo.hasBluetoothAddress()) {
                    this.bitField0_ |= 8;
                    this.bluetoothAddress_ = phoneInfo.bluetoothAddress_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) phoneInfo).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                PhoneInfo phoneInfo = null;
                try {
                    try {
                        PhoneInfo partialFrom = PhoneInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        PhoneInfo phoneInfo2 = (PhoneInfo) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            phoneInfo = phoneInfo2;
                            if (phoneInfo != null) {
                                mergeFrom(phoneInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (phoneInfo != null) {
                        mergeFrom(phoneInfo);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(PhoneInfo phoneInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(phoneInfo);
        }

        public static PhoneInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private PhoneInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PhoneInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (PhoneInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PhoneInfo parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PhoneInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static PhoneInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private PhoneInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.instanceId_ = "";
            this.connectivityLifetimeId_ = "";
            this.deviceName_ = "";
            this.bluetoothAddress_ = "";
        }

        public static PhoneInfo parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static PhoneInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PhoneInfo parseFrom(InputStream inputStream) {
            return (PhoneInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static PhoneInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (PhoneInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        private PhoneInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    ByteString bytes = codedInputStream.readBytes();
                                    this.bitField0_ = 1 | this.bitField0_;
                                    this.instanceId_ = bytes;
                                } else if (tag == 18) {
                                    ByteString bytes2 = codedInputStream.readBytes();
                                    this.bitField0_ |= 2;
                                    this.connectivityLifetimeId_ = bytes2;
                                } else if (tag == 26) {
                                    ByteString bytes3 = codedInputStream.readBytes();
                                    this.bitField0_ |= 4;
                                    this.deviceName_ = bytes3;
                                } else if (tag != 34) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    ByteString bytes4 = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    this.bluetoothAddress_ = bytes4;
                                }
                            }
                            z2 = true;
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
                        }
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static PhoneInfo parseFrom(CodedInputStream codedInputStream) {
            return (PhoneInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static PhoneInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (PhoneInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface PhoneInfoOrBuilder extends MessageOrBuilder {
        String getBluetoothAddress();

        ByteString getBluetoothAddressBytes();

        String getConnectivityLifetimeId();

        ByteString getConnectivityLifetimeIdBytes();

        String getDeviceName();

        ByteString getDeviceNameBytes();

        String getInstanceId();

        ByteString getInstanceIdBytes();

        boolean hasBluetoothAddress();

        boolean hasConnectivityLifetimeId();

        boolean hasDeviceName();

        boolean hasInstanceId();
    }

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_common_PhoneInfo_descriptor = descriptor2;
        internal_static_common_PhoneInfo_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"InstanceId", "ConnectivityLifetimeId", "DeviceName", "BluetoothAddress"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_common_HeadUnitInfo_descriptor = descriptor3;
        internal_static_common_HeadUnitInfo_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL, "Year", "VehicleId", "HeadUnitMake", "HeadUnitModel", "HeadUnitSoftwareBuild", "HeadUnitSoftwareVersion"});
    }

    private Common() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
