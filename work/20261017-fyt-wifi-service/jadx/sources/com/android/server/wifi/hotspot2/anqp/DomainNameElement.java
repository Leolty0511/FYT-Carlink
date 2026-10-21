package com.android.server.wifi.hotspot2.anqp;

import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.ByteBufferReader;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DomainNameElement extends ANQPElement {
    private final List<String> mDomains;

    @VisibleForTesting
    public DomainNameElement(List<String> domains) {
        super(Constants.ANQPElementType.ANQPDomName);
        this.mDomains = domains;
    }

    public static DomainNameElement parse(ByteBuffer payload) {
        List<String> domains = new ArrayList<>();
        while (payload.hasRemaining()) {
            domains.add(ByteBufferReader.readStringWithByteLength(payload, StandardCharsets.ISO_8859_1));
        }
        return new DomainNameElement(domains);
    }

    public List<String> getDomains() {
        return Collections.unmodifiableList(this.mDomains);
    }

    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (!(thatObject instanceof DomainNameElement)) {
            return false;
        }
        DomainNameElement that = (DomainNameElement) thatObject;
        return this.mDomains.equals(that.mDomains);
    }

    public int hashCode() {
        return this.mDomains.hashCode();
    }

    public String toString() {
        return "DomainName{mDomains=" + this.mDomains + '}';
    }
}
