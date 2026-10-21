package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.params.ReprocessFormatsMap;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableReprocessFormatsMap implements MarshalQueryable<ReprocessFormatsMap> {

    public class MarshalerReprocessFormatsMap extends Marshaler<ReprocessFormatsMap> {
        public MarshalerReprocessFormatsMap(TypeReference<ReprocessFormatsMap> typeReference, int i2) {
            super(MarshalQueryableReprocessFormatsMap.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return Marshaler.NATIVE_SIZE_DYNAMIC;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int calculateMarshalSize(ReprocessFormatsMap reprocessFormatsMap) {
            int length = 0;
            for (int i2 : reprocessFormatsMap.getInputs()) {
                length = length + 1 + 1 + reprocessFormatsMap.getOutputs(i2).length;
            }
            return length * 4;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(ReprocessFormatsMap reprocessFormatsMap, ByteBuffer byteBuffer) {
            for (int i2 : StreamConfigurationMap.imageFormatToInternal(reprocessFormatsMap.getInputs())) {
                byteBuffer.putInt(i2);
                int[] iArrImageFormatToInternal = StreamConfigurationMap.imageFormatToInternal(reprocessFormatsMap.getOutputs(i2));
                byteBuffer.putInt(iArrImageFormatToInternal.length);
                for (int i3 : iArrImageFormatToInternal) {
                    byteBuffer.putInt(i3);
                }
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public ReprocessFormatsMap unmarshal(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining() / 4;
            if (byteBuffer.remaining() % 4 != 0) {
                throw new AssertionError("ReprocessFormatsMap was not TYPE_INT32");
            }
            int[] iArr = new int[iRemaining];
            byteBuffer.asIntBuffer().get(iArr);
            return new ReprocessFormatsMap(iArr);
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<ReprocessFormatsMap> createMarshaler(TypeReference<ReprocessFormatsMap> typeReference, int i2) {
        return new MarshalerReprocessFormatsMap(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<ReprocessFormatsMap> typeReference, int i2) {
        return i2 == 1 && typeReference.getType().equals(ReprocessFormatsMap.class);
    }
}
