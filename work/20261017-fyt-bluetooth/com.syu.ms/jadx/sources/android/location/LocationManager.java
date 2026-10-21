package android.location;

import android.app.PendingIntent;
import android.content.Context;
import android.net.LinkQualityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.location.ProviderProperties;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LocationManager {
    public static final String EXTRA_GPS_ENABLED = "enabled";
    public static final String FUSED_PROVIDER = "fused";
    public static final String GPS_ENABLED_CHANGE_ACTION = "android.location.GPS_ENABLED_CHANGE";
    public static final String GPS_FIX_CHANGE_ACTION = "android.location.GPS_FIX_CHANGE";
    public static final String GPS_PROVIDER = "gps";
    public static final String HIGH_POWER_REQUEST_CHANGE_ACTION = "android.location.HIGH_POWER_REQUEST_CHANGE";
    public static final String KEY_LOCATION_CHANGED = "location";
    public static final String KEY_PROVIDER_ENABLED = "providerEnabled";
    public static final String KEY_PROXIMITY_ENTERING = "entering";
    public static final String KEY_STATUS_CHANGED = "status";
    public static final String MODE_CHANGED_ACTION = "android.location.MODE_CHANGED";
    public static final String NETWORK_PROVIDER = "network";
    public static final String PASSIVE_PROVIDER = "passive";
    public static final String PROVIDERS_CHANGED_ACTION = "android.location.PROVIDERS_CHANGED";
    private static final String TAG = "LocationManager";
    private final Context mContext;
    private final ILocationManager mService;
    private final HashMap<GpsStatus.Listener, GpsStatusListenerTransport> mGpsStatusListeners = new HashMap<>();
    private final HashMap<GpsStatus.NmeaListener, GpsStatusListenerTransport> mNmeaListeners = new HashMap<>();
    private final GpsStatus mGpsStatus = new GpsStatus();
    private HashMap<LocationListener, ListenerTransport> mListeners = new HashMap<>();

    public class ListenerTransport extends ILocationListener.Stub {
        private static final int TYPE_LOCATION_CHANGED = 1;
        private static final int TYPE_PROVIDER_DISABLED = 4;
        private static final int TYPE_PROVIDER_ENABLED = 3;
        private static final int TYPE_STATUS_CHANGED = 2;
        private LocationListener mListener;
        private final Handler mListenerHandler;

        public ListenerTransport(LocationListener locationListener, Looper looper) {
            this.mListener = locationListener;
            if (looper == null) {
                this.mListenerHandler = new Handler() { // from class: android.location.LocationManager.ListenerTransport.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        ListenerTransport.this._handleMessage(message);
                    }
                };
            } else {
                this.mListenerHandler = new Handler(looper) { // from class: android.location.LocationManager.ListenerTransport.2
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        ListenerTransport.this._handleMessage(message);
                    }
                };
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void _handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                this.mListener.onLocationChanged(new Location((Location) message.obj));
            } else if (i2 == 2) {
                Bundle bundle = (Bundle) message.obj;
                this.mListener.onStatusChanged(bundle.getString("provider"), bundle.getInt("status"), bundle.getBundle("extras"));
            } else if (i2 == 3) {
                this.mListener.onProviderEnabled((String) message.obj);
            } else if (i2 == 4) {
                this.mListener.onProviderDisabled((String) message.obj);
            }
            try {
                LocationManager.this.mService.locationCallbackFinished(this);
            } catch (RemoteException e2) {
                Log.e(LocationManager.TAG, "locationCallbackFinished: RemoteException", e2);
            }
        }

        @Override // android.location.ILocationListener
        public void onLocationChanged(Location location) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = location;
            this.mListenerHandler.sendMessage(messageObtain);
        }

        @Override // android.location.ILocationListener
        public void onProviderDisabled(String str) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 4;
            messageObtain.obj = str;
            this.mListenerHandler.sendMessage(messageObtain);
        }

        @Override // android.location.ILocationListener
        public void onProviderEnabled(String str) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            messageObtain.obj = str;
            this.mListenerHandler.sendMessage(messageObtain);
        }

        @Override // android.location.ILocationListener
        public void onStatusChanged(String str, int i2, Bundle bundle) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle2 = new Bundle();
            bundle2.putString("provider", str);
            bundle2.putInt("status", i2);
            if (bundle != null) {
                bundle2.putBundle("extras", bundle);
            }
            messageObtain.obj = bundle2;
            this.mListenerHandler.sendMessage(messageObtain);
        }
    }

    public LocationManager(Context context, ILocationManager iLocationManager) {
        this.mService = iLocationManager;
        this.mContext = context;
    }

    private static void checkCriteria(Criteria criteria) {
        if (criteria != null) {
            return;
        }
        throw new IllegalArgumentException("invalid criteria: " + criteria);
    }

    private static void checkGeofence(Geofence geofence) {
        if (geofence != null) {
            return;
        }
        throw new IllegalArgumentException("invalid geofence: " + geofence);
    }

    private static void checkListener(LocationListener locationListener) {
        if (locationListener != null) {
            return;
        }
        throw new IllegalArgumentException("invalid listener: " + locationListener);
    }

    private void checkPendingIntent(PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            throw new IllegalArgumentException("invalid pending intent: " + pendingIntent);
        }
        if (pendingIntent.isTargetedToPackage()) {
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("pending intent msut be targeted to package");
        if (this.mContext.getApplicationInfo().targetSdkVersion > 16) {
            throw illegalArgumentException;
        }
        Log.w(TAG, illegalArgumentException);
    }

    private static void checkProvider(String str) {
        if (str != null) {
            return;
        }
        throw new IllegalArgumentException("invalid provider: " + str);
    }

    private LocationProvider createProvider(String str, ProviderProperties providerProperties) {
        return new LocationProvider(str, providerProperties);
    }

    private ListenerTransport wrapListener(LocationListener locationListener, Looper looper) {
        ListenerTransport listenerTransport;
        if (locationListener == null) {
            return null;
        }
        synchronized (this.mListeners) {
            listenerTransport = this.mListeners.get(locationListener);
            if (listenerTransport == null) {
                listenerTransport = new ListenerTransport(locationListener, looper);
            }
            this.mListeners.put(locationListener, listenerTransport);
        }
        return listenerTransport;
    }

    public void addGeofence(LocationRequest locationRequest, Geofence geofence, PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        checkGeofence(geofence);
        try {
            this.mService.requestGeofence(locationRequest, geofence, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public boolean addGpsStatusListener(GpsStatus.Listener listener) {
        if (this.mGpsStatusListeners.get(listener) != null) {
            return true;
        }
        try {
            GpsStatusListenerTransport gpsStatusListenerTransport = new GpsStatusListenerTransport(listener);
            boolean zAddGpsStatusListener = this.mService.addGpsStatusListener(gpsStatusListenerTransport, this.mContext.getPackageName());
            if (!zAddGpsStatusListener) {
                return zAddGpsStatusListener;
            }
            this.mGpsStatusListeners.put(listener, gpsStatusListenerTransport);
            return zAddGpsStatusListener;
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in registerGpsStatusListener: ", e2);
            return false;
        }
    }

    public boolean addNmeaListener(GpsStatus.NmeaListener nmeaListener) {
        if (this.mNmeaListeners.get(nmeaListener) != null) {
            return true;
        }
        try {
            GpsStatusListenerTransport gpsStatusListenerTransport = new GpsStatusListenerTransport(nmeaListener);
            boolean zAddGpsStatusListener = this.mService.addGpsStatusListener(gpsStatusListenerTransport, this.mContext.getPackageName());
            if (!zAddGpsStatusListener) {
                return zAddGpsStatusListener;
            }
            this.mNmeaListeners.put(nmeaListener, gpsStatusListenerTransport);
            return zAddGpsStatusListener;
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in registerGpsStatusListener: ", e2);
            return false;
        }
    }

    public void addProximityAlert(double d2, double d3, float f2, long j2, PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        if (j2 < 0) {
            j2 = LinkQualityInfo.UNKNOWN_LONG;
        }
        Geofence geofenceCreateCircle = Geofence.createCircle(d2, d3, f2);
        try {
            this.mService.requestGeofence(new LocationRequest().setExpireIn(j2), geofenceCreateCircle, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void addTestProvider(String str, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3) {
        ProviderProperties providerProperties = new ProviderProperties(z2, z3, z4, z5, z6, z7, z8, i2, i3);
        if (str.matches(LocationProvider.BAD_CHARS_REGEX)) {
            throw new IllegalArgumentException("provider name contains illegal character: " + str);
        }
        try {
            this.mService.addTestProvider(str, providerProperties);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void clearTestProviderEnabled(String str) {
        try {
            this.mService.clearTestProviderEnabled(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void clearTestProviderLocation(String str) {
        try {
            this.mService.clearTestProviderLocation(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void clearTestProviderStatus(String str) {
        try {
            this.mService.clearTestProviderStatus(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public List<String> getAllProviders() {
        try {
            return this.mService.getAllProviders();
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return null;
        }
    }

    public String getBestProvider(Criteria criteria, boolean z2) {
        checkCriteria(criteria);
        try {
            return this.mService.getBestProvider(criteria, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return null;
        }
    }

    public GpsStatus getGpsStatus(GpsStatus gpsStatus) {
        if (gpsStatus == null) {
            gpsStatus = new GpsStatus();
        }
        gpsStatus.setStatus(this.mGpsStatus);
        return gpsStatus;
    }

    public Location getLastKnownLocation(String str) {
        checkProvider(str);
        String packageName = this.mContext.getPackageName();
        try {
            return this.mService.getLastLocation(LocationRequest.createFromDeprecatedProvider(str, 0L, 0.0f, true), packageName);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return null;
        }
    }

    public Location getLastLocation() {
        try {
            return this.mService.getLastLocation(null, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return null;
        }
    }

    public LocationProvider getProvider(String str) {
        checkProvider(str);
        try {
            ProviderProperties providerProperties = this.mService.getProviderProperties(str);
            if (providerProperties == null) {
                return null;
            }
            return createProvider(str, providerProperties);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return null;
        }
    }

    public List<String> getProviders(boolean z2) {
        try {
            return this.mService.getProviders(null, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return null;
        }
    }

    public boolean isProviderEnabled(String str) {
        checkProvider(str);
        try {
            return this.mService.isProviderEnabled(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return false;
        }
    }

    public void removeAllGeofences(PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        try {
            this.mService.removeGeofence(null, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void removeGeofence(Geofence geofence, PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        checkGeofence(geofence);
        try {
            this.mService.removeGeofence(geofence, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void removeGpsStatusListener(GpsStatus.Listener listener) {
        try {
            GpsStatusListenerTransport gpsStatusListenerTransportRemove = this.mGpsStatusListeners.remove(listener);
            if (gpsStatusListenerTransportRemove != null) {
                this.mService.removeGpsStatusListener(gpsStatusListenerTransportRemove);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in unregisterGpsStatusListener: ", e2);
        }
    }

    public void removeNmeaListener(GpsStatus.NmeaListener nmeaListener) {
        try {
            GpsStatusListenerTransport gpsStatusListenerTransportRemove = this.mNmeaListeners.remove(nmeaListener);
            if (gpsStatusListenerTransportRemove != null) {
                this.mService.removeGpsStatusListener(gpsStatusListenerTransportRemove);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in unregisterGpsStatusListener: ", e2);
        }
    }

    public void removeProximityAlert(PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        try {
            this.mService.removeGeofence(null, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void removeTestProvider(String str) {
        try {
            this.mService.removeTestProvider(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void removeUpdates(LocationListener locationListener) {
        ListenerTransport listenerTransportRemove;
        checkListener(locationListener);
        String packageName = this.mContext.getPackageName();
        synchronized (this.mListeners) {
            listenerTransportRemove = this.mListeners.remove(locationListener);
        }
        if (listenerTransportRemove == null) {
            return;
        }
        try {
            this.mService.removeUpdates(listenerTransportRemove, null, packageName);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void requestLocationUpdates(String str, long j2, float f2, LocationListener locationListener) {
        checkProvider(str);
        checkListener(locationListener);
        requestLocationUpdates(LocationRequest.createFromDeprecatedProvider(str, j2, f2, false), locationListener, (Looper) null, (PendingIntent) null);
    }

    public void requestSingleUpdate(String str, LocationListener locationListener, Looper looper) {
        checkProvider(str);
        checkListener(locationListener);
        requestLocationUpdates(LocationRequest.createFromDeprecatedProvider(str, 0L, 0.0f, true), locationListener, looper, (PendingIntent) null);
    }

    public boolean sendExtraCommand(String str, String str2, Bundle bundle) {
        try {
            return this.mService.sendExtraCommand(str, str2, bundle);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in sendExtraCommand: ", e2);
            return false;
        }
    }

    public boolean sendNiResponse(int i2, int i3) {
        try {
            return this.mService.sendNiResponse(i2, i3);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in sendNiResponse: ", e2);
            return false;
        }
    }

    public void setTestProviderEnabled(String str, boolean z2) {
        try {
            this.mService.setTestProviderEnabled(str, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void setTestProviderLocation(String str, Location location) {
        if (!location.isComplete()) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Incomplete location object, missing timestamp or accuracy? " + location);
            if (this.mContext.getApplicationInfo().targetSdkVersion > 16) {
                throw illegalArgumentException;
            }
            Log.w(TAG, illegalArgumentException);
            location.makeComplete();
        }
        try {
            this.mService.setTestProviderLocation(str, location);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void setTestProviderStatus(String str, int i2, Bundle bundle, long j2) {
        try {
            this.mService.setTestProviderStatus(str, i2, bundle, j2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public List<String> getProviders(Criteria criteria, boolean z2) {
        checkCriteria(criteria);
        try {
            return this.mService.getProviders(criteria, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
            return null;
        }
    }

    public class GpsStatusListenerTransport extends IGpsStatusListener.Stub {
        private static final int NMEA_RECEIVED = 1000;
        private final Handler mGpsHandler;
        private final GpsStatus.Listener mListener;
        private ArrayList<Nmea> mNmeaBuffer;
        private final GpsStatus.NmeaListener mNmeaListener;

        public class Nmea {
            public String mNmea;
            public long mTimestamp;

            public Nmea(long j2, String str) {
                this.mTimestamp = j2;
                this.mNmea = str;
            }
        }

        public GpsStatusListenerTransport(GpsStatus.Listener listener) {
            this.mGpsHandler = new Handler() { // from class: android.location.LocationManager.GpsStatusListenerTransport.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what != 1000) {
                        synchronized (LocationManager.this.mGpsStatus) {
                            GpsStatusListenerTransport.this.mListener.onGpsStatusChanged(message.what);
                        }
                        return;
                    }
                    synchronized (GpsStatusListenerTransport.this.mNmeaBuffer) {
                        int size = GpsStatusListenerTransport.this.mNmeaBuffer.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            Nmea nmea = (Nmea) GpsStatusListenerTransport.this.mNmeaBuffer.get(i2);
                            GpsStatusListenerTransport.this.mNmeaListener.onNmeaReceived(nmea.mTimestamp, nmea.mNmea);
                        }
                        GpsStatusListenerTransport.this.mNmeaBuffer.clear();
                    }
                }
            };
            this.mListener = listener;
            this.mNmeaListener = null;
        }

        @Override // android.location.IGpsStatusListener
        public void onFirstFix(int i2) {
            if (this.mListener != null) {
                LocationManager.this.mGpsStatus.setTimeToFirstFix(i2);
                Message messageObtain = Message.obtain();
                messageObtain.what = 3;
                this.mGpsHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGpsStatusListener
        public void onGpsStarted() {
            if (this.mListener != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                this.mGpsHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGpsStatusListener
        public void onGpsStopped() {
            if (this.mListener != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 2;
                this.mGpsHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGpsStatusListener
        public void onNmeaReceived(long j2, String str) {
            if (this.mNmeaListener != null) {
                synchronized (this.mNmeaBuffer) {
                    this.mNmeaBuffer.add(new Nmea(j2, str));
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 1000;
                this.mGpsHandler.removeMessages(1000);
                this.mGpsHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGpsStatusListener
        public void onSvStatusChanged(int i2, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr2, int[] iArr3, int[] iArr4) {
            if (this.mListener != null) {
                LocationManager.this.mGpsStatus.setStatus(i2, iArr, fArr, fArr2, fArr3, iArr2, iArr3, iArr4);
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                this.mGpsHandler.removeMessages(4);
                this.mGpsHandler.sendMessage(messageObtain);
            }
        }

        public GpsStatusListenerTransport(GpsStatus.NmeaListener nmeaListener) {
            this.mGpsHandler = new Handler() { // from class: android.location.LocationManager.GpsStatusListenerTransport.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what != 1000) {
                        synchronized (LocationManager.this.mGpsStatus) {
                            GpsStatusListenerTransport.this.mListener.onGpsStatusChanged(message.what);
                        }
                        return;
                    }
                    synchronized (GpsStatusListenerTransport.this.mNmeaBuffer) {
                        int size = GpsStatusListenerTransport.this.mNmeaBuffer.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            Nmea nmea = (Nmea) GpsStatusListenerTransport.this.mNmeaBuffer.get(i2);
                            GpsStatusListenerTransport.this.mNmeaListener.onNmeaReceived(nmea.mTimestamp, nmea.mNmea);
                        }
                        GpsStatusListenerTransport.this.mNmeaBuffer.clear();
                    }
                }
            };
            this.mNmeaListener = nmeaListener;
            this.mListener = null;
            this.mNmeaBuffer = new ArrayList<>();
        }
    }

    public void requestLocationUpdates(String str, long j2, float f2, LocationListener locationListener, Looper looper) {
        checkProvider(str);
        checkListener(locationListener);
        requestLocationUpdates(LocationRequest.createFromDeprecatedProvider(str, j2, f2, false), locationListener, looper, (PendingIntent) null);
    }

    public void requestSingleUpdate(Criteria criteria, LocationListener locationListener, Looper looper) {
        checkCriteria(criteria);
        checkListener(locationListener);
        requestLocationUpdates(LocationRequest.createFromDeprecatedCriteria(criteria, 0L, 0.0f, true), locationListener, looper, (PendingIntent) null);
    }

    public void removeUpdates(PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        try {
            this.mService.removeUpdates(null, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }

    public void requestLocationUpdates(long j2, float f2, Criteria criteria, LocationListener locationListener, Looper looper) {
        checkCriteria(criteria);
        checkListener(locationListener);
        requestLocationUpdates(LocationRequest.createFromDeprecatedCriteria(criteria, j2, f2, false), locationListener, looper, (PendingIntent) null);
    }

    public void requestSingleUpdate(String str, PendingIntent pendingIntent) {
        checkProvider(str);
        checkPendingIntent(pendingIntent);
        requestLocationUpdates(LocationRequest.createFromDeprecatedProvider(str, 0L, 0.0f, true), (LocationListener) null, (Looper) null, pendingIntent);
    }

    public void requestLocationUpdates(String str, long j2, float f2, PendingIntent pendingIntent) {
        checkProvider(str);
        checkPendingIntent(pendingIntent);
        requestLocationUpdates(LocationRequest.createFromDeprecatedProvider(str, j2, f2, false), (LocationListener) null, (Looper) null, pendingIntent);
    }

    public void requestSingleUpdate(Criteria criteria, PendingIntent pendingIntent) {
        checkCriteria(criteria);
        checkPendingIntent(pendingIntent);
        requestLocationUpdates(LocationRequest.createFromDeprecatedCriteria(criteria, 0L, 0.0f, true), (LocationListener) null, (Looper) null, pendingIntent);
    }

    public void requestLocationUpdates(long j2, float f2, Criteria criteria, PendingIntent pendingIntent) {
        checkCriteria(criteria);
        checkPendingIntent(pendingIntent);
        requestLocationUpdates(LocationRequest.createFromDeprecatedCriteria(criteria, j2, f2, false), (LocationListener) null, (Looper) null, pendingIntent);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        checkListener(locationListener);
        requestLocationUpdates(locationRequest, locationListener, looper, (PendingIntent) null);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        requestLocationUpdates(locationRequest, (LocationListener) null, (Looper) null, pendingIntent);
    }

    private void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener, Looper looper, PendingIntent pendingIntent) {
        String packageName = this.mContext.getPackageName();
        try {
            this.mService.requestLocationUpdates(locationRequest, wrapListener(locationListener, looper), pendingIntent, packageName);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException", e2);
        }
    }
}
