package android.location;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
class GnssNavigationMessageCallbackTransport extends LocalListenerHelper<GnssNavigationMessage.Callback> {
    private final IGnssNavigationMessageListener mListenerTransport;
    private final ILocationManager mLocationManager;

    public class ListenerTransport extends IGnssNavigationMessageListener.Stub {
        private ListenerTransport() {
        }

        @Override // android.location.IGnssNavigationMessageListener
        public void onGnssNavigationMessageReceived(final GnssNavigationMessage gnssNavigationMessage) {
            GnssNavigationMessageCallbackTransport.this.foreach(new LocalListenerHelper.ListenerOperation<GnssNavigationMessage.Callback>() { // from class: android.location.GnssNavigationMessageCallbackTransport.ListenerTransport.1
                @Override // android.location.LocalListenerHelper.ListenerOperation
                public void execute(GnssNavigationMessage.Callback callback) {
                    callback.onGnssNavigationMessageReceived(gnssNavigationMessage);
                }
            });
        }

        @Override // android.location.IGnssNavigationMessageListener
        public void onStatusChanged(final int i2) {
            GnssNavigationMessageCallbackTransport.this.foreach(new LocalListenerHelper.ListenerOperation<GnssNavigationMessage.Callback>() { // from class: android.location.GnssNavigationMessageCallbackTransport.ListenerTransport.2
                @Override // android.location.LocalListenerHelper.ListenerOperation
                public void execute(GnssNavigationMessage.Callback callback) {
                    callback.onStatusChanged(i2);
                }
            });
        }
    }

    public GnssNavigationMessageCallbackTransport(Context context, ILocationManager iLocationManager) {
        super(context, "GnssNavigationMessageCallbackTransport");
        this.mListenerTransport = new ListenerTransport();
        this.mLocationManager = iLocationManager;
    }

    @Override // android.location.LocalListenerHelper
    public boolean registerWithServer() {
        return this.mLocationManager.addGnssNavigationMessageListener(this.mListenerTransport, getContext().getPackageName());
    }

    @Override // android.location.LocalListenerHelper
    public void unregisterFromServer() {
        this.mLocationManager.removeGnssNavigationMessageListener(this.mListenerTransport);
    }
}
