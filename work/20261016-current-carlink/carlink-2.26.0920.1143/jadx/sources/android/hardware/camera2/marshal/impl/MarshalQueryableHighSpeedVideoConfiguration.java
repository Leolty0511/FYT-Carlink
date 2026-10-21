package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.params.HighSpeedVideoConfiguration;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableHighSpeedVideoConfiguration implements MarshalQueryable<HighSpeedVideoConfiguration> {
    private static final int SIZE = 20;

    public class MarshalerHighSpeedVideoConfiguration extends Marshaler<HighSpeedVideoConfiguration> {
        public MarshalerHighSpeedVideoConfiguration(TypeReference<HighSpeedVideoConfiguration> typeReference, int i2) {
            super(MarshalQueryableHighSpeedVideoConfiguration.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return 20;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(HighSpeedVideoConfiguration highSpeedVideoConfiguration, ByteBuffer byteBuffer) {
            byteBuffer.putInt(highSpeedVideoConfiguration.getWidth());
            byteBuffer.putInt(highSpeedVideoConfiguration.getHeight());
            byteBuffer.putInt(highSpeedVideoConfiguration.getFpsMin());
            byteBuffer.putInt(highSpeedVideoConfiguration.getFpsMax());
            byteBuffer.putInt(highSpeedVideoConfiguration.getBatchSizeMax());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public HighSpeedVideoConfiguration unmarshal(ByteBuffer byteBuffer) {
            return new HighSpeedVideoConfiguration(byteBuffer.getInt(), byteBuffer.getInt(), byteBuffer.getInt(), byteBuffer.getInt(), byteBuffer.getInt());
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<HighSpeedVideoConfiguration> createMarshaler(TypeReference<HighSpeedVideoConfiguration> typeReference, int i2) {
        return new MarshalerHighSpeedVideoConfiguration(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<HighSpeedVideoConfiguration> typeReference, int i2) {
        return i2 == 1 && typeReference.getType().equals(HighSpeedVideoConfiguration.class);
    }
}
