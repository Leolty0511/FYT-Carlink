package android.location;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Geocoder {
    private static final String TAG = "Geocoder";
    private GeocoderParams mParams;
    private ILocationManager mService;

    public Geocoder(Context context, Locale locale) {
        Objects.requireNonNull(locale, "locale == null");
        this.mParams = new GeocoderParams(context, locale);
        this.mService = ILocationManager.Stub.asInterface(ServiceManager.getService("location"));
    }

    public static boolean isPresent() {
        try {
            return ILocationManager.Stub.asInterface(ServiceManager.getService("location")).geocoderIsPresent();
        } catch (RemoteException e2) {
            Log.e(TAG, "isPresent: got RemoteException", e2);
            return false;
        }
    }

    public List<Address> getFromLocation(double d2, double d3, int i2) throws IOException {
        if (d2 < -90.0d || d2 > 90.0d) {
            throw new IllegalArgumentException("latitude == " + d2);
        }
        if (d3 < -180.0d || d3 > 180.0d) {
            throw new IllegalArgumentException("longitude == " + d3);
        }
        try {
            ArrayList arrayList = new ArrayList();
            String fromLocation = this.mService.getFromLocation(d2, d3, i2, this.mParams, arrayList);
            if (fromLocation == null) {
                return arrayList;
            }
            throw new IOException(fromLocation);
        } catch (RemoteException e2) {
            Log.e(TAG, "getFromLocation: got RemoteException", e2);
            return null;
        }
    }

    public List<Address> getFromLocationName(String str, int i2) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("locationName == null");
        }
        try {
            ArrayList arrayList = new ArrayList();
            String fromLocationName = this.mService.getFromLocationName(str, 0.0d, 0.0d, 0.0d, 0.0d, i2, this.mParams, arrayList);
            if (fromLocationName == null) {
                return arrayList;
            }
            throw new IOException(fromLocationName);
        } catch (RemoteException e2) {
            Log.e(TAG, "getFromLocationName: got RemoteException", e2);
            return null;
        }
    }

    public Geocoder(Context context) {
        this(context, Locale.getDefault());
    }

    public List<Address> getFromLocationName(String str, int i2, double d2, double d3, double d4, double d5) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("locationName == null");
        }
        if (d2 < -90.0d || d2 > 90.0d) {
            throw new IllegalArgumentException("lowerLeftLatitude == " + d2);
        }
        if (d3 < -180.0d || d3 > 180.0d) {
            throw new IllegalArgumentException("lowerLeftLongitude == " + d3);
        }
        if (d4 < -90.0d || d4 > 90.0d) {
            throw new IllegalArgumentException("upperRightLatitude == " + d4);
        }
        if (d5 >= -180.0d && d5 <= 180.0d) {
            try {
                ArrayList arrayList = new ArrayList();
                String fromLocationName = this.mService.getFromLocationName(str, d2, d3, d4, d5, i2, this.mParams, arrayList);
                if (fromLocationName == null) {
                    return arrayList;
                }
                throw new IOException(fromLocationName);
            } catch (RemoteException e2) {
                Log.e(TAG, "getFromLocationName: got RemoteException", e2);
                return null;
            }
        }
        throw new IllegalArgumentException("upperRightLongitude == " + d5);
    }
}
