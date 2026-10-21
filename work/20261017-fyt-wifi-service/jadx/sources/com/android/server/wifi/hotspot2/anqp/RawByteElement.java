package com.android.server.wifi.hotspot2.anqp;

import com.android.internal.annotations.VisibleForTesting;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class RawByteElement extends ANQPElement {
    private final byte[] mPayload;

    @VisibleForTesting
    public RawByteElement(Constants.ANQPElementType infoID, byte[] payload) {
        super(infoID);
        this.mPayload = payload;
    }

    public static RawByteElement parse(Constants.ANQPElementType infoID, ByteBuffer payload) {
        byte[] rawBytes = new byte[payload.remaining()];
        if (payload.hasRemaining()) {
            payload.get(rawBytes);
        }
        return new RawByteElement(infoID, rawBytes);
    }

    public byte[] getPayload() {
        return this.mPayload;
    }

    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (!(thatObject instanceof RawByteElement)) {
            return false;
        }
        RawByteElement that = (RawByteElement) thatObject;
        return getID() == that.getID() && Arrays.equals(this.mPayload, that.mPayload);
    }

    public int hashCode() {
        return Arrays.hashCode(this.mPayload);
    }
}
