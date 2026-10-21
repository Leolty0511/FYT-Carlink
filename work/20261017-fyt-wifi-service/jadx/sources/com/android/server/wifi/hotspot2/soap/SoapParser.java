package com.android.server.wifi.hotspot2.soap;

import org.ksoap2.serialization.SoapObject;

/* JADX INFO: loaded from: classes.dex */
public class SoapParser {
    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    public static SppResponseMessage getResponse(SoapObject response) {
        byte b;
        String name = response.getName();
        int iHashCode = name.hashCode();
        if (iHashCode != 1679330383) {
            if (iHashCode == 1786714445 && name.equals("sppPostDevDataResponse")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (name.equals("sppExchangeComplete")) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            SppResponseMessage responseMessage = PostDevDataResponse.createInstance(response);
            return responseMessage;
        }
        if (b == 1) {
            SppResponseMessage responseMessage2 = ExchangeCompleteMessage.createInstance(response);
            return responseMessage2;
        }
        return null;
    }
}
