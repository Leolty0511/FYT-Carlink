package android.widget;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.android.internal.widget.IRemoteViewsFactory;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RemoteViewsService extends Service {
    private static final String LOG_TAG = "RemoteViewsService";
    private static final HashMap<Intent.FilterComparison, RemoteViewsFactory> sRemoteViewFactories = new HashMap<>();
    private static final Object sLock = new Object();

    public interface RemoteViewsFactory {
        int getCount();

        long getItemId(int i2);

        RemoteViews getLoadingView();

        RemoteViews getViewAt(int i2);

        int getViewTypeCount();

        boolean hasStableIds();

        void onCreate();

        void onDataSetChanged();

        void onDestroy();
    }

    public static class RemoteViewsFactoryAdapter extends IRemoteViewsFactory.Stub {
        private RemoteViewsFactory mFactory;
        private boolean mIsCreated;

        public RemoteViewsFactoryAdapter(RemoteViewsFactory remoteViewsFactory, boolean z2) {
            this.mFactory = remoteViewsFactory;
            this.mIsCreated = z2;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized int getCount() {
            int count;
            try {
                count = this.mFactory.getCount();
            } catch (Exception e2) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
                count = 0;
            }
            return count;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized long getItemId(int i2) {
            long itemId;
            try {
                itemId = this.mFactory.getItemId(i2);
            } catch (Exception e2) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
                itemId = 0;
            }
            return itemId;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized RemoteViews getLoadingView() {
            RemoteViews loadingView;
            try {
                loadingView = this.mFactory.getLoadingView();
            } catch (Exception e2) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
                loadingView = null;
            }
            return loadingView;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized RemoteViews getViewAt(int i2) {
            RemoteViews viewAt;
            viewAt = null;
            try {
                viewAt = this.mFactory.getViewAt(i2);
                if (viewAt != null) {
                    viewAt.setIsWidgetCollectionChild(true);
                }
            } catch (Exception e2) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
            }
            return viewAt;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized int getViewTypeCount() {
            int viewTypeCount;
            try {
                viewTypeCount = this.mFactory.getViewTypeCount();
            } catch (Exception e2) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
                viewTypeCount = 0;
            }
            return viewTypeCount;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized boolean hasStableIds() {
            boolean zHasStableIds;
            try {
                zHasStableIds = this.mFactory.hasStableIds();
            } catch (Exception e2) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
                zHasStableIds = false;
            }
            return zHasStableIds;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized boolean isCreated() {
            return this.mIsCreated;
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized void onDataSetChanged() {
            try {
                this.mFactory.onDataSetChanged();
            } catch (Exception e2) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
            }
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public synchronized void onDataSetChangedAsync() {
            onDataSetChanged();
        }

        @Override // com.android.internal.widget.IRemoteViewsFactory
        public void onDestroy(Intent intent) {
            synchronized (RemoteViewsService.sLock) {
                Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
                if (RemoteViewsService.sRemoteViewFactories.containsKey(filterComparison)) {
                    try {
                        ((RemoteViewsFactory) RemoteViewsService.sRemoteViewFactories.get(filterComparison)).onDestroy();
                    } catch (Exception e2) {
                        Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e2);
                    }
                    RemoteViewsService.sRemoteViewFactories.remove(filterComparison);
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        RemoteViewsFactory remoteViewsFactoryOnGetViewFactory;
        boolean z2;
        RemoteViewsFactoryAdapter remoteViewsFactoryAdapter;
        synchronized (sLock) {
            Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
            HashMap<Intent.FilterComparison, RemoteViewsFactory> map = sRemoteViewFactories;
            if (map.containsKey(filterComparison)) {
                remoteViewsFactoryOnGetViewFactory = map.get(filterComparison);
                z2 = true;
            } else {
                remoteViewsFactoryOnGetViewFactory = onGetViewFactory(intent);
                map.put(filterComparison, remoteViewsFactoryOnGetViewFactory);
                remoteViewsFactoryOnGetViewFactory.onCreate();
                z2 = false;
            }
            remoteViewsFactoryAdapter = new RemoteViewsFactoryAdapter(remoteViewsFactoryOnGetViewFactory, z2);
        }
        return remoteViewsFactoryAdapter;
    }

    public abstract RemoteViewsFactory onGetViewFactory(Intent intent);
}
