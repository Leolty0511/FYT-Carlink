package android.hardware.camera2.marshal;

import android.hardware.camera2.utils.TypeReference;
import com.android.internal.util.Preconditions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class Marshaler<T> {
    public static int NATIVE_SIZE_DYNAMIC = -1;
    protected final int mNativeType;
    protected final TypeReference<T> mTypeReference;

    public Marshaler(MarshalQueryable<T> marshalQueryable, TypeReference<T> typeReference, int i2) {
        this.mTypeReference = (TypeReference) Preconditions.checkNotNull(typeReference, "typeReference must not be null");
        this.mNativeType = MarshalHelpers.checkNativeType(i2);
        if (marshalQueryable.isTypeMappingSupported(typeReference, i2)) {
            return;
        }
        throw new UnsupportedOperationException("Unsupported type marshaling for managed type " + typeReference + " and native type " + MarshalHelpers.toStringNativeType(i2));
    }

    public int calculateMarshalSize(T t2) {
        int nativeSize = getNativeSize();
        if (nativeSize != NATIVE_SIZE_DYNAMIC) {
            return nativeSize;
        }
        throw new AssertionError("Override this function for dynamically-sized objects");
    }

    public abstract int getNativeSize();

    public int getNativeType() {
        return this.mNativeType;
    }

    public TypeReference<T> getTypeReference() {
        return this.mTypeReference;
    }

    public abstract void marshal(T t2, ByteBuffer byteBuffer);

    public abstract T unmarshal(ByteBuffer byteBuffer);
}
