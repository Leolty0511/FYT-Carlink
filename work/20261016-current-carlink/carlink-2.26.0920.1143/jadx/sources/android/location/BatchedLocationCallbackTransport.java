package android.location;

import android.content.Context;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class BatchedLocationCallbackTransport extends LocalListenerHelper<BatchedLocationCallback> {
    private final IBatchedLocationCallback mCallbackTransport;
    private final ILocationManager mLocationManager;

    public class CallbackTransport extends IBatchedLocationCallback.Stub {
        private CallbackTransport() {
        }

        @Override // android.location.IBatchedLocationCallback
        public void onLocationBatch(final List<Location> list) {
            BatchedLocationCallbackTransport.this.foreach(new LocalListenerHelper.ListenerOperation<BatchedLocationCallback>() { // from class: android.location.BatchedLocationCallbackTransport.CallbackTransport.1
                @Override // android.location.LocalListenerHelper.ListenerOperation
                public void execute(BatchedLocationCallback batchedLocationCallback) {
                    batchedLocationCallback.onLocationBatch(list);
                }
            });
        }
    }

    public BatchedLocationCallbackTransport(Context context, ILocationManager iLocationManager) {
        super(context, "BatchedLocationCallbackTransport");
        this.mCallbackTransport = new CallbackTransport();
        this.mLocationManager = iLocationManager;
    }

    @Override // android.location.LocalListenerHelper
    public boolean registerWithServer() {
        return this.mLocationManager.addGnssBatchingCallback(this.mCallbackTransport, getContext().getPackageName());
    }

    @Override // android.location.LocalListenerHelper
    public void unregisterFromServer() {
        this.mLocationManager.removeGnssBatchingCallback();
    }
}
