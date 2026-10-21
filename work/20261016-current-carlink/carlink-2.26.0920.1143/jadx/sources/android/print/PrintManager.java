package android.print;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentSender;
import android.graphics.drawable.Icon;
import android.net.b;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.ICancellationSignal;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.printservice.PrintServiceInfo;
import android.printservice.recommendation.IRecommendationsChangeListener;
import android.printservice.recommendation.RecommendationInfo;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class PrintManager {
    public static final String ACTION_PRINT_DIALOG = "android.print.PRINT_DIALOG";
    public static final int ALL_SERVICES = 3;
    public static final int APP_ID_ANY = -2;
    private static final boolean DEBUG = false;
    public static final int DISABLED_SERVICES = 2;
    public static final int ENABLED_SERVICES = 1;
    public static final String EXTRA_PRINT_DIALOG_INTENT = "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT";
    public static final String EXTRA_PRINT_DOCUMENT_ADAPTER = "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER";
    public static final String EXTRA_PRINT_JOB = "android.print.intent.extra.EXTRA_PRINT_JOB";
    private static final String LOG_TAG = "PrintManager";
    private static final int MSG_NOTIFY_PRINT_JOB_STATE_CHANGED = 1;
    public static final String PRINT_SPOOLER_PACKAGE_NAME = "com.android.printspooler";
    private final int mAppId;
    private final Context mContext;
    private final Handler mHandler;
    private Map<PrintJobStateChangeListener, PrintJobStateChangeListenerWrapper> mPrintJobStateChangeListeners;
    private Map<PrintServiceRecommendationsChangeListener, PrintServiceRecommendationsChangeListenerWrapper> mPrintServiceRecommendationsChangeListeners;
    private Map<PrintServicesChangeListener, PrintServicesChangeListenerWrapper> mPrintServicesChangeListeners;
    private final IPrintManager mService;
    private final int mUserId;

    public static final class PrintDocumentAdapterDelegate extends IPrintDocumentAdapter.Stub implements Application.ActivityLifecycleCallbacks {
        private Activity mActivity;
        private PrintDocumentAdapter mDocumentAdapter;
        private Handler mHandler;
        private final Object mLock = new Object();
        private IPrintDocumentAdapterObserver mObserver;
        private DestroyableCallback mPendingCallback;

        public interface DestroyableCallback {
            void destroy();
        }

        public final class MyHandler extends Handler {
            public static final int MSG_ON_FINISH = 4;
            public static final int MSG_ON_KILL = 5;
            public static final int MSG_ON_LAYOUT = 2;
            public static final int MSG_ON_START = 1;
            public static final int MSG_ON_WRITE = 3;

            public MyHandler(Looper looper) {
                super(looper, null, true);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    ((PrintDocumentAdapter) message.obj).onStart();
                    return;
                }
                if (i2 == 2) {
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    PrintDocumentAdapter printDocumentAdapter = (PrintDocumentAdapter) someArgs.arg1;
                    PrintAttributes printAttributes = (PrintAttributes) someArgs.arg2;
                    PrintAttributes printAttributes2 = (PrintAttributes) someArgs.arg3;
                    CancellationSignal cancellationSignal = (CancellationSignal) someArgs.arg4;
                    PrintDocumentAdapter.LayoutResultCallback layoutResultCallback = (PrintDocumentAdapter.LayoutResultCallback) someArgs.arg5;
                    Bundle bundle = (Bundle) someArgs.arg6;
                    someArgs.recycle();
                    printDocumentAdapter.onLayout(printAttributes, printAttributes2, cancellationSignal, layoutResultCallback, bundle);
                    return;
                }
                if (i2 == 3) {
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    PrintDocumentAdapter printDocumentAdapter2 = (PrintDocumentAdapter) someArgs2.arg1;
                    PageRange[] pageRangeArr = (PageRange[]) someArgs2.arg2;
                    ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) someArgs2.arg3;
                    CancellationSignal cancellationSignal2 = (CancellationSignal) someArgs2.arg4;
                    PrintDocumentAdapter.WriteResultCallback writeResultCallback = (PrintDocumentAdapter.WriteResultCallback) someArgs2.arg5;
                    someArgs2.recycle();
                    printDocumentAdapter2.onWrite(pageRangeArr, parcelFileDescriptor, cancellationSignal2, writeResultCallback);
                    return;
                }
                if (i2 != 4) {
                    if (i2 == 5) {
                        throw new RuntimeException((String) message.obj);
                    }
                    throw new IllegalArgumentException("Unknown message: " + message.what);
                }
                ((PrintDocumentAdapter) message.obj).onFinish();
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    PrintDocumentAdapterDelegate.this.destroyLocked();
                }
            }
        }

        public final class MyLayoutResultCallback extends PrintDocumentAdapter.LayoutResultCallback implements DestroyableCallback {
            private ILayoutResultCallback mCallback;
            private final int mSequence;

            public MyLayoutResultCallback(ILayoutResultCallback iLayoutResultCallback, int i2) {
                this.mCallback = iLayoutResultCallback;
                this.mSequence = i2;
            }

            @Override // android.print.PrintManager.PrintDocumentAdapterDelegate.DestroyableCallback
            public void destroy() {
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    this.mCallback = null;
                    PrintDocumentAdapterDelegate.this.mPendingCallback = null;
                }
            }

            @Override // android.print.PrintDocumentAdapter.LayoutResultCallback
            public void onLayoutCancelled() {
                ILayoutResultCallback iLayoutResultCallback;
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    iLayoutResultCallback = this.mCallback;
                }
                if (iLayoutResultCallback == null) {
                    Log.e(PrintManager.LOG_TAG, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?");
                    return;
                }
                try {
                    try {
                        iLayoutResultCallback.onLayoutCanceled(this.mSequence);
                    } catch (RemoteException e2) {
                        Log.e(PrintManager.LOG_TAG, "Error calling onLayoutFailed", e2);
                    }
                } finally {
                    destroy();
                }
            }

            @Override // android.print.PrintDocumentAdapter.LayoutResultCallback
            public void onLayoutFailed(CharSequence charSequence) {
                ILayoutResultCallback iLayoutResultCallback;
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    iLayoutResultCallback = this.mCallback;
                }
                if (iLayoutResultCallback == null) {
                    Log.e(PrintManager.LOG_TAG, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?");
                    return;
                }
                try {
                    try {
                        iLayoutResultCallback.onLayoutFailed(charSequence, this.mSequence);
                    } catch (RemoteException e2) {
                        Log.e(PrintManager.LOG_TAG, "Error calling onLayoutFailed", e2);
                    }
                } finally {
                    destroy();
                }
            }

            @Override // android.print.PrintDocumentAdapter.LayoutResultCallback
            public void onLayoutFinished(PrintDocumentInfo printDocumentInfo, boolean z2) {
                ILayoutResultCallback iLayoutResultCallback;
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    iLayoutResultCallback = this.mCallback;
                }
                if (iLayoutResultCallback == null) {
                    Log.e(PrintManager.LOG_TAG, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?");
                    return;
                }
                try {
                    if (printDocumentInfo == null) {
                        throw new NullPointerException("document info cannot be null");
                    }
                    iLayoutResultCallback.onLayoutFinished(printDocumentInfo, z2, this.mSequence);
                } catch (RemoteException e2) {
                    Log.e(PrintManager.LOG_TAG, "Error calling onLayoutFinished", e2);
                } finally {
                    destroy();
                }
            }
        }

        public final class MyWriteResultCallback extends PrintDocumentAdapter.WriteResultCallback implements DestroyableCallback {
            private IWriteResultCallback mCallback;
            private ParcelFileDescriptor mFd;
            private final int mSequence;

            public MyWriteResultCallback(IWriteResultCallback iWriteResultCallback, ParcelFileDescriptor parcelFileDescriptor, int i2) {
                this.mFd = parcelFileDescriptor;
                this.mSequence = i2;
                this.mCallback = iWriteResultCallback;
            }

            @Override // android.print.PrintManager.PrintDocumentAdapterDelegate.DestroyableCallback
            public void destroy() {
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    IoUtils.closeQuietly(this.mFd);
                    this.mCallback = null;
                    this.mFd = null;
                    PrintDocumentAdapterDelegate.this.mPendingCallback = null;
                }
            }

            @Override // android.print.PrintDocumentAdapter.WriteResultCallback
            public void onWriteCancelled() {
                IWriteResultCallback iWriteResultCallback;
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    iWriteResultCallback = this.mCallback;
                }
                if (iWriteResultCallback == null) {
                    Log.e(PrintManager.LOG_TAG, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?");
                    return;
                }
                try {
                    try {
                        iWriteResultCallback.onWriteCanceled(this.mSequence);
                    } catch (RemoteException e2) {
                        Log.e(PrintManager.LOG_TAG, "Error calling onWriteCanceled", e2);
                    }
                } finally {
                    destroy();
                }
            }

            @Override // android.print.PrintDocumentAdapter.WriteResultCallback
            public void onWriteFailed(CharSequence charSequence) {
                IWriteResultCallback iWriteResultCallback;
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    iWriteResultCallback = this.mCallback;
                }
                if (iWriteResultCallback == null) {
                    Log.e(PrintManager.LOG_TAG, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?");
                    return;
                }
                try {
                    try {
                        iWriteResultCallback.onWriteFailed(charSequence, this.mSequence);
                    } catch (RemoteException e2) {
                        Log.e(PrintManager.LOG_TAG, "Error calling onWriteFailed", e2);
                    }
                } finally {
                    destroy();
                }
            }

            @Override // android.print.PrintDocumentAdapter.WriteResultCallback
            public void onWriteFinished(PageRange[] pageRangeArr) {
                IWriteResultCallback iWriteResultCallback;
                synchronized (PrintDocumentAdapterDelegate.this.mLock) {
                    iWriteResultCallback = this.mCallback;
                }
                if (iWriteResultCallback == null) {
                    Log.e(PrintManager.LOG_TAG, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?");
                    return;
                }
                try {
                    if (pageRangeArr == null) {
                        throw new IllegalArgumentException("pages cannot be null");
                    }
                    if (pageRangeArr.length == 0) {
                        throw new IllegalArgumentException("pages cannot be empty");
                    }
                    iWriteResultCallback.onWriteFinished(pageRangeArr, this.mSequence);
                } catch (RemoteException e2) {
                    Log.e(PrintManager.LOG_TAG, "Error calling onWriteFinished", e2);
                } finally {
                    destroy();
                }
            }
        }

        public PrintDocumentAdapterDelegate(Activity activity, PrintDocumentAdapter printDocumentAdapter) {
            if (activity.isFinishing()) {
                throw new IllegalStateException("Cannot start printing for finishing activity");
            }
            this.mActivity = activity;
            this.mDocumentAdapter = printDocumentAdapter;
            this.mHandler = new MyHandler(this.mActivity.getMainLooper());
            this.mActivity.getApplication().registerActivityLifecycleCallbacks(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroyLocked() {
            this.mActivity.getApplication().unregisterActivityLifecycleCallbacks(this);
            this.mActivity = null;
            this.mDocumentAdapter = null;
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mHandler.removeMessages(4);
            this.mHandler = null;
            this.mObserver = null;
            DestroyableCallback destroyableCallback = this.mPendingCallback;
            if (destroyableCallback != null) {
                destroyableCallback.destroy();
                this.mPendingCallback = null;
            }
        }

        private boolean isDestroyedLocked() {
            return this.mActivity == null;
        }

        @Override // android.print.IPrintDocumentAdapter
        public void finish() {
            synchronized (this.mLock) {
                if (!isDestroyedLocked()) {
                    this.mHandler.obtainMessage(4, this.mDocumentAdapter).sendToTarget();
                }
            }
        }

        @Override // android.print.IPrintDocumentAdapter
        public void kill(String str) {
            synchronized (this.mLock) {
                if (!isDestroyedLocked()) {
                    this.mHandler.obtainMessage(5, str).sendToTarget();
                }
            }
        }

        @Override // android.print.IPrintDocumentAdapter
        public void layout(PrintAttributes printAttributes, PrintAttributes printAttributes2, ILayoutResultCallback iLayoutResultCallback, Bundle bundle, int i2) {
            ICancellationSignal iCancellationSignalCreateTransport = CancellationSignal.createTransport();
            try {
                iLayoutResultCallback.onLayoutStarted(iCancellationSignalCreateTransport, i2);
                synchronized (this.mLock) {
                    if (isDestroyedLocked()) {
                        return;
                    }
                    CancellationSignal cancellationSignalFromTransport = CancellationSignal.fromTransport(iCancellationSignalCreateTransport);
                    SomeArgs someArgsObtain = SomeArgs.obtain();
                    someArgsObtain.arg1 = this.mDocumentAdapter;
                    someArgsObtain.arg2 = printAttributes;
                    someArgsObtain.arg3 = printAttributes2;
                    someArgsObtain.arg4 = cancellationSignalFromTransport;
                    someArgsObtain.arg5 = new MyLayoutResultCallback(iLayoutResultCallback, i2);
                    someArgsObtain.arg6 = bundle;
                    this.mHandler.obtainMessage(2, someArgsObtain).sendToTarget();
                }
            } catch (RemoteException e2) {
                Log.e(PrintManager.LOG_TAG, "Error notifying for layout start", e2);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            IPrintDocumentAdapterObserver iPrintDocumentAdapterObserver;
            synchronized (this.mLock) {
                if (activity == this.mActivity) {
                    iPrintDocumentAdapterObserver = this.mObserver;
                    destroyLocked();
                } else {
                    iPrintDocumentAdapterObserver = null;
                }
            }
            if (iPrintDocumentAdapterObserver != null) {
                try {
                    iPrintDocumentAdapterObserver.onDestroy();
                } catch (RemoteException e2) {
                    Log.e(PrintManager.LOG_TAG, "Error announcing destroyed state", e2);
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.print.IPrintDocumentAdapter
        public void setObserver(IPrintDocumentAdapterObserver iPrintDocumentAdapterObserver) {
            boolean zIsDestroyedLocked;
            synchronized (this.mLock) {
                this.mObserver = iPrintDocumentAdapterObserver;
                zIsDestroyedLocked = isDestroyedLocked();
            }
            if (!zIsDestroyedLocked || iPrintDocumentAdapterObserver == null) {
                return;
            }
            try {
                iPrintDocumentAdapterObserver.onDestroy();
            } catch (RemoteException e2) {
                Log.e(PrintManager.LOG_TAG, "Error announcing destroyed state", e2);
            }
        }

        @Override // android.print.IPrintDocumentAdapter
        public void start() {
            synchronized (this.mLock) {
                if (!isDestroyedLocked()) {
                    this.mHandler.obtainMessage(1, this.mDocumentAdapter).sendToTarget();
                }
            }
        }

        @Override // android.print.IPrintDocumentAdapter
        public void write(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, IWriteResultCallback iWriteResultCallback, int i2) {
            ICancellationSignal iCancellationSignalCreateTransport = CancellationSignal.createTransport();
            try {
                iWriteResultCallback.onWriteStarted(iCancellationSignalCreateTransport, i2);
                synchronized (this.mLock) {
                    if (isDestroyedLocked()) {
                        return;
                    }
                    CancellationSignal cancellationSignalFromTransport = CancellationSignal.fromTransport(iCancellationSignalCreateTransport);
                    SomeArgs someArgsObtain = SomeArgs.obtain();
                    someArgsObtain.arg1 = this.mDocumentAdapter;
                    someArgsObtain.arg2 = pageRangeArr;
                    someArgsObtain.arg3 = parcelFileDescriptor;
                    someArgsObtain.arg4 = cancellationSignalFromTransport;
                    someArgsObtain.arg5 = new MyWriteResultCallback(iWriteResultCallback, parcelFileDescriptor, i2);
                    this.mHandler.obtainMessage(3, someArgsObtain).sendToTarget();
                }
            } catch (RemoteException e2) {
                Log.e(PrintManager.LOG_TAG, "Error notifying for write start", e2);
            }
        }
    }

    public interface PrintJobStateChangeListener {
        void onPrintJobStateChanged(PrintJobId printJobId);
    }

    public static final class PrintJobStateChangeListenerWrapper extends IPrintJobStateChangeListener.Stub {
        private final WeakReference<Handler> mWeakHandler;
        private final WeakReference<PrintJobStateChangeListener> mWeakListener;

        public PrintJobStateChangeListenerWrapper(PrintJobStateChangeListener printJobStateChangeListener, Handler handler) {
            this.mWeakListener = new WeakReference<>(printJobStateChangeListener);
            this.mWeakHandler = new WeakReference<>(handler);
        }

        public void destroy() {
            this.mWeakListener.clear();
        }

        public PrintJobStateChangeListener getListener() {
            return this.mWeakListener.get();
        }

        @Override // android.print.IPrintJobStateChangeListener
        public void onPrintJobStateChanged(PrintJobId printJobId) {
            Handler handler = this.mWeakHandler.get();
            PrintJobStateChangeListener printJobStateChangeListener = this.mWeakListener.get();
            if (handler == null || printJobStateChangeListener == null) {
                return;
            }
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = this;
            someArgsObtain.arg2 = printJobId;
            handler.obtainMessage(1, someArgsObtain).sendToTarget();
        }
    }

    public interface PrintServiceRecommendationsChangeListener {
        void onPrintServiceRecommendationsChanged();
    }

    public static final class PrintServiceRecommendationsChangeListenerWrapper extends IRecommendationsChangeListener.Stub {
        private final WeakReference<Handler> mWeakHandler;
        private final WeakReference<PrintServiceRecommendationsChangeListener> mWeakListener;

        public PrintServiceRecommendationsChangeListenerWrapper(PrintServiceRecommendationsChangeListener printServiceRecommendationsChangeListener, Handler handler) {
            this.mWeakListener = new WeakReference<>(printServiceRecommendationsChangeListener);
            this.mWeakHandler = new WeakReference<>(handler);
        }

        public void destroy() {
            this.mWeakListener.clear();
        }

        @Override // android.printservice.recommendation.IRecommendationsChangeListener
        public void onRecommendationsChanged() {
            Handler handler = this.mWeakHandler.get();
            PrintServiceRecommendationsChangeListener printServiceRecommendationsChangeListener = this.mWeakListener.get();
            if (handler == null || printServiceRecommendationsChangeListener == null) {
                return;
            }
            handler.post(new b(printServiceRecommendationsChangeListener, 1));
        }
    }

    public interface PrintServicesChangeListener {
        void onPrintServicesChanged();
    }

    public static final class PrintServicesChangeListenerWrapper extends IPrintServicesChangeListener.Stub {
        private final WeakReference<Handler> mWeakHandler;
        private final WeakReference<PrintServicesChangeListener> mWeakListener;

        public PrintServicesChangeListenerWrapper(PrintServicesChangeListener printServicesChangeListener, Handler handler) {
            this.mWeakListener = new WeakReference<>(printServicesChangeListener);
            this.mWeakHandler = new WeakReference<>(handler);
        }

        public void destroy() {
            this.mWeakListener.clear();
        }

        @Override // android.print.IPrintServicesChangeListener
        public void onPrintServicesChanged() {
            Handler handler = this.mWeakHandler.get();
            PrintServicesChangeListener printServicesChangeListener = this.mWeakListener.get();
            if (handler == null || printServicesChangeListener == null) {
                return;
            }
            handler.post(new b(printServicesChangeListener, 2));
        }
    }

    public PrintManager(Context context, IPrintManager iPrintManager, int i2, int i3) {
        this.mContext = context;
        this.mService = iPrintManager;
        this.mUserId = i2;
        this.mAppId = i3;
        this.mHandler = new Handler(context.getMainLooper(), null, false) { // from class: android.print.PrintManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                SomeArgs someArgs = (SomeArgs) message.obj;
                PrintJobStateChangeListener listener = ((PrintJobStateChangeListenerWrapper) someArgs.arg1).getListener();
                if (listener != null) {
                    listener.onPrintJobStateChanged((PrintJobId) someArgs.arg2);
                }
                someArgs.recycle();
            }
        };
    }

    public void addPrintJobStateChangeListener(PrintJobStateChangeListener printJobStateChangeListener) {
        if (this.mService == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        if (this.mPrintJobStateChangeListeners == null) {
            this.mPrintJobStateChangeListeners = new ArrayMap();
        }
        PrintJobStateChangeListenerWrapper printJobStateChangeListenerWrapper = new PrintJobStateChangeListenerWrapper(printJobStateChangeListener, this.mHandler);
        try {
            this.mService.addPrintJobStateChangeListener(printJobStateChangeListenerWrapper, this.mAppId, this.mUserId);
            this.mPrintJobStateChangeListeners.put(printJobStateChangeListener, printJobStateChangeListenerWrapper);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void addPrintServiceRecommendationsChangeListener(PrintServiceRecommendationsChangeListener printServiceRecommendationsChangeListener, Handler handler) {
        Preconditions.checkNotNull(printServiceRecommendationsChangeListener);
        if (handler == null) {
            handler = this.mHandler;
        }
        if (this.mService == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        if (this.mPrintServiceRecommendationsChangeListeners == null) {
            this.mPrintServiceRecommendationsChangeListeners = new ArrayMap();
        }
        PrintServiceRecommendationsChangeListenerWrapper printServiceRecommendationsChangeListenerWrapper = new PrintServiceRecommendationsChangeListenerWrapper(printServiceRecommendationsChangeListener, handler);
        try {
            this.mService.addPrintServiceRecommendationsChangeListener(printServiceRecommendationsChangeListenerWrapper, this.mUserId);
            this.mPrintServiceRecommendationsChangeListeners.put(printServiceRecommendationsChangeListener, printServiceRecommendationsChangeListenerWrapper);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void addPrintServicesChangeListener(PrintServicesChangeListener printServicesChangeListener, Handler handler) {
        Preconditions.checkNotNull(printServicesChangeListener);
        if (handler == null) {
            handler = this.mHandler;
        }
        if (this.mService == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        if (this.mPrintServicesChangeListeners == null) {
            this.mPrintServicesChangeListeners = new ArrayMap();
        }
        PrintServicesChangeListenerWrapper printServicesChangeListenerWrapper = new PrintServicesChangeListenerWrapper(printServicesChangeListener, handler);
        try {
            this.mService.addPrintServicesChangeListener(printServicesChangeListenerWrapper, this.mUserId);
            this.mPrintServicesChangeListeners.put(printServicesChangeListener, printServicesChangeListenerWrapper);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void cancelPrintJob(PrintJobId printJobId) {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        try {
            iPrintManager.cancelPrintJob(printJobId, this.mAppId, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PrinterDiscoverySession createPrinterDiscoverySession() {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager != null) {
            return new PrinterDiscoverySession(iPrintManager, this.mContext, this.mUserId);
        }
        Log.w(LOG_TAG, "Feature android.software.print not available");
        return null;
    }

    public Icon getCustomPrinterIcon(PrinterId printerId) {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return null;
        }
        try {
            return iPrintManager.getCustomPrinterIcon(printerId, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PrintManager getGlobalPrintManagerForUser(int i2) {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager != null) {
            return new PrintManager(this.mContext, iPrintManager, i2, -2);
        }
        Log.w(LOG_TAG, "Feature android.software.print not available");
        return null;
    }

    public PrintJob getPrintJob(PrintJobId printJobId) {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return null;
        }
        try {
            PrintJobInfo printJobInfo = iPrintManager.getPrintJobInfo(printJobId, this.mAppId, this.mUserId);
            if (printJobInfo != null) {
                return new PrintJob(printJobInfo, this);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PrintJobInfo getPrintJobInfo(PrintJobId printJobId) {
        try {
            return this.mService.getPrintJobInfo(printJobId, this.mAppId, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<PrintJob> getPrintJobs() {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return Collections.emptyList();
        }
        try {
            List<PrintJobInfo> printJobInfos = iPrintManager.getPrintJobInfos(this.mAppId, this.mUserId);
            if (printJobInfos == null) {
                return Collections.emptyList();
            }
            int size = printJobInfos.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(new PrintJob(printJobInfos.get(i2), this));
            }
            return arrayList;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<RecommendationInfo> getPrintServiceRecommendations() {
        try {
            List<RecommendationInfo> printServiceRecommendations = this.mService.getPrintServiceRecommendations(this.mUserId);
            return printServiceRecommendations != null ? printServiceRecommendations : Collections.emptyList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<PrintServiceInfo> getPrintServices(int i2) {
        Preconditions.checkFlagsArgument(i2, 3);
        try {
            List<PrintServiceInfo> printServices = this.mService.getPrintServices(i2, this.mUserId);
            return printServices != null ? printServices : Collections.emptyList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PrintJob print(String str, PrintDocumentAdapter printDocumentAdapter, PrintAttributes printAttributes) {
        if (this.mService == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return null;
        }
        if (!(this.mContext instanceof Activity)) {
            throw new IllegalStateException("Can print only from an activity");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("printJobName cannot be empty");
        }
        if (printDocumentAdapter == null) {
            throw new IllegalArgumentException("documentAdapter cannot be null");
        }
        try {
            Bundle bundlePrint = this.mService.print(str, new PrintDocumentAdapterDelegate((Activity) this.mContext, printDocumentAdapter), printAttributes, this.mContext.getPackageName(), this.mAppId, this.mUserId);
            if (bundlePrint != null) {
                PrintJobInfo printJobInfo = (PrintJobInfo) bundlePrint.getParcelable(EXTRA_PRINT_JOB);
                IntentSender intentSender = (IntentSender) bundlePrint.getParcelable(EXTRA_PRINT_DIALOG_INTENT);
                if (printJobInfo != null && intentSender != null) {
                    try {
                        this.mContext.startIntentSender(intentSender, null, 0, 0, 0);
                        return new PrintJob(printJobInfo, this);
                    } catch (IntentSender.SendIntentException e2) {
                        Log.e(LOG_TAG, "Couldn't start print job config activity.", e2);
                    }
                }
            }
            return null;
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public void removePrintJobStateChangeListener(PrintJobStateChangeListener printJobStateChangeListener) {
        PrintJobStateChangeListenerWrapper printJobStateChangeListenerWrapperRemove;
        if (this.mService == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        Map<PrintJobStateChangeListener, PrintJobStateChangeListenerWrapper> map = this.mPrintJobStateChangeListeners;
        if (map == null || (printJobStateChangeListenerWrapperRemove = map.remove(printJobStateChangeListener)) == null) {
            return;
        }
        if (this.mPrintJobStateChangeListeners.isEmpty()) {
            this.mPrintJobStateChangeListeners = null;
        }
        printJobStateChangeListenerWrapperRemove.destroy();
        try {
            this.mService.removePrintJobStateChangeListener(printJobStateChangeListenerWrapperRemove, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removePrintServiceRecommendationsChangeListener(PrintServiceRecommendationsChangeListener printServiceRecommendationsChangeListener) {
        PrintServiceRecommendationsChangeListenerWrapper printServiceRecommendationsChangeListenerWrapperRemove;
        Preconditions.checkNotNull(printServiceRecommendationsChangeListener);
        if (this.mService == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        Map<PrintServiceRecommendationsChangeListener, PrintServiceRecommendationsChangeListenerWrapper> map = this.mPrintServiceRecommendationsChangeListeners;
        if (map == null || (printServiceRecommendationsChangeListenerWrapperRemove = map.remove(printServiceRecommendationsChangeListener)) == null) {
            return;
        }
        if (this.mPrintServiceRecommendationsChangeListeners.isEmpty()) {
            this.mPrintServiceRecommendationsChangeListeners = null;
        }
        printServiceRecommendationsChangeListenerWrapperRemove.destroy();
        try {
            this.mService.removePrintServiceRecommendationsChangeListener(printServiceRecommendationsChangeListenerWrapperRemove, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removePrintServicesChangeListener(PrintServicesChangeListener printServicesChangeListener) {
        PrintServicesChangeListenerWrapper printServicesChangeListenerWrapperRemove;
        Preconditions.checkNotNull(printServicesChangeListener);
        if (this.mService == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        Map<PrintServicesChangeListener, PrintServicesChangeListenerWrapper> map = this.mPrintServicesChangeListeners;
        if (map == null || (printServicesChangeListenerWrapperRemove = map.remove(printServicesChangeListener)) == null) {
            return;
        }
        if (this.mPrintServicesChangeListeners.isEmpty()) {
            this.mPrintServicesChangeListeners = null;
        }
        printServicesChangeListenerWrapperRemove.destroy();
        try {
            this.mService.removePrintServicesChangeListener(printServicesChangeListenerWrapperRemove, this.mUserId);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error removing print services change listener", e2);
        }
    }

    public void restartPrintJob(PrintJobId printJobId) {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        try {
            iPrintManager.restartPrintJob(printJobId, this.mAppId, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPrintServiceEnabled(ComponentName componentName, boolean z2) {
        IPrintManager iPrintManager = this.mService;
        if (iPrintManager == null) {
            Log.w(LOG_TAG, "Feature android.software.print not available");
            return;
        }
        try {
            iPrintManager.setPrintServiceEnabled(componentName, z2, this.mUserId);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error enabling or disabling " + componentName, e2);
        }
    }
}
