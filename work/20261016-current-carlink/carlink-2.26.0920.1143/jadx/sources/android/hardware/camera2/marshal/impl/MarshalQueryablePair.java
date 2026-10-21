package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.MarshalRegistry;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import android.util.Pair;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryablePair<T1, T2> implements MarshalQueryable<Pair<T1, T2>> {

    public class MarshalerPair extends Marshaler<Pair<T1, T2>> {
        private final Class<? super Pair<T1, T2>> mClass;
        private final Constructor<Pair<T1, T2>> mConstructor;
        private final Marshaler<T1> mNestedTypeMarshalerFirst;
        private final Marshaler<T2> mNestedTypeMarshalerSecond;

        public MarshalerPair(TypeReference<Pair<T1, T2>> typeReference, int i2) {
            super(MarshalQueryablePair.this, typeReference, i2);
            Class<? super Pair<T1, T2>> rawType = typeReference.getRawType();
            this.mClass = rawType;
            try {
                ParameterizedType parameterizedType = (ParameterizedType) typeReference.getType();
                this.mNestedTypeMarshalerFirst = MarshalRegistry.getMarshaler(TypeReference.createSpecializedTypeReference(parameterizedType.getActualTypeArguments()[0]), this.mNativeType);
                this.mNestedTypeMarshalerSecond = MarshalRegistry.getMarshaler(TypeReference.createSpecializedTypeReference(parameterizedType.getActualTypeArguments()[1]), this.mNativeType);
                try {
                    this.mConstructor = rawType.getConstructor(Object.class, Object.class);
                } catch (NoSuchMethodException e2) {
                    throw new AssertionError(e2);
                }
            } catch (ClassCastException e3) {
                throw new AssertionError("Raw use of Pair is not supported", e3);
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            int nativeSize = this.mNestedTypeMarshalerFirst.getNativeSize();
            int nativeSize2 = this.mNestedTypeMarshalerSecond.getNativeSize();
            int i2 = Marshaler.NATIVE_SIZE_DYNAMIC;
            return (nativeSize == i2 || nativeSize2 == i2) ? i2 : nativeSize + nativeSize2;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int calculateMarshalSize(Pair<T1, T2> pair) {
            int nativeSize = getNativeSize();
            if (nativeSize != Marshaler.NATIVE_SIZE_DYNAMIC) {
                return nativeSize;
            }
            return this.mNestedTypeMarshalerSecond.calculateMarshalSize(pair.second) + this.mNestedTypeMarshalerFirst.calculateMarshalSize(pair.first);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(Pair<T1, T2> pair, ByteBuffer byteBuffer) {
            T1 t1 = pair.first;
            if (t1 == null) {
                throw new UnsupportedOperationException("Pair#first must not be null");
            }
            if (pair.second == null) {
                throw new UnsupportedOperationException("Pair#second must not be null");
            }
            this.mNestedTypeMarshalerFirst.marshal(t1, byteBuffer);
            this.mNestedTypeMarshalerSecond.marshal(pair.second, byteBuffer);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public Pair<T1, T2> unmarshal(ByteBuffer byteBuffer) {
            try {
                return this.mConstructor.newInstance(this.mNestedTypeMarshalerFirst.unmarshal(byteBuffer), this.mNestedTypeMarshalerSecond.unmarshal(byteBuffer));
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
    public Marshaler<Pair<T1, T2>> createMarshaler(TypeReference<Pair<T1, T2>> typeReference, int i2) {
        return new MarshalerPair(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<Pair<T1, T2>> typeReference, int i2) {
        return Pair.class.equals(typeReference.getRawType());
    }
}
