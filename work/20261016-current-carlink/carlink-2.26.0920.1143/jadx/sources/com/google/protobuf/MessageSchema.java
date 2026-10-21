package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@CheckReturnValue
final class MessageSchema<T> implements Schema<T> {
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int INTS_PER_FIELD = 3;
    private static final int NO_PRESENCE_SENTINEL = 1048575;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_MASK = 268435456;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final ExtensionSchema<?> extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final ListFieldSchema listFieldSchema;
    private final boolean lite;
    private final MapFieldSchema mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final NewInstanceSchema newInstanceSchema;
    private final Object[] objects;
    private final boolean proto3;
    private final int repeatedFieldOffsetStart;
    private final UnknownFieldSchema<?, ?> unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();

    /* JADX INFO: renamed from: com.google.protobuf.MessageSchema$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private MessageSchema(int[] iArr, Object[] objArr, int i2, int i3, MessageLite messageLite, boolean z2, boolean z3, int[] iArr2, int i4, int i5, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i2;
        this.maxFieldNumber = i3;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.proto3 = z2;
        this.hasExtensions = extensionSchema != null && extensionSchema.hasExtensions(messageLite);
        this.useCachedSizeField = z3;
        this.intArray = iArr2;
        this.checkInitializedCount = i4;
        this.repeatedFieldOffsetStart = i5;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchema;
    }

    private boolean arePresentForEquals(T t2, T t3, int i2) {
        return isFieldPresent(t2, i2) == isFieldPresent(t3, i2);
    }

    private static <T> boolean booleanAt(T t2, long j2) {
        return UnsafeUtil.getBoolean(t2, j2);
    }

    private static void checkMutable(Object obj) {
        if (isMutable(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int decodeMapEntry(byte[] bArr, int i2, int i3, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        int iDecodeVarint32;
        int iDecodeVarint33 = ArrayDecoders.decodeVarint32(bArr, i2, registers);
        int i4 = registers.int1;
        if (i4 < 0 || i4 > i3 - iDecodeVarint33) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i5 = iDecodeVarint33 + i4;
        Object obj = metadata.defaultKey;
        Object obj2 = metadata.defaultValue;
        while (iDecodeVarint33 < i5) {
            int i6 = iDecodeVarint33 + 1;
            int i7 = bArr[iDecodeVarint33];
            if (i7 < 0) {
                iDecodeVarint32 = ArrayDecoders.decodeVarint32(i7, bArr, i6, registers);
                i7 = registers.int1;
            } else {
                iDecodeVarint32 = i6;
            }
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == metadata.valueType.getWireType()) {
                    iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i3, metadata.valueType, metadata.defaultValue.getClass(), registers);
                    obj2 = registers.object1;
                } else {
                    iDecodeVarint33 = ArrayDecoders.skipField(i7, bArr, iDecodeVarint32, i3, registers);
                }
            } else if (i9 == metadata.keyType.getWireType()) {
                iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i3, metadata.keyType, null, registers);
                obj = registers.object1;
            } else {
                iDecodeVarint33 = ArrayDecoders.skipField(i7, bArr, iDecodeVarint32, i3, registers);
            }
        }
        if (iDecodeVarint33 != i5) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return i5;
    }

    private int decodeMapEntryValue(byte[] bArr, int i2, int i3, WireFormat.FieldType fieldType, Class<?> cls, ArrayDecoders.Registers registers) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i2, registers);
                registers.object1 = Boolean.valueOf(registers.long1 != 0);
                return iDecodeVarint64;
            case 2:
                return ArrayDecoders.decodeBytes(bArr, i2, registers);
            case 3:
                registers.object1 = Double.valueOf(ArrayDecoders.decodeDouble(bArr, i2));
                return i2 + 8;
            case 4:
            case 5:
                registers.object1 = Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i2));
                return i2 + 4;
            case 6:
            case 7:
                registers.object1 = Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i2));
                return i2 + 8;
            case 8:
                registers.object1 = Float.valueOf(ArrayDecoders.decodeFloat(bArr, i2));
                return i2 + 4;
            case 9:
            case 10:
            case 11:
                int iDecodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i2, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                return iDecodeVarint32;
            case 12:
            case 13:
                int iDecodeVarint65 = ArrayDecoders.decodeVarint64(bArr, i2, registers);
                registers.object1 = Long.valueOf(registers.long1);
                return iDecodeVarint65;
            case 14:
                return ArrayDecoders.decodeMessageField(Protobuf.getInstance().schemaFor((Class) cls), bArr, i2, i3, registers);
            case 15:
                int iDecodeVarint33 = ArrayDecoders.decodeVarint32(bArr, i2, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                return iDecodeVarint33;
            case 16:
                int iDecodeVarint66 = ArrayDecoders.decodeVarint64(bArr, i2, registers);
                registers.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                return iDecodeVarint66;
            case 17:
                return ArrayDecoders.decodeStringRequireUtf8(bArr, i2, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static <T> double doubleAt(T t2, long j2) {
        return UnsafeUtil.getDouble(t2, j2);
    }

    private <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i2, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema, Object obj2) {
        Internal.EnumVerifier enumFieldVerifier;
        int iNumberAt = numberAt(i2);
        Object object = UnsafeUtil.getObject(obj, offset(typeAndOffsetAt(i2)));
        return (object == null || (enumFieldVerifier = getEnumFieldVerifier(i2)) == null) ? ub : (UB) filterUnknownEnumMap(i2, iNumberAt, this.mapFieldSchema.forMutableMapData(object), enumFieldVerifier, ub, unknownFieldSchema, obj2);
    }

    private <K, V, UT, UB> UB filterUnknownEnumMap(int i2, int i3, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema, Object obj) {
        MapEntryLite.Metadata<?, ?> metadataForMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = unknownFieldSchema.getBuilderFromMessage(obj);
                }
                ByteString.CodedBuilder codedBuilderNewCodedBuilder = ByteString.newCodedBuilder(MapEntryLite.computeSerializedSize(metadataForMapMetadata, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.writeTo(codedBuilderNewCodedBuilder.getCodedOutput(), metadataForMapMetadata, next.getKey(), next.getValue());
                    unknownFieldSchema.addLengthDelimited(ub, i3, codedBuilderNewCodedBuilder.build());
                    it.remove();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        return ub;
    }

    private static <T> float floatAt(T t2, long j2) {
        return UnsafeUtil.getFloat(t2, j2);
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int i2) {
        return (Internal.EnumVerifier) this.objects[((i2 / 3) * 2) + 1];
    }

    private Object getMapFieldDefaultEntry(int i2) {
        return this.objects[(i2 / 3) * 2];
    }

    private Schema getMessageFieldSchema(int i2) {
        int i3 = (i2 / 3) * 2;
        Schema schema = (Schema) this.objects[i3];
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaSchemaFor = Protobuf.getInstance().schemaFor((Class) this.objects[i3 + 1]);
        this.objects[i3] = schemaSchemaFor;
        return schemaSchemaFor;
    }

    public static UnknownFieldSetLite getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != UnknownFieldSetLite.getDefaultInstance()) {
            return unknownFieldSetLite;
        }
        UnknownFieldSetLite unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
        generatedMessageLite.unknownFields = unknownFieldSetLiteNewInstance;
        return unknownFieldSetLiteNewInstance;
    }

    private int getSerializedSizeProto2(T t2) {
        int i2;
        int i3;
        int iComputeDoubleSize;
        int iComputeBytesSize;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (i7 < this.buffer.length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i7);
            int iNumberAt = numberAt(i7);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                i2 = this.buffer[i7 + 2];
                int i9 = i4 & i2;
                i3 = 1 << (i2 >>> 20);
                if (i9 != i8) {
                    i5 = unsafe.getInt(t2, i9);
                    i8 = i9;
                }
            } else {
                i2 = (!this.useCachedSizeField || iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : i4 & this.buffer[i7 + 2];
                i3 = 0;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            int i10 = i8;
            switch (iType) {
                case 0:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, unsafe.getLong(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, unsafe.getLong(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, unsafe.getInt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 8:
                    if ((i5 & i3) != 0) {
                        Object object = unsafe.getObject(t2, jOffset);
                        iComputeBytesSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i6 += iComputeBytesSize;
                    }
                    break;
                case 9:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(t2, jOffset), getMessageFieldSchema(i7));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 10:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 11:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, unsafe.getInt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 12:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, unsafe.getInt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 13:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 14:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 15:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, unsafe.getInt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 16:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, unsafe.getLong(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 17:
                    if ((i5 & i3) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(t2, jOffset), getMessageFieldSchema(i7));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 18:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 19:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 20:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt64List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 21:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt64List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 22:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt32List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 23:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 24:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 25:
                    iComputeDoubleSize = SchemaUtil.computeSizeBoolList(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 26:
                    iComputeDoubleSize = SchemaUtil.computeSizeStringList(iNumberAt, (List) unsafe.getObject(t2, jOffset));
                    i6 += iComputeDoubleSize;
                    break;
                case 27:
                    iComputeDoubleSize = SchemaUtil.computeSizeMessageList(iNumberAt, (List) unsafe.getObject(t2, jOffset), getMessageFieldSchema(i7));
                    i6 += iComputeDoubleSize;
                    break;
                case 28:
                    iComputeDoubleSize = SchemaUtil.computeSizeByteStringList(iNumberAt, (List) unsafe.getObject(t2, jOffset));
                    i6 += iComputeDoubleSize;
                    break;
                case 29:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt32List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 30:
                    iComputeDoubleSize = SchemaUtil.computeSizeEnumList(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 31:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 32:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 33:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt32List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 34:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt64List(iNumberAt, (List) unsafe.getObject(t2, jOffset), false);
                    i6 += iComputeDoubleSize;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 48:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i2, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i6 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 49:
                    iComputeDoubleSize = SchemaUtil.computeSizeGroupList(iNumberAt, (List) unsafe.getObject(t2, jOffset), getMessageFieldSchema(i7));
                    i6 += iComputeDoubleSize;
                    break;
                case 50:
                    iComputeDoubleSize = this.mapFieldSchema.getSerializedSize(iNumberAt, unsafe.getObject(t2, jOffset), getMapFieldDefaultEntry(i7));
                    i6 += iComputeDoubleSize;
                    break;
                case 51:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        Object object2 = unsafe.getObject(t2, jOffset);
                        iComputeBytesSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i6 += iComputeBytesSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(t2, jOffset), getMessageFieldSchema(i7));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t2, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t2, iNumberAt, i7)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(t2, jOffset), getMessageFieldSchema(i7));
                        i6 += iComputeDoubleSize;
                    }
                    break;
            }
            i7 += 3;
            i4 = 1048575;
            i8 = i10;
        }
        int unknownFieldsSerializedSize = i6 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t2);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t2).getSerializedSize() : unknownFieldsSerializedSize;
    }

    private int getSerializedSizeProto3(T t2) {
        int iComputeDoubleSize;
        int iComputeBytesSize;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i2 = 0;
        for (int i3 = 0; i3 < this.buffer.length; i3 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i3);
            int iType = type(iTypeAndOffsetAt);
            int iNumberAt = numberAt(i3);
            long jOffset = offset(iTypeAndOffsetAt);
            int i4 = (iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i3 + 2] & 1048575;
            switch (iType) {
                case 0:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, UnsafeUtil.getLong(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, UnsafeUtil.getLong(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, UnsafeUtil.getInt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 8:
                    if (isFieldPresent(t2, i3)) {
                        Object object = UnsafeUtil.getObject(t2, jOffset);
                        iComputeBytesSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i2 += iComputeBytesSize;
                    }
                    break;
                case 9:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, UnsafeUtil.getObject(t2, jOffset), getMessageFieldSchema(i3));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 10:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) UnsafeUtil.getObject(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 11:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, UnsafeUtil.getInt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 12:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, UnsafeUtil.getInt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 13:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 14:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 15:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, UnsafeUtil.getInt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 16:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, UnsafeUtil.getLong(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 17:
                    if (isFieldPresent(t2, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) UnsafeUtil.getObject(t2, jOffset), getMessageFieldSchema(i3));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 18:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 19:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 20:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt64List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 21:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt64List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 22:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt32List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 23:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 24:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 25:
                    iComputeDoubleSize = SchemaUtil.computeSizeBoolList(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 26:
                    iComputeDoubleSize = SchemaUtil.computeSizeStringList(iNumberAt, listAt(t2, jOffset));
                    i2 += iComputeDoubleSize;
                    break;
                case 27:
                    iComputeDoubleSize = SchemaUtil.computeSizeMessageList(iNumberAt, listAt(t2, jOffset), getMessageFieldSchema(i3));
                    i2 += iComputeDoubleSize;
                    break;
                case 28:
                    iComputeDoubleSize = SchemaUtil.computeSizeByteStringList(iNumberAt, listAt(t2, jOffset));
                    i2 += iComputeDoubleSize;
                    break;
                case 29:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt32List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 30:
                    iComputeDoubleSize = SchemaUtil.computeSizeEnumList(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 31:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 32:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 33:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt32List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 34:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt64List(iNumberAt, listAt(t2, jOffset), false);
                    i2 += iComputeDoubleSize;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 48:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t2, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t2, i4, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        i2 += iComputeUInt32SizeNoTag + iComputeTagSize + iComputeSizeFixed64ListNoTag;
                    }
                    break;
                case 49:
                    iComputeDoubleSize = SchemaUtil.computeSizeGroupList(iNumberAt, listAt(t2, jOffset), getMessageFieldSchema(i3));
                    i2 += iComputeDoubleSize;
                    break;
                case 50:
                    iComputeDoubleSize = this.mapFieldSchema.getSerializedSize(iNumberAt, UnsafeUtil.getObject(t2, jOffset), getMapFieldDefaultEntry(i3));
                    i2 += iComputeDoubleSize;
                    break;
                case 51:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        Object object2 = UnsafeUtil.getObject(t2, jOffset);
                        iComputeBytesSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i2 += iComputeBytesSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, UnsafeUtil.getObject(t2, jOffset), getMessageFieldSchema(i3));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) UnsafeUtil.getObject(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t2, jOffset));
                        i2 += iComputeDoubleSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t2, iNumberAt, i3)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) UnsafeUtil.getObject(t2, jOffset), getMessageFieldSchema(i3));
                        i2 += iComputeDoubleSize;
                    }
                    break;
            }
        }
        return i2 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t2);
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t2) {
        return unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(t2));
    }

    private static <T> int intAt(T t2, long j2) {
        return UnsafeUtil.getInt(t2, j2);
    }

    private static boolean isEnforceUtf8(int i2) {
        return (i2 & 536870912) != 0;
    }

    private boolean isFieldPresent(T t2, int i2, int i3, int i4, int i5) {
        if (i3 == 1048575) {
            return isFieldPresent(t2, i2);
        }
        return (i4 & i5) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean isListInitialized(Object obj, int i2, int i3) {
        List list = (List) UnsafeUtil.getObject(obj, offset(i2));
        if (list.isEmpty()) {
            return true;
        }
        Schema messageFieldSchema = getMessageFieldSchema(i3);
        for (int i4 = 0; i4 < list.size(); i4++) {
            if (!messageFieldSchema.isInitialized(list.get(i4))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.google.protobuf.Schema] */
    private boolean isMapInitialized(T t2, int i2, int i3) {
        Map<?, ?> mapForMapData = this.mapFieldSchema.forMapData(UnsafeUtil.getObject(t2, offset(i2)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i3)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        ?? SchemaFor = 0;
        for (Object obj : mapForMapData.values()) {
            if (SchemaFor == 0) {
                SchemaFor = SchemaFor;
                SchemaFor = Protobuf.getInstance().schemaFor((Class) obj.getClass());
            }
            SchemaFor = SchemaFor;
            if (!SchemaFor.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isMutable(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).isMutable();
        }
        return true;
    }

    private boolean isOneofCaseEqual(T t2, T t3, int i2) {
        long jPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i2) & 1048575;
        return UnsafeUtil.getInt(t2, jPresenceMaskAndOffsetAt) == UnsafeUtil.getInt(t3, jPresenceMaskAndOffsetAt);
    }

    private boolean isOneofPresent(T t2, int i2, int i3) {
        return UnsafeUtil.getInt(t2, (long) (presenceMaskAndOffsetAt(i3) & 1048575)) == i2;
    }

    private static boolean isRequired(int i2) {
        return (i2 & 268435456) != 0;
    }

    private static List<?> listAt(Object obj, long j2) {
        return (List) UnsafeUtil.getObject(obj, j2);
    }

    private static <T> long longAt(T t2, long j2) {
        return UnsafeUtil.getLong(t2, j2);
    }

    /* JADX WARN: Code duplicated, block: B:171:0x0649 A[Catch: all -> 0x06a1, TRY_LEAVE, TryCatch #0 {all -> 0x06a1, blocks: (B:158:0x061a, B:169:0x0643, B:171:0x0649, B:181:0x0671, B:182:0x0676), top: B:210:0x061a }] */
    /* JADX WARN: Code duplicated, block: B:176:0x0656 A[LOOP:3: B:174:0x0652->B:176:0x0656, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:178:0x066b  */
    /* JADX WARN: Code duplicated, block: B:180:0x066f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:181:0x0671 A[Catch: all -> 0x06a1, TRY_ENTER, TryCatch #0 {all -> 0x06a1, blocks: (B:158:0x061a, B:169:0x0643, B:171:0x0649, B:181:0x0671, B:182:0x0676), top: B:210:0x061a }] */
    /* JADX WARN: Code duplicated, block: B:187:0x0683 A[LOOP:4: B:185:0x067f->B:187:0x0683, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:189:0x0698  */
    /* JADX WARN: Code duplicated, block: B:203:0x06b3 A[LOOP:2: B:201:0x06af->B:203:0x06b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:205:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:235:0x064f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:236:0x067c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(UnknownFieldSchema<UT, UB> unknownFieldSchema, ExtensionSchema<ET> extensionSchema, T t2, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        UnknownFieldSchema unknownFieldSchema2;
        T t3;
        int i2;
        Object objFilterMapUnknownEnumValues;
        T t4;
        Object mutableExtensions;
        ExtensionRegistryLite extensionRegistryLite2;
        int i3;
        Object objFilterMapUnknownEnumValues2;
        int i4;
        Object objFilterMapUnknownEnumValues3;
        Object obj;
        UnknownFieldSchema unknownFieldSchema3 = unknownFieldSchema;
        T t5 = t2;
        ExtensionRegistryLite extensionRegistryLite3 = extensionRegistryLite;
        Object builderFromMessage = null;
        Object obj2 = null;
        while (true) {
            try {
                int fieldNumber = reader.getFieldNumber();
                int iPositionForFieldNumber = positionForFieldNumber(fieldNumber);
                if (iPositionForFieldNumber >= 0) {
                    t3 = t5;
                    try {
                        int iTypeAndOffsetAt = typeAndOffsetAt(iPositionForFieldNumber);
                        try {
                            switch (type(iTypeAndOffsetAt)) {
                                case 0:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putDouble(t3, offset(iTypeAndOffsetAt), reader.readDouble());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 1:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putFloat(t3, offset(iTypeAndOffsetAt), reader.readFloat());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 2:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putLong(t3, offset(iTypeAndOffsetAt), reader.readInt64());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 3:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putLong(t3, offset(iTypeAndOffsetAt), reader.readUInt64());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 4:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putInt(t3, offset(iTypeAndOffsetAt), reader.readInt32());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 5:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putLong(t3, offset(iTypeAndOffsetAt), reader.readFixed64());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 6:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putInt(t3, offset(iTypeAndOffsetAt), reader.readFixed32());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 7:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putBoolean(t3, offset(iTypeAndOffsetAt), reader.readBool());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 8:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    readString(t3, iTypeAndOffsetAt, reader);
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 9:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    MessageLite messageLite = (MessageLite) mutableMessageFieldForMerge(t3, iPositionForFieldNumber);
                                    reader.mergeMessageField(messageLite, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite2);
                                    storeMessageField(t3, iPositionForFieldNumber, messageLite);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 10:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), reader.readBytes());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 11:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putInt(t3, offset(iTypeAndOffsetAt), reader.readUInt32());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 12:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    int i5 = reader.readEnum();
                                    Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i5)) {
                                        UnsafeUtil.putInt(t3, offset(iTypeAndOffsetAt), i5);
                                        setFieldPresent(t3, iPositionForFieldNumber);
                                        builderFromMessage = obj;
                                    } else {
                                        builderFromMessage = SchemaUtil.storeUnknownEnum(t3, fieldNumber, i5, obj, unknownFieldSchema2);
                                    }
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 13:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putInt(t3, offset(iTypeAndOffsetAt), reader.readSFixed32());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 14:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putLong(t3, offset(iTypeAndOffsetAt), reader.readSFixed64());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 15:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putInt(t3, offset(iTypeAndOffsetAt), reader.readSInt32());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 16:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    UnsafeUtil.putLong(t3, offset(iTypeAndOffsetAt), reader.readSInt64());
                                    setFieldPresent(t3, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 17:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    MessageLite messageLite2 = (MessageLite) mutableMessageFieldForMerge(t3, iPositionForFieldNumber);
                                    reader.mergeGroupField(messageLite2, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite2);
                                    storeMessageField(t3, iPositionForFieldNumber, messageLite2);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 18:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readDoubleList(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 19:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readFloatList(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 20:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readInt64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 21:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readUInt64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 22:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readInt32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 23:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readFixed64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 24:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readFixed32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 25:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readBoolList(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 26:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    readStringList(t3, iTypeAndOffsetAt, reader);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 27:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    readMessageList(t2, iTypeAndOffsetAt, reader, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 28:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readBytesList(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 29:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readUInt32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 30:
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    List<Integer> listMutableListAt = this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt));
                                    reader.readEnumList(listMutableListAt);
                                    builderFromMessage = SchemaUtil.filterUnknownEnumList(t2, fieldNumber, listMutableListAt, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, unknownFieldSchema);
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 31:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSFixed32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 32:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSFixed64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 33:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSInt32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 34:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSInt64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 35:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readDoubleList(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 36:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readFloatList(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 37:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readInt64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 38:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readUInt64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 39:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readInt32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 40:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readFixed64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 41:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readFixed32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 42:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readBoolList(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 43:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readUInt32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 44:
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    List<Integer> listMutableListAt2 = this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt));
                                    reader.readEnumList(listMutableListAt2);
                                    builderFromMessage = SchemaUtil.filterUnknownEnumList(t2, fieldNumber, listMutableListAt2, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, unknownFieldSchema);
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 45:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSFixed32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 46:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSFixed64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 47:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSInt32List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 48:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    reader.readSInt64List(this.listFieldSchema.mutableListAt(t3, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 49:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    readGroupList(t2, offset(iTypeAndOffsetAt), reader, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 50:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    try {
                                        mergeMap(t2, iPositionForFieldNumber, getMapFieldDefaultEntry(iPositionForFieldNumber), extensionRegistryLite, reader);
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                        builderFromMessage = obj;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                        builderFromMessage = obj;
                                        if (unknownFieldSchema2.shouldDiscardUnknownFields(reader)) {
                                            if (builderFromMessage == null) {
                                                builderFromMessage = unknownFieldSchema2.getBuilderFromMessage(t3);
                                            }
                                            if (!unknownFieldSchema2.mergeOneFieldFrom(builderFromMessage, reader)) {
                                                objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                for (i3 = this.checkInitializedCount; i3 < this.repeatedFieldOffsetStart; i3++) {
                                                    objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(t2, this.intArray[i3], objFilterMapUnknownEnumValues2, unknownFieldSchema, t2);
                                                }
                                                if (objFilterMapUnknownEnumValues2 != null) {
                                                    unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!reader.skipField()) {
                                            objFilterMapUnknownEnumValues3 = builderFromMessage;
                                            for (i4 = this.checkInitializedCount; i4 < this.repeatedFieldOffsetStart; i4++) {
                                                objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(t2, this.intArray[i4], objFilterMapUnknownEnumValues3, unknownFieldSchema, t2);
                                            }
                                            if (objFilterMapUnknownEnumValues3 != null) {
                                                unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues3);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                        builderFromMessage = obj;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        for (i2 = this.checkInitializedCount; i2 < this.repeatedFieldOffsetStart; i2++) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t2, this.intArray[i2], objFilterMapUnknownEnumValues, unknownFieldSchema, t2);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 51:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Double.valueOf(reader.readDouble()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 52:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Float.valueOf(reader.readFloat()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 53:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Long.valueOf(reader.readInt64()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 54:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Long.valueOf(reader.readUInt64()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 55:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readInt32()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 56:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Long.valueOf(reader.readFixed64()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 57:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readFixed32()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 58:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Boolean.valueOf(reader.readBool()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 59:
                                    readString(t3, iTypeAndOffsetAt, reader);
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 60:
                                    MessageLite messageLite3 = (MessageLite) mutableOneofMessageFieldForMerge(t3, fieldNumber, iPositionForFieldNumber);
                                    reader.mergeMessageField(messageLite3, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                    storeOneofMessageField(t3, fieldNumber, iPositionForFieldNumber, messageLite3);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 61:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), reader.readBytes());
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 62:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readUInt32()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 63:
                                    int i6 = reader.readEnum();
                                    Internal.EnumVerifier enumFieldVerifier2 = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier2 == null || enumFieldVerifier2.isInRange(i6)) {
                                        UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Integer.valueOf(i6));
                                        setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                        obj = builderFromMessage;
                                        extensionRegistryLite2 = extensionRegistryLite3;
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                        builderFromMessage = obj;
                                    } else {
                                        builderFromMessage = SchemaUtil.storeUnknownEnum(t3, fieldNumber, i6, builderFromMessage, unknownFieldSchema3);
                                        extensionRegistryLite2 = extensionRegistryLite3;
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                    }
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 64:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readSFixed32()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 65:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Long.valueOf(reader.readSFixed64()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 66:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readSInt32()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 67:
                                    UnsafeUtil.putObject(t3, offset(iTypeAndOffsetAt), Long.valueOf(reader.readSInt64()));
                                    setOneofPresent(t3, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    builderFromMessage = obj;
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                case 68:
                                    try {
                                        MessageLite messageLite4 = (MessageLite) mutableOneofMessageFieldForMerge(t3, fieldNumber, iPositionForFieldNumber);
                                        reader.mergeGroupField(messageLite4, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                        storeOneofMessageField(t3, fieldNumber, iPositionForFieldNumber, messageLite4);
                                        obj = builderFromMessage;
                                        extensionRegistryLite2 = extensionRegistryLite3;
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                        builderFromMessage = obj;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                        extensionRegistryLite2 = extensionRegistryLite3;
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                        if (unknownFieldSchema2.shouldDiscardUnknownFields(reader)) {
                                            if (builderFromMessage == null) {
                                                builderFromMessage = unknownFieldSchema2.getBuilderFromMessage(t3);
                                            }
                                            if (!unknownFieldSchema2.mergeOneFieldFrom(builderFromMessage, reader)) {
                                                objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                while (i3 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(t2, this.intArray[i3], objFilterMapUnknownEnumValues2, unknownFieldSchema, t2);
                                                }
                                                if (objFilterMapUnknownEnumValues2 != null) {
                                                    unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!reader.skipField()) {
                                            objFilterMapUnknownEnumValues3 = builderFromMessage;
                                            while (i4 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(t2, this.intArray[i4], objFilterMapUnknownEnumValues3, unknownFieldSchema, t2);
                                            }
                                            if (objFilterMapUnknownEnumValues3 != null) {
                                                unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues3);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        unknownFieldSchema2 = unknownFieldSchema3;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        while (i2 < this.repeatedFieldOffsetStart) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t2, this.intArray[i2], objFilterMapUnknownEnumValues, unknownFieldSchema, t2);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                                default:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    if (obj == null) {
                                        try {
                                            builderFromMessage = unknownFieldSchema2.getBuilderFromMessage(t3);
                                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                            builderFromMessage = obj;
                                            if (unknownFieldSchema2.shouldDiscardUnknownFields(reader)) {
                                                if (builderFromMessage == null) {
                                                    builderFromMessage = unknownFieldSchema2.getBuilderFromMessage(t3);
                                                }
                                                if (!unknownFieldSchema2.mergeOneFieldFrom(builderFromMessage, reader)) {
                                                    objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                    while (i3 < this.repeatedFieldOffsetStart) {
                                                        objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(t2, this.intArray[i3], objFilterMapUnknownEnumValues2, unknownFieldSchema, t2);
                                                    }
                                                    if (objFilterMapUnknownEnumValues2 != null) {
                                                        unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!reader.skipField()) {
                                                objFilterMapUnknownEnumValues3 = builderFromMessage;
                                                while (i4 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(t2, this.intArray[i4], objFilterMapUnknownEnumValues3, unknownFieldSchema, t2);
                                                }
                                                if (objFilterMapUnknownEnumValues3 != null) {
                                                    unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues3);
                                                    return;
                                                }
                                                return;
                                            }
                                            t5 = t3;
                                            extensionRegistryLite3 = extensionRegistryLite2;
                                            unknownFieldSchema3 = unknownFieldSchema2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            builderFromMessage = obj;
                                        }
                                    } else {
                                        builderFromMessage = obj;
                                    }
                                    try {
                                        try {
                                            if (!unknownFieldSchema2.mergeOneFieldFrom(builderFromMessage, reader)) {
                                                Object objFilterMapUnknownEnumValues4 = builderFromMessage;
                                                for (int i7 = this.checkInitializedCount; i7 < this.repeatedFieldOffsetStart; i7++) {
                                                    objFilterMapUnknownEnumValues4 = filterMapUnknownEnumValues(t2, this.intArray[i7], objFilterMapUnknownEnumValues4, unknownFieldSchema, t2);
                                                }
                                                if (objFilterMapUnknownEnumValues4 != null) {
                                                    unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues4);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                        break;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused4) {
                                        if (unknownFieldSchema2.shouldDiscardUnknownFields(reader)) {
                                            if (builderFromMessage == null) {
                                                builderFromMessage = unknownFieldSchema2.getBuilderFromMessage(t3);
                                            }
                                            if (!unknownFieldSchema2.mergeOneFieldFrom(builderFromMessage, reader)) {
                                                objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                while (i3 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(t2, this.intArray[i3], objFilterMapUnknownEnumValues2, unknownFieldSchema, t2);
                                                }
                                                if (objFilterMapUnknownEnumValues2 != null) {
                                                    unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!reader.skipField()) {
                                            objFilterMapUnknownEnumValues3 = builderFromMessage;
                                            while (i4 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(t2, this.intArray[i4], objFilterMapUnknownEnumValues3, unknownFieldSchema, t2);
                                            }
                                            if (objFilterMapUnknownEnumValues3 != null) {
                                                unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues3);
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                    t5 = t3;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    unknownFieldSchema3 = unknownFieldSchema2;
                                    break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused5) {
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        Object objFilterMapUnknownEnumValues5 = builderFromMessage;
                        for (int i8 = this.checkInitializedCount; i8 < this.repeatedFieldOffsetStart; i8++) {
                            objFilterMapUnknownEnumValues5 = filterMapUnknownEnumValues(t2, this.intArray[i8], objFilterMapUnknownEnumValues5, unknownFieldSchema, t2);
                        }
                        if (objFilterMapUnknownEnumValues5 != null) {
                            unknownFieldSchema3.setBuilderToMessage(t5, objFilterMapUnknownEnumValues5);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objFindExtensionByNumber = !this.hasExtensions ? null : extensionSchema.findExtensionByNumber(extensionRegistryLite3, this.defaultInstance, fieldNumber);
                        if (objFindExtensionByNumber != null) {
                            if (obj2 == null) {
                                try {
                                    mutableExtensions = extensionSchema.getMutableExtensions(t2);
                                } catch (Throwable th6) {
                                    th = th6;
                                    unknownFieldSchema2 = unknownFieldSchema3;
                                    t3 = t5;
                                    objFilterMapUnknownEnumValues = builderFromMessage;
                                    while (i2 < this.repeatedFieldOffsetStart) {
                                        objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t2, this.intArray[i2], objFilterMapUnknownEnumValues, unknownFieldSchema, t2);
                                    }
                                    if (objFilterMapUnknownEnumValues != null) {
                                        unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues);
                                    }
                                    throw th;
                                }
                            } else {
                                mutableExtensions = obj2;
                            }
                            t4 = t5;
                            try {
                                builderFromMessage = extensionSchema.parseExtension(t2, reader, objFindExtensionByNumber, extensionRegistryLite, mutableExtensions, builderFromMessage, unknownFieldSchema);
                                obj2 = mutableExtensions;
                            } catch (Throwable th7) {
                                th = th7;
                                t3 = t4;
                                unknownFieldSchema2 = unknownFieldSchema3;
                                objFilterMapUnknownEnumValues = builderFromMessage;
                                while (i2 < this.repeatedFieldOffsetStart) {
                                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t2, this.intArray[i2], objFilterMapUnknownEnumValues, unknownFieldSchema, t2);
                                }
                                if (objFilterMapUnknownEnumValues != null) {
                                    unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues);
                                }
                                throw th;
                            }
                        } else {
                            t4 = t5;
                            if (!unknownFieldSchema3.shouldDiscardUnknownFields(reader)) {
                                if (builderFromMessage == null) {
                                    builderFromMessage = unknownFieldSchema3.getBuilderFromMessage(t4);
                                }
                                if (!unknownFieldSchema3.mergeOneFieldFrom(builderFromMessage, reader)) {
                                }
                            } else if (!reader.skipField()) {
                            }
                        }
                        t5 = t4;
                    } catch (Throwable th8) {
                        th = th8;
                        t3 = t5;
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
            objFilterMapUnknownEnumValues = builderFromMessage;
            while (i2 < this.repeatedFieldOffsetStart) {
                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t2, this.intArray[i2], objFilterMapUnknownEnumValues, unknownFieldSchema, t2);
            }
            if (objFilterMapUnknownEnumValues != null) {
                unknownFieldSchema2.setBuilderToMessage(t3, objFilterMapUnknownEnumValues);
            }
            throw th;
        }
        int i9 = this.checkInitializedCount;
        Object objFilterMapUnknownEnumValues6 = builderFromMessage;
        while (i9 < this.repeatedFieldOffsetStart) {
            objFilterMapUnknownEnumValues6 = filterMapUnknownEnumValues(t2, this.intArray[i9], objFilterMapUnknownEnumValues6, unknownFieldSchema, t2);
            i9++;
            t4 = t4;
        }
        T t6 = t4;
        if (objFilterMapUnknownEnumValues6 != null) {
            unknownFieldSchema3.setBuilderToMessage(t6, objFilterMapUnknownEnumValues6);
        }
    }

    private final <K, V> void mergeMap(Object obj, int i2, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) {
        long jOffset = offset(typeAndOffsetAt(i2));
        Object object = UnsafeUtil.getObject(obj, jOffset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            UnsafeUtil.putObject(obj, jOffset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            UnsafeUtil.putObject(obj, jOffset, objNewMapField);
            object = objNewMapField;
        }
        reader.readMap(this.mapFieldSchema.forMutableMapData(object), this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void mergeMessage(T t2, T t3, int i2) {
        if (isFieldPresent(t3, i2)) {
            long jOffset = offset(typeAndOffsetAt(i2));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(t3, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i2) + " is present but null: " + t3);
            }
            Schema messageFieldSchema = getMessageFieldSchema(i2);
            if (!isFieldPresent(t2, i2)) {
                if (isMutable(object)) {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(t2, jOffset, objNewInstance);
                } else {
                    unsafe.putObject(t2, jOffset, object);
                }
                setFieldPresent(t2, i2);
                return;
            }
            Object object2 = unsafe.getObject(t2, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(t2, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void mergeOneofMessage(T t2, T t3, int i2) {
        int iNumberAt = numberAt(i2);
        if (isOneofPresent(t3, iNumberAt, i2)) {
            long jOffset = offset(typeAndOffsetAt(i2));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(t3, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i2) + " is present but null: " + t3);
            }
            Schema messageFieldSchema = getMessageFieldSchema(i2);
            if (!isOneofPresent(t2, iNumberAt, i2)) {
                if (isMutable(object)) {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(t2, jOffset, objNewInstance);
                } else {
                    unsafe.putObject(t2, jOffset, object);
                }
                setOneofPresent(t2, iNumberAt, i2);
                return;
            }
            Object object2 = unsafe.getObject(t2, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(t2, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    private void mergeSingleField(T t2, T t3, int i2) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i2);
        long jOffset = offset(iTypeAndOffsetAt);
        int iNumberAt = numberAt(i2);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putDouble(t2, jOffset, UnsafeUtil.getDouble(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 1:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putFloat(t2, jOffset, UnsafeUtil.getFloat(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 2:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putLong(t2, jOffset, UnsafeUtil.getLong(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 3:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putLong(t2, jOffset, UnsafeUtil.getLong(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 4:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putInt(t2, jOffset, UnsafeUtil.getInt(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 5:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putLong(t2, jOffset, UnsafeUtil.getLong(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 6:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putInt(t2, jOffset, UnsafeUtil.getInt(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 7:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putBoolean(t2, jOffset, UnsafeUtil.getBoolean(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 8:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putObject(t2, jOffset, UnsafeUtil.getObject(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 9:
                mergeMessage(t2, t3, i2);
                break;
            case 10:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putObject(t2, jOffset, UnsafeUtil.getObject(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 11:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putInt(t2, jOffset, UnsafeUtil.getInt(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 12:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putInt(t2, jOffset, UnsafeUtil.getInt(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 13:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putInt(t2, jOffset, UnsafeUtil.getInt(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 14:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putLong(t2, jOffset, UnsafeUtil.getLong(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 15:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putInt(t2, jOffset, UnsafeUtil.getInt(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 16:
                if (isFieldPresent(t3, i2)) {
                    UnsafeUtil.putLong(t2, jOffset, UnsafeUtil.getLong(t3, jOffset));
                    setFieldPresent(t2, i2);
                }
                break;
            case 17:
                mergeMessage(t2, t3, i2);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.listFieldSchema.mergeListsAt(t2, t3, jOffset);
                break;
            case 50:
                SchemaUtil.mergeMap(this.mapFieldSchema, t2, t3, jOffset);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (isOneofPresent(t3, iNumberAt, i2)) {
                    UnsafeUtil.putObject(t2, jOffset, UnsafeUtil.getObject(t3, jOffset));
                    setOneofPresent(t2, iNumberAt, i2);
                }
                break;
            case 60:
                mergeOneofMessage(t2, t3, i2);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (isOneofPresent(t3, iNumberAt, i2)) {
                    UnsafeUtil.putObject(t2, jOffset, UnsafeUtil.getObject(t3, jOffset));
                    setOneofPresent(t2, iNumberAt, i2);
                }
                break;
            case 68:
                mergeOneofMessage(t2, t3, i2);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object mutableMessageFieldForMerge(T t2, int i2) {
        Schema messageFieldSchema = getMessageFieldSchema(i2);
        long jOffset = offset(typeAndOffsetAt(i2));
        if (!isFieldPresent(t2, i2)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(t2, jOffset);
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object mutableOneofMessageFieldForMerge(T t2, int i2, int i3) {
        Schema messageFieldSchema = getMessageFieldSchema(i3);
        if (!isOneofPresent(t2, i2, i3)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(t2, offset(typeAndOffsetAt(i3)));
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    public static <T> MessageSchema<T> newSchema(Class<T> cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        return messageInfo instanceof RawMessageInfo ? newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema) : newSchemaForMessageInfo((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    public static <T> MessageSchema<T> newSchemaForMessageInfo(StructuralMessageInfo structuralMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        int fieldNumber;
        int fieldNumber2;
        boolean z2 = structuralMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        FieldInfo[] fields = structuralMessageInfo.getFields();
        if (fields.length == 0) {
            fieldNumber = 0;
            fieldNumber2 = 0;
        } else {
            fieldNumber = fields[0].getFieldNumber();
            fieldNumber2 = fields[fields.length - 1].getFieldNumber();
        }
        int length = fields.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i2 = 0;
        int i3 = 0;
        for (FieldInfo fieldInfo : fields) {
            if (fieldInfo.getType() == FieldType.MAP) {
                i2++;
            } else if (fieldInfo.getType().id() >= 18 && fieldInfo.getType().id() <= 49) {
                i3++;
            }
        }
        int[] iArr2 = i2 > 0 ? new int[i2] : null;
        int[] iArr3 = i3 > 0 ? new int[i3] : null;
        int[] checkInitialized = structuralMessageInfo.getCheckInitialized();
        if (checkInitialized == null) {
            checkInitialized = EMPTY_INT_ARRAY;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i4 < fields.length) {
            FieldInfo fieldInfo2 = fields[i4];
            int fieldNumber3 = fieldInfo2.getFieldNumber();
            storeFieldData(fieldInfo2, iArr, i5, objArr);
            if (i6 < checkInitialized.length && checkInitialized[i6] == fieldNumber3) {
                checkInitialized[i6] = i5;
                i6++;
            }
            if (fieldInfo2.getType() == FieldType.MAP) {
                iArr2[i7] = i5;
                i7++;
            } else {
                if (fieldInfo2.getType().id() >= 18 && fieldInfo2.getType().id() <= 49) {
                    iArr3[i8] = (int) UnsafeUtil.objectFieldOffset(fieldInfo2.getField());
                    i8++;
                }
                i4++;
                i5 += 3;
            }
            i4++;
            i5 += 3;
        }
        if (iArr2 == null) {
            iArr2 = EMPTY_INT_ARRAY;
        }
        if (iArr3 == null) {
            iArr3 = EMPTY_INT_ARRAY;
        }
        int[] iArr4 = new int[checkInitialized.length + iArr2.length + iArr3.length];
        System.arraycopy(checkInitialized, 0, iArr4, 0, checkInitialized.length);
        System.arraycopy(iArr2, 0, iArr4, checkInitialized.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, checkInitialized.length + iArr2.length, iArr3.length);
        return new MessageSchema<>(iArr, objArr, fieldNumber, fieldNumber2, structuralMessageInfo.getDefaultInstance(), z2, true, iArr4, checkInitialized.length, checkInitialized.length + iArr2.length, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x024e  */
    /* JADX WARN: Code duplicated, block: B:123:0x0251  */
    /* JADX WARN: Code duplicated, block: B:126:0x0269  */
    /* JADX WARN: Code duplicated, block: B:127:0x026c  */
    /* JADX WARN: Code duplicated, block: B:161:0x0318  */
    /* JADX WARN: Code duplicated, block: B:162:0x031b  */
    /* JADX WARN: Code duplicated, block: B:164:0x031e  */
    /* JADX WARN: Code duplicated, block: B:179:0x0369  */
    /* JADX WARN: Code duplicated, block: B:182:0x0374  */
    public static <T> MessageSchema<T> newSchemaForRawMessageInfo(RawMessageInfo rawMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        int i2;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int iCharAt5;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        char cCharAt;
        int i6;
        char cCharAt2;
        int i7;
        char cCharAt3;
        int i8;
        char cCharAt4;
        int i9;
        char cCharAt5;
        int i10;
        char cCharAt6;
        int i11;
        char cCharAt7;
        int i12;
        char cCharAt8;
        int i13;
        int i14;
        int i15;
        boolean z2;
        int i16;
        int iObjectFieldOffset;
        boolean z3;
        int iObjectFieldOffset2;
        int i17;
        int i18;
        java.lang.reflect.Field fieldReflectField;
        char cCharAt9;
        int i19;
        int i20;
        int i21;
        Object obj;
        java.lang.reflect.Field fieldReflectField2;
        int i22;
        Object obj2;
        java.lang.reflect.Field fieldReflectField3;
        int i23;
        char cCharAt10;
        int i24;
        char cCharAt11;
        int i25;
        char cCharAt12;
        int i26;
        char cCharAt13;
        boolean z4 = rawMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        String stringInfo = rawMessageInfo.getStringInfo();
        int length = stringInfo.length();
        char c = 55296;
        if (stringInfo.charAt(0) >= 55296) {
            int i27 = 1;
            while (true) {
                i2 = i27 + 1;
                if (stringInfo.charAt(i27) < 55296) {
                    break;
                }
                i27 = i2;
            }
        } else {
            i2 = 1;
        }
        int i28 = i2 + 1;
        int iCharAt6 = stringInfo.charAt(i2);
        if (iCharAt6 >= 55296) {
            int i29 = iCharAt6 & 8191;
            int i30 = 13;
            while (true) {
                i26 = i28 + 1;
                cCharAt13 = stringInfo.charAt(i28);
                if (cCharAt13 < 55296) {
                    break;
                }
                i29 |= (cCharAt13 & 8191) << i30;
                i30 += 13;
                i28 = i26;
            }
            iCharAt6 = i29 | (cCharAt13 << i30);
            i28 = i26;
        }
        if (iCharAt6 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            iCharAt4 = 0;
            iCharAt5 = 0;
            i3 = 0;
            iArr = EMPTY_INT_ARRAY;
            i4 = 0;
        } else {
            int i31 = i28 + 1;
            int iCharAt7 = stringInfo.charAt(i28);
            if (iCharAt7 >= 55296) {
                int i32 = iCharAt7 & 8191;
                int i33 = 13;
                while (true) {
                    i12 = i31 + 1;
                    cCharAt8 = stringInfo.charAt(i31);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i32 |= (cCharAt8 & 8191) << i33;
                    i33 += 13;
                    i31 = i12;
                }
                iCharAt7 = i32 | (cCharAt8 << i33);
                i31 = i12;
            }
            int i34 = i31 + 1;
            int iCharAt8 = stringInfo.charAt(i31);
            if (iCharAt8 >= 55296) {
                int i35 = iCharAt8 & 8191;
                int i36 = 13;
                while (true) {
                    i11 = i34 + 1;
                    cCharAt7 = stringInfo.charAt(i34);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i35 |= (cCharAt7 & 8191) << i36;
                    i36 += 13;
                    i34 = i11;
                }
                iCharAt8 = i35 | (cCharAt7 << i36);
                i34 = i11;
            }
            int i37 = i34 + 1;
            iCharAt = stringInfo.charAt(i34);
            if (iCharAt >= 55296) {
                int i38 = iCharAt & 8191;
                int i39 = 13;
                while (true) {
                    i10 = i37 + 1;
                    cCharAt6 = stringInfo.charAt(i37);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt6 & 8191) << i39;
                    i39 += 13;
                    i37 = i10;
                }
                iCharAt = i38 | (cCharAt6 << i39);
                i37 = i10;
            }
            int i40 = i37 + 1;
            iCharAt2 = stringInfo.charAt(i37);
            if (iCharAt2 >= 55296) {
                int i41 = iCharAt2 & 8191;
                int i42 = 13;
                while (true) {
                    i9 = i40 + 1;
                    cCharAt5 = stringInfo.charAt(i40);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt5 & 8191) << i42;
                    i42 += 13;
                    i40 = i9;
                }
                iCharAt2 = i41 | (cCharAt5 << i42);
                i40 = i9;
            }
            int i43 = i40 + 1;
            iCharAt3 = stringInfo.charAt(i40);
            if (iCharAt3 >= 55296) {
                int i44 = iCharAt3 & 8191;
                int i45 = 13;
                while (true) {
                    i8 = i43 + 1;
                    cCharAt4 = stringInfo.charAt(i43);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt4 & 8191) << i45;
                    i45 += 13;
                    i43 = i8;
                }
                iCharAt3 = i44 | (cCharAt4 << i45);
                i43 = i8;
            }
            int i46 = i43 + 1;
            iCharAt4 = stringInfo.charAt(i43);
            if (iCharAt4 >= 55296) {
                int i47 = iCharAt4 & 8191;
                int i48 = 13;
                while (true) {
                    i7 = i46 + 1;
                    cCharAt3 = stringInfo.charAt(i46);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt3 & 8191) << i48;
                    i48 += 13;
                    i46 = i7;
                }
                iCharAt4 = i47 | (cCharAt3 << i48);
                i46 = i7;
            }
            int i49 = i46 + 1;
            int iCharAt9 = stringInfo.charAt(i46);
            if (iCharAt9 >= 55296) {
                int i50 = iCharAt9 & 8191;
                int i51 = 13;
                while (true) {
                    i6 = i49 + 1;
                    cCharAt2 = stringInfo.charAt(i49);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt2 & 8191) << i51;
                    i51 += 13;
                    i49 = i6;
                }
                iCharAt9 = i50 | (cCharAt2 << i51);
                i49 = i6;
            }
            int i52 = i49 + 1;
            iCharAt5 = stringInfo.charAt(i49);
            if (iCharAt5 >= 55296) {
                int i53 = iCharAt5 & 8191;
                int i54 = 13;
                while (true) {
                    i5 = i52 + 1;
                    cCharAt = stringInfo.charAt(i52);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i53 |= (cCharAt & 8191) << i54;
                    i54 += 13;
                    i52 = i5;
                }
                iCharAt5 = i53 | (cCharAt << i54);
                i52 = i5;
            }
            iArr = new int[iCharAt5 + iCharAt4 + iCharAt9];
            i3 = (iCharAt7 * 2) + iCharAt8;
            i4 = iCharAt7;
            i28 = i52;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objects = rawMessageInfo.getObjects();
        Class<?> cls = rawMessageInfo.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr = new Object[iCharAt3 * 2];
        int i55 = iCharAt5 + iCharAt4;
        int i56 = iCharAt5;
        int i57 = i55;
        int i58 = 0;
        int i59 = 0;
        while (i28 < length) {
            int i60 = i28 + 1;
            int iCharAt10 = stringInfo.charAt(i28);
            if (iCharAt10 >= c) {
                int i61 = iCharAt10 & 8191;
                int i62 = i60;
                int i63 = 13;
                while (true) {
                    i25 = i62 + 1;
                    cCharAt12 = stringInfo.charAt(i62);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i61 |= (cCharAt12 & 8191) << i63;
                    i63 += 13;
                    i62 = i25;
                }
                iCharAt10 = i61 | (cCharAt12 << i63);
                i13 = i25;
            } else {
                i13 = i60;
            }
            int i64 = i13 + 1;
            int iCharAt11 = stringInfo.charAt(i13);
            if (iCharAt11 >= c) {
                int i65 = iCharAt11 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i24 = i66 + 1;
                    cCharAt11 = stringInfo.charAt(i66);
                    i14 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i65 |= (cCharAt11 & 8191) << i67;
                    i67 += 13;
                    i66 = i24;
                    length = i14;
                }
                iCharAt11 = i65 | (cCharAt11 << i67);
                i15 = i24;
            } else {
                i14 = length;
                i15 = i64;
            }
            int i68 = iCharAt11 & 255;
            int i69 = iCharAt5;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i58] = i59;
                i58++;
            }
            int i70 = i58;
            if (i68 >= 51) {
                int i71 = i15 + 1;
                int iCharAt12 = stringInfo.charAt(i15);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i72 = iCharAt12 & 8191;
                    int i73 = 13;
                    while (true) {
                        i23 = i71 + 1;
                        cCharAt10 = stringInfo.charAt(i71);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i72 |= (cCharAt10 & 8191) << i73;
                        i73 += 13;
                        i71 = i23;
                        c2 = 55296;
                    }
                    iCharAt12 = i72 | (cCharAt10 << i73);
                    i71 = i23;
                }
                int i74 = i68 - 51;
                int i75 = i71;
                if (i74 == 9 || i74 == 17) {
                    i20 = i3 + 1;
                    objArr[((i59 / 3) * 2) + 1] = objects[i3];
                } else {
                    if (i74 == 12 && !z4) {
                        i20 = i3 + 1;
                        objArr[((i59 / 3) * 2) + 1] = objects[i3];
                    }
                    i21 = iCharAt12 * 2;
                    obj = objects[i21];
                    if (obj instanceof java.lang.reflect.Field) {
                        fieldReflectField2 = (java.lang.reflect.Field) obj;
                    } else {
                        fieldReflectField2 = reflectField(cls, (String) obj);
                        objects[i21] = fieldReflectField2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                    i22 = i21 + 1;
                    obj2 = objects[i22];
                    if (obj2 instanceof java.lang.reflect.Field) {
                        fieldReflectField3 = (java.lang.reflect.Field) obj2;
                    } else {
                        fieldReflectField3 = reflectField(cls, (String) obj2);
                        objects[i22] = fieldReflectField3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                    z4 = z4;
                    i17 = i75;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i18 = 0;
                }
                i3 = i20;
                i21 = iCharAt12 * 2;
                obj = objects[i21];
                if (obj instanceof java.lang.reflect.Field) {
                    fieldReflectField2 = (java.lang.reflect.Field) obj;
                } else {
                    fieldReflectField2 = reflectField(cls, (String) obj);
                    objects[i21] = fieldReflectField2;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                i22 = i21 + 1;
                obj2 = objects[i22];
                if (obj2 instanceof java.lang.reflect.Field) {
                    fieldReflectField3 = (java.lang.reflect.Field) obj2;
                } else {
                    fieldReflectField3 = reflectField(cls, (String) obj2);
                    objects[i22] = fieldReflectField3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                z4 = z4;
                i17 = i75;
                iObjectFieldOffset = iObjectFieldOffset4;
                i18 = 0;
            } else {
                int i76 = i3 + 1;
                java.lang.reflect.Field fieldReflectField4 = reflectField(cls, (String) objects[i3]);
                if (i68 == 9 || i68 == 17) {
                    z2 = true;
                    objArr[((i59 / 3) * 2) + 1] = fieldReflectField4.getType();
                } else {
                    if (i68 == 27 || i68 == 49) {
                        z2 = true;
                        i19 = i76 + 1;
                        objArr[((i59 / 3) * 2) + 1] = objects[i76];
                    } else {
                        if (i68 == 12 || i68 == 30 || i68 == 44) {
                            if (!z4) {
                                z2 = true;
                                i19 = i76 + 1;
                                objArr[((i59 / 3) * 2) + 1] = objects[i76];
                            }
                        } else if (i68 == 50) {
                            int i77 = i56 + 1;
                            iArr[i56] = i59;
                            int i78 = (i59 / 3) * 2;
                            int i79 = i76 + 1;
                            objArr[i78] = objects[i76];
                            if ((iCharAt11 & 2048) != 0) {
                                i76 = i79 + 1;
                                objArr[i78 + 1] = objects[i79];
                                i56 = i77;
                            } else {
                                i56 = i77;
                                i16 = i79;
                                z2 = true;
                            }
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                            int i80 = i16;
                            if ((iCharAt11 & 4096) == 4096) {
                                z3 = z2;
                            } else {
                                z3 = false;
                            }
                            if (z3 || i68 > 17) {
                                iObjectFieldOffset2 = 1048575;
                                i17 = i15;
                                i18 = 0;
                            } else {
                                int i81 = i15 + 1;
                                int iCharAt13 = stringInfo.charAt(i15);
                                if (iCharAt13 >= 55296) {
                                    int i82 = iCharAt13 & 8191;
                                    int i83 = 13;
                                    while (true) {
                                        i17 = i81 + 1;
                                        cCharAt9 = stringInfo.charAt(i81);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i82 |= (cCharAt9 & 8191) << i83;
                                        i83 += 13;
                                        i81 = i17;
                                    }
                                    iCharAt13 = i82 | (cCharAt9 << i83);
                                } else {
                                    i17 = i81;
                                }
                                int i84 = (iCharAt13 / 32) + (i4 * 2);
                                Object obj3 = objects[i84];
                                if (obj3 instanceof java.lang.reflect.Field) {
                                    fieldReflectField = (java.lang.reflect.Field) obj3;
                                } else {
                                    fieldReflectField = reflectField(cls, (String) obj3);
                                    objects[i84] = fieldReflectField;
                                }
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField);
                                i18 = iCharAt13 % 32;
                            }
                            if (i68 >= 18 && i68 <= 49) {
                                iArr[i57] = iObjectFieldOffset;
                                i57++;
                            }
                            i3 = i80;
                        }
                        z2 = true;
                    }
                    i16 = i19;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                    int i85 = i16;
                    if ((iCharAt11 & 4096) == 4096) {
                        z3 = z2;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        iObjectFieldOffset2 = 1048575;
                        i17 = i15;
                        i18 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i17 = i15;
                        i18 = 0;
                    }
                    if (i68 >= 18) {
                        iArr[i57] = iObjectFieldOffset;
                        i57++;
                    }
                    i3 = i85;
                }
                i16 = i76;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                int i86 = i16;
                if ((iCharAt11 & 4096) == 4096) {
                    z3 = z2;
                } else {
                    z3 = false;
                }
                if (z3) {
                    iObjectFieldOffset2 = 1048575;
                    i17 = i15;
                    i18 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i17 = i15;
                    i18 = 0;
                }
                if (i68 >= 18) {
                    iArr[i57] = iObjectFieldOffset;
                    i57++;
                }
                i3 = i86;
            }
            int i87 = i59 + 1;
            iArr2[i59] = iCharAt10;
            int i88 = i87 + 1;
            String str = stringInfo;
            iArr2[i87] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i68 << 20) | iObjectFieldOffset;
            int i89 = i88 + 1;
            iArr2[i88] = (i18 << 20) | iObjectFieldOffset2;
            z4 = z4;
            iCharAt = iCharAt;
            iCharAt5 = i69;
            length = i14;
            i28 = i17;
            i58 = i70;
            iCharAt2 = iCharAt2;
            c = 55296;
            i59 = i89;
            stringInfo = str;
        }
        return new MessageSchema<>(iArr2, objArr, iCharAt, iCharAt2, rawMessageInfo.getDefaultInstance(), z4, false, iArr, iCharAt5, i55, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    private int numberAt(int i2) {
        return this.buffer[i2];
    }

    private static long offset(int i2) {
        return i2 & 1048575;
    }

    private static <T> boolean oneofBooleanAt(T t2, long j2) {
        return ((Boolean) UnsafeUtil.getObject(t2, j2)).booleanValue();
    }

    private static <T> double oneofDoubleAt(T t2, long j2) {
        return ((Double) UnsafeUtil.getObject(t2, j2)).doubleValue();
    }

    private static <T> float oneofFloatAt(T t2, long j2) {
        return ((Float) UnsafeUtil.getObject(t2, j2)).floatValue();
    }

    private static <T> int oneofIntAt(T t2, long j2) {
        return ((Integer) UnsafeUtil.getObject(t2, j2)).intValue();
    }

    private static <T> long oneofLongAt(T t2, long j2) {
        return ((Long) UnsafeUtil.getObject(t2, j2)).longValue();
    }

    private <K, V> int parseMapField(T t2, byte[] bArr, int i2, int i3, int i4, long j2, ArrayDecoders.Registers registers) {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i4);
        Object object = unsafe.getObject(t2, j2);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            unsafe.putObject(t2, j2, objNewMapField);
            object = objNewMapField;
        }
        return decodeMapEntry(bArr, i2, i3, this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry), this.mapFieldSchema.forMutableMapData(object), registers);
    }

    private int parseOneofField(T t2, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        Unsafe unsafe = UNSAFE;
        long j3 = this.buffer[i9 + 2] & 1048575;
        switch (i8) {
            case 51:
                if (i6 != 1) {
                    return i2;
                }
                unsafe.putObject(t2, j2, Double.valueOf(ArrayDecoders.decodeDouble(bArr, i2)));
                int i10 = i2 + 8;
                unsafe.putInt(t2, j3, i5);
                return i10;
            case 52:
                if (i6 != 5) {
                    return i2;
                }
                unsafe.putObject(t2, j2, Float.valueOf(ArrayDecoders.decodeFloat(bArr, i2)));
                int i11 = i2 + 4;
                unsafe.putInt(t2, j3, i5);
                return i11;
            case 53:
            case 54:
                if (i6 != 0) {
                    return i2;
                }
                int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i2, registers);
                unsafe.putObject(t2, j2, Long.valueOf(registers.long1));
                unsafe.putInt(t2, j3, i5);
                return iDecodeVarint64;
            case 55:
            case 62:
                if (i6 != 0) {
                    return i2;
                }
                int iDecodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i2, registers);
                unsafe.putObject(t2, j2, Integer.valueOf(registers.int1));
                unsafe.putInt(t2, j3, i5);
                return iDecodeVarint32;
            case 56:
            case 65:
                if (i6 != 1) {
                    return i2;
                }
                unsafe.putObject(t2, j2, Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i2)));
                int i12 = i2 + 8;
                unsafe.putInt(t2, j3, i5);
                return i12;
            case 57:
            case 64:
                if (i6 != 5) {
                    return i2;
                }
                unsafe.putObject(t2, j2, Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i2)));
                int i13 = i2 + 4;
                unsafe.putInt(t2, j3, i5);
                return i13;
            case 58:
                if (i6 != 0) {
                    return i2;
                }
                int iDecodeVarint65 = ArrayDecoders.decodeVarint64(bArr, i2, registers);
                unsafe.putObject(t2, j2, Boolean.valueOf(registers.long1 != 0));
                unsafe.putInt(t2, j3, i5);
                return iDecodeVarint65;
            case 59:
                if (i6 != 2) {
                    return i2;
                }
                int iDecodeVarint33 = ArrayDecoders.decodeVarint32(bArr, i2, registers);
                int i14 = registers.int1;
                if (i14 == 0) {
                    unsafe.putObject(t2, j2, "");
                } else {
                    if ((i7 & 536870912) != 0 && !Utf8.isValidUtf8(bArr, iDecodeVarint33, iDecodeVarint33 + i14)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(t2, j2, new String(bArr, iDecodeVarint33, i14, Internal.UTF_8));
                    iDecodeVarint33 += i14;
                }
                unsafe.putInt(t2, j3, i5);
                return iDecodeVarint33;
            case 60:
                if (i6 != 2) {
                    return i2;
                }
                Object objMutableOneofMessageFieldForMerge = mutableOneofMessageFieldForMerge(t2, i5, i9);
                int iMergeMessageField = ArrayDecoders.mergeMessageField(objMutableOneofMessageFieldForMerge, getMessageFieldSchema(i9), bArr, i2, i3, registers);
                storeOneofMessageField(t2, i5, i9, objMutableOneofMessageFieldForMerge);
                return iMergeMessageField;
            case 61:
                if (i6 != 2) {
                    return i2;
                }
                int iDecodeBytes = ArrayDecoders.decodeBytes(bArr, i2, registers);
                unsafe.putObject(t2, j2, registers.object1);
                unsafe.putInt(t2, j3, i5);
                return iDecodeBytes;
            case 63:
                if (i6 != 0) {
                    return i2;
                }
                int iDecodeVarint34 = ArrayDecoders.decodeVarint32(bArr, i2, registers);
                int i15 = registers.int1;
                Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i9);
                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i15)) {
                    unsafe.putObject(t2, j2, Integer.valueOf(i15));
                    unsafe.putInt(t2, j3, i5);
                } else {
                    getMutableUnknownFields(t2).storeField(i4, Long.valueOf(i15));
                }
                return iDecodeVarint34;
            case 66:
                if (i6 != 0) {
                    return i2;
                }
                int iDecodeVarint35 = ArrayDecoders.decodeVarint32(bArr, i2, registers);
                unsafe.putObject(t2, j2, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1)));
                unsafe.putInt(t2, j3, i5);
                return iDecodeVarint35;
            case 67:
                if (i6 != 0) {
                    return i2;
                }
                int iDecodeVarint66 = ArrayDecoders.decodeVarint64(bArr, i2, registers);
                unsafe.putObject(t2, j2, Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1)));
                unsafe.putInt(t2, j3, i5);
                return iDecodeVarint66;
            case 68:
                if (i6 != 3) {
                    return i2;
                }
                Object objMutableOneofMessageFieldForMerge2 = mutableOneofMessageFieldForMerge(t2, i5, i9);
                int iMergeGroupField = ArrayDecoders.mergeGroupField(objMutableOneofMessageFieldForMerge2, getMessageFieldSchema(i9), bArr, i2, i3, (i4 & (-8)) | 4, registers);
                storeOneofMessageField(t2, i5, i9, objMutableOneofMessageFieldForMerge2);
                return iMergeGroupField;
            default:
                return i2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0307 A[PHI: r0 r19 r22 r26 r27 r28
  0x0307: PHI (r0v18 int) = (r0v14 int), (r0v17 int), (r0v21 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x0307: PHI (r19v3 int) = (r19v2 int), (r19v2 int), (r19v5 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x0307: PHI (r22v1 int) = (r22v0 int), (r22v0 int), (r22v3 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x0307: PHI (r26v2 int) = (r26v1 int), (r26v1 int), (r26v4 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x0307: PHI (r27v4 int) = (r27v3 int), (r27v3 int), (r27v6 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x0307: PHI (r28v5 sun.misc.Unsafe) = (r28v4 sun.misc.Unsafe), (r28v4 sun.misc.Unsafe), (r28v7 sun.misc.Unsafe) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:99:0x029e A[PHI: r0 r19 r22 r26 r27 r28
  0x029e: PHI (r0v19 int) = (r0v14 int), (r0v17 int), (r0v21 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x029e: PHI (r19v4 int) = (r19v2 int), (r19v2 int), (r19v5 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x029e: PHI (r22v2 int) = (r22v0 int), (r22v0 int), (r22v3 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x029e: PHI (r26v3 int) = (r26v1 int), (r26v1 int), (r26v4 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x029e: PHI (r27v5 int) = (r27v3 int), (r27v3 int), (r27v6 int) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]
  0x029e: PHI (r28v6 sun.misc.Unsafe) = (r28v4 sun.misc.Unsafe), (r28v4 sun.misc.Unsafe), (r28v7 sun.misc.Unsafe) binds: [B:110:0x0304, B:105:0x02e1, B:98:0x029c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0088. Please report as an issue. */
    @CanIgnoreReturnValue
    private int parseProto3Message(T t2, byte[] bArr, int i2, int i3, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        int i4;
        int iDecodeVarint32;
        int i5;
        int i6;
        int i7;
        Unsafe unsafe;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iDecodeBytes;
        this = this;
        t2 = t2;
        bArr = bArr;
        i3 = i3;
        registers = registers;
        checkMutable(t2);
        Unsafe unsafe2 = UNSAFE;
        int i15 = -1;
        int iDecodeUnknownField = i2;
        int i16 = -1;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        while (iDecodeUnknownField < i3) {
            int i20 = iDecodeUnknownField + 1;
            byte b2 = bArr[iDecodeUnknownField];
            if (b2 < 0) {
                iDecodeVarint32 = ArrayDecoders.decodeVarint32(b2, bArr, i20, registers);
                i4 = registers.int1;
            } else {
                i4 = b2;
                iDecodeVarint32 = i20;
            }
            int i21 = i4 >>> 3;
            int i22 = i4 & 7;
            int iPositionForFieldNumber = i21 > i16 ? this.positionForFieldNumber(i21, i17 / 3) : this.positionForFieldNumber(i21);
            if (iPositionForFieldNumber == i15) {
                i5 = iDecodeVarint32;
                i6 = i21;
                i7 = i15;
                unsafe = unsafe2;
                i8 = 0;
            } else {
                int i23 = this.buffer[iPositionForFieldNumber + 1];
                int iType = type(i23);
                long jOffset = offset(i23);
                if (iType <= 17) {
                    int i24 = this.buffer[iPositionForFieldNumber + 2];
                    int i25 = 1 << (i24 >>> 20);
                    int i26 = 1048575;
                    int i27 = i24 & 1048575;
                    if (i27 != i19) {
                        if (i19 != 1048575) {
                            unsafe2.putInt(t2, i19, i18);
                            i26 = 1048575;
                        }
                        if (i27 != i26) {
                            i18 = unsafe2.getInt(t2, i27);
                        }
                        i19 = i27;
                    }
                    switch (iType) {
                        case 0:
                            i6 = i21;
                            i12 = iPositionForFieldNumber;
                            i13 = iDecodeVarint32;
                            i14 = i18;
                            if (i22 != 1) {
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                UnsafeUtil.putDouble(t2, jOffset, ArrayDecoders.decodeDouble(bArr, i13));
                                iDecodeUnknownField = i13 + 8;
                                i18 = i14 | i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 1:
                            i6 = i21;
                            registers = registers;
                            i13 = iDecodeVarint32;
                            i14 = i18;
                            i12 = iPositionForFieldNumber;
                            if (i22 != 5) {
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                UnsafeUtil.putFloat(t2, jOffset, ArrayDecoders.decodeFloat(bArr, i13));
                                iDecodeUnknownField = i13 + 4;
                                i18 = i14 | i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            i13 = iDecodeVarint32;
                            i14 = i18;
                            if (i22 != 0) {
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i13, registers);
                                unsafe2.putLong(t2, jOffset, registers.long1);
                                i18 = i14 | i25;
                                i17 = i12;
                                iDecodeUnknownField = iDecodeVarint64;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            i13 = iDecodeVarint32;
                            i14 = i18;
                            if (i22 != 0) {
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr, i13, registers);
                                unsafe2.putInt(t2, jOffset, registers.int1);
                                i18 = i14 | i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            i6 = i21;
                            i12 = iPositionForFieldNumber;
                            i14 = i18;
                            if (i22 != 1) {
                                i13 = iDecodeVarint32;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                i13 = iDecodeVarint32;
                                unsafe2.putLong(t2, jOffset, ArrayDecoders.decodeFixed64(bArr, iDecodeVarint32));
                                iDecodeUnknownField = i13 + 8;
                                i18 = i14 | i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            i6 = i21;
                            registers = registers;
                            i14 = i18;
                            i12 = iPositionForFieldNumber;
                            if (i22 != 5) {
                                i13 = iDecodeVarint32;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                unsafe2.putInt(t2, jOffset, ArrayDecoders.decodeFixed32(bArr, iDecodeVarint32));
                                iDecodeUnknownField = iDecodeVarint32 + 4;
                                i18 = i14 | i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 7:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            i14 = i18;
                            if (i22 != 0) {
                                i13 = iDecodeVarint32;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                int iDecodeVarint65 = ArrayDecoders.decodeVarint64(bArr, iDecodeVarint32, registers);
                                UnsafeUtil.putBoolean(t2, jOffset, registers.long1 != 0);
                                i18 = i14 | i25;
                                iDecodeUnknownField = iDecodeVarint65;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 8:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            i14 = i18;
                            if (i22 != 2) {
                                i13 = iDecodeVarint32;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                iDecodeUnknownField = (536870912 & i23) == 0 ? ArrayDecoders.decodeString(bArr, iDecodeVarint32, registers) : ArrayDecoders.decodeStringRequireUtf8(bArr, iDecodeVarint32, registers);
                                unsafe2.putObject(t2, jOffset, registers.object1);
                                i18 = i14 | i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 9:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            if (i22 != 2) {
                                i13 = iDecodeVarint32;
                                i14 = i18;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                Object objMutableMessageFieldForMerge = this.mutableMessageFieldForMerge(t2, i12);
                                iDecodeUnknownField = ArrayDecoders.mergeMessageField(objMutableMessageFieldForMerge, this.getMessageFieldSchema(i12), bArr, iDecodeVarint32, i3, registers);
                                this.storeMessageField(t2, i12, objMutableMessageFieldForMerge);
                                i18 |= i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 10:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            if (i22 != 2) {
                                i13 = iDecodeVarint32;
                                i14 = i18;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                iDecodeBytes = ArrayDecoders.decodeBytes(bArr, iDecodeVarint32, registers);
                                unsafe2.putObject(t2, jOffset, registers.object1);
                                i18 |= i25;
                                iDecodeUnknownField = iDecodeBytes;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 12:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            if (i22 != 0) {
                                i13 = iDecodeVarint32;
                                i14 = i18;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                iDecodeBytes = ArrayDecoders.decodeVarint32(bArr, iDecodeVarint32, registers);
                                unsafe2.putInt(t2, jOffset, registers.int1);
                                i18 |= i25;
                                iDecodeUnknownField = iDecodeBytes;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 15:
                            i6 = i21;
                            registers = registers;
                            i12 = iPositionForFieldNumber;
                            if (i22 != 0) {
                                i13 = iDecodeVarint32;
                                i14 = i18;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr, iDecodeVarint32, registers);
                                unsafe2.putInt(t2, jOffset, CodedInputStream.decodeZigZag32(registers.int1));
                                i18 |= i25;
                                i17 = i12;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        case 16:
                            if (i22 != 0) {
                                i6 = i21;
                                i12 = iPositionForFieldNumber;
                                i13 = iDecodeVarint32;
                                i14 = i18;
                                i18 = i14;
                                i8 = i12;
                                unsafe = unsafe2;
                                i5 = i13;
                                i7 = -1;
                            } else {
                                registers = registers;
                                int iDecodeVarint66 = ArrayDecoders.decodeVarint64(bArr, iDecodeVarint32, registers);
                                i6 = i21;
                                unsafe2.putLong(t2, jOffset, CodedInputStream.decodeZigZag64(registers.long1));
                                i18 |= i25;
                                i17 = iPositionForFieldNumber;
                                iDecodeUnknownField = iDecodeVarint66;
                                i16 = i6;
                                i15 = -1;
                            }
                            break;
                        default:
                            i6 = i21;
                            i12 = iPositionForFieldNumber;
                            i13 = iDecodeVarint32;
                            i14 = i18;
                            i18 = i14;
                            i8 = i12;
                            unsafe = unsafe2;
                            i5 = i13;
                            i7 = -1;
                            break;
                    }
                } else {
                    i6 = i21;
                    int i28 = i18;
                    registers = registers;
                    int i29 = iDecodeVarint32;
                    if (iType != 27) {
                        if (iType <= 49) {
                            i9 = i28;
                            i8 = iPositionForFieldNumber;
                            i7 = -1;
                            unsafe = unsafe2;
                            i10 = i19;
                            iDecodeUnknownField = parseRepeatedField(t2, bArr, i29, i3, i4, i6, i22, iPositionForFieldNumber, i23, iType, jOffset, registers);
                            if (iDecodeUnknownField != i29) {
                                i16 = i6;
                                i17 = i8;
                                i19 = i10;
                                i18 = i9;
                            } else {
                                i5 = iDecodeUnknownField;
                                i19 = i10;
                                i18 = i9;
                            }
                        } else {
                            i9 = i28;
                            i10 = i19;
                            i8 = iPositionForFieldNumber;
                            unsafe = unsafe2;
                            i11 = i29;
                            i7 = -1;
                            if (iType == 50) {
                                if (i22 == 2) {
                                    iDecodeUnknownField = parseMapField(t2, bArr, i11, i3, i8, jOffset, registers);
                                    if (iDecodeUnknownField != i11) {
                                        i16 = i6;
                                        i17 = i8;
                                        i19 = i10;
                                        i18 = i9;
                                    } else {
                                        i5 = iDecodeUnknownField;
                                    }
                                }
                                i19 = i10;
                                i18 = i9;
                            } else {
                                iDecodeUnknownField = parseOneofField(t2, bArr, i11, i3, i4, i6, i22, i23, iType, jOffset, i8, registers);
                                if (iDecodeUnknownField != i11) {
                                    i16 = i6;
                                    i17 = i8;
                                    i19 = i10;
                                    i18 = i9;
                                } else {
                                    i5 = iDecodeUnknownField;
                                    i19 = i10;
                                    i18 = i9;
                                }
                            }
                        }
                        i15 = i7;
                        unsafe2 = unsafe;
                    } else if (i22 == 2) {
                        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2.getObject(t2, jOffset);
                        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                            int size = protobufListMutableCopyWithCapacity2.size();
                            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                            unsafe2.putObject(t2, jOffset, protobufListMutableCopyWithCapacity2);
                        }
                        iDecodeUnknownField = ArrayDecoders.decodeMessageList(this.getMessageFieldSchema(iPositionForFieldNumber), i4, bArr, i29, i3, protobufListMutableCopyWithCapacity2, registers);
                        i17 = iPositionForFieldNumber;
                        i18 = i28;
                        i16 = i6;
                        i15 = -1;
                    } else {
                        i10 = i19;
                        i8 = iPositionForFieldNumber;
                        unsafe = unsafe2;
                        i11 = i29;
                        i9 = i28;
                        i7 = -1;
                    }
                    i5 = i11;
                    i19 = i10;
                    i18 = i9;
                }
            }
            iDecodeUnknownField = ArrayDecoders.decodeUnknownField(i4, bArr, i5, i3, getMutableUnknownFields(t2), registers);
            i16 = i6;
            i17 = i8;
            i15 = i7;
            unsafe2 = unsafe;
        }
        int i30 = i18;
        Unsafe unsafe3 = unsafe2;
        if (i19 != 1048575) {
            unsafe3.putInt(t2, i19, i30);
        }
        if (iDecodeUnknownField == i3) {
            return iDecodeUnknownField;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    private int parseRepeatedField(T t2, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, long j2, int i8, long j3, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        int iDecodeVarint32List;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe.getObject(t2, j3);
        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
            int size = protobufListMutableCopyWithCapacity2.size();
            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            unsafe.putObject(t2, j3, protobufListMutableCopyWithCapacity2);
        }
        switch (i8) {
            case 18:
            case 35:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedDoubleList(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 1 ? ArrayDecoders.decodeDoubleList(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 19:
            case 36:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedFloatList(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 5 ? ArrayDecoders.decodeFloatList(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedVarint64List(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 0 ? ArrayDecoders.decodeVarint64List(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedVarint32List(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 0 ? ArrayDecoders.decodeVarint32List(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedFixed64List(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 1 ? ArrayDecoders.decodeFixed64List(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedFixed32List(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 5 ? ArrayDecoders.decodeFixed32List(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 25:
            case 42:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedBoolList(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 0 ? ArrayDecoders.decodeBoolList(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 26:
                if (i6 == 2) {
                    return (j2 & 536870912) == 0 ? ArrayDecoders.decodeStringList(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : ArrayDecoders.decodeStringListRequireUtf8(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers);
                }
                return i2;
            case 27:
                return i6 == 2 ? ArrayDecoders.decodeMessageList(getMessageFieldSchema(i7), i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 28:
                return i6 == 2 ? ArrayDecoders.decodeBytesList(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 30:
            case 44:
                if (i6 == 2) {
                    iDecodeVarint32List = ArrayDecoders.decodePackedVarint32List(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                } else {
                    if (i6 != 0) {
                        return i2;
                    }
                    iDecodeVarint32List = ArrayDecoders.decodeVarint32List(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers);
                }
                SchemaUtil.filterUnknownEnumList((Object) t2, i5, (List<Integer>) protobufListMutableCopyWithCapacity2, getEnumFieldVerifier(i7), (Object) null, (UnknownFieldSchema<UT, Object>) this.unknownFieldSchema);
                return iDecodeVarint32List;
            case 33:
            case 47:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedSInt32List(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 0 ? ArrayDecoders.decodeSInt32List(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 34:
            case 48:
                if (i6 == 2) {
                    return ArrayDecoders.decodePackedSInt64List(bArr, i2, protobufListMutableCopyWithCapacity2, registers);
                }
                return i6 == 0 ? ArrayDecoders.decodeSInt64List(i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            case 49:
                return i6 == 3 ? ArrayDecoders.decodeGroupList(getMessageFieldSchema(i7), i4, bArr, i2, i3, protobufListMutableCopyWithCapacity2, registers) : i2;
            default:
                return i2;
        }
    }

    private int positionForFieldNumber(int i2) {
        if (i2 < this.minFieldNumber || i2 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i2, 0);
    }

    private int presenceMaskAndOffsetAt(int i2) {
        return this.buffer[i2 + 2];
    }

    private <E> void readGroupList(Object obj, long j2, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) {
        reader.readGroupList(this.listFieldSchema.mutableListAt(obj, j2), schema, extensionRegistryLite);
    }

    private <E> void readMessageList(Object obj, int i2, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) {
        reader.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i2)), schema, extensionRegistryLite);
    }

    private void readString(Object obj, int i2, Reader reader) {
        if (isEnforceUtf8(i2)) {
            UnsafeUtil.putObject(obj, offset(i2), reader.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.putObject(obj, offset(i2), reader.readString());
        } else {
            UnsafeUtil.putObject(obj, offset(i2), reader.readBytes());
        }
    }

    private void readStringList(Object obj, int i2, Reader reader) {
        if (isEnforceUtf8(i2)) {
            reader.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i2)));
        } else {
            reader.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i2)));
        }
    }

    private static java.lang.reflect.Field reflectField(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            java.lang.reflect.Field[] declaredFields = cls.getDeclaredFields();
            for (java.lang.reflect.Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbV = android.accessibilityservice.c.v("Field ", str, " for ");
            sbV.append(cls.getName());
            sbV.append(" not found. Known fields are ");
            sbV.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbV.toString());
        }
    }

    private void setFieldPresent(T t2, int i2) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i2);
        long j2 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j2 == 1048575) {
            return;
        }
        UnsafeUtil.putInt(t2, j2, (1 << (iPresenceMaskAndOffsetAt >>> 20)) | UnsafeUtil.getInt(t2, j2));
    }

    private void setOneofPresent(T t2, int i2, int i3) {
        UnsafeUtil.putInt(t2, presenceMaskAndOffsetAt(i3) & 1048575, i2);
    }

    private int slowPositionForFieldNumber(int i2, int i3) {
        int length = (this.buffer.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int iNumberAt = numberAt(i5);
            if (i2 == iNumberAt) {
                return i5;
            }
            if (i2 < iNumberAt) {
                length = i4 - 1;
            } else {
                i3 = i4 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007a  */
    /* JADX WARN: Code duplicated, block: B:22:0x007d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0084  */
    /* JADX WARN: Code duplicated, block: B:28:0x009e  */
    /* JADX WARN: Code duplicated, block: B:30:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:31:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:34:0x00be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    private static void storeFieldData(FieldInfo fieldInfo, int[] iArr, int i2, Object[] objArr) {
        int iObjectFieldOffset;
        int iId;
        long jObjectFieldOffset;
        int iObjectFieldOffset2;
        int iNumberOfTrailingZeros;
        int i3;
        Class<?> messageFieldClass;
        int i4;
        OneofInfo oneof = fieldInfo.getOneof();
        if (oneof == null) {
            FieldType type = fieldInfo.getType();
            iObjectFieldOffset = (int) UnsafeUtil.objectFieldOffset(fieldInfo.getField());
            iId = type.id();
            if (!type.isList() && !type.isMap()) {
                java.lang.reflect.Field presenceField = fieldInfo.getPresenceField();
                iObjectFieldOffset2 = presenceField == null ? 1048575 : (int) UnsafeUtil.objectFieldOffset(presenceField);
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(fieldInfo.getPresenceMask());
            } else if (fieldInfo.getCachedSizeField() == null) {
                iObjectFieldOffset2 = 0;
                iNumberOfTrailingZeros = 0;
            } else {
                jObjectFieldOffset = UnsafeUtil.objectFieldOffset(fieldInfo.getCachedSizeField());
            }
            iArr[i2] = fieldInfo.getFieldNumber();
            int i5 = i2 + 1;
            if (fieldInfo.isEnforceUtf8()) {
                i3 = 536870912;
            } else {
                i3 = 0;
            }
            iArr[i5] = (fieldInfo.isRequired() ? 268435456 : 0) | i3 | (iId << 20) | iObjectFieldOffset;
            iArr[i2 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
            messageFieldClass = fieldInfo.getMessageFieldClass();
            if (fieldInfo.getMapDefaultEntry() != null) {
                if (messageFieldClass != null) {
                    objArr[((i2 / 3) * 2) + 1] = messageFieldClass;
                    return;
                } else {
                    if (fieldInfo.getEnumVerifier() != null) {
                        objArr[((i2 / 3) * 2) + 1] = fieldInfo.getEnumVerifier();
                        return;
                    }
                    return;
                }
            }
            i4 = (i2 / 3) * 2;
            objArr[i4] = fieldInfo.getMapDefaultEntry();
            if (messageFieldClass != null) {
                objArr[i4 + 1] = messageFieldClass;
            } else if (fieldInfo.getEnumVerifier() != null) {
                objArr[i4 + 1] = fieldInfo.getEnumVerifier();
            }
        }
        iId = fieldInfo.getType().id() + 51;
        iObjectFieldOffset = (int) UnsafeUtil.objectFieldOffset(oneof.getValueField());
        jObjectFieldOffset = UnsafeUtil.objectFieldOffset(oneof.getCaseField());
        iObjectFieldOffset2 = (int) jObjectFieldOffset;
        iNumberOfTrailingZeros = 0;
        iArr[i2] = fieldInfo.getFieldNumber();
        int i6 = i2 + 1;
        if (fieldInfo.isEnforceUtf8()) {
            i3 = 536870912;
        } else {
            i3 = 0;
        }
        iArr[i6] = (fieldInfo.isRequired() ? 268435456 : 0) | i3 | (iId << 20) | iObjectFieldOffset;
        iArr[i2 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
        messageFieldClass = fieldInfo.getMessageFieldClass();
        if (fieldInfo.getMapDefaultEntry() != null) {
            if (messageFieldClass != null) {
                objArr[((i2 / 3) * 2) + 1] = messageFieldClass;
                return;
            } else {
                if (fieldInfo.getEnumVerifier() != null) {
                    objArr[((i2 / 3) * 2) + 1] = fieldInfo.getEnumVerifier();
                    return;
                }
                return;
            }
        }
        i4 = (i2 / 3) * 2;
        objArr[i4] = fieldInfo.getMapDefaultEntry();
        if (messageFieldClass != null) {
            objArr[i4 + 1] = messageFieldClass;
        } else if (fieldInfo.getEnumVerifier() != null) {
            objArr[i4 + 1] = fieldInfo.getEnumVerifier();
        }
    }

    private void storeMessageField(T t2, int i2, Object obj) {
        UNSAFE.putObject(t2, offset(typeAndOffsetAt(i2)), obj);
        setFieldPresent(t2, i2);
    }

    private void storeOneofMessageField(T t2, int i2, int i3, Object obj) {
        UNSAFE.putObject(t2, offset(typeAndOffsetAt(i3)), obj);
        setOneofPresent(t2, i2, i3);
    }

    private static int type(int i2) {
        return (i2 & FIELD_TYPE_MASK) >>> 20;
    }

    private int typeAndOffsetAt(int i2) {
        return this.buffer[i2 + 1];
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInAscendingOrderProto2(T t2, Writer writer) {
        Iterator it;
        Map.Entry<?, ?> entry;
        int i2;
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t2);
            if (extensions.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = extensions.iterator();
                entry = (Map.Entry) it.next();
            }
        } else {
            it = null;
            entry = null;
        }
        int length = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i5);
            int iNumberAt = numberAt(i5);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                int i7 = this.buffer[i5 + 2];
                int i8 = i7 & i3;
                if (i8 != i4) {
                    i6 = unsafe.getInt(t2, i8);
                    i4 = i8;
                }
                i2 = 1 << (i7 >>> 20);
            } else {
                i2 = 0;
            }
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if ((i2 & i6) != 0) {
                        writer.writeDouble(iNumberAt, doubleAt(t2, jOffset));
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 1:
                    if ((i2 & i6) != 0) {
                        writer.writeFloat(iNumberAt, floatAt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 2:
                    if ((i2 & i6) != 0) {
                        writer.writeInt64(iNumberAt, unsafe.getLong(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 3:
                    if ((i2 & i6) != 0) {
                        writer.writeUInt64(iNumberAt, unsafe.getLong(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 4:
                    if ((i2 & i6) != 0) {
                        writer.writeInt32(iNumberAt, unsafe.getInt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 5:
                    if ((i2 & i6) != 0) {
                        writer.writeFixed64(iNumberAt, unsafe.getLong(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 6:
                    if ((i2 & i6) != 0) {
                        writer.writeFixed32(iNumberAt, unsafe.getInt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 7:
                    if ((i2 & i6) != 0) {
                        writer.writeBool(iNumberAt, booleanAt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 8:
                    if ((i2 & i6) != 0) {
                        writeString(iNumberAt, unsafe.getObject(t2, jOffset), writer);
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 9:
                    if ((i2 & i6) != 0) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t2, jOffset), getMessageFieldSchema(i5));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 10:
                    if ((i2 & i6) != 0) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 11:
                    if ((i2 & i6) != 0) {
                        writer.writeUInt32(iNumberAt, unsafe.getInt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 12:
                    if ((i2 & i6) != 0) {
                        writer.writeEnum(iNumberAt, unsafe.getInt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 13:
                    if ((i2 & i6) != 0) {
                        writer.writeSFixed32(iNumberAt, unsafe.getInt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 14:
                    if ((i2 & i6) != 0) {
                        writer.writeSFixed64(iNumberAt, unsafe.getLong(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 15:
                    if ((i2 & i6) != 0) {
                        writer.writeSInt32(iNumberAt, unsafe.getInt(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 16:
                    if ((i2 & i6) != 0) {
                        writer.writeSInt64(iNumberAt, unsafe.getLong(t2, jOffset));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 17:
                    if ((i2 & i6) != 0) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t2, jOffset), getMessageFieldSchema(i5));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, getMessageFieldSchema(i5));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, false);
                    continue;
                    i5 += 3;
                    i3 = 1048575;
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(i5), (List) unsafe.getObject(t2, jOffset), writer, getMessageFieldSchema(i5));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, unsafe.getObject(t2, jOffset), i5);
                    break;
                case 51:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t2, jOffset));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t2, jOffset));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t2, jOffset));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t2, jOffset));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t2, jOffset));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t2, jOffset));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t2, jOffset));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t2, jOffset));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writeString(iNumberAt, unsafe.getObject(t2, jOffset), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t2, jOffset), getMessageFieldSchema(i5));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t2, jOffset));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t2, jOffset));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t2, jOffset));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t2, jOffset));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t2, jOffset));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t2, jOffset));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t2, jOffset));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t2, jOffset), getMessageFieldSchema(i5));
                    }
                    break;
            }
            i5 += 3;
            i3 = 1048575;
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t2, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    private void writeFieldsInAscendingOrderProto3(T t2, Writer writer) {
        Iterator it;
        Map.Entry<?, ?> entry;
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t2);
            if (extensions.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = extensions.iterator();
                entry = (Map.Entry) it.next();
            }
        } else {
            it = null;
            entry = null;
        }
        int length = this.buffer.length;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i2);
            int iNumberAt = numberAt(i2);
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeDouble(iNumberAt, doubleAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeFloat(iNumberAt, floatAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeInt64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeUInt64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeInt32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeFixed64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeFixed32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeBool(iNumberAt, booleanAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t2, i2)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i2));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeUInt32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeEnum(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeSFixed32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeSFixed64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeSInt32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeSInt64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t2, i2)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i2));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(i2));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(i2), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(i2));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), i2);
                    break;
                case 51:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i2));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t2, iNumberAt, i2)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i2));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t2, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInDescendingOrder(T t2, Writer writer) {
        Iterator itDescendingIterator;
        Map.Entry<?, ?> entry;
        writeUnknownInMessageTo(this.unknownFieldSchema, t2, writer);
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t2);
            if (extensions.isEmpty()) {
                itDescendingIterator = null;
                entry = null;
            } else {
                itDescendingIterator = extensions.descendingIterator();
                entry = (Map.Entry) itDescendingIterator.next();
            }
        } else {
            itDescendingIterator = null;
            entry = null;
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(length);
            int iNumberAt = numberAt(length);
            while (entry != null && this.extensionSchema.extensionNumber(entry) > iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t2, length)) {
                        writer.writeDouble(iNumberAt, doubleAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t2, length)) {
                        writer.writeFloat(iNumberAt, floatAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t2, length)) {
                        writer.writeInt64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t2, length)) {
                        writer.writeUInt64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t2, length)) {
                        writer.writeInt32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t2, length)) {
                        writer.writeFixed64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t2, length)) {
                        writer.writeFixed32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t2, length)) {
                        writer.writeBool(iNumberAt, booleanAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t2, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t2, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t2, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t2, length)) {
                        writer.writeUInt32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t2, length)) {
                        writer.writeEnum(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t2, length)) {
                        writer.writeSFixed32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t2, length)) {
                        writer.writeSFixed64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t2, length)) {
                        writer.writeSInt32(iNumberAt, intAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t2, length)) {
                        writer.writeSInt64(iNumberAt, longAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t2, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(length), (List) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), length);
                    break;
                case 51:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t2, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t2, iNumberAt, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t2, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
        }
    }

    private <K, V> void writeMapHelper(Writer writer, int i2, Object obj, int i3) {
        if (obj != null) {
            writer.writeMap(i2, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i3)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void writeString(int i2, Object obj, Writer writer) {
        if (obj instanceof String) {
            writer.writeString(i2, (String) obj);
        } else {
            writer.writeBytes(i2, (ByteString) obj);
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t2, Writer writer) {
        unknownFieldSchema.writeTo(unknownFieldSchema.getFromMessage(t2), writer);
    }

    @Override // com.google.protobuf.Schema
    public boolean equals(T t2, T t3) {
        int length = this.buffer.length;
        for (int i2 = 0; i2 < length; i2 += 3) {
            if (!equals(t2, t3, i2)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(t2).equals(this.unknownFieldSchema.getFromMessage(t3))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t2).equals(this.extensionSchema.getExtensions(t3));
        }
        return true;
    }

    public int getSchemaSize() {
        return this.buffer.length * 3;
    }

    @Override // com.google.protobuf.Schema
    public int getSerializedSize(T t2) {
        return this.proto3 ? getSerializedSizeProto3(t2) : getSerializedSizeProto2(t2);
    }

    @Override // com.google.protobuf.Schema
    public int hashCode(T t2) {
        int i2;
        int iHashLong;
        int i3;
        int iOneofIntAt;
        int length = this.buffer.length;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i5);
            int iNumberAt = numberAt(i5);
            long jOffset = offset(iTypeAndOffsetAt);
            int iHashCode = 37;
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    i2 = i4 * 53;
                    iHashLong = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(t2, jOffset)));
                    i4 = iHashLong + i2;
                    break;
                case 1:
                    i2 = i4 * 53;
                    iHashLong = Float.floatToIntBits(UnsafeUtil.getFloat(t2, jOffset));
                    i4 = iHashLong + i2;
                    break;
                case 2:
                    i2 = i4 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t2, jOffset));
                    i4 = iHashLong + i2;
                    break;
                case 3:
                    i2 = i4 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t2, jOffset));
                    i4 = iHashLong + i2;
                    break;
                case 4:
                    i3 = i4 * 53;
                    iOneofIntAt = UnsafeUtil.getInt(t2, jOffset);
                    i4 = i3 + iOneofIntAt;
                    break;
                case 5:
                    i2 = i4 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t2, jOffset));
                    i4 = iHashLong + i2;
                    break;
                case 6:
                    i3 = i4 * 53;
                    iOneofIntAt = UnsafeUtil.getInt(t2, jOffset);
                    i4 = i3 + iOneofIntAt;
                    break;
                case 7:
                    i2 = i4 * 53;
                    iHashLong = Internal.hashBoolean(UnsafeUtil.getBoolean(t2, jOffset));
                    i4 = iHashLong + i2;
                    break;
                case 8:
                    i2 = i4 * 53;
                    iHashLong = ((String) UnsafeUtil.getObject(t2, jOffset)).hashCode();
                    i4 = iHashLong + i2;
                    break;
                case 9:
                    Object object = UnsafeUtil.getObject(t2, jOffset);
                    if (object != null) {
                        iHashCode = object.hashCode();
                    }
                    i4 = (i4 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i4 * 53;
                    iHashLong = UnsafeUtil.getObject(t2, jOffset).hashCode();
                    i4 = iHashLong + i2;
                    break;
                case 11:
                    i3 = i4 * 53;
                    iOneofIntAt = UnsafeUtil.getInt(t2, jOffset);
                    i4 = i3 + iOneofIntAt;
                    break;
                case 12:
                    i3 = i4 * 53;
                    iOneofIntAt = UnsafeUtil.getInt(t2, jOffset);
                    i4 = i3 + iOneofIntAt;
                    break;
                case 13:
                    i3 = i4 * 53;
                    iOneofIntAt = UnsafeUtil.getInt(t2, jOffset);
                    i4 = i3 + iOneofIntAt;
                    break;
                case 14:
                    i2 = i4 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t2, jOffset));
                    i4 = iHashLong + i2;
                    break;
                case 15:
                    i3 = i4 * 53;
                    iOneofIntAt = UnsafeUtil.getInt(t2, jOffset);
                    i4 = i3 + iOneofIntAt;
                    break;
                case 16:
                    i2 = i4 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t2, jOffset));
                    i4 = iHashLong + i2;
                    break;
                case 17:
                    Object object2 = UnsafeUtil.getObject(t2, jOffset);
                    if (object2 != null) {
                        iHashCode = object2.hashCode();
                    }
                    i4 = (i4 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i4 * 53;
                    iHashLong = UnsafeUtil.getObject(t2, jOffset).hashCode();
                    i4 = iHashLong + i2;
                    break;
                case 50:
                    i2 = i4 * 53;
                    iHashLong = UnsafeUtil.getObject(t2, jOffset).hashCode();
                    i4 = iHashLong + i2;
                    break;
                case 51:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(t2, jOffset)));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Float.floatToIntBits(oneofFloatAt(t2, jOffset));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t2, jOffset));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t2, jOffset));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i3 = i4 * 53;
                        iOneofIntAt = oneofIntAt(t2, jOffset);
                        i4 = i3 + iOneofIntAt;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t2, jOffset));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i3 = i4 * 53;
                        iOneofIntAt = oneofIntAt(t2, jOffset);
                        i4 = i3 + iOneofIntAt;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Internal.hashBoolean(oneofBooleanAt(t2, jOffset));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = ((String) UnsafeUtil.getObject(t2, jOffset)).hashCode();
                        i4 = iHashLong + i2;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = UnsafeUtil.getObject(t2, jOffset).hashCode();
                        i4 = iHashLong + i2;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = UnsafeUtil.getObject(t2, jOffset).hashCode();
                        i4 = iHashLong + i2;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i3 = i4 * 53;
                        iOneofIntAt = oneofIntAt(t2, jOffset);
                        i4 = i3 + iOneofIntAt;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i3 = i4 * 53;
                        iOneofIntAt = oneofIntAt(t2, jOffset);
                        i4 = i3 + iOneofIntAt;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i3 = i4 * 53;
                        iOneofIntAt = oneofIntAt(t2, jOffset);
                        i4 = i3 + iOneofIntAt;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t2, jOffset));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i3 = i4 * 53;
                        iOneofIntAt = oneofIntAt(t2, jOffset);
                        i4 = i3 + iOneofIntAt;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t2, jOffset));
                        i4 = iHashLong + i2;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t2, iNumberAt, i5)) {
                        i2 = i4 * 53;
                        iHashLong = UnsafeUtil.getObject(t2, jOffset).hashCode();
                        i4 = iHashLong + i2;
                    }
                    break;
            }
        }
        int iHashCode2 = this.unknownFieldSchema.getFromMessage(t2).hashCode() + (i4 * 53);
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.getExtensions(t2).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:58:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa A[SYNTHETIC] */
    @Override // com.google.protobuf.Schema
    public final boolean isInitialized(T t2) {
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.checkInitializedCount) {
            int i7 = this.intArray[i6];
            int iNumberAt = numberAt(i7);
            int iTypeAndOffsetAt = typeAndOffsetAt(i7);
            int i8 = this.buffer[i7 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i4) {
                if (i9 != 1048575) {
                    i5 = UNSAFE.getInt(t2, i9);
                }
                i3 = i5;
                i2 = i9;
            } else {
                i2 = i4;
                i3 = i5;
            }
            if (isRequired(iTypeAndOffsetAt) && !isFieldPresent(t2, i7, i2, i3, i10)) {
                return false;
            }
            int iType = type(iTypeAndOffsetAt);
            if (iType == 9 || iType == 17) {
                if (isFieldPresent(t2, i7, i2, i3, i10) && !isInitialized(t2, iTypeAndOffsetAt, getMessageFieldSchema(i7))) {
                    return false;
                }
            } else if (iType == 27) {
                if (!isListInitialized(t2, iTypeAndOffsetAt, i7)) {
                    return false;
                }
            } else if (iType == 60 || iType == 68) {
                if (isOneofPresent(t2, iNumberAt, i7) && !isInitialized(t2, iTypeAndOffsetAt, getMessageFieldSchema(i7))) {
                    return false;
                }
            } else if (iType != 49) {
                if (iType == 50 && !isMapInitialized(t2, iTypeAndOffsetAt, i7)) {
                    return false;
                }
            } else if (!isListInitialized(t2, iTypeAndOffsetAt, i7)) {
                return false;
            }
            i6++;
            i4 = i2;
            i5 = i3;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(t2).isInitialized();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    /* JADX WARN: Code duplicated, block: B:27:0x006f  */
    /* JADX WARN: Code duplicated, block: B:40:0x007c A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.Schema
    public void makeImmutable(T t2) {
        if (isMutable(t2)) {
            if (t2 instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t2;
                generatedMessageLite.clearMemoizedSerializedSize();
                generatedMessageLite.clearMemoizedHashCode();
                generatedMessageLite.markImmutable();
            }
            int length = this.buffer.length;
            for (int i2 = 0; i2 < length; i2 += 3) {
                int iTypeAndOffsetAt = typeAndOffsetAt(i2);
                long jOffset = offset(iTypeAndOffsetAt);
                int iType = type(iTypeAndOffsetAt);
                if (iType != 9) {
                    if (iType != 60 && iType != 68) {
                        switch (iType) {
                            case 17:
                                if (isFieldPresent(t2, i2)) {
                                    getMessageFieldSchema(i2).makeImmutable(UNSAFE.getObject(t2, jOffset));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.listFieldSchema.makeImmutableListAt(t2, jOffset);
                                break;
                            case 50:
                                Unsafe unsafe = UNSAFE;
                                Object object = unsafe.getObject(t2, jOffset);
                                if (object != null) {
                                    unsafe.putObject(t2, jOffset, this.mapFieldSchema.toImmutable(object));
                                }
                                break;
                        }
                    } else if (isOneofPresent(t2, numberAt(i2), i2)) {
                        getMessageFieldSchema(i2).makeImmutable(UNSAFE.getObject(t2, jOffset));
                    }
                } else if (isFieldPresent(t2, i2)) {
                    getMessageFieldSchema(i2).makeImmutable(UNSAFE.getObject(t2, jOffset));
                }
            }
            this.unknownFieldSchema.makeImmutable(t2);
            if (this.hasExtensions) {
                this.extensionSchema.makeImmutable(t2);
            }
        }
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t2, T t3) {
        checkMutable(t2);
        t3.getClass();
        for (int i2 = 0; i2 < this.buffer.length; i2 += 3) {
            mergeSingleField(t2, t3, i2);
        }
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, t2, t3);
        if (this.hasExtensions) {
            SchemaUtil.mergeExtensions(this.extensionSchema, t2, t3);
        }
    }

    @Override // com.google.protobuf.Schema
    public T newInstance() {
        return (T) this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x008f. Please report as an issue. */
    @CanIgnoreReturnValue
    public int parseProto2Message(T t2, byte[] bArr, int i2, int i3, int i4, ArrayDecoders.Registers registers) {
        Unsafe unsafe;
        MessageSchema<T> messageSchema;
        int i5;
        int i6;
        int i7;
        int i8;
        T t3;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        byte[] bArr2;
        int iDecodeVarint64;
        int i20;
        int i21;
        MessageSchema<T> messageSchema2 = this;
        T t4 = t2;
        byte[] bArr3 = bArr;
        int i22 = i3;
        i4 = i4;
        ArrayDecoders.Registers registers2 = registers;
        checkMutable(t2);
        Unsafe unsafe2 = UNSAFE;
        int iDecodeUnknownField = i2;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = -1;
        int i27 = 1048575;
        while (true) {
            if (iDecodeUnknownField < i22) {
                int i28 = iDecodeUnknownField + 1;
                byte b2 = bArr3[iDecodeUnknownField];
                if (b2 < 0) {
                    int iDecodeVarint32 = ArrayDecoders.decodeVarint32(b2, bArr3, i28, registers2);
                    i9 = registers2.int1;
                    i28 = iDecodeVarint32;
                } else {
                    i9 = b2;
                }
                int i29 = i9 >>> 3;
                int i30 = i9 & 7;
                int iPositionForFieldNumber = i29 > i26 ? messageSchema2.positionForFieldNumber(i29, i23 / 3) : messageSchema2.positionForFieldNumber(i29);
                if (iPositionForFieldNumber == -1) {
                    i10 = i29;
                    i11 = i28;
                    i6 = i9;
                    i12 = i25;
                    i13 = i27;
                    unsafe = unsafe2;
                    i4 = i4;
                    i14 = 0;
                } else {
                    int i31 = messageSchema2.buffer[iPositionForFieldNumber + 1];
                    int iType = type(i31);
                    long jOffset = offset(i31);
                    int i32 = i9;
                    if (iType <= 17) {
                        int i33 = messageSchema2.buffer[iPositionForFieldNumber + 2];
                        int i34 = 1 << (i33 >>> 20);
                        int i35 = i33 & 1048575;
                        if (i35 != i27) {
                            if (i27 != 1048575) {
                                unsafe2.putInt(t4, i27, i25);
                            }
                            i16 = i35;
                            i15 = unsafe2.getInt(t4, i35);
                        } else {
                            i15 = i25;
                            i16 = i27;
                        }
                        switch (iType) {
                            case 0:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 1) {
                                    UnsafeUtil.putDouble(t4, jOffset, ArrayDecoders.decodeDouble(bArr2, i28));
                                    iDecodeUnknownField = i28 + 8;
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 1:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 5) {
                                    UnsafeUtil.putFloat(t4, jOffset, ArrayDecoders.decodeFloat(bArr2, i28));
                                    iDecodeUnknownField = i28 + 4;
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 2:
                            case 3:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 0) {
                                    iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr2, i28, registers2);
                                    unsafe2.putLong(t2, jOffset, registers2.long1);
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    iDecodeUnknownField = iDecodeVarint64;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 4:
                            case 11:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i28, registers2);
                                    unsafe2.putInt(t4, jOffset, registers2.int1);
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 5:
                            case 14:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 1) {
                                    unsafe2.putLong(t2, jOffset, ArrayDecoders.decodeFixed64(bArr2, i28));
                                    iDecodeUnknownField = i28 + 8;
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 6:
                            case 13:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 5) {
                                    unsafe2.putInt(t4, jOffset, ArrayDecoders.decodeFixed32(bArr2, i28));
                                    iDecodeUnknownField = i28 + 4;
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 7:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint64(bArr2, i28, registers2);
                                    UnsafeUtil.putBoolean(t4, jOffset, registers2.long1 != 0);
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 8:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 2) {
                                    iDecodeUnknownField = (536870912 & i31) == 0 ? ArrayDecoders.decodeString(bArr2, i28, registers2) : ArrayDecoders.decodeStringRequireUtf8(bArr2, i28, registers2);
                                    unsafe2.putObject(t4, jOffset, registers2.object1);
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 9:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 2) {
                                    Object objMutableMessageFieldForMerge = messageSchema2.mutableMessageFieldForMerge(t4, i19);
                                    iDecodeUnknownField = ArrayDecoders.mergeMessageField(objMutableMessageFieldForMerge, messageSchema2.getMessageFieldSchema(i19), bArr, i28, i3, registers);
                                    messageSchema2.storeMessageField(t4, i19, objMutableMessageFieldForMerge);
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 10:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 2) {
                                    iDecodeUnknownField = ArrayDecoders.decodeBytes(bArr2, i28, registers2);
                                    unsafe2.putObject(t4, jOffset, registers2.object1);
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 12:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i28, registers2);
                                    int i36 = registers2.int1;
                                    Internal.EnumVerifier enumFieldVerifier = messageSchema2.getEnumFieldVerifier(i19);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i36)) {
                                        unsafe2.putInt(t4, jOffset, i36);
                                        i25 = i15 | i34;
                                        i23 = i19;
                                        i24 = i18;
                                        i26 = i10;
                                        i27 = i17;
                                    } else {
                                        getMutableUnknownFields(t2).storeField(i18, Long.valueOf(i36));
                                        i23 = i19;
                                        i25 = i15;
                                        i24 = i18;
                                        i26 = i10;
                                        i27 = i17;
                                        i4 = i4;
                                    }
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 15:
                                bArr2 = bArr;
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                if (i30 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i28, registers2);
                                    unsafe2.putInt(t4, jOffset, CodedInputStream.decodeZigZag32(registers2.int1));
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 16:
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                bArr2 = bArr;
                                if (i30 == 0) {
                                    iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr2, i28, registers2);
                                    unsafe2.putLong(t2, jOffset, CodedInputStream.decodeZigZag64(registers2.long1));
                                    i25 = i15 | i34;
                                    i23 = i19;
                                    iDecodeUnknownField = iDecodeVarint64;
                                    i24 = i18;
                                    i26 = i10;
                                    i27 = i17;
                                    bArr3 = bArr2;
                                } else {
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            case 17:
                                if (i30 == 3) {
                                    Object objMutableMessageFieldForMerge2 = messageSchema2.mutableMessageFieldForMerge(t4, iPositionForFieldNumber);
                                    iDecodeUnknownField = ArrayDecoders.mergeGroupField(objMutableMessageFieldForMerge2, messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), bArr, i28, i3, (i29 << 3) | 4, registers);
                                    messageSchema2.storeMessageField(t4, iPositionForFieldNumber, objMutableMessageFieldForMerge2);
                                    i25 = i15 | i34;
                                    i27 = i16;
                                    i4 = i4;
                                    i23 = iPositionForFieldNumber;
                                    i24 = i32;
                                    i26 = i29;
                                    bArr3 = bArr;
                                } else {
                                    i10 = i29;
                                    i17 = i16;
                                    i18 = i32;
                                    i19 = iPositionForFieldNumber;
                                    i13 = i17;
                                    i4 = i4;
                                    i11 = i28;
                                    i14 = i19;
                                    unsafe = unsafe2;
                                    i12 = i15;
                                    i6 = i18;
                                }
                                break;
                            default:
                                i10 = i29;
                                i19 = iPositionForFieldNumber;
                                i17 = i16;
                                i18 = i32;
                                i13 = i17;
                                i4 = i4;
                                i11 = i28;
                                i14 = i19;
                                unsafe = unsafe2;
                                i12 = i15;
                                i6 = i18;
                                break;
                        }
                    } else {
                        i10 = i29;
                        i13 = i27;
                        i12 = i25;
                        if (iType == 27) {
                            if (i30 == 2) {
                                Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2.getObject(t4, jOffset);
                                if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                                    int size = protobufListMutableCopyWithCapacity2.size();
                                    protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                    unsafe2.putObject(t4, jOffset, protobufListMutableCopyWithCapacity2);
                                }
                                iDecodeUnknownField = ArrayDecoders.decodeMessageList(messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), i32, bArr, i28, i3, protobufListMutableCopyWithCapacity2, registers);
                                i23 = iPositionForFieldNumber;
                                i24 = i32;
                                i27 = i13;
                                i25 = i12;
                                i26 = i10;
                                bArr3 = bArr;
                                i4 = i4;
                            } else {
                                i20 = i28;
                                unsafe = unsafe2;
                                i14 = iPositionForFieldNumber;
                                i21 = i32;
                                i11 = i20;
                                i6 = i21;
                            }
                        } else if (iType <= 49) {
                            int i37 = i28;
                            unsafe = unsafe2;
                            i14 = iPositionForFieldNumber;
                            i21 = i32;
                            iDecodeUnknownField = parseRepeatedField(t2, bArr, i28, i3, i32, i10, i30, iPositionForFieldNumber, i31, iType, jOffset, registers);
                            if (iDecodeUnknownField != i37) {
                                messageSchema2 = this;
                                t4 = t2;
                                bArr3 = bArr;
                                i22 = i3;
                                i4 = i4;
                                registers2 = registers;
                                i27 = i13;
                                i25 = i12;
                                i23 = i14;
                                i24 = i21;
                                i26 = i10;
                                unsafe2 = unsafe;
                            } else {
                                i11 = iDecodeUnknownField;
                                i6 = i21;
                            }
                        } else {
                            i20 = i28;
                            unsafe = unsafe2;
                            i14 = iPositionForFieldNumber;
                            i21 = i32;
                            if (iType != 50) {
                                iDecodeUnknownField = parseOneofField(t2, bArr, i20, i3, i21, i10, i30, i31, iType, jOffset, i14, registers);
                                if (iDecodeUnknownField != i20) {
                                    messageSchema2 = this;
                                    t4 = t2;
                                    bArr3 = bArr;
                                    i22 = i3;
                                    i4 = i4;
                                    registers2 = registers;
                                    i27 = i13;
                                    i25 = i12;
                                    i23 = i14;
                                    i24 = i21;
                                    i26 = i10;
                                    unsafe2 = unsafe;
                                } else {
                                    i11 = iDecodeUnknownField;
                                    i6 = i21;
                                }
                            } else if (i30 == 2) {
                                iDecodeUnknownField = parseMapField(t2, bArr, i20, i3, i14, jOffset, registers);
                                if (iDecodeUnknownField != i20) {
                                    messageSchema2 = this;
                                    t4 = t2;
                                    bArr3 = bArr;
                                    i22 = i3;
                                    i4 = i4;
                                    registers2 = registers;
                                    i27 = i13;
                                    i25 = i12;
                                    i23 = i14;
                                    i24 = i21;
                                    i26 = i10;
                                    unsafe2 = unsafe;
                                } else {
                                    i11 = iDecodeUnknownField;
                                    i6 = i21;
                                }
                            } else {
                                i11 = i20;
                                i6 = i21;
                            }
                        }
                    }
                }
                if (i6 != i4 || i4 == 0) {
                    iDecodeUnknownField = (!this.hasExtensions || registers.extensionRegistry == ExtensionRegistryLite.getEmptyRegistry()) ? ArrayDecoders.decodeUnknownField(i6, bArr, i11, i3, getMutableUnknownFields(t2), registers) : ArrayDecoders.decodeExtensionOrUnknownField(i6, bArr, i11, i3, t2, this.defaultInstance, this.unknownFieldSchema, registers);
                    t4 = t2;
                    bArr3 = bArr;
                    i22 = i3;
                    i24 = i6;
                    messageSchema2 = this;
                    registers2 = registers;
                    i27 = i13;
                    i25 = i12;
                    i23 = i14;
                    i26 = i10;
                    unsafe2 = unsafe;
                    i4 = i4;
                } else {
                    i8 = 1048575;
                    messageSchema = this;
                    i5 = i11;
                    i7 = i13;
                    i25 = i12;
                }
            } else {
                int i38 = i27;
                unsafe = unsafe2;
                i4 = i4;
                messageSchema = messageSchema2;
                i5 = iDecodeUnknownField;
                i6 = i24;
                i7 = i38;
                i8 = 1048575;
            }
        }
        if (i7 != i8) {
            t3 = t2;
            unsafe.putInt(t3, i7, i25);
        } else {
            t3 = t2;
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i39 = messageSchema.checkInitializedCount; i39 < messageSchema.repeatedFieldOffsetStart; i39++) {
            unknownFieldSetLite = (UnknownFieldSetLite) filterMapUnknownEnumValues(t2, messageSchema.intArray[i39], unknownFieldSetLite, messageSchema.unknownFieldSchema, t2);
        }
        if (unknownFieldSetLite != null) {
            messageSchema.unknownFieldSchema.setBuilderToMessage(t3, unknownFieldSetLite);
        }
        if (i4 == 0) {
            if (i5 != i3) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i5 > i3 || i6 != i4) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i5;
    }

    @Override // com.google.protobuf.Schema
    public void writeTo(T t2, Writer writer) {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(t2, writer);
        } else if (this.proto3) {
            writeFieldsInAscendingOrderProto3(t2, writer);
        } else {
            writeFieldsInAscendingOrderProto2(t2, writer);
        }
    }

    private boolean isFieldPresent(T t2, int i2) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i2);
        long j2 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j2 != 1048575) {
            return (UnsafeUtil.getInt(t2, j2) & (1 << (iPresenceMaskAndOffsetAt >>> 20))) != 0;
        }
        int iTypeAndOffsetAt = typeAndOffsetAt(i2);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return Double.doubleToRawLongBits(UnsafeUtil.getDouble(t2, jOffset)) != 0;
            case 1:
                return Float.floatToRawIntBits(UnsafeUtil.getFloat(t2, jOffset)) != 0;
            case 2:
                return UnsafeUtil.getLong(t2, jOffset) != 0;
            case 3:
                return UnsafeUtil.getLong(t2, jOffset) != 0;
            case 4:
                return UnsafeUtil.getInt(t2, jOffset) != 0;
            case 5:
                return UnsafeUtil.getLong(t2, jOffset) != 0;
            case 6:
                return UnsafeUtil.getInt(t2, jOffset) != 0;
            case 7:
                return UnsafeUtil.getBoolean(t2, jOffset);
            case 8:
                Object object = UnsafeUtil.getObject(t2, jOffset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                }
                if (object instanceof ByteString) {
                    return !ByteString.EMPTY.equals(object);
                }
                throw new IllegalArgumentException();
            case 9:
                return UnsafeUtil.getObject(t2, jOffset) != null;
            case 10:
                return !ByteString.EMPTY.equals(UnsafeUtil.getObject(t2, jOffset));
            case 11:
                return UnsafeUtil.getInt(t2, jOffset) != 0;
            case 12:
                return UnsafeUtil.getInt(t2, jOffset) != 0;
            case 13:
                return UnsafeUtil.getInt(t2, jOffset) != 0;
            case 14:
                return UnsafeUtil.getLong(t2, jOffset) != 0;
            case 15:
                return UnsafeUtil.getInt(t2, jOffset) != 0;
            case 16:
                return UnsafeUtil.getLong(t2, jOffset) != 0;
            case 17:
                return UnsafeUtil.getObject(t2, jOffset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private int positionForFieldNumber(int i2, int i3) {
        if (i2 < this.minFieldNumber || i2 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i2, i3);
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t2, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        extensionRegistryLite.getClass();
        checkMutable(t2);
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t2, reader, extensionRegistryLite);
    }

    private boolean equals(T t2, T t3, int i2) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i2);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return arePresentForEquals(t2, t3, i2) && Double.doubleToLongBits(UnsafeUtil.getDouble(t2, jOffset)) == Double.doubleToLongBits(UnsafeUtil.getDouble(t3, jOffset));
            case 1:
                return arePresentForEquals(t2, t3, i2) && Float.floatToIntBits(UnsafeUtil.getFloat(t2, jOffset)) == Float.floatToIntBits(UnsafeUtil.getFloat(t3, jOffset));
            case 2:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getLong(t2, jOffset) == UnsafeUtil.getLong(t3, jOffset);
            case 3:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getLong(t2, jOffset) == UnsafeUtil.getLong(t3, jOffset);
            case 4:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getInt(t2, jOffset) == UnsafeUtil.getInt(t3, jOffset);
            case 5:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getLong(t2, jOffset) == UnsafeUtil.getLong(t3, jOffset);
            case 6:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getInt(t2, jOffset) == UnsafeUtil.getInt(t3, jOffset);
            case 7:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getBoolean(t2, jOffset) == UnsafeUtil.getBoolean(t3, jOffset);
            case 8:
                return arePresentForEquals(t2, t3, i2) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t2, jOffset), UnsafeUtil.getObject(t3, jOffset));
            case 9:
                return arePresentForEquals(t2, t3, i2) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t2, jOffset), UnsafeUtil.getObject(t3, jOffset));
            case 10:
                return arePresentForEquals(t2, t3, i2) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t2, jOffset), UnsafeUtil.getObject(t3, jOffset));
            case 11:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getInt(t2, jOffset) == UnsafeUtil.getInt(t3, jOffset);
            case 12:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getInt(t2, jOffset) == UnsafeUtil.getInt(t3, jOffset);
            case 13:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getInt(t2, jOffset) == UnsafeUtil.getInt(t3, jOffset);
            case 14:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getLong(t2, jOffset) == UnsafeUtil.getLong(t3, jOffset);
            case 15:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getInt(t2, jOffset) == UnsafeUtil.getInt(t3, jOffset);
            case 16:
                return arePresentForEquals(t2, t3, i2) && UnsafeUtil.getLong(t2, jOffset) == UnsafeUtil.getLong(t3, jOffset);
            case 17:
                return arePresentForEquals(t2, t3, i2) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t2, jOffset), UnsafeUtil.getObject(t3, jOffset));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t2, jOffset), UnsafeUtil.getObject(t3, jOffset));
            case 50:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t2, jOffset), UnsafeUtil.getObject(t3, jOffset));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return isOneofCaseEqual(t2, t3, i2) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t2, jOffset), UnsafeUtil.getObject(t3, jOffset));
            default:
                return true;
        }
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t2, byte[] bArr, int i2, int i3, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        if (this.proto3) {
            parseProto3Message(t2, bArr, i2, i3, registers);
        } else {
            parseProto2Message(t2, bArr, i2, i3, 0, registers);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isInitialized(Object obj, int i2, Schema schema) {
        return schema.isInitialized(UnsafeUtil.getObject(obj, offset(i2)));
    }
}
