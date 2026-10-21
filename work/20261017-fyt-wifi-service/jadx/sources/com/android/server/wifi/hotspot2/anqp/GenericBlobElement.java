package com.android.server.wifi.hotspot2.anqp;

import com.android.server.wifi.hotspot2.Utils;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class GenericBlobElement extends ANQPElement {
    private final byte[] mData;

    public GenericBlobElement(Constants.ANQPElementType infoID, ByteBuffer payload) {
        super(infoID);
        this.mData = new byte[payload.remaining()];
        payload.get(this.mData);
    }

    public byte[] getData() {
        return this.mData;
    }

    public String toString() {
        return "Element ID " + getID() + ": " + Utils.toHexString(this.mData);
    }
}
