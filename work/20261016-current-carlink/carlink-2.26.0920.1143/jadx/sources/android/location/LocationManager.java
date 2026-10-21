package android.location;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
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
    private final BatchedLocationCallbackTransport mBatchedLocationCallbackTransport;
    private final Context mContext;
    private final GnssMeasurementCallbackTransport mGnssMeasurementCallbackTransport;
    private final GnssNavigationMessageCallbackTransport mGnssNavigationMessageCallbackTransport;
    private volatile GnssStatus mGnssStatus;
    private final ILocationManager mService;
    private int mTimeToFirstFix;
    private final HashMap<GpsStatus.Listener, GnssStatusListenerTransport> mGpsStatusListeners = new HashMap<>();
    private final HashMap<GpsStatus.NmeaListener, GnssStatusListenerTransport> mGpsNmeaListeners = new HashMap<>();
    private final HashMap<GnssStatus.Callback, GnssStatusListenerTransport> mGnssStatusListeners = new HashMap<>();
    private final HashMap<OnNmeaMessageListener, GnssStatusListenerTransport> mGnssNmeaListeners = new HashMap<>();
    private HashMap<LocationListener, ListenerTransport> mListeners = new HashMap<>();

    public class GnssStatusListenerTransport extends IGnssStatusListener.Stub {
        private static final int NMEA_RECEIVED = 1000;
        private final GnssStatus.Callback mGnssCallback;
        private final Handler mGnssHandler;
        private final OnNmeaMessageListener mGnssNmeaListener;
        private final GpsStatus.Listener mGpsListener;
        private final GpsStatus.NmeaListener mGpsNmeaListener;
        private final ArrayList<Nmea> mNmeaBuffer;

        public class GnssHandler extends Handler {
            public GnssHandler(Handler handler) {
                super(handler != null ? handler.getLooper() : Looper.myLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    GnssStatusListenerTransport.this.mGnssCallback.onStarted();
                    return;
                }
                if (i2 == 2) {
                    GnssStatusListenerTransport.this.mGnssCallback.onStopped();
                    return;
                }
                if (i2 == 3) {
                    GnssStatusListenerTransport.this.mGnssCallback.onFirstFix(LocationManager.this.mTimeToFirstFix);
                    return;
                }
                if (i2 == 4) {
                    GnssStatusListenerTransport.this.mGnssCallback.onSatelliteStatusChanged(LocationManager.this.mGnssStatus);
                    return;
                }
                if (i2 != 1000) {
                    return;
                }
                synchronized (GnssStatusListenerTransport.this.mNmeaBuffer) {
                    int size = GnssStatusListenerTransport.this.mNmeaBuffer.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        Nmea nmea = (Nmea) GnssStatusListenerTransport.this.mNmeaBuffer.get(i3);
                        GnssStatusListenerTransport.this.mGnssNmeaListener.onNmeaMessage(nmea.mNmea, nmea.mTimestamp);
                    }
                    GnssStatusListenerTransport.this.mNmeaBuffer.clear();
                }
            }
        }

        public class Nmea {
            String mNmea;
            long mTimestamp;

            public Nmea(long j2, String str) {
                this.mTimestamp = j2;
                this.mNmea = str;
            }
        }

        public GnssStatusListenerTransport(LocationManager locationManager, GpsStatus.Listener listener) {
            this(listener, (Handler) null);
        }

        @Override // android.location.IGnssStatusListener
        public void onFirstFix(int i2) {
            if (this.mGnssCallback != null) {
                LocationManager.this.mTimeToFirstFix = i2;
                Message messageObtain = Message.obtain();
                messageObtain.what = 3;
                this.mGnssHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGnssStatusListener
        public void onGnssStarted() {
            if (this.mGnssCallback != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                this.mGnssHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGnssStatusListener
        public void onGnssStopped() {
            if (this.mGnssCallback != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 2;
                this.mGnssHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGnssStatusListener
        public void onNmeaReceived(long j2, String str) {
            if (this.mGnssNmeaListener != null) {
                synchronized (this.mNmeaBuffer) {
                    this.mNmeaBuffer.add(new Nmea(j2, str));
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 1000;
                this.mGnssHandler.removeMessages(1000);
                this.mGnssHandler.sendMessage(messageObtain);
            }
        }

        @Override // android.location.IGnssStatusListener
        public void onSvStatusChanged(int i2, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
            if (this.mGnssCallback != null) {
                LocationManager.this.mGnssStatus = new GnssStatus(i2, iArr, fArr, fArr2, fArr3, fArr4);
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                this.mGnssHandler.removeMessages(4);
                this.mGnssHandler.sendMessage(messageObtain);
            }
        }

        public GnssStatusListenerTransport(GpsStatus.Listener listener, Handler handler) {
            this.mGpsListener = listener;
            this.mGnssHandler = new GnssHandler(handler);
            this.mGpsNmeaListener = null;
            this.mNmeaBuffer = null;
            this.mGnssCallback = listener != null ? new GnssStatus.Callback() { // from class: android.location.LocationManager.GnssStatusListenerTransport.1
                @Override // android.location.GnssStatus.Callback
                public void onFirstFix(int i2) {
                    GnssStatusListenerTransport.this.mGpsListener.onGpsStatusChanged(3);
                }

                @Override // android.location.GnssStatus.Callback
                public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
                    GnssStatusListenerTransport.this.mGpsListener.onGpsStatusChanged(4);
                }

                @Override // android.location.GnssStatus.Callback
                public void onStarted() {
                    GnssStatusListenerTransport.this.mGpsListener.onGpsStatusChanged(1);
                }

                @Override // android.location.GnssStatus.Callback
                public void onStopped() {
                    GnssStatusListenerTransport.this.mGpsListener.onGpsStatusChanged(2);
                }
            } : null;
            this.mGnssNmeaListener = null;
        }

        public GnssStatusListenerTransport(LocationManager locationManager, GpsStatus.NmeaListener nmeaListener) {
            this(nmeaListener, (Handler) null);
        }

        public GnssStatusListenerTransport(GpsStatus.NmeaListener nmeaListener, Handler handler) {
            this.mGpsListener = null;
            this.mGnssHandler = new GnssHandler(handler);
            this.mGpsNmeaListener = nmeaListener;
            this.mNmeaBuffer = new ArrayList<>();
            this.mGnssCallback = null;
            this.mGnssNmeaListener = nmeaListener != null ? new OnNmeaMessageListener() { // from class: android.location.LocationManager.GnssStatusListenerTransport.2
                @Override // android.location.OnNmeaMessageListener
                public void onNmeaMessage(String str, long j2) {
                    GnssStatusListenerTransport.this.mGpsNmeaListener.onNmeaReceived(j2, str);
                }
            } : null;
        }

        public GnssStatusListenerTransport(LocationManager locationManager, GnssStatus.Callback callback) {
            this(callback, (Handler) null);
        }

        public GnssStatusListenerTransport(GnssStatus.Callback callback, Handler handler) {
            this.mGnssCallback = callback;
            this.mGnssHandler = new GnssHandler(handler);
            this.mGnssNmeaListener = null;
            this.mNmeaBuffer = null;
            this.mGpsListener = null;
            this.mGpsNmeaListener = null;
        }

        public GnssStatusListenerTransport(LocationManager locationManager, OnNmeaMessageListener onNmeaMessageListener) {
            this(onNmeaMessageListener, (Handler) null);
        }

        public GnssStatusListenerTransport(OnNmeaMessageListener onNmeaMessageListener, Handler handler) {
            this.mGnssCallback = null;
            this.mGnssHandler = new GnssHandler(handler);
            this.mGnssNmeaListener = onNmeaMessageListener;
            this.mGpsListener = null;
            this.mGpsNmeaListener = null;
            this.mNmeaBuffer = new ArrayList<>();
        }
    }

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
                throw e2.rethrowFromSystemServer();
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
        this.mGnssMeasurementCallbackTransport = new GnssMeasurementCallbackTransport(context, iLocationManager);
        this.mGnssNavigationMessageCallbackTransport = new GnssNavigationMessageCallbackTransport(context, iLocationManager);
        this.mBatchedLocationCallbackTransport = new BatchedLocationCallbackTransport(context, iLocationManager);
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
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("pending intent must be targeted to package");
        if (this.mContext.getApplicationInfo().targetSdkVersion > 16) {
            throw illegalArgumentException;
        }
        Log.w(TAG, illegalArgumentException);
    }

    private static void checkProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException(c.j("invalid provider: ", str));
        }
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
            throw e2.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public boolean addGpsMeasurementListener(GpsMeasurementsEvent.Listener listener) {
        return false;
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public boolean addGpsNavigationMessageListener(GpsNavigationMessageEvent.Listener listener) {
        return false;
    }

    @Deprecated
    public boolean addGpsStatusListener(GpsStatus.Listener listener) {
        if (this.mGpsStatusListeners.get(listener) != null) {
            return true;
        }
        try {
            GnssStatusListenerTransport gnssStatusListenerTransport = new GnssStatusListenerTransport(this, listener);
            boolean zRegisterGnssStatusCallback = this.mService.registerGnssStatusCallback(gnssStatusListenerTransport, this.mContext.getPackageName());
            if (zRegisterGnssStatusCallback) {
                this.mGpsStatusListeners.put(listener, gnssStatusListenerTransport);
            }
            return zRegisterGnssStatusCallback;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean addNmeaListener(GpsStatus.NmeaListener nmeaListener) {
        if (this.mGpsNmeaListeners.get(nmeaListener) != null) {
            return true;
        }
        try {
            GnssStatusListenerTransport gnssStatusListenerTransport = new GnssStatusListenerTransport(this, nmeaListener);
            boolean zRegisterGnssStatusCallback = this.mService.registerGnssStatusCallback(gnssStatusListenerTransport, this.mContext.getPackageName());
            if (zRegisterGnssStatusCallback) {
                this.mGpsNmeaListeners.put(nmeaListener, gnssStatusListenerTransport);
            }
            return zRegisterGnssStatusCallback;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void addProximityAlert(double d2, double d3, float f2, long j2, PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        if (j2 < 0) {
            j2 = Long.MAX_VALUE;
        }
        Geofence geofenceCreateCircle = Geofence.createCircle(d2, d3, f2);
        try {
            this.mService.requestGeofence(new LocationRequest().setExpireIn(j2), geofenceCreateCircle, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void addTestProvider(String str, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3) {
        ProviderProperties providerProperties = new ProviderProperties(z2, z3, z4, z5, z6, z7, z8, i2, i3);
        if (str.matches(LocationProvider.BAD_CHARS_REGEX)) {
            throw new IllegalArgumentException("provider name contains illegal character: ".concat(str));
        }
        try {
            this.mService.addTestProvider(str, providerProperties, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void clearTestProviderEnabled(String str) {
        try {
            this.mService.clearTestProviderEnabled(str, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void clearTestProviderLocation(String str) {
        try {
            this.mService.clearTestProviderLocation(str, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void clearTestProviderStatus(String str) {
        try {
            this.mService.clearTestProviderStatus(str, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void flushGnssBatch() {
        try {
            this.mService.flushGnssBatch(this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<String> getAllProviders() {
        try {
            return this.mService.getAllProviders();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getBestProvider(Criteria criteria, boolean z2) {
        checkCriteria(criteria);
        try {
            return this.mService.getBestProvider(criteria, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getGnssBatchSize() {
        try {
            return this.mService.getGnssBatchSize(this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getGnssYearOfHardware() {
        try {
            return this.mService.getGnssYearOfHardware();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public GpsStatus getGpsStatus(GpsStatus gpsStatus) {
        if (gpsStatus == null) {
            gpsStatus = new GpsStatus();
        }
        if (this.mGnssStatus != null) {
            gpsStatus.setStatus(this.mGnssStatus, this.mTimeToFirstFix);
        }
        return gpsStatus;
    }

    public Location getLastKnownLocation(String str) {
        checkProvider(str);
        String packageName = this.mContext.getPackageName();
        try {
            return this.mService.getLastLocation(LocationRequest.createFromDeprecatedProvider(str, 0L, 0.0f, true), packageName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Location getLastLocation() {
        try {
            return this.mService.getLastLocation(null, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<String> getProviders(boolean z2) {
        try {
            return this.mService.getProviders(null, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isProviderEnabled(String str) {
        checkProvider(str);
        try {
            return this.mService.isProviderEnabled(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean registerGnssBatchedLocationCallback(long j2, boolean z2, BatchedLocationCallback batchedLocationCallback, Handler handler) {
        this.mBatchedLocationCallbackTransport.add(batchedLocationCallback, handler);
        try {
            return this.mService.startGnssBatch(j2, z2, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean registerGnssMeasurementsCallback(GnssMeasurementsEvent.Callback callback) {
        return registerGnssMeasurementsCallback(callback, null);
    }

    public boolean registerGnssNavigationMessageCallback(GnssNavigationMessage.Callback callback) {
        return registerGnssNavigationMessageCallback(callback, null);
    }

    public boolean registerGnssStatusCallback(GnssStatus.Callback callback) {
        return registerGnssStatusCallback(callback, null);
    }

    public void removeAllGeofences(PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        try {
            this.mService.removeGeofence(null, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeGeofence(Geofence geofence, PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        checkGeofence(geofence);
        try {
            this.mService.removeGeofence(geofence, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void removeGpsMeasurementListener(GpsMeasurementsEvent.Listener listener) {
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void removeGpsNavigationMessageListener(GpsNavigationMessageEvent.Listener listener) {
    }

    @Deprecated
    public void removeGpsStatusListener(GpsStatus.Listener listener) {
        try {
            GnssStatusListenerTransport gnssStatusListenerTransportRemove = this.mGpsStatusListeners.remove(listener);
            if (gnssStatusListenerTransportRemove != null) {
                this.mService.unregisterGnssStatusCallback(gnssStatusListenerTransportRemove);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void removeNmeaListener(GpsStatus.NmeaListener nmeaListener) {
        try {
            GnssStatusListenerTransport gnssStatusListenerTransportRemove = this.mGpsNmeaListeners.remove(nmeaListener);
            if (gnssStatusListenerTransportRemove != null) {
                this.mService.unregisterGnssStatusCallback(gnssStatusListenerTransportRemove);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeProximityAlert(PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        try {
            this.mService.removeGeofence(null, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeTestProvider(String str) {
        try {
            this.mService.removeTestProvider(str, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
            throw e2.rethrowFromSystemServer();
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
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean sendNiResponse(int i2, int i3) {
        try {
            return this.mService.sendNiResponse(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setTestProviderEnabled(String str, boolean z2) {
        try {
            this.mService.setTestProviderEnabled(str, z2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
            this.mService.setTestProviderLocation(str, location, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setTestProviderStatus(String str, int i2, Bundle bundle, long j2) {
        try {
            this.mService.setTestProviderStatus(str, i2, bundle, j2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean unregisterGnssBatchedLocationCallback(BatchedLocationCallback batchedLocationCallback) {
        this.mBatchedLocationCallbackTransport.remove(batchedLocationCallback);
        try {
            return this.mService.stopGnssBatch();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterGnssMeasurementsCallback(GnssMeasurementsEvent.Callback callback) {
        this.mGnssMeasurementCallbackTransport.remove(callback);
    }

    public void unregisterGnssNavigationMessageCallback(GnssNavigationMessage.Callback callback) {
        this.mGnssNavigationMessageCallbackTransport.remove(callback);
    }

    public void unregisterGnssStatusCallback(GnssStatus.Callback callback) {
        try {
            GnssStatusListenerTransport gnssStatusListenerTransportRemove = this.mGnssStatusListeners.remove(callback);
            if (gnssStatusListenerTransportRemove != null) {
                this.mService.unregisterGnssStatusCallback(gnssStatusListenerTransportRemove);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean registerGnssMeasurementsCallback(GnssMeasurementsEvent.Callback callback, Handler handler) {
        return this.mGnssMeasurementCallbackTransport.add(callback, handler);
    }

    public boolean registerGnssNavigationMessageCallback(GnssNavigationMessage.Callback callback, Handler handler) {
        return this.mGnssNavigationMessageCallbackTransport.add(callback, handler);
    }

    public boolean registerGnssStatusCallback(GnssStatus.Callback callback, Handler handler) {
        if (this.mGnssStatusListeners.get(callback) != null) {
            return true;
        }
        try {
            GnssStatusListenerTransport gnssStatusListenerTransport = new GnssStatusListenerTransport(callback, handler);
            boolean zRegisterGnssStatusCallback = this.mService.registerGnssStatusCallback(gnssStatusListenerTransport, this.mContext.getPackageName());
            if (zRegisterGnssStatusCallback) {
                this.mGnssStatusListeners.put(callback, gnssStatusListenerTransport);
            }
            return zRegisterGnssStatusCallback;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<String> getProviders(Criteria criteria, boolean z2) {
        checkCriteria(criteria);
        try {
            return this.mService.getProviders(criteria, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeNmeaListener(OnNmeaMessageListener onNmeaMessageListener) {
        try {
            GnssStatusListenerTransport gnssStatusListenerTransportRemove = this.mGnssNmeaListeners.remove(onNmeaMessageListener);
            if (gnssStatusListenerTransportRemove != null) {
                this.mService.unregisterGnssStatusCallback(gnssStatusListenerTransportRemove);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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

    public boolean addNmeaListener(OnNmeaMessageListener onNmeaMessageListener) {
        return addNmeaListener(onNmeaMessageListener, null);
    }

    public boolean addNmeaListener(OnNmeaMessageListener onNmeaMessageListener, Handler handler) {
        if (this.mGpsNmeaListeners.get(onNmeaMessageListener) != null) {
            return true;
        }
        try {
            GnssStatusListenerTransport gnssStatusListenerTransport = new GnssStatusListenerTransport(onNmeaMessageListener, handler);
            boolean zRegisterGnssStatusCallback = this.mService.registerGnssStatusCallback(gnssStatusListenerTransport, this.mContext.getPackageName());
            if (zRegisterGnssStatusCallback) {
                this.mGnssNmeaListeners.put(onNmeaMessageListener, gnssStatusListenerTransport);
            }
            return zRegisterGnssStatusCallback;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeUpdates(PendingIntent pendingIntent) {
        checkPendingIntent(pendingIntent);
        try {
            this.mService.removeUpdates(null, pendingIntent, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
            throw e2.rethrowFromSystemServer();
        } catch (IllegalArgumentException e3) {
            Log.e(TAG, "IllegalArgumentException", e3);
        }
    }
}
