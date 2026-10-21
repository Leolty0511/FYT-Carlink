package android.hardware.camera2.marshal.impl;

import android.accessibilityservice.c;
import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.MarshalRegistry;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import android.util.Log;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableArray<T> implements MarshalQueryable<T> {
    private static final boolean DEBUG = false;
    private static final String TAG = "MarshalQueryableArray";

    public class MarshalerArray extends Marshaler<T> {
        private final Class<T> mClass;
        private final Class<?> mComponentClass;
        private final Marshaler<?> mComponentMarshaler;

        public MarshalerArray(TypeReference<T> typeReference, int i2) {
            super(MarshalQueryableArray.this, typeReference, i2);
            this.mClass = typeReference.getRawType();
            TypeReference<?> componentType = typeReference.getComponentType();
            this.mComponentMarshaler = MarshalRegistry.getMarshaler(componentType, this.mNativeType);
            this.mComponentClass = componentType.getRawType();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <TElem> int calculateElementMarshalSize(Marshaler<TElem> marshaler, Object obj, int i2) {
            return marshaler.calculateMarshalSize(Array.get(obj, i2));
        }

        private Object copyListToArray(ArrayList<?> arrayList, Object obj) {
            return arrayList.toArray((Object[]) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <TElem> void marshalArrayElement(Marshaler<TElem> marshaler, ByteBuffer byteBuffer, Object obj, int i2) {
            marshaler.marshal(Array.get(obj, i2), byteBuffer);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int calculateMarshalSize(T t2) {
            int nativeSize = this.mComponentMarshaler.getNativeSize();
            int length = Array.getLength(t2);
            if (nativeSize != Marshaler.NATIVE_SIZE_DYNAMIC) {
                return nativeSize * length;
            }
            int iCalculateElementMarshalSize = 0;
            for (int i2 = 0; i2 < length; i2++) {
                iCalculateElementMarshalSize += calculateElementMarshalSize(this.mComponentMarshaler, t2, i2);
            }
            return iCalculateElementMarshalSize;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return Marshaler.NATIVE_SIZE_DYNAMIC;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(T t2, ByteBuffer byteBuffer) {
            int length = Array.getLength(t2);
            for (int i2 = 0; i2 < length; i2++) {
                marshalArrayElement(this.mComponentMarshaler, byteBuffer, t2, i2);
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public T unmarshal(ByteBuffer byteBuffer) {
            Object objCopyListToArray;
            int nativeSize = this.mComponentMarshaler.getNativeSize();
            if (nativeSize != Marshaler.NATIVE_SIZE_DYNAMIC) {
                int iRemaining = byteBuffer.remaining();
                int i2 = iRemaining / nativeSize;
                int i3 = iRemaining % nativeSize;
                if (i3 != 0) {
                    StringBuilder sb = new StringBuilder("Arrays for ");
                    sb.append(this.mTypeReference);
                    sb.append(" must be packed tighly into a multiple of ");
                    sb.append(nativeSize);
                    sb.append("; but there are ");
                    throw new UnsupportedOperationException(c.m(sb, i3, " left over bytes"));
                }
                objCopyListToArray = Array.newInstance(this.mComponentClass, i2);
                for (int i4 = 0; i4 < i2; i4++) {
                    Array.set(objCopyListToArray, i4, this.mComponentMarshaler.unmarshal(byteBuffer));
                }
            } else {
                ArrayList<?> arrayList = new ArrayList<>();
                while (byteBuffer.hasRemaining()) {
                    arrayList.add(this.mComponentMarshaler.unmarshal(byteBuffer));
                }
                objCopyListToArray = copyListToArray(arrayList, Array.newInstance(this.mComponentClass, arrayList.size()));
            }
            if (byteBuffer.remaining() != 0) {
                Log.e(MarshalQueryableArray.TAG, "Trailing bytes (" + byteBuffer.remaining() + ") left over after unpacking " + this.mClass);
            }
            return this.mClass.cast(objCopyListToArray);
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<T> createMarshaler(TypeReference<T> typeReference, int i2) {
        return new MarshalerArray(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<T> typeReference, int i2) {
        return typeReference.getRawType().isArray();
    }
}
