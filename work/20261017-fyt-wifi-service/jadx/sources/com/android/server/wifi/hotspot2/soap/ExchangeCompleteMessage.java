package com.android.server.wifi.hotspot2.soap;

import android.util.Log;
import org.ksoap2.serialization.SoapObject;

/* JADX INFO: loaded from: classes.dex */
public class ExchangeCompleteMessage extends SppResponseMessage {
    private static final String TAG = "PasspointExchangeCompleteMessage";

    private ExchangeCompleteMessage(SoapObject response) throws IllegalArgumentException {
        super(response, 1);
    }

    public static ExchangeCompleteMessage createInstance(SoapObject response) {
        try {
            ExchangeCompleteMessage exchangeCompleteMessage = new ExchangeCompleteMessage(response);
            return exchangeCompleteMessage;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "fails to create an Instance: " + e);
            return null;
        }
    }
}
