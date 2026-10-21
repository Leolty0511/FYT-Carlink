package com.android.server.wifi.hotspot2.soap.command;

import android.text.TextUtils;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import java.util.Objects;
import org.ksoap2.serialization.PropertyInfo;
import org.ksoap2.serialization.SoapPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class PpsMoData implements SppCommand.SppCommandData {

    @VisibleForTesting
    public static final String ADD_MO_COMMAND = "addMO";

    @VisibleForTesting
    public static final String ATTRIBUTE_MANAGEMENT_TREE_URI = "managementTreeURI";

    @VisibleForTesting
    public static final String ATTRIBUTE_MO_URN = "moURN";
    private static final String TAG = "PasspointPpsMoData";
    private final String mBaseUri;
    private final String mPpsMoTree;
    private final String mUrn;

    private PpsMoData(String baseUri, String urn, String ppsMoTree) {
        this.mBaseUri = baseUri;
        this.mUrn = urn;
        this.mPpsMoTree = ppsMoTree;
    }

    public static PpsMoData createInstance(PropertyInfo command) {
        if (command == null || command.getValue() == null) {
            Log.e(TAG, "command message is null");
            return null;
        }
        if (!TextUtils.equals(command.getName(), ADD_MO_COMMAND)) {
            Log.e(TAG, "the response is not for addMO command");
            return null;
        }
        if (!(command.getValue() instanceof SoapPrimitive)) {
            Log.e(TAG, "the addMO element is not valid format");
            return null;
        }
        SoapPrimitive soapObject = (SoapPrimitive) command.getValue();
        if (!soapObject.hasAttribute(ATTRIBUTE_MANAGEMENT_TREE_URI)) {
            Log.e(TAG, "managementTreeURI Attribute is missing");
            return null;
        }
        if (!soapObject.hasAttribute("moURN")) {
            Log.e(TAG, "moURN Attribute is missing");
            return null;
        }
        if (soapObject.getValue() == null) {
            Log.e(TAG, "PPSMO Tree is missing");
            return null;
        }
        return new PpsMoData((String) soapObject.getAttributeSafelyAsString(ATTRIBUTE_MANAGEMENT_TREE_URI), (String) soapObject.getAttributeSafelyAsString("moURN"), soapObject.getValue().toString());
    }

    public String getPpsMoTree() {
        return this.mPpsMoTree;
    }

    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (thatObject == null || !(thatObject instanceof PpsMoData)) {
            return false;
        }
        PpsMoData ppsMoData = (PpsMoData) thatObject;
        if (TextUtils.equals(this.mBaseUri, ppsMoData.mBaseUri) && TextUtils.equals(this.mUrn, ppsMoData.mUrn) && TextUtils.equals(this.mPpsMoTree, ppsMoData.mPpsMoTree)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.mBaseUri, this.mUrn, this.mPpsMoTree);
    }

    public String toString() {
        return "PpsMoData{Base URI: " + this.mBaseUri + ", MOURN: " + this.mUrn + ", PPS MO: " + this.mPpsMoTree + "}";
    }
}
