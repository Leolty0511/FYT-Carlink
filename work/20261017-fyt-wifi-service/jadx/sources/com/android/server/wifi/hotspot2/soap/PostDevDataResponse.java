package com.android.server.wifi.hotspot2.soap;

import android.util.Log;
import com.android.server.wifi.hotspot2.soap.command.SppCommand;
import java.util.Objects;
import org.ksoap2.serialization.PropertyInfo;
import org.ksoap2.serialization.SoapObject;

/* JADX INFO: loaded from: classes.dex */
public class PostDevDataResponse extends SppResponseMessage {
    private static final int MAX_COMMAND_COUNT = 1;
    private static final String TAG = "PasspointPostDevDataResponse";
    private final SppCommand mSppCommand;

    private PostDevDataResponse(SoapObject response) throws IllegalArgumentException {
        super(response, 0);
        if (getStatus() == 6) {
            this.mSppCommand = null;
            return;
        }
        PropertyInfo propertyInfo = new PropertyInfo();
        response.getPropertyInfo(0, propertyInfo);
        this.mSppCommand = SppCommand.createInstance(propertyInfo);
    }

    public static PostDevDataResponse createInstance(SoapObject response) {
        if (response.getPropertyCount() != 1) {
            Log.e(TAG, "max command count exceeds: " + response.getPropertyCount());
            return null;
        }
        try {
            PostDevDataResponse postDevDataResponse = new PostDevDataResponse(response);
            return postDevDataResponse;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "fails to create an Instance: " + e);
            return null;
        }
    }

    public SppCommand getSppCommand() {
        return this.mSppCommand;
    }

    @Override // com.android.server.wifi.hotspot2.soap.SppResponseMessage
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.mSppCommand);
    }

    @Override // com.android.server.wifi.hotspot2.soap.SppResponseMessage
    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (!(thatObject instanceof PostDevDataResponse) || !super.equals(thatObject)) {
            return false;
        }
        PostDevDataResponse that = (PostDevDataResponse) thatObject;
        return Objects.equals(this.mSppCommand, that.getSppCommand());
    }

    @Override // com.android.server.wifi.hotspot2.soap.SppResponseMessage
    public String toString() {
        return super.toString() + ", commands " + this.mSppCommand;
    }
}
