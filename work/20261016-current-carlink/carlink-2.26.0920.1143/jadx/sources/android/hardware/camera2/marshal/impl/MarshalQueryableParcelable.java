package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableParcelable<T extends Parcelable> implements MarshalQueryable<T> {
    private static final boolean DEBUG = false;
    private static final String FIELD_CREATOR = "CREATOR";
    private static final String TAG = "MarshalParcelable";

    public class MarshalerParcelable extends Marshaler<T> {
        private final Class<T> mClass;
        private final Parcelable.Creator<T> mCreator;

        public MarshalerParcelable(TypeReference<T> typeReference, int i2) {
            super(MarshalQueryableParcelable.this, typeReference, i2);
            Class<? super T> rawType = typeReference.getRawType();
            this.mClass = rawType;
            try {
                try {
                    this.mCreator = (Parcelable.Creator) rawType.getDeclaredField(MarshalQueryableParcelable.FIELD_CREATOR).get(null);
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                } catch (IllegalArgumentException e3) {
                    throw new AssertionError(e3);
                }
            } catch (NoSuchFieldException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return Marshaler.NATIVE_SIZE_DYNAMIC;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int calculateMarshalSize(T t2) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                t2.writeToParcel(parcelObtain, 0);
                return parcelObtain.marshall().length;
            } finally {
                parcelObtain.recycle();
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(T t2, ByteBuffer byteBuffer) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                t2.writeToParcel(parcelObtain, 0);
                if (parcelObtain.hasFileDescriptors()) {
                    throw new UnsupportedOperationException("Parcelable " + t2 + " must not have file descriptors");
                }
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                if (bArrMarshall.length != 0) {
                    byteBuffer.put(bArrMarshall);
                } else {
                    throw new AssertionError("No data marshaled for " + t2);
                }
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public T unmarshal(ByteBuffer byteBuffer) {
            byteBuffer.mark();
            Parcel parcelObtain = Parcel.obtain();
            try {
                int iRemaining = byteBuffer.remaining();
                byte[] bArr = new byte[iRemaining];
                byteBuffer.get(bArr);
                parcelObtain.unmarshall(bArr, 0, iRemaining);
                parcelObtain.setDataPosition(0);
                T tCreateFromParcel = this.mCreator.createFromParcel(parcelObtain);
                int iDataPosition = parcelObtain.dataPosition();
                if (iDataPosition == 0) {
                    throw new AssertionError("No data marshaled for " + tCreateFromParcel);
                }
                byteBuffer.reset();
                byteBuffer.position(byteBuffer.position() + iDataPosition);
                T tCast = this.mClass.cast(tCreateFromParcel);
                parcelObtain.recycle();
                return tCast;
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<T> createMarshaler(TypeReference<T> typeReference, int i2) {
        return new MarshalerParcelable(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<T> typeReference, int i2) {
        return Parcelable.class.isAssignableFrom(typeReference.getRawType());
    }
}
