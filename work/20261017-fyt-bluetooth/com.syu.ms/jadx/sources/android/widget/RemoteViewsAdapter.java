package android.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.util.Slog;
import android.util.TimedRemoteCaller;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.widget.d;
import com.android.internal.widget.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
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
    private FixedSizeRemoteViewsCache mCache;
    private WeakReference<RemoteAdapterConnectionCallback> mCallback;
    private final Context mContext;
    private boolean mDataReady;
    private final Intent mIntent;
    private LayoutInflater mLayoutInflater;
    private Handler mMainQueue;
    private boolean mNotifyDataSetChangedAfterOnServiceConnected = false;
    private RemoteViews.OnClickHandler mRemoteViewsOnClickHandler;
    private RemoteViewsFrameLayoutRefSet mRequestedViews;
    private RemoteViewsAdapterServiceConnection mServiceConnection;
    public int mUserId;
    private int mVisibleWindowLowerBound;
    private int mVisibleWindowUpperBound;
    private Handler mWorkerQueue;
    private HandlerThread mWorkerThread;
    private static final HashMap<RemoteViewsCacheKey, FixedSizeRemoteViewsCache> sCachedRemoteViewsCaches = new HashMap<>();
    private static final HashMap<RemoteViewsCacheKey, Runnable> sRemoteViewsCacheRemoveRunnables = new HashMap<>();

    public static class FixedSizeRemoteViewsCache {
        private static final String TAG = "FixedSizeRemoteViewsCache";
        private static final float sMaxCountSlackPercent = 0.75f;
        private static final int sMaxMemoryLimitInBytes = 2097152;
        private int mMaxCount;
        private int mMaxCountSlack;
        private int mPreloadLowerBound = 0;
        private int mPreloadUpperBound = -1;
        private final RemoteViewsMetaData mMetaData = new RemoteViewsMetaData();
        private final RemoteViewsMetaData mTemporaryMetaData = new RemoteViewsMetaData();
        private HashMap<Integer, RemoteViewsIndexMetaData> mIndexMetaData = new HashMap<>();
        private HashMap<Integer, RemoteViews> mIndexRemoteViews = new HashMap<>();
        private HashSet<Integer> mRequestedIndices = new HashSet<>();
        private int mLastRequestedIndex = -1;
        private HashSet<Integer> mLoadIndices = new HashSet<>();

        public FixedSizeRemoteViewsCache(int i2) {
            this.mMaxCount = i2;
            this.mMaxCountSlack = Math.round((i2 / 2) * sMaxCountSlackPercent);
        }

        private int getFarthestPositionFrom(int i2, ArrayList<Integer> arrayList) {
            Iterator<Integer> it = this.mIndexRemoteViews.keySet().iterator();
            int i3 = 0;
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                int iAbs = Math.abs(iIntValue - i2);
                if (iAbs > i3 && !arrayList.contains(Integer.valueOf(iIntValue))) {
                    i5 = iIntValue;
                    i3 = iAbs;
                }
                if (iAbs >= i4) {
                    i6 = iIntValue;
                    i4 = iAbs;
                }
            }
            return i5 > -1 ? i5 : i6;
        }

        private int getRemoteViewsBitmapMemoryUsage() {
            Iterator<Integer> it = this.mIndexRemoteViews.keySet().iterator();
            int iEstimateMemoryUsage = 0;
            while (it.hasNext()) {
                RemoteViews remoteViews = this.mIndexRemoteViews.get(it.next());
                if (remoteViews != null) {
                    iEstimateMemoryUsage += remoteViews.estimateMemoryUsage();
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
            return this.mIndexMetaData.containsKey(Integer.valueOf(i2));
        }

        public boolean containsRemoteViewAt(int i2) {
            return this.mIndexRemoteViews.containsKey(Integer.valueOf(i2));
        }

        public RemoteViewsMetaData getMetaData() {
            return this.mMetaData;
        }

        public RemoteViewsIndexMetaData getMetaDataAt(int i2) {
            if (this.mIndexMetaData.containsKey(Integer.valueOf(i2))) {
                return this.mIndexMetaData.get(Integer.valueOf(i2));
            }
            return null;
        }

        public int[] getNextIndexToLoad() {
            synchronized (this.mLoadIndices) {
                if (!this.mRequestedIndices.isEmpty()) {
                    Integer next = this.mRequestedIndices.iterator().next();
                    this.mRequestedIndices.remove(next);
                    this.mLoadIndices.remove(next);
                    return new int[]{next.intValue(), 1};
                }
                if (this.mLoadIndices.isEmpty()) {
                    return new int[]{-1, 0};
                }
                Integer next2 = this.mLoadIndices.iterator().next();
                this.mLoadIndices.remove(next2);
                return new int[]{next2.intValue(), 0};
            }
        }

        public RemoteViews getRemoteViewsAt(int i2) {
            if (this.mIndexRemoteViews.containsKey(Integer.valueOf(i2))) {
                return this.mIndexRemoteViews.get(Integer.valueOf(i2));
            }
            return null;
        }

        public RemoteViewsMetaData getTemporaryMetaData() {
            return this.mTemporaryMetaData;
        }

        public void insert(int i2, RemoteViews remoteViews, long j2, ArrayList<Integer> arrayList) {
            if (this.mIndexRemoteViews.size() >= this.mMaxCount) {
                this.mIndexRemoteViews.remove(Integer.valueOf(getFarthestPositionFrom(i2, arrayList)));
            }
            int i3 = this.mLastRequestedIndex;
            if (i3 <= -1) {
                i3 = i2;
            }
            while (getRemoteViewsBitmapMemoryUsage() >= 2097152) {
                this.mIndexRemoteViews.remove(Integer.valueOf(getFarthestPositionFrom(i3, arrayList)));
            }
            if (this.mIndexMetaData.containsKey(Integer.valueOf(i2))) {
                this.mIndexMetaData.get(Integer.valueOf(i2)).set(remoteViews, j2);
            } else {
                this.mIndexMetaData.put(Integer.valueOf(i2), new RemoteViewsIndexMetaData(remoteViews, j2));
            }
            this.mIndexRemoteViews.put(Integer.valueOf(i2), remoteViews);
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
            synchronized (this.mLoadIndices) {
                this.mLoadIndices.clear();
                this.mLoadIndices.addAll(this.mRequestedIndices);
                int i6 = this.mMaxCount / 2;
                int i7 = i2 - i6;
                this.mPreloadLowerBound = i7;
                this.mPreloadUpperBound = i2 + i6;
                int iMin = Math.min(this.mPreloadUpperBound, i3 - 1);
                for (int iMax = Math.max(0, i7); iMax <= iMin; iMax++) {
                    this.mLoadIndices.add(Integer.valueOf(iMax));
                }
                this.mLoadIndices.removeAll(this.mIndexRemoteViews.keySet());
            }
            return true;
        }

        public void queueRequestedPositionToLoad(int i2) {
            this.mLastRequestedIndex = i2;
            synchronized (this.mLoadIndices) {
                this.mRequestedIndices.add(Integer.valueOf(i2));
                this.mLoadIndices.add(Integer.valueOf(i2));
            }
        }

        public void reset() {
            this.mPreloadLowerBound = 0;
            this.mPreloadUpperBound = -1;
            this.mLastRequestedIndex = -1;
            this.mIndexRemoteViews.clear();
            this.mIndexMetaData.clear();
            synchronized (this.mLoadIndices) {
                this.mRequestedIndices.clear();
                this.mLoadIndices.clear();
            }
        }
    }

    public interface RemoteAdapterConnectionCallback {
        void deferNotifyDataSetChanged();

        boolean onRemoteAdapterConnected();

        void onRemoteAdapterDisconnected();
    }

    public static class RemoteViewsAdapterServiceConnection extends d.a {
        private WeakReference<RemoteViewsAdapter> mAdapter;
        private boolean mIsConnected;
        private boolean mIsConnecting;
        private e mRemoteViewsFactory;

        public RemoteViewsAdapterServiceConnection(RemoteViewsAdapter remoteViewsAdapter) {
            this.mAdapter = new WeakReference<>(remoteViewsAdapter);
        }

        public synchronized void bind(Context context, int i2, Intent intent) {
            if (!this.mIsConnecting) {
                try {
                    AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
                    RemoteViewsAdapter remoteViewsAdapter = this.mAdapter.get();
                    if (remoteViewsAdapter != null) {
                        RemoteViewsAdapter.checkInteractAcrossUsersPermission(context, remoteViewsAdapter.mUserId);
                        appWidgetManager.bindRemoteViewsService(i2, intent, asBinder(), new UserHandle(remoteViewsAdapter.mUserId));
                    } else {
                        Slog.w(RemoteViewsAdapter.TAG, "bind: adapter was null");
                    }
                    this.mIsConnecting = true;
                } catch (Exception e2) {
                    Log.e("RemoteViewsAdapterServiceConnection", "bind(): " + e2.getMessage());
                    this.mIsConnecting = false;
                    this.mIsConnected = false;
                }
            }
        }

        public synchronized e getRemoteViewsFactory() {
            return this.mRemoteViewsFactory;
        }

        public synchronized boolean isConnected() {
            return this.mIsConnected;
        }

        @Override // com.android.internal.widget.d
        public synchronized void onServiceConnected(IBinder iBinder) {
            this.mRemoteViewsFactory = e.a.asInterface(iBinder);
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
                        e remoteViewsFactory = remoteViewsAdapter.mServiceConnection.getRemoteViewsFactory();
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

        @Override // com.android.internal.widget.d
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
                RemoteViewsAdapter remoteViewsAdapter = this.mAdapter.get();
                if (remoteViewsAdapter != null) {
                    RemoteViewsAdapter.checkInteractAcrossUsersPermission(context, remoteViewsAdapter.mUserId);
                    appWidgetManager.unbindRemoteViewsService(i2, intent, new UserHandle(remoteViewsAdapter.mUserId));
                } else {
                    Slog.w(RemoteViewsAdapter.TAG, "unbind: adapter was null");
                }
                this.mIsConnecting = false;
            } catch (Exception e2) {
                Log.e("RemoteViewsAdapterServiceConnection", "unbind(): " + e2.getMessage());
                this.mIsConnecting = false;
                this.mIsConnected = false;
            }
        }
    }

    public static class RemoteViewsCacheKey {
        public final Intent.FilterComparison filter;
        public final int userId;
        public final int widgetId;

        public RemoteViewsCacheKey(Intent.FilterComparison filterComparison, int i2, int i3) {
            this.filter = filterComparison;
            this.widgetId = i2;
            this.userId = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof RemoteViewsCacheKey)) {
                return false;
            }
            RemoteViewsCacheKey remoteViewsCacheKey = (RemoteViewsCacheKey) obj;
            return remoteViewsCacheKey.filter.equals(this.filter) && remoteViewsCacheKey.widgetId == this.widgetId && remoteViewsCacheKey.userId == this.userId;
        }

        public int hashCode() {
            Intent.FilterComparison filterComparison = this.filter;
            return ((filterComparison == null ? 0 : filterComparison.hashCode()) ^ (this.widgetId << 2)) ^ (this.userId << 10);
        }
    }

    public static class RemoteViewsFrameLayout extends FrameLayout {
        public RemoteViewsFrameLayout(Context context) {
            super(context);
        }

        public void onRemoteViewsLoaded(RemoteViews remoteViews, RemoteViews.OnClickHandler onClickHandler) {
            try {
                removeAllViews();
                addView(remoteViews.apply(getContext(), this, onClickHandler));
            } catch (Exception unused) {
                Log.e(RemoteViewsAdapter.TAG, "Failed to apply RemoteViews.");
            }
        }
    }

    public class RemoteViewsFrameLayoutRefSet {
        private HashMap<Integer, LinkedList<RemoteViewsFrameLayout>> mReferences = new HashMap<>();
        private HashMap<RemoteViewsFrameLayout, LinkedList<RemoteViewsFrameLayout>> mViewToLinkedList = new HashMap<>();

        public RemoteViewsFrameLayoutRefSet() {
        }

        public void add(int i2, RemoteViewsFrameLayout remoteViewsFrameLayout) {
            LinkedList<RemoteViewsFrameLayout> linkedList;
            Integer numValueOf = Integer.valueOf(i2);
            if (this.mReferences.containsKey(numValueOf)) {
                linkedList = this.mReferences.get(numValueOf);
            } else {
                LinkedList<RemoteViewsFrameLayout> linkedList2 = new LinkedList<>();
                this.mReferences.put(numValueOf, linkedList2);
                linkedList = linkedList2;
            }
            this.mViewToLinkedList.put(remoteViewsFrameLayout, linkedList);
            linkedList.add(remoteViewsFrameLayout);
        }

        public void clear() {
            this.mReferences.clear();
            this.mViewToLinkedList.clear();
        }

        public void notifyOnRemoteViewsLoaded(int i2, RemoteViews remoteViews) {
            if (remoteViews == null) {
                return;
            }
            Integer numValueOf = Integer.valueOf(i2);
            if (this.mReferences.containsKey(numValueOf)) {
                LinkedList<RemoteViewsFrameLayout> linkedList = this.mReferences.get(numValueOf);
                for (RemoteViewsFrameLayout remoteViewsFrameLayout : linkedList) {
                    remoteViewsFrameLayout.onRemoteViewsLoaded(remoteViews, RemoteViewsAdapter.this.mRemoteViewsOnClickHandler);
                    if (this.mViewToLinkedList.containsKey(remoteViewsFrameLayout)) {
                        this.mViewToLinkedList.remove(remoteViewsFrameLayout);
                    }
                }
                linkedList.clear();
                this.mReferences.remove(numValueOf);
            }
        }

        public void removeView(RemoteViewsFrameLayout remoteViewsFrameLayout) {
            if (this.mViewToLinkedList.containsKey(remoteViewsFrameLayout)) {
                this.mViewToLinkedList.get(remoteViewsFrameLayout).remove(remoteViewsFrameLayout);
                this.mViewToLinkedList.remove(remoteViewsFrameLayout);
            }
        }
    }

    public static class RemoteViewsIndexMetaData {
        public long itemId;
        public int typeId;

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
        public int count;
        public boolean hasStableIds;
        public RemoteViews mFirstView;
        public int mFirstViewHeight;
        private final HashMap<Integer, Integer> mTypeIdIndexMap = new HashMap<>();
        public RemoteViews mUserLoadingView;
        public int viewTypeCount;

        public RemoteViewsMetaData() {
            reset();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:13:0x0032 A[Catch: all -> 0x009c, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x000a, B:7:0x000f, B:13:0x0032, B:16:0x0037, B:19:0x0056, B:20:0x0081, B:21:0x009a, B:10:0x0028), top: B:30:0x000a, inners: #0, #1 }] */
        /* JADX WARN: Code duplicated, block: B:15:0x0036  */
        public RemoteViewsFrameLayout createLoadingView(int i2, View view, ViewGroup viewGroup, Object obj, LayoutInflater layoutInflater, RemoteViews.OnClickHandler onClickHandler) {
            boolean z2;
            Context context = viewGroup.getContext();
            RemoteViewsFrameLayout remoteViewsFrameLayout = new RemoteViewsFrameLayout(context);
            synchronized (obj) {
                RemoteViews remoteViews = this.mUserLoadingView;
                if (remoteViews != null) {
                    try {
                        View viewApply = remoteViews.apply(viewGroup.getContext(), viewGroup, onClickHandler);
                        viewApply.setTagInternal(16908905, new Integer(0));
                        remoteViewsFrameLayout.addView(viewApply);
                        z2 = true;
                    } catch (Exception e2) {
                        Log.w(RemoteViewsAdapter.TAG, "Error inflating custom loading view, using default loadingview instead", e2);
                        z2 = false;
                    }
                    if (!z2) {
                        if (this.mFirstViewHeight < 0) {
                            try {
                                View viewApply2 = this.mFirstView.apply(viewGroup.getContext(), viewGroup, onClickHandler);
                                viewApply2.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                                this.mFirstViewHeight = viewApply2.getMeasuredHeight();
                                this.mFirstView = null;
                            } catch (Exception e3) {
                                this.mFirstViewHeight = Math.round(context.getResources().getDisplayMetrics().density * 50.0f);
                                this.mFirstView = null;
                                Log.w(RemoteViewsAdapter.TAG, "Error inflating first RemoteViews" + e3);
                            }
                        }
                        TextView textView = (TextView) layoutInflater.inflate(17367174, (ViewGroup) remoteViewsFrameLayout, false);
                        textView.setHeight(this.mFirstViewHeight);
                        textView.setTag(new Integer(0));
                        remoteViewsFrameLayout.addView(textView);
                    }
                } else {
                    z2 = false;
                    if (!z2) {
                        if (this.mFirstViewHeight < 0) {
                            View viewApply3 = this.mFirstView.apply(viewGroup.getContext(), viewGroup, onClickHandler);
                            viewApply3.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                            this.mFirstViewHeight = viewApply3.getMeasuredHeight();
                            this.mFirstView = null;
                        }
                        TextView textView2 = (TextView) layoutInflater.inflate(17367174, (ViewGroup) remoteViewsFrameLayout, false);
                        textView2.setHeight(this.mFirstViewHeight);
                        textView2.setTag(new Integer(0));
                        remoteViewsFrameLayout.addView(textView2);
                    }
                }
                throw th;
            }
            return remoteViewsFrameLayout;
        }

        public int getMappedViewType(int i2) {
            if (this.mTypeIdIndexMap.containsKey(Integer.valueOf(i2))) {
                return this.mTypeIdIndexMap.get(Integer.valueOf(i2)).intValue();
            }
            int size = this.mTypeIdIndexMap.size() + 1;
            this.mTypeIdIndexMap.put(Integer.valueOf(i2), Integer.valueOf(size));
            return size;
        }

        public boolean isViewTypeInRange(int i2) {
            return getMappedViewType(i2) < this.viewTypeCount;
        }

        public void reset() {
            this.count = 0;
            this.viewTypeCount = 1;
            this.hasStableIds = true;
            this.mUserLoadingView = null;
            this.mFirstView = null;
            this.mFirstViewHeight = 0;
            this.mTypeIdIndexMap.clear();
        }

        public void set(RemoteViewsMetaData remoteViewsMetaData) {
            synchronized (remoteViewsMetaData) {
                this.count = remoteViewsMetaData.count;
                this.viewTypeCount = remoteViewsMetaData.viewTypeCount;
                this.hasStableIds = remoteViewsMetaData.hasStableIds;
                setLoadingViewTemplates(remoteViewsMetaData.mUserLoadingView, remoteViewsMetaData.mFirstView);
            }
        }

        public void setLoadingViewTemplates(RemoteViews remoteViews, RemoteViews remoteViews2) {
            this.mUserLoadingView = remoteViews;
            if (remoteViews2 != null) {
                this.mFirstView = remoteViews2;
                this.mFirstViewHeight = -1;
            }
        }
    }

    public RemoteViewsAdapter(Context context, Intent intent, RemoteAdapterConnectionCallback remoteAdapterConnectionCallback) {
        this.mDataReady = false;
        this.mContext = context;
        this.mIntent = intent;
        int intExtra = intent.getIntExtra(RemoteViews.EXTRA_REMOTEADAPTER_APPWIDGET_ID, -1);
        this.mAppWidgetId = intExtra;
        this.mLayoutInflater = LayoutInflater.from(context);
        if (intent == null) {
            throw new IllegalArgumentException("Non-null Intent must be specified.");
        }
        this.mRequestedViews = new RemoteViewsFrameLayoutRefSet();
        checkInteractAcrossUsersPermission(context, UserHandle.myUserId());
        this.mUserId = context.getUserId();
        if (intent.hasExtra(RemoteViews.EXTRA_REMOTEADAPTER_APPWIDGET_ID)) {
            intent.removeExtra(RemoteViews.EXTRA_REMOTEADAPTER_APPWIDGET_ID);
        }
        HandlerThread handlerThread = new HandlerThread("RemoteViewsCache-loader");
        this.mWorkerThread = handlerThread;
        handlerThread.start();
        this.mWorkerQueue = new Handler(this.mWorkerThread.getLooper());
        this.mMainQueue = new Handler(Looper.myLooper(), this);
        if (sCacheRemovalThread == null) {
            HandlerThread handlerThread2 = new HandlerThread("RemoteViewsAdapter-cachePruner");
            sCacheRemovalThread = handlerThread2;
            handlerThread2.start();
            sCacheRemovalQueue = new Handler(sCacheRemovalThread.getLooper());
        }
        this.mCallback = new WeakReference<>(remoteAdapterConnectionCallback);
        this.mServiceConnection = new RemoteViewsAdapterServiceConnection(this);
        RemoteViewsCacheKey remoteViewsCacheKey = new RemoteViewsCacheKey(new Intent.FilterComparison(intent), intExtra, this.mUserId);
        HashMap<RemoteViewsCacheKey, FixedSizeRemoteViewsCache> map = sCachedRemoteViewsCaches;
        synchronized (map) {
            if (map.containsKey(remoteViewsCacheKey)) {
                FixedSizeRemoteViewsCache fixedSizeRemoteViewsCache = map.get(remoteViewsCacheKey);
                this.mCache = fixedSizeRemoteViewsCache;
                synchronized (fixedSizeRemoteViewsCache.mMetaData) {
                    if (this.mCache.mMetaData.count > 0) {
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
    public static void checkInteractAcrossUsersPermission(Context context, int i2) {
        if (context.getUserId() != i2 && context.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            throw new SecurityException("Must have permission android.permission.INTERACT_ACROSS_USERS_FULL to inflate another user's widget");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enqueueDeferredUnbindServiceMessage() {
        this.mMainQueue.removeMessages(1);
        this.mMainQueue.sendEmptyMessageDelayed(1, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
    }

    private int getConvertViewTypeId(View view) {
        Object tag;
        if (view == null || (tag = view.getTag(16908905)) == null) {
            return -1;
        }
        return ((Integer) tag).intValue();
    }

    private ArrayList<Integer> getVisibleWindow(int i2, int i3, int i4) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        if ((i2 != 0 || i3 != 0) && i2 >= 0 && i3 >= 0) {
            if (i2 <= i3) {
                while (i2 <= i3) {
                    arrayList.add(Integer.valueOf(i2));
                    i2++;
                }
            } else {
                while (i2 < i4) {
                    arrayList.add(Integer.valueOf(i2));
                    i2++;
                }
                for (int i5 = 0; i5 <= i3; i5++) {
                    arrayList.add(Integer.valueOf(i5));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNextIndexInBackground() {
        this.mWorkerQueue.post(new Runnable() { // from class: android.widget.RemoteViewsAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                if (RemoteViewsAdapter.this.mServiceConnection.isConnected()) {
                    synchronized (RemoteViewsAdapter.this.mCache) {
                        i2 = RemoteViewsAdapter.this.mCache.getNextIndexToLoad()[0];
                    }
                    if (i2 <= -1) {
                        RemoteViewsAdapter.this.enqueueDeferredUnbindServiceMessage();
                    } else {
                        RemoteViewsAdapter.this.updateRemoteViews(i2, true);
                        RemoteViewsAdapter.this.loadNextIndexInBackground();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNotifyDataSetChanged() {
        int i2;
        ArrayList<Integer> visibleWindow;
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
            Iterator<Integer> it = visibleWindow.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                if (iIntValue < i2) {
                    updateRemoteViews(iIntValue, false);
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
        Log.e(TAG, "Error in " + str + ": " + exc.getMessage());
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
        e remoteViewsFactory = this.mServiceConnection.getRemoteViewsFactory();
        try {
            final RemoteViews viewAt = remoteViewsFactory.getViewAt(i2);
            viewAt.setUser(new UserHandle(this.mUserId));
            long itemId = remoteViewsFactory.getItemId(i2);
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
            Log.e(TAG, "Error in updateRemoteViews(" + i2 + "): " + e2.getMessage());
        } catch (RuntimeException e3) {
            Log.e(TAG, "Error in updateRemoteViews(" + i2 + "): " + e3.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTemporaryMetaData() {
        e remoteViewsFactory = this.mServiceConnection.getRemoteViewsFactory();
        try {
            boolean zHasStableIds = remoteViewsFactory.hasStableIds();
            int viewTypeCount = remoteViewsFactory.getViewTypeCount();
            int count = remoteViewsFactory.getCount();
            RemoteViews loadingView = remoteViewsFactory.getLoadingView();
            RemoteViews viewAt = null;
            if (count > 0 && loadingView == null) {
                viewAt = remoteViewsFactory.getViewAt(0);
            }
            RemoteViewsMetaData temporaryMetaData = this.mCache.getTemporaryMetaData();
            synchronized (temporaryMetaData) {
                try {
                    temporaryMetaData.hasStableIds = zHasStableIds;
                    temporaryMetaData.viewTypeCount = viewTypeCount + 1;
                    temporaryMetaData.count = count;
                    temporaryMetaData.setLoadingViewTemplates(loadingView, viewAt);
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
        RemoteViewsFrameLayout remoteViewsFrameLayoutCreateLoadingView;
        View childAt;
        synchronized (this.mCache) {
            boolean zContainsRemoteViewAt = this.mCache.containsRemoteViewAt(i2);
            boolean zIsConnected = this.mServiceConnection.isConnected();
            if (view != null && (view instanceof RemoteViewsFrameLayout)) {
                this.mRequestedViews.removeView((RemoteViewsFrameLayout) view);
            }
            int convertViewTypeId = 0;
            if (zContainsRemoteViewAt || zIsConnected) {
                zQueuePositionsToBePreloadedFromRequestedPosition = this.mCache.queuePositionsToBePreloadedFromRequestedPosition(i2);
            } else {
                requestBindService();
                zQueuePositionsToBePreloadedFromRequestedPosition = false;
            }
            if (!zContainsRemoteViewAt) {
                RemoteViewsMetaData metaData = this.mCache.getMetaData();
                synchronized (metaData) {
                    remoteViewsFrameLayoutCreateLoadingView = metaData.createLoadingView(i2, view, viewGroup, this.mCache, this.mLayoutInflater, this.mRemoteViewsOnClickHandler);
                }
                this.mRequestedViews.add(i2, remoteViewsFrameLayoutCreateLoadingView);
                this.mCache.queueRequestedPositionToLoad(i2);
                loadNextIndexInBackground();
                return remoteViewsFrameLayoutCreateLoadingView;
            }
            RemoteViewsFrameLayout remoteViewsFrameLayout = null;
            if (view instanceof RemoteViewsFrameLayout) {
                remoteViewsFrameLayout = (RemoteViewsFrameLayout) view;
                childAt = remoteViewsFrameLayout.getChildAt(0);
                convertViewTypeId = getConvertViewTypeId(childAt);
            } else {
                childAt = null;
            }
            Context context = viewGroup.getContext();
            RemoteViews remoteViewsAt = this.mCache.getRemoteViewsAt(i2);
            int i3 = this.mCache.getMetaDataAt(i2).typeId;
            try {
                if (remoteViewsFrameLayout == null) {
                    remoteViewsFrameLayout = new RemoteViewsFrameLayout(context);
                } else {
                    if (convertViewTypeId == i3) {
                        remoteViewsAt.reapply(context, childAt, this.mRemoteViewsOnClickHandler);
                        if (zQueuePositionsToBePreloadedFromRequestedPosition) {
                            loadNextIndexInBackground();
                        }
                        return remoteViewsFrameLayout;
                    }
                    remoteViewsFrameLayout.removeAllViews();
                }
                View viewApply = remoteViewsAt.apply(context, viewGroup, this.mRemoteViewsOnClickHandler);
                viewApply.setTagInternal(16908905, new Integer(i3));
                remoteViewsFrameLayout.addView(viewApply);
                if (zQueuePositionsToBePreloadedFromRequestedPosition) {
                    loadNextIndexInBackground();
                }
                return remoteViewsFrameLayout;
            } catch (Exception e2) {
                Log.w(TAG, "Error inflating RemoteViews at position: " + i2 + ", usingloading view instead" + e2);
                RemoteViewsMetaData metaData2 = this.mCache.getMetaData();
                synchronized (metaData2) {
                    return metaData2.createLoadingView(i2, view, viewGroup, this.mCache, this.mLayoutInflater, this.mRemoteViewsOnClickHandler);
                }
            } finally {
                if (zQueuePositionsToBePreloadedFromRequestedPosition) {
                    loadNextIndexInBackground();
                }
            }
            throw th;
        }
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
            if (this.mNotifyDataSetChangedAfterOnServiceConnected) {
                return;
            }
            this.mNotifyDataSetChangedAfterOnServiceConnected = true;
            requestBindService();
        }
    }

    public void saveRemoteViewsCache() {
        int i2;
        int size;
        final RemoteViewsCacheKey remoteViewsCacheKey = new RemoteViewsCacheKey(new Intent.FilterComparison(this.mIntent), this.mAppWidgetId, this.mUserId);
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
