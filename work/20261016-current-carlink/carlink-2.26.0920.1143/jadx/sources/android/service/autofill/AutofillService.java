package android.service.autofill;

import android.app.Service;
import android.content.Intent;
import android.os.CancellationSignal;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.view.autofill.AutofillManager;
import com.android.internal.os.HandlerCaller;
import com.android.internal.os.SomeArgs;

/* JADX INFO: loaded from: classes.dex */
public abstract class AutofillService extends Service {
    private static final int MSG_CONNECT = 1;
    private static final int MSG_DISCONNECT = 2;
    private static final int MSG_ON_FILL_REQUEST = 3;
    private static final int MSG_ON_SAVE_REQUEST = 4;
    public static final String SERVICE_INTERFACE = "android.service.autofill.AutofillService";
    public static final String SERVICE_META_DATA = "android.autofill";
    private static final String TAG = "AutofillService";
    private HandlerCaller mHandlerCaller;
    private final IAutoFillService mInterface = new IAutoFillService.Stub() { // from class: android.service.autofill.AutofillService.1
        @Override // android.service.autofill.IAutoFillService
        public void onConnectedStateChanged(boolean z2) {
            if (z2) {
                AutofillService.this.mHandlerCaller.obtainMessage(1).sendToTarget();
            } else {
                AutofillService.this.mHandlerCaller.obtainMessage(2).sendToTarget();
            }
        }

        @Override // android.service.autofill.IAutoFillService
        public void onFillRequest(FillRequest fillRequest, IFillCallback iFillCallback) {
            ICancellationSignal iCancellationSignalCreateTransport = CancellationSignal.createTransport();
            try {
                iFillCallback.onCancellable(iCancellationSignalCreateTransport);
            } catch (RemoteException e2) {
                e2.rethrowFromSystemServer();
            }
            AutofillService.this.mHandlerCaller.obtainMessageOOO(3, fillRequest, CancellationSignal.fromTransport(iCancellationSignalCreateTransport), iFillCallback).sendToTarget();
        }

        @Override // android.service.autofill.IAutoFillService
        public void onSaveRequest(SaveRequest saveRequest, ISaveCallback iSaveCallback) {
            AutofillService.this.mHandlerCaller.obtainMessageOO(4, saveRequest, iSaveCallback).sendToTarget();
        }
    };
    private final HandlerCaller.Callback mHandlerCallback = new a(this);

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            onConnected();
            return;
        }
        if (i2 == 2) {
            onDisconnected();
            return;
        }
        if (i2 == 3) {
            SomeArgs someArgs = (SomeArgs) message.obj;
            FillRequest fillRequest = (FillRequest) someArgs.arg1;
            CancellationSignal cancellationSignal = (CancellationSignal) someArgs.arg2;
            FillCallback fillCallback = new FillCallback((IFillCallback) someArgs.arg3, fillRequest.getId());
            someArgs.recycle();
            onFillRequest(fillRequest, cancellationSignal, fillCallback);
            return;
        }
        if (i2 != 4) {
            Log.w(TAG, "MyCallbacks received invalid message type: " + message);
        } else {
            SomeArgs someArgs2 = (SomeArgs) message.obj;
            SaveRequest saveRequest = (SaveRequest) someArgs2.arg1;
            SaveCallback saveCallback = new SaveCallback((ISaveCallback) someArgs2.arg2);
            someArgs2.recycle();
            onSaveRequest(saveRequest, saveCallback);
        }
    }

    public final FillEventHistory getFillEventHistory() {
        AutofillManager autofillManager = (AutofillManager) getSystemService(AutofillManager.class);
        if (autofillManager == null) {
            return null;
        }
        return autofillManager.getFillEventHistory();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if (SERVICE_INTERFACE.equals(intent.getAction())) {
            return this.mInterface.asBinder();
        }
        Log.w(TAG, "Tried to bind to wrong intent: " + intent);
        return null;
    }

    public void onConnected() {
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mHandlerCaller = new HandlerCaller(null, Looper.getMainLooper(), this.mHandlerCallback, true);
    }

    public void onDisconnected() {
    }

    public abstract void onFillRequest(FillRequest fillRequest, CancellationSignal cancellationSignal, FillCallback fillCallback);

    public abstract void onSaveRequest(SaveRequest saveRequest, SaveCallback saveCallback);
}
