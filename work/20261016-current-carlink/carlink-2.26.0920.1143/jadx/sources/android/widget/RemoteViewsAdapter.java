package android.widget;

import android.app.m;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.TimedRemoteCaller;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import com.android.internal.widget.IRemoteViewsAdapterConnection;
import com.android.internal.widget.IRemoteViewsFactory;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteViewsAdapter extends BaseAdapter implements Handler.Callback {
    private static final String MULTI_USER_PERM = "android.permission.INTERACT_ACROSS_USERS_FULL";
    private static final int REMOTE_VIEWS_CACHE_DURATION = 5000;
    private static final String TAG = "RemoteViewsAdapter";
    private static Handler sCacheRemovalQueue = null;
    private static HandlerThread sCacheRemovalThread = null;
    private static final int sDefaultCacheSize = 40;
    private static final int sDefaultLoadingViewHeight = 50;
    private static final int sDefaultMessageType = 0;
    private static final int sUnbindServiceDelay = 5000;
    private static final int sUnbindServiceMessageType = 1;
    private final int mAppWidgetId;
    private final Executor mAsyncViewLoadExecutor;
    private final FixedSizeRemoteViewsCache mCache;
    private WeakReference<RemoteAdapterConnectionCallback> mCallback;
    private final Context mContext;
    private boolean mDataReady;
    private final Intent mIntent;
    private Handler mMainQueue;
    private boolean mNotifyDataSetChangedAfterOnServiceConnected = false;
    private RemoteViews.OnClickHandler mRemoteViewsOnClickHandler;
    private RemoteViewsFrameLayoutRefSet mRequestedViews;
    private RemoteViewsAdapterServiceConnection mServiceConnection;
    private int mVisibleWindowLowerBound;
    private int mVisibleWindowUpperBound;
    private Handler mWorkerQueue;
    private HandlerThread mWorkerThread;
    private static final HashMap<RemoteViewsCacheKey, FixedSizeRemoteViewsCache> sCachedRemoteViewsCaches = new HashMap<>();
    private static final HashMap<RemoteViewsCacheKey, Runnable> sRemoteViewsCacheRemoveRunnables = new HashMap<>();

    public static class AsyncRemoteAdapterAction implements Runnable {
        private final RemoteAdapterConnectionCallback mCallback;
        private final Intent mIntent;

        public AsyncRemoteAdapterAction(RemoteAdapterConnectionCallback remoteAdapterConnectionCallback, Intent intent) {
            this.mCallback = remoteAdapterConnectionCallback;
            this.mIntent = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mCallback.setRemoteViewsAdapter(this.mIntent, true);
        }
    }

    public static class FixedSizeRemoteViewsCache {
        private static final String TAG = "FixedSizeRemoteViewsCache";
        private static final float sMaxCountSlackPercent = 0.75f;
        private static final int sMaxMemoryLimitInBytes = 2097152;
        private final int mMaxCount;
        private final int mMaxCountSlack;
        private final RemoteViewsMetaData mMetaData = new RemoteViewsMetaData();
        private final RemoteViewsMetaData mTemporaryMetaData = new RemoteViewsMetaData();
        private final SparseArray<RemoteViewsIndexMetaData> mIndexMetaData = new SparseArray<>();
        private final SparseArray<RemoteViews> mIndexRemoteViews = new SparseArray<>();
        private final SparseBooleanArray mIndicesToLoad = new SparseBooleanArray();
        private int mPreloadLowerBound = 0;
        private int mPreloadUpperBound = -1;
        private int mLastRequestedIndex = -1;

        public FixedSizeRemoteViewsCache(int i2) {
            this.mMaxCount = i2;
            this.mMaxCountSlack = Math.round((i2 / 2) * 0.75f);
        }

        private int getFarthestPositionFrom(int i2, int[] iArr) {
            int i3 = 0;
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            for (int size = this.mIndexRemoteViews.size() - 1; size >= 0; size--) {
                int iKeyAt = this.mIndexRemoteViews.keyAt(size);
                int iAbs = Math.abs(iKeyAt - i2);
                if (iAbs > i3 && Arrays.binarySearch(iArr, iKeyAt) < 0) {
                    i5 = iKeyAt;
                    i3 = iAbs;
                }
                if (iAbs >= i4) {
                    i6 = iKeyAt;
                    i4 = iAbs;
                }
            }
            return i5 > -1 ? i5 : i6;
        }

        private int getRemoteViewsBitmapMemoryUsage() {
            int iEstimateMemoryUsage = 0;
            for (int size = this.mIndexRemoteViews.size() - 1; size >= 0; size--) {
                RemoteViews remoteViewsValueAt = this.mIndexRemoteViews.valueAt(size);
                if (remoteViewsValueAt != null) {
                    iEstimateMemoryUsage = remoteViewsValueAt.estimateMemoryUsage() + iEstimateMemoryUsage;
                }
            }
            return iEstimateMemoryUsage;
        }

        public void commitTemporaryMetaData() {
            synchronized (this.mTemporaryMetaData) {
                synchronized (this.mMetaData) {
                    this.mMetaData.set(this.mTemporaryMetaData);
                }
            }
        }

        public boolean containsMetaDataAt(int i2) {
            return this.mIndexMetaData.indexOfKey(i2) >= 0;
        }

        public boolean containsRemoteViewAt(int i2) {
            return this.mIndexRemoteViews.indexOfKey(i2) >= 0;
        }

        public RemoteViewsMetaData getMetaData() {
            return this.mMetaData;
        }

        public RemoteViewsIndexMetaData getMetaDataAt(int i2) {
            return this.mIndexMetaData.get(i2);
        }

        public int getNextIndexToLoad() {
            synchronized (this.mIndicesToLoad) {
                int iIndexOfValue = this.mIndicesToLoad.indexOfValue(true);
                if (iIndexOfValue < 0) {
                    iIndexOfValue = this.mIndicesToLoad.indexOfValue(false);
                }
                if (iIndexOfValue < 0) {
                    return -1;
                }
                int iKeyAt = this.mIndicesToLoad.keyAt(iIndexOfValue);
                this.mIndicesToLoad.removeAt(iIndexOfValue);
                return iKeyAt;
            }
        }

        public RemoteViews getRemoteViewsAt(int i2) {
            return this.mIndexRemoteViews.get(i2);
        }

        public RemoteViewsMetaData getTemporaryMetaData() {
            return this.mTemporaryMetaData;
        }

        public void insert(int i2, RemoteViews remoteViews, long j2, int[] iArr) {
            int farthestPositionFrom;
            if (this.mIndexRemoteViews.size() >= this.mMaxCount) {
                this.mIndexRemoteViews.remove(getFarthestPositionFrom(i2, iArr));
            }
            int i3 = this.mLastRequestedIndex;
            if (i3 <= -1) {
                i3 = i2;
            }
            while (getRemoteViewsBitmapMemoryUsage() >= 2097152 && (farthestPositionFrom = getFarthestPositionFrom(i3, iArr)) >= 0) {
                this.mIndexRemoteViews.remove(farthestPositionFrom);
            }
            RemoteViewsIndexMetaData remoteViewsIndexMetaData = this.mIndexMetaData.get(i2);
            if (remoteViewsIndexMetaData != null) {
                remoteViewsIndexMetaData.set(remoteViews, j2);
            } else {
                this.mIndexMetaData.put(i2, new RemoteViewsIndexMetaData(remoteViews, j2));
            }
            this.mIndexRemoteViews.put(i2, remoteViews);
        }

        public boolean queuePositionsToBePreloadedFromRequestedPosition(int i2) {
            int i3;
            int i4;
            int i5 = this.mPreloadLowerBound;
            if (i5 <= i2 && i2 <= (i4 = this.mPreloadUpperBound) && Math.abs(i2 - ((i4 + i5) / 2)) < this.mMaxCountSlack) {
                return false;
            }
            synchronized (this.mMetaData) {
                i3 = this.mMetaData.count;
            }
            synchronized (this.mIndicesToLoad) {
                for (int size = this.mIndicesToLoad.size() - 1; size >= 0; size--) {
                    if (!this.mIndicesToLoad.valueAt(size)) {
                        this.mIndicesToLoad.removeAt(size);
                    }
                }
                int i6 = this.mMaxCount / 2;
                int i7 = i2 - i6;
                this.mPreloadLowerBound = i7;
                this.mPreloadUpperBound = i2 + i6;
                int iMin = Math.min(this.mPreloadUpperBound, i3 - 1);
                for (int iMax = Math.max(0, i7); iMax <= iMin; iMax++) {
                    if (this.mIndexRemoteViews.indexOfKey(iMax) < 0 && !this.mIndicesToLoad.get(iMax)) {
                        this.mIndicesToLoad.put(iMax, false);
                    }
                }
            }
            return true;
        }

        public void queueRequestedPositionToLoad(int i2) {
            this.mLastRequestedIndex = i2;
            synchronized (this.mIndicesToLoad) {
                this.mIndicesToLoad.put(i2, true);
            }
        }

        public void reset() {
            this.mPreloadLowerBound = 0;
            this.mPreloadUpperBound = -1;
            this.mLastRequestedIndex = -1;
            this.mIndexRemoteViews.clear();
            this.mIndexMetaData.clear();
            synchronized (this.mIndicesToLoad) {
                this.mIndicesToLoad.clear();
            }
        }
    }

    public static class HandlerThreadExecutor implements Executor {
        private final HandlerThread mThread;

        public HandlerThreadExecutor(HandlerThread handlerThread) {
            this.mThread = handlerThread;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (Thread.currentThread().getId() == this.mThread.getId()) {
                runnable.run();
            } else {
                new Handler(this.mThread.getLooper()).post(runnable);
            }
        }
    }

    public static class LoadingViewTemplate {
        public int defaultHeight;
        public final RemoteViews remoteViews;

        public LoadingViewTemplate(RemoteViews remoteViews, Context context) {
            this.remoteViews = remoteViews;
            this.defaultHeight = Math.round(context.getResources().getDisplayMetrics().density * 50.0f);
        }

        public void loadFirstViewHeight(RemoteViews remoteViews, Context context, Executor executor) {
            remoteViews.applyAsync(context, new RemoteViewsFrameLayout(context, null), executor, new RemoteViews.OnViewAppliedListener() { // from class: android.widget.RemoteViewsAdapter.LoadingViewTemplate.1
                @Override // android.widget.RemoteViews.OnViewAppliedListener
                public void onError(Exception exc) {
                    Log.w(RemoteViewsAdapter.TAG, "Error inflating first RemoteViews", exc);
                }

                @Override // android.widget.RemoteViews.OnViewAppliedListener
                public void onViewApplied(View view) {
                    try {
                        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                        LoadingViewTemplate.this.defaultHeight = view.getMeasuredHeight();
                    } catch (Exception e2) {
                        onError(e2);
                    }
                }
            });
        }
    }

    public interface RemoteAdapterConnectionCallback {
        void deferNotifyDataSetChanged();

        boolean onRemoteAdapterConnected();

        void onRemoteAdapterDisconnected();

        void setRemoteViewsAdapter(Intent intent, boolean z2);
    }

    public static class RemoteViewsAdapterServiceConnection extends IRemoteViewsAdapterConnection.Stub {
        private WeakReference<RemoteViewsAdapter> mAdapter;
        private boolean mIsConnected;
        private boolean mIsConnecting;
        private IRemoteViewsFactory mRemoteViewsFactory;

        public RemoteViewsAdapterServiceConnection(RemoteViewsAdapter remoteViewsAdapter) {
            this.mAdapter = new WeakReference<>(remoteViewsAdapter);
        }

        public synchronized void bind(Context context, int i2, Intent intent) {
            if (!this.mIsConnecting) {
                try {
                    AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
                    if (this.mAdapter.get() != null) {
                        appWidgetManager.bindRemoteViewsService(context.getOpPackageName(), i2, intent, asBinder());
                    } else {
                        Slog.w(RemoteViewsAdapter.TAG, "bind: adapter was null");
                    }
                    this.mIsConnecting = true;
                } catch (Exception e2) {
                    Log.e("RVAServiceConnection", "bind(): " + e2.getMessage());
                    this.mIsConnecting = false;
                    this.mIsConnected = false;
                }
            }
        }

        public synchronized IRemoteViewsFactory getRemoteViewsFactory() {
            return this.mRemoteViewsFactory;
        }

        public synchronized boolean isConnected() {
            return this.mIsConnected;
        }

        @Override // com.android.internal.widget.IRemoteViewsAdapterConnection
        public synchronized void onServiceConnected(IBinder iBinder) {
            this.mRemoteViewsFactory = IRemoteViewsFactory.Stub.asInterface(iBinder);
            final RemoteViewsAdapter remoteViewsAdapter = this.mAdapter.get();
            if (remoteViewsAdapter == null) {
                return;
            }
            remoteViewsAdapter.mWorkerQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.RemoteViewsAdapterServiceConnection.1
                @Override // java.lang.Runnable
                public void run() {
                    if (remoteViewsAdapter.mNotifyDataSetChangedAfterOnServiceConnected) {
                        remoteViewsAdapter.onNotifyDataSetChanged();
                    } else {
                        IRemoteViewsFactory remoteViewsFactory = remoteViewsAdapter.mServiceConnection.getRemoteViewsFactory();
                        try {
                            if (!remoteViewsFactory.isCreated()) {
                                remoteViewsFactory.onDataSetChanged();
                            }
                        } catch (RemoteException e2) {
                            Log.e(RemoteViewsAdapter.TAG, "Error notifying factory of data set changed in onServiceConnected(): " + e2.getMessage());
                            return;
                        } catch (RuntimeException e3) {
                            Log.e(RemoteViewsAdapter.TAG, "Error notifying factory of data set changed in onServiceConnected(): " + e3.getMessage());
                        }
                        remoteViewsAdapter.updateTemporaryMetaData();
                        remoteViewsAdapter.mMainQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.RemoteViewsAdapterServiceConnection.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                synchronized (remoteViewsAdapter.mCache) {
                                    remoteViewsAdapter.mCache.commitTemporaryMetaData();
                                }
                                RemoteAdapterConnectionCallback remoteAdapterConnectionCallback = (RemoteAdapterConnectionCallback) remoteViewsAdapter.mCallback.get();
                                if (remoteAdapterConnectionCallback != null) {
                                    remoteAdapterConnectionCallback.onRemoteAdapterConnected();
                                }
                            }
                        });
                    }
                    remoteViewsAdapter.enqueueDeferredUnbindServiceMessage();
                    RemoteViewsAdapterServiceConnection.this.mIsConnected = true;
                    RemoteViewsAdapterServiceConnection.this.mIsConnecting = false;
                }
            });
        }

        @Override // com.android.internal.widget.IRemoteViewsAdapterConnection
        public synchronized void onServiceDisconnected() {
            this.mIsConnected = false;
            this.mIsConnecting = false;
            this.mRemoteViewsFactory = null;
            final RemoteViewsAdapter remoteViewsAdapter = this.mAdapter.get();
            if (remoteViewsAdapter == null) {
                return;
            }
            remoteViewsAdapter.mMainQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.RemoteViewsAdapterServiceConnection.2
                @Override // java.lang.Runnable
                public void run() {
                    remoteViewsAdapter.mMainQueue.removeMessages(1);
                    RemoteAdapterConnectionCallback remoteAdapterConnectionCallback = (RemoteAdapterConnectionCallback) remoteViewsAdapter.mCallback.get();
                    if (remoteAdapterConnectionCallback != null) {
                        remoteAdapterConnectionCallback.onRemoteAdapterDisconnected();
                    }
                }
            });
        }

        public synchronized void unbind(Context context, int i2, Intent intent) {
            try {
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
                if (this.mAdapter.get() != null) {
                    appWidgetManager.unbindRemoteViewsService(context.getOpPackageName(), i2, intent);
                } else {
                    Slog.w(RemoteViewsAdapter.TAG, "unbind: adapter was null");
                }
                this.mIsConnecting = false;
            } catch (Exception e2) {
                Log.e("RVAServiceConnection", "unbind(): " + e2.getMessage());
                this.mIsConnecting = false;
                this.mIsConnected = false;
            }
        }
    }

    public static class RemoteViewsCacheKey {
        final Intent.FilterComparison filter;
        final int widgetId;

        public RemoteViewsCacheKey(Intent.FilterComparison filterComparison, int i2) {
            this.filter = filterComparison;
            this.widgetId = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof RemoteViewsCacheKey)) {
                return false;
            }
            RemoteViewsCacheKey remoteViewsCacheKey = (RemoteViewsCacheKey) obj;
            return remoteViewsCacheKey.filter.equals(this.filter) && remoteViewsCacheKey.widgetId == this.widgetId;
        }

        public int hashCode() {
            Intent.FilterComparison filterComparison = this.filter;
            return (filterComparison == null ? 0 : filterComparison.hashCode()) ^ (this.widgetId << 2);
        }
    }

    public static class RemoteViewsFrameLayout extends AppWidgetHostView {
        private final FixedSizeRemoteViewsCache mCache;

        public RemoteViewsFrameLayout(Context context, FixedSizeRemoteViewsCache fixedSizeRemoteViewsCache) {
            super(context);
            this.mCache = fixedSizeRemoteViewsCache;
        }

        @Override // android.appwidget.AppWidgetHostView
        public View getDefaultView() {
            int i2 = this.mCache.getMetaData().getLoadingTemplate(getContext()).defaultHeight;
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.remote_views_adapter_default_loading_view, (ViewGroup) this, false);
            textView.setHeight(i2);
            return textView;
        }

        @Override // android.appwidget.AppWidgetHostView
        public View getErrorView() {
            return getDefaultView();
        }

        @Override // android.appwidget.AppWidgetHostView
        public Context getRemoteContext() {
            return null;
        }

        public void onRemoteViewsLoaded(RemoteViews remoteViews, RemoteViews.OnClickHandler onClickHandler, boolean z2) {
            setOnClickHandler(onClickHandler);
            applyRemoteViews(remoteViews, z2 || (remoteViews != null && remoteViews.prefersAsyncApply()));
        }
    }

    public class RemoteViewsFrameLayoutRefSet {
        private final SparseArray<LinkedList<RemoteViewsFrameLayout>> mReferences;
        private final HashMap<RemoteViewsFrameLayout, LinkedList<RemoteViewsFrameLayout>> mViewToLinkedList;

        private RemoteViewsFrameLayoutRefSet() {
            this.mReferences = new SparseArray<>();
            this.mViewToLinkedList = new HashMap<>();
        }

        public void add(int i2, RemoteViewsFrameLayout remoteViewsFrameLayout) {
            LinkedList<RemoteViewsFrameLayout> linkedList = this.mReferences.get(i2);
            if (linkedList == null) {
                linkedList = new LinkedList<>();
                this.mReferences.put(i2, linkedList);
            }
            this.mViewToLinkedList.put(remoteViewsFrameLayout, linkedList);
            linkedList.add(remoteViewsFrameLayout);
        }

        public void clear() {
            this.mReferences.clear();
            this.mViewToLinkedList.clear();
        }

        public void notifyOnRemoteViewsLoaded(int i2, RemoteViews remoteViews) {
            LinkedList<RemoteViewsFrameLayout> linkedList;
            if (remoteViews == null || (linkedList = this.mReferences.get(i2)) == null) {
                return;
            }
            for (RemoteViewsFrameLayout remoteViewsFrameLayout : linkedList) {
                remoteViewsFrameLayout.onRemoteViewsLoaded(remoteViews, RemoteViewsAdapter.this.mRemoteViewsOnClickHandler, true);
                if (this.mViewToLinkedList.containsKey(remoteViewsFrameLayout)) {
                    this.mViewToLinkedList.remove(remoteViewsFrameLayout);
                }
            }
            linkedList.clear();
            this.mReferences.remove(i2);
        }

        public void removeView(RemoteViewsFrameLayout remoteViewsFrameLayout) {
            if (this.mViewToLinkedList.containsKey(remoteViewsFrameLayout)) {
                this.mViewToLinkedList.get(remoteViewsFrameLayout).remove(remoteViewsFrameLayout);
                this.mViewToLinkedList.remove(remoteViewsFrameLayout);
            }
        }
    }

    public static class RemoteViewsIndexMetaData {
        long itemId;
        int typeId;

        public RemoteViewsIndexMetaData(RemoteViews remoteViews, long j2) {
            set(remoteViews, j2);
        }

        public void set(RemoteViews remoteViews, long j2) {
            this.itemId = j2;
            if (remoteViews != null) {
                this.typeId = remoteViews.getLayoutId();
            } else {
                this.typeId = 0;
            }
        }
    }

    public static class RemoteViewsMetaData {
        int count;
        boolean hasStableIds;
        LoadingViewTemplate loadingTemplate;
        private final SparseIntArray mTypeIdIndexMap = new SparseIntArray();
        int viewTypeCount;

        public RemoteViewsMetaData() {
            reset();
        }

        public synchronized LoadingViewTemplate getLoadingTemplate(Context context) {
            if (this.loadingTemplate == null) {
                this.loadingTemplate = new LoadingViewTemplate(null, context);
            }
            return this.loadingTemplate;
        }

        public int getMappedViewType(int i2) {
            int i3 = this.mTypeIdIndexMap.get(i2, -1);
            if (i3 != -1) {
                return i3;
            }
            int size = this.mTypeIdIndexMap.size() + 1;
            this.mTypeIdIndexMap.put(i2, size);
            return size;
        }

        public boolean isViewTypeInRange(int i2) {
            return getMappedViewType(i2) < this.viewTypeCount;
        }

        public void reset() {
            this.count = 0;
            this.viewTypeCount = 1;
            this.hasStableIds = true;
            this.loadingTemplate = null;
            this.mTypeIdIndexMap.clear();
        }

        public void set(RemoteViewsMetaData remoteViewsMetaData) {
            synchronized (remoteViewsMetaData) {
                this.count = remoteViewsMetaData.count;
                this.viewTypeCount = remoteViewsMetaData.viewTypeCount;
                this.hasStableIds = remoteViewsMetaData.hasStableIds;
                this.loadingTemplate = remoteViewsMetaData.loadingTemplate;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RemoteViewsAdapter(Context context, Intent intent, RemoteAdapterConnectionCallback remoteAdapterConnectionCallback, boolean z2) {
        this.mDataReady = false;
        this.mContext = context;
        this.mIntent = intent;
        if (intent == null) {
            throw new IllegalArgumentException("Non-null Intent must be specified.");
        }
        int intExtra = intent.getIntExtra("remoteAdapterAppWidgetId", -1);
        this.mAppWidgetId = intExtra;
        this.mRequestedViews = new RemoteViewsFrameLayoutRefSet();
        if (intent.hasExtra("remoteAdapterAppWidgetId")) {
            intent.removeExtra("remoteAdapterAppWidgetId");
        }
        HandlerThread handlerThread = new HandlerThread("RemoteViewsCache-loader");
        this.mWorkerThread = handlerThread;
        handlerThread.start();
        this.mWorkerQueue = new Handler(this.mWorkerThread.getLooper());
        this.mMainQueue = new Handler(Looper.myLooper(), this);
        this.mAsyncViewLoadExecutor = z2 ? new HandlerThreadExecutor(this.mWorkerThread) : null;
        if (sCacheRemovalThread == null) {
            HandlerThread handlerThread2 = new HandlerThread("RemoteViewsAdapter-cachePruner");
            sCacheRemovalThread = handlerThread2;
            handlerThread2.start();
            sCacheRemovalQueue = new Handler(sCacheRemovalThread.getLooper());
        }
        this.mCallback = new WeakReference<>(remoteAdapterConnectionCallback);
        this.mServiceConnection = new RemoteViewsAdapterServiceConnection(this);
        RemoteViewsCacheKey remoteViewsCacheKey = new RemoteViewsCacheKey(new Intent.FilterComparison(intent), intExtra);
        HashMap<RemoteViewsCacheKey, FixedSizeRemoteViewsCache> map = sCachedRemoteViewsCaches;
        synchronized (map) {
            if (map.containsKey(remoteViewsCacheKey)) {
                FixedSizeRemoteViewsCache fixedSizeRemoteViewsCache = map.get(remoteViewsCacheKey);
                this.mCache = fixedSizeRemoteViewsCache;
                synchronized (fixedSizeRemoteViewsCache.mMetaData) {
                    if (fixedSizeRemoteViewsCache.mMetaData.count > 0) {
                        this.mDataReady = true;
                    }
                }
            } else {
                this.mCache = new FixedSizeRemoteViewsCache(40);
            }
            if (!this.mDataReady) {
                requestBindService();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enqueueDeferredUnbindServiceMessage() {
        this.mMainQueue.removeMessages(1);
        this.mMainQueue.sendEmptyMessageDelayed(1, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
    }

    private int[] getVisibleWindow(int i2, int i3, int i4) {
        int i5 = 0;
        if ((i2 == 0 && i3 == 0) || i2 < 0 || i3 < 0) {
            return new int[0];
        }
        if (i2 <= i3) {
            int[] iArr = new int[(i3 + 1) - i2];
            while (i2 <= i3) {
                iArr[i5] = i2;
                i2++;
                i5++;
            }
            return iArr;
        }
        int iMax = Math.max(i4, i2);
        int[] iArr2 = new int[(iMax - i2) + i3 + 1];
        int i6 = 0;
        while (i5 <= i3) {
            iArr2[i6] = i5;
            i5++;
            i6++;
        }
        while (i2 < iMax) {
            iArr2[i6] = i2;
            i2++;
            i6++;
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNextIndexInBackground() {
        this.mWorkerQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                int nextIndexToLoad;
                if (RemoteViewsAdapter.this.mServiceConnection.isConnected()) {
                    synchronized (RemoteViewsAdapter.this.mCache) {
                        nextIndexToLoad = RemoteViewsAdapter.this.mCache.getNextIndexToLoad();
                    }
                    if (nextIndexToLoad <= -1) {
                        RemoteViewsAdapter.this.enqueueDeferredUnbindServiceMessage();
                    } else {
                        RemoteViewsAdapter.this.updateRemoteViews(nextIndexToLoad, true);
                        RemoteViewsAdapter.this.loadNextIndexInBackground();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNotifyDataSetChanged() {
        int i2;
        int[] visibleWindow;
        try {
            this.mServiceConnection.getRemoteViewsFactory().onDataSetChanged();
            synchronized (this.mCache) {
                this.mCache.reset();
            }
            updateTemporaryMetaData();
            synchronized (this.mCache.getTemporaryMetaData()) {
                i2 = this.mCache.getTemporaryMetaData().count;
                visibleWindow = getVisibleWindow(this.mVisibleWindowLowerBound, this.mVisibleWindowUpperBound, i2);
            }
            for (int i3 : visibleWindow) {
                if (i3 < i2) {
                    updateRemoteViews(i3, false);
                }
            }
            this.mMainQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.5
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (RemoteViewsAdapter.this.mCache) {
                        RemoteViewsAdapter.this.mCache.commitTemporaryMetaData();
                    }
                    RemoteViewsAdapter.this.superNotifyDataSetChanged();
                    RemoteViewsAdapter.this.enqueueDeferredUnbindServiceMessage();
                }
            });
            this.mNotifyDataSetChangedAfterOnServiceConnected = false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in updateNotifyDataSetChanged(): " + e2.getMessage());
        } catch (RuntimeException e3) {
            Log.e(TAG, "Error in updateNotifyDataSetChanged(): " + e3.getMessage());
        }
    }

    private void processException(String str, Exception exc) {
        StringBuilder sbV = android.accessibilityservice.c.v("Error in ", str, ": ");
        sbV.append(exc.getMessage());
        Log.e(TAG, sbV.toString());
        RemoteViewsMetaData metaData = this.mCache.getMetaData();
        synchronized (metaData) {
            metaData.reset();
        }
        synchronized (this.mCache) {
            this.mCache.reset();
        }
        this.mMainQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                RemoteViewsAdapter.this.superNotifyDataSetChanged();
            }
        });
    }

    private boolean requestBindService() {
        if (!this.mServiceConnection.isConnected()) {
            this.mServiceConnection.bind(this.mContext, this.mAppWidgetId, this.mIntent);
        }
        this.mMainQueue.removeMessages(1);
        return this.mServiceConnection.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRemoteViews(final int i2, boolean z2) {
        boolean zIsViewTypeInRange;
        int i3;
        IRemoteViewsFactory remoteViewsFactory = this.mServiceConnection.getRemoteViewsFactory();
        try {
            final RemoteViews viewAt = remoteViewsFactory.getViewAt(i2);
            long itemId = remoteViewsFactory.getItemId(i2);
            if (viewAt == null) {
                m.q("Error in updateRemoteViews(", i2, "):  null RemoteViews returned from RemoteViewsFactory.", TAG);
                return;
            }
            int layoutId = viewAt.getLayoutId();
            RemoteViewsMetaData metaData = this.mCache.getMetaData();
            synchronized (metaData) {
                zIsViewTypeInRange = metaData.isViewTypeInRange(layoutId);
                i3 = this.mCache.mMetaData.count;
            }
            synchronized (this.mCache) {
                try {
                    if (zIsViewTypeInRange) {
                        this.mCache.insert(i2, viewAt, itemId, getVisibleWindow(this.mVisibleWindowLowerBound, this.mVisibleWindowUpperBound, i3));
                        if (z2) {
                            this.mMainQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    RemoteViewsAdapter.this.mRequestedViews.notifyOnRemoteViewsLoaded(i2, viewAt);
                                }
                            });
                        }
                    } else {
                        Log.e(TAG, "Error: widget's RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() ");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e2) {
            StringBuilder sbS = android.accessibilityservice.c.s("Error in updateRemoteViews(", i2, "): ");
            sbS.append(e2.getMessage());
            Log.e(TAG, sbS.toString());
        } catch (RuntimeException e3) {
            StringBuilder sbS2 = android.accessibilityservice.c.s("Error in updateRemoteViews(", i2, "): ");
            sbS2.append(e3.getMessage());
            Log.e(TAG, sbS2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTemporaryMetaData() {
        RemoteViews viewAt;
        IRemoteViewsFactory remoteViewsFactory = this.mServiceConnection.getRemoteViewsFactory();
        try {
            boolean zHasStableIds = remoteViewsFactory.hasStableIds();
            int viewTypeCount = remoteViewsFactory.getViewTypeCount();
            int count = remoteViewsFactory.getCount();
            LoadingViewTemplate loadingViewTemplate = new LoadingViewTemplate(remoteViewsFactory.getLoadingView(), this.mContext);
            if (count > 0 && loadingViewTemplate.remoteViews == null && (viewAt = remoteViewsFactory.getViewAt(0)) != null) {
                loadingViewTemplate.loadFirstViewHeight(viewAt, this.mContext, new HandlerThreadExecutor(this.mWorkerThread));
            }
            RemoteViewsMetaData temporaryMetaData = this.mCache.getTemporaryMetaData();
            synchronized (temporaryMetaData) {
                try {
                    temporaryMetaData.hasStableIds = zHasStableIds;
                    temporaryMetaData.viewTypeCount = viewTypeCount + 1;
                    temporaryMetaData.count = count;
                    temporaryMetaData.loadingTemplate = loadingViewTemplate;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e2) {
            processException("updateMetaData", e2);
        } catch (RuntimeException e3) {
            processException("updateMetaData", e3);
        }
    }

    public void finalize() throws Throwable {
        try {
            HandlerThread handlerThread = this.mWorkerThread;
            if (handlerThread != null) {
                handlerThread.quit();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int i2;
        RemoteViewsMetaData metaData = this.mCache.getMetaData();
        synchronized (metaData) {
            i2 = metaData.count;
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        synchronized (this.mCache) {
            if (!this.mCache.containsMetaDataAt(i2)) {
                return 0L;
            }
            return this.mCache.getMetaDataAt(i2).itemId;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        int mappedViewType;
        synchronized (this.mCache) {
            if (!this.mCache.containsMetaDataAt(i2)) {
                return 0;
            }
            int i3 = this.mCache.getMetaDataAt(i2).typeId;
            RemoteViewsMetaData metaData = this.mCache.getMetaData();
            synchronized (metaData) {
                mappedViewType = metaData.getMappedViewType(i3);
            }
            return mappedViewType;
        }
    }

    public Intent getRemoteViewsServiceIntent() {
        return this.mIntent;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        boolean zQueuePositionsToBePreloadedFromRequestedPosition;
        RemoteViewsFrameLayout remoteViewsFrameLayout;
        synchronized (this.mCache) {
            RemoteViews remoteViewsAt = this.mCache.getRemoteViewsAt(i2);
            boolean z2 = remoteViewsAt != null;
            boolean zIsConnected = this.mServiceConnection.isConnected();
            if (view != null && (view instanceof RemoteViewsFrameLayout)) {
                this.mRequestedViews.removeView((RemoteViewsFrameLayout) view);
            }
            if (z2 || zIsConnected) {
                zQueuePositionsToBePreloadedFromRequestedPosition = this.mCache.queuePositionsToBePreloadedFromRequestedPosition(i2);
            } else {
                requestBindService();
                zQueuePositionsToBePreloadedFromRequestedPosition = false;
            }
            if (view instanceof RemoteViewsFrameLayout) {
                remoteViewsFrameLayout = (RemoteViewsFrameLayout) view;
            } else {
                remoteViewsFrameLayout = new RemoteViewsFrameLayout(viewGroup.getContext(), this.mCache);
                remoteViewsFrameLayout.setExecutor(this.mAsyncViewLoadExecutor);
            }
            if (z2) {
                remoteViewsFrameLayout.onRemoteViewsLoaded(remoteViewsAt, this.mRemoteViewsOnClickHandler, false);
                if (zQueuePositionsToBePreloadedFromRequestedPosition) {
                    loadNextIndexInBackground();
                }
            } else {
                remoteViewsFrameLayout.onRemoteViewsLoaded(this.mCache.getMetaData().getLoadingTemplate(this.mContext).remoteViews, this.mRemoteViewsOnClickHandler, false);
                this.mRequestedViews.add(i2, remoteViewsFrameLayout);
                this.mCache.queueRequestedPositionToLoad(i2);
                loadNextIndexInBackground();
            }
        }
        return remoteViewsFrameLayout;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        int i2;
        RemoteViewsMetaData metaData = this.mCache.getMetaData();
        synchronized (metaData) {
            i2 = metaData.viewTypeCount;
        }
        return i2;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            return false;
        }
        if (!this.mServiceConnection.isConnected()) {
            return true;
        }
        this.mServiceConnection.unbind(this.mContext, this.mAppWidgetId, this.mIntent);
        return true;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        boolean z2;
        RemoteViewsMetaData metaData = this.mCache.getMetaData();
        synchronized (metaData) {
            z2 = metaData.hasStableIds;
        }
        return z2;
    }

    public boolean isDataReady() {
        return this.mDataReady;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return getCount() <= 0;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.mMainQueue.removeMessages(1);
        if (this.mServiceConnection.isConnected()) {
            this.mWorkerQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.6
                @Override // java.lang.Runnable
                public void run() {
                    RemoteViewsAdapter.this.onNotifyDataSetChanged();
                }
            });
        } else {
            this.mNotifyDataSetChangedAfterOnServiceConnected = true;
            requestBindService();
        }
    }

    public void saveRemoteViewsCache() {
        int i2;
        int size;
        final RemoteViewsCacheKey remoteViewsCacheKey = new RemoteViewsCacheKey(new Intent.FilterComparison(this.mIntent), this.mAppWidgetId);
        HashMap<RemoteViewsCacheKey, FixedSizeRemoteViewsCache> map = sCachedRemoteViewsCaches;
        synchronized (map) {
            HashMap<RemoteViewsCacheKey, Runnable> map2 = sRemoteViewsCacheRemoveRunnables;
            if (map2.containsKey(remoteViewsCacheKey)) {
                sCacheRemovalQueue.removeCallbacks(map2.get(remoteViewsCacheKey));
                map2.remove(remoteViewsCacheKey);
            }
            synchronized (this.mCache.mMetaData) {
                i2 = this.mCache.mMetaData.count;
            }
            synchronized (this.mCache) {
                size = this.mCache.mIndexRemoteViews.size();
            }
            if (i2 > 0 && size > 0) {
                map.put(remoteViewsCacheKey, this.mCache);
            }
            Runnable runnable = new Runnable() { // from class: android.widget.RemoteViewsAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (RemoteViewsAdapter.sCachedRemoteViewsCaches) {
                        if (RemoteViewsAdapter.sCachedRemoteViewsCaches.containsKey(remoteViewsCacheKey)) {
                            RemoteViewsAdapter.sCachedRemoteViewsCaches.remove(remoteViewsCacheKey);
                        }
                        if (RemoteViewsAdapter.sRemoteViewsCacheRemoveRunnables.containsKey(remoteViewsCacheKey)) {
                            RemoteViewsAdapter.sRemoteViewsCacheRemoveRunnables.remove(remoteViewsCacheKey);
                        }
                    }
                }
            };
            map2.put(remoteViewsCacheKey, runnable);
            sCacheRemovalQueue.postDelayed(runnable, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public void setRemoteViewsOnClickHandler(RemoteViews.OnClickHandler onClickHandler) {
        this.mRemoteViewsOnClickHandler = onClickHandler;
    }

    public void setVisibleRangeHint(int i2, int i3) {
        this.mVisibleWindowLowerBound = i2;
        this.mVisibleWindowUpperBound = i3;
    }

    public void superNotifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
