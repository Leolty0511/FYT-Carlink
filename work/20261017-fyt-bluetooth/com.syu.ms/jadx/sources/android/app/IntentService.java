package android.app;

import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public abstract class IntentService extends Service {
    private String mName;
    private boolean mRedelivery;
    private volatile ServiceHandler mServiceHandler;
    private volatile Looper mServiceLooper;

    public final class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            IntentService.this.onHandleIntent((Intent) message.obj);
            IntentService.this.stopSelf(message.arg1);
        }
    }

    public IntentService(String str) {
        this.mName = str;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("IntentService[" + this.mName + "]");
        handlerThread.start();
        this.mServiceLooper = handlerThread.getLooper();
        this.mServiceHandler = new ServiceHandler(this.mServiceLooper);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mServiceLooper.quit();
    }

    public abstract void onHandleIntent(Intent intent);

    @Override // android.app.Service
    public void onStart(Intent intent, int i2) {
        Message messageObtainMessage = this.mServiceHandler.obtainMessage();
        messageObtainMessage.arg1 = i2;
        messageObtainMessage.obj = intent;
        this.mServiceHandler.sendMessage(messageObtainMessage);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        onStart(intent, i3);
        return this.mRedelivery ? 3 : 2;
    }

    public void setIntentRedelivery(boolean z2) {
        this.mRedelivery = z2;
    }
}
