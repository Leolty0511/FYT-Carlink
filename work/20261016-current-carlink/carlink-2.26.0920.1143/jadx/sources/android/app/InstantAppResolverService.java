package android.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.InstantAppResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Slog;
import com.android.internal.os.SomeArgs;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class InstantAppResolverService extends Service {
    private static final boolean DEBUG_EPHEMERAL = Build.IS_DEBUGGABLE;
    public static final String EXTRA_RESOLVE_INFO = "android.app.extra.RESOLVE_INFO";
    public static final String EXTRA_SEQUENCE = "android.app.extra.SEQUENCE";
    private static final String TAG = "PackageManager";
    Handler mHandler;

    public static final class InstantAppResolutionCallback {
        private final IRemoteCallback mCallback;
        private final int mSequence;

        public InstantAppResolutionCallback(int i2, IRemoteCallback iRemoteCallback) {
            this.mCallback = iRemoteCallback;
            this.mSequence = i2;
        }

        public void onInstantAppResolveInfo(List<InstantAppResolveInfo> list) {
            Bundle bundle = new Bundle();
            bundle.putParcelableList(InstantAppResolverService.EXTRA_RESOLVE_INFO, list);
            bundle.putInt(InstantAppResolverService.EXTRA_SEQUENCE, this.mSequence);
            try {
                this.mCallback.sendResult(bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public final class ServiceHandler extends Handler {
        public static final int MSG_GET_INSTANT_APP_INTENT_FILTER = 2;
        public static final int MSG_GET_INSTANT_APP_RESOLVE_INFO = 1;

        public ServiceHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                SomeArgs someArgs = (SomeArgs) message.obj;
                IRemoteCallback iRemoteCallback = (IRemoteCallback) someArgs.arg1;
                InstantAppResolverService.this._onGetInstantAppResolveInfo((int[]) someArgs.arg2, (String) someArgs.arg3, new InstantAppResolutionCallback(message.arg1, iRemoteCallback));
                return;
            }
            if (i2 != 2) {
                throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown message: ", i2));
            }
            SomeArgs someArgs2 = (SomeArgs) message.obj;
            IRemoteCallback iRemoteCallback2 = (IRemoteCallback) someArgs2.arg1;
            InstantAppResolverService.this._onGetInstantAppIntentFilter((int[]) someArgs2.arg2, (String) someArgs2.arg3, (String) someArgs2.arg4, new InstantAppResolutionCallback(-1, iRemoteCallback2));
        }
    }

    @Deprecated
    public void _onGetInstantAppIntentFilter(int[] iArr, String str, String str2, InstantAppResolutionCallback instantAppResolutionCallback) {
        if (DEBUG_EPHEMERAL) {
            StringBuilder sbV = android.accessibilityservice.c.v("[", str, "] Phase2 request; prefix: ");
            sbV.append(Arrays.toString(iArr));
            Slog.d(TAG, sbV.toString());
        }
        onGetInstantAppIntentFilter(iArr, str, instantAppResolutionCallback);
    }

    @Deprecated
    public void _onGetInstantAppResolveInfo(int[] iArr, String str, InstantAppResolutionCallback instantAppResolutionCallback) {
        if (DEBUG_EPHEMERAL) {
            StringBuilder sbV = android.accessibilityservice.c.v("[", str, "] Phase1 request; prefix: ");
            sbV.append(Arrays.toString(iArr));
            Slog.d(TAG, sbV.toString());
        }
        onGetInstantAppResolveInfo(iArr, str, instantAppResolutionCallback);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        this.mHandler = new ServiceHandler(getLooper());
    }

    public Looper getLooper() {
        return getBaseContext().getMainLooper();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new IInstantAppResolver.Stub() { // from class: android.app.InstantAppResolverService.1
            @Override // android.app.IInstantAppResolver
            public void getInstantAppIntentFilterList(int[] iArr, String str, String str2, IRemoteCallback iRemoteCallback) {
                if (InstantAppResolverService.DEBUG_EPHEMERAL) {
                    Slog.v(InstantAppResolverService.TAG, "[" + str + "] Phase2 called; posting");
                }
                SomeArgs someArgsObtain = SomeArgs.obtain();
                someArgsObtain.arg1 = iRemoteCallback;
                someArgsObtain.arg2 = iArr;
                someArgsObtain.arg3 = str;
                someArgsObtain.arg4 = str2;
                InstantAppResolverService.this.mHandler.obtainMessage(2, iRemoteCallback).sendToTarget();
            }

            @Override // android.app.IInstantAppResolver
            public void getInstantAppResolveInfoList(int[] iArr, String str, int i2, IRemoteCallback iRemoteCallback) {
                if (InstantAppResolverService.DEBUG_EPHEMERAL) {
                    Slog.v(InstantAppResolverService.TAG, "[" + str + "] Phase1 called; posting");
                }
                SomeArgs someArgsObtain = SomeArgs.obtain();
                someArgsObtain.arg1 = iRemoteCallback;
                someArgsObtain.arg2 = iArr;
                someArgsObtain.arg3 = str;
                InstantAppResolverService.this.mHandler.obtainMessage(1, i2, 0, someArgsObtain).sendToTarget();
            }
        };
    }

    public void onGetInstantAppIntentFilter(int[] iArr, String str, InstantAppResolutionCallback instantAppResolutionCallback) {
        throw new IllegalStateException("Must define");
    }

    public void onGetInstantAppResolveInfo(int[] iArr, String str, InstantAppResolutionCallback instantAppResolutionCallback) {
        throw new IllegalStateException("Must define");
    }
}
