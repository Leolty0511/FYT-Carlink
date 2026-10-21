package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.MarshalRegistry;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import android.util.Range;
import java.lang.Comparable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableRange<T extends Comparable<? super T>> implements MarshalQueryable<Range<T>> {
    private static final int RANGE_COUNT = 2;

    public class MarshalerRange extends Marshaler<Range<T>> {
        private final Class<? super Range<T>> mClass;
        private final Constructor<Range<T>> mConstructor;
        private final Marshaler<T> mNestedTypeMarshaler;

        public MarshalerRange(TypeReference<Range<T>> typeReference, int i2) {
            super(MarshalQueryableRange.this, typeReference, i2);
            Class<? super Range<T>> rawType = typeReference.getRawType();
            this.mClass = rawType;
            try {
                this.mNestedTypeMarshaler = MarshalRegistry.getMarshaler(TypeReference.createSpecializedTypeReference(((ParameterizedType) typeReference.getType()).getActualTypeArguments()[0]), this.mNativeType);
                try {
                    this.mConstructor = rawType.getConstructor(Comparable.class, Comparable.class);
                } catch (NoSuchMethodException e2) {
                    throw new AssertionError(e2);
                }
            } catch (ClassCastException e3) {
                throw new AssertionError("Raw use of Range is not supported", e3);
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            int nativeSize = this.mNestedTypeMarshaler.getNativeSize();
            int i2 = Marshaler.NATIVE_SIZE_DYNAMIC;
            return nativeSize != i2 ? nativeSize * 2 : i2;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int calculateMarshalSize(Range<T> range) {
            int nativeSize = getNativeSize();
            if (nativeSize != Marshaler.NATIVE_SIZE_DYNAMIC) {
                return nativeSize;
            }
            return this.mNestedTypeMarshaler.calculateMarshalSize((T) range.getUpper()) + this.mNestedTypeMarshaler.calculateMarshalSize((T) range.getLower());
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(Range<T> range, ByteBuffer byteBuffer) {
            this.mNestedTypeMarshaler.marshal((T) range.getLower(), byteBuffer);
            this.mNestedTypeMarshaler.marshal((T) range.getUpper(), byteBuffer);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public Range<T> unmarshal(ByteBuffer byteBuffer) {
            try {
                return this.mConstructor.newInstance(this.mNestedTypeMarshaler.unmarshal(byteBuffer), this.mNestedTypeMarshaler.unmarshal(byteBuffer));
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (IllegalArgumentException e3) {
                throw new AssertionError(e3);
            } catch (InstantiationException e4) {
                throw new AssertionError(e4);
            } catch (InvocationTargetException e5) {
                throw new AssertionError(e5);
            }
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<Range<T>> createMarshaler(TypeReference<Range<T>> typeReference, int i2) {
        return new MarshalerRange(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<Range<T>> typeReference, int i2) {
        return Range.class.equals(typeReference.getRawType());
    }
}
