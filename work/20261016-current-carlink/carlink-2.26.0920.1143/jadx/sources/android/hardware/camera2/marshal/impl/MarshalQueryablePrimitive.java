package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalHelpers;
import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import android.util.Rational;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class MarshalQueryablePrimitive<T> implements MarshalQueryable<T> {

    public class MarshalerPrimitive extends Marshaler<T> {
        private final Class<T> mClass;

        public MarshalerPrimitive(TypeReference<T> typeReference, int i2) {
            super(MarshalQueryablePrimitive.this, typeReference, i2);
            this.mClass = MarshalHelpers.wrapClassIfPrimitive(typeReference.getRawType());
        }

        private void marshalPrimitive(int i2, ByteBuffer byteBuffer) {
            byteBuffer.putInt(i2);
        }

        private Object unmarshalObject(ByteBuffer byteBuffer) {
            int i2 = this.mNativeType;
            if (i2 == 0) {
                return Byte.valueOf(byteBuffer.get());
            }
            if (i2 == 1) {
                return Integer.valueOf(byteBuffer.getInt());
            }
            if (i2 == 2) {
                return Float.valueOf(byteBuffer.getFloat());
            }
            if (i2 == 3) {
                return Long.valueOf(byteBuffer.getLong());
            }
            if (i2 == 4) {
                return Double.valueOf(byteBuffer.getDouble());
            }
            if (i2 == 5) {
                return new Rational(byteBuffer.getInt(), byteBuffer.getInt());
            }
            throw new UnsupportedOperationException("Can't unmarshal native type " + this.mNativeType);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int calculateMarshalSize(T t2) {
            return MarshalHelpers.getPrimitiveTypeSize(this.mNativeType);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return MarshalHelpers.getPrimitiveTypeSize(this.mNativeType);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(T t2, ByteBuffer byteBuffer) {
            if (t2 instanceof Integer) {
                MarshalHelpers.checkNativeTypeEquals(1, this.mNativeType);
                marshalPrimitive(((Integer) t2).intValue(), byteBuffer);
                return;
            }
            if (t2 instanceof Float) {
                MarshalHelpers.checkNativeTypeEquals(2, this.mNativeType);
                marshalPrimitive(((Float) t2).floatValue(), byteBuffer);
                return;
            }
            if (t2 instanceof Long) {
                MarshalHelpers.checkNativeTypeEquals(3, this.mNativeType);
                marshalPrimitive(((Long) t2).longValue(), byteBuffer);
                return;
            }
            if (t2 instanceof Rational) {
                MarshalHelpers.checkNativeTypeEquals(5, this.mNativeType);
                marshalPrimitive((Rational) t2, byteBuffer);
            } else if (t2 instanceof Double) {
                MarshalHelpers.checkNativeTypeEquals(4, this.mNativeType);
                marshalPrimitive(((Double) t2).doubleValue(), byteBuffer);
            } else if (t2 instanceof Byte) {
                MarshalHelpers.checkNativeTypeEquals(0, this.mNativeType);
                marshalPrimitive(((Byte) t2).byteValue(), byteBuffer);
            } else {
                throw new UnsupportedOperationException("Can't marshal managed type " + this.mTypeReference);
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public T unmarshal(ByteBuffer byteBuffer) {
            return this.mClass.cast(unmarshalObject(byteBuffer));
        }

        private void marshalPrimitive(float f2, ByteBuffer byteBuffer) {
            byteBuffer.putFloat(f2);
        }

        private void marshalPrimitive(double d2, ByteBuffer byteBuffer) {
            byteBuffer.putDouble(d2);
        }

        private void marshalPrimitive(long j2, ByteBuffer byteBuffer) {
            byteBuffer.putLong(j2);
        }

        private void marshalPrimitive(Rational rational, ByteBuffer byteBuffer) {
            byteBuffer.putInt(rational.getNumerator());
            byteBuffer.putInt(rational.getDenominator());
        }

        private void marshalPrimitive(byte b2, ByteBuffer byteBuffer) {
            byteBuffer.put(b2);
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<T> createMarshaler(TypeReference<T> typeReference, int i2) {
        return new MarshalerPrimitive(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<T> typeReference, int i2) {
        if (!(typeReference.getType() instanceof Class)) {
            return false;
        }
        Class cls = (Class) typeReference.getType();
        if (cls == Byte.TYPE || cls == Byte.class) {
            return i2 == 0;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return i2 == 1;
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return i2 == 2;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return i2 == 3;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return i2 == 4;
        }
        return cls == Rational.class && i2 == 5;
    }
}
