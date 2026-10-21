package com.android.server.wifi.hotspot2.anqp;

/* JADX INFO: loaded from: classes.dex */
public abstract class ANQPElement {
    private final Constants.ANQPElementType mID;

    protected ANQPElement(Constants.ANQPElementType id) {
        this.mID = id;
    }

    public Constants.ANQPElementType getID() {
        return this.mID;
    }
}
