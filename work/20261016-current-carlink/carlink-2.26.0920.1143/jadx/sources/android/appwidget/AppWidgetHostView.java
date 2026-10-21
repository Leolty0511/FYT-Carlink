package android.appwidget;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import android.widget.RemoteViewsAdapter;
import android.widget.TextView;
import com.android.internal.R;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetHostView extends FrameLayout {
    static final boolean CROSSFADE = false;
    static final int FADE_DURATION = 1000;
    static final boolean LOGD = false;
    static final String TAG = "AppWidgetHostView";
    static final int VIEW_MODE_CONTENT = 1;
    static final int VIEW_MODE_DEFAULT = 3;
    static final int VIEW_MODE_ERROR = 2;
    static final int VIEW_MODE_NOINIT = 0;
    static final LayoutInflater.Filter sInflaterFilter = new LayoutInflater.Filter() { // from class: android.appwidget.AppWidgetHostView.1
        @Override // android.view.LayoutInflater.Filter
        public boolean onLoadClass(Class cls) {
            return cls.isAnnotationPresent(RemoteViews.RemoteView.class);
        }
    };
    int mAppWidgetId;
    private Executor mAsyncExecutor;
    Context mContext;
    long mFadeStartTime;
    AppWidgetProviderInfo mInfo;
    private CancellationSignal mLastExecutionSignal;
    int mLayoutId;
    Bitmap mOld;
    Paint mOldPaint;
    private RemoteViews.OnClickHandler mOnClickHandler;
    Context mRemoteContext;
    View mView;
    int mViewMode;

    public static class ParcelableSparseArray extends SparseArray<Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableSparseArray> CREATOR = new Parcelable.Creator<ParcelableSparseArray>() { // from class: android.appwidget.AppWidgetHostView.ParcelableSparseArray.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableSparseArray createFromParcel(Parcel parcel) {
                ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                ClassLoader classLoader = ParcelableSparseArray.class.getClassLoader();
                int i2 = parcel.readInt();
                for (int i3 = 0; i3 < i2; i3++) {
                    parcelableSparseArray.put(parcel.readInt(), parcel.readParcelable(classLoader));
                }
                return parcelableSparseArray;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableSparseArray[] newArray(int i2) {
                return new ParcelableSparseArray[i2];
            }
        };

        private ParcelableSparseArray() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int size = size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                parcel.writeInt(keyAt(i3));
                parcel.writeParcelable(valueAt(i3), 0);
            }
        }
    }

    public class ViewApplyListener implements RemoteViews.OnViewAppliedListener {
        private final boolean mIsReapply;
        private final int mLayoutId;
        private final RemoteViews mViews;

        public ViewApplyListener(RemoteViews remoteViews, int i2, boolean z2) {
            this.mViews = remoteViews;
            this.mLayoutId = i2;
            this.mIsReapply = z2;
        }

        @Override // android.widget.RemoteViews.OnViewAppliedListener
        public void onError(Exception exc) {
            if (!this.mIsReapply) {
                AppWidgetHostView.this.applyContent(null, false, exc);
            } else {
                AppWidgetHostView appWidgetHostView = AppWidgetHostView.this;
                appWidgetHostView.mLastExecutionSignal = this.mViews.applyAsync(appWidgetHostView.mContext, appWidgetHostView, appWidgetHostView.mAsyncExecutor, AppWidgetHostView.this.new ViewApplyListener(this.mViews, this.mLayoutId, false), AppWidgetHostView.this.mOnClickHandler);
            }
        }

        @Override // android.widget.RemoteViews.OnViewAppliedListener
        public void onViewApplied(View view) {
            AppWidgetHostView appWidgetHostView = AppWidgetHostView.this;
            appWidgetHostView.mLayoutId = this.mLayoutId;
            appWidgetHostView.mViewMode = 1;
            appWidgetHostView.applyContent(view, this.mIsReapply, null);
        }
    }

    public AppWidgetHostView(Context context) {
        this(context, 17432576, 17432577);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyContent(View view, boolean z2, Exception exc) {
        if (view == null) {
            if (this.mViewMode == 2) {
                return;
            }
            Log.w(TAG, "updateAppWidget couldn't find any view, using error view", exc);
            view = getErrorView();
            this.mViewMode = 2;
        }
        if (!z2) {
            prepareView(view);
            addView(view);
        }
        View view2 = this.mView;
        if (view2 != view) {
            removeView(view2);
            this.mView = view;
        }
    }

    private int generateId() {
        int id = getId();
        return id == -1 ? this.mAppWidgetId : id;
    }

    public static Rect getDefaultPaddingForWidget(Context context, ComponentName componentName, Rect rect) {
        PackageManager packageManager = context.getPackageManager();
        if (rect == null) {
            rect = new Rect(0, 0, 0, 0);
        } else {
            rect.set(0, 0, 0, 0);
        }
        try {
            if (packageManager.getApplicationInfo(componentName.getPackageName(), 0).targetSdkVersion >= 14) {
                Resources resources = context.getResources();
                rect.left = resources.getDimensionPixelSize(R.dimen.default_app_widget_padding_left);
                rect.right = resources.getDimensionPixelSize(R.dimen.default_app_widget_padding_right);
                rect.top = resources.getDimensionPixelSize(R.dimen.default_app_widget_padding_top);
                rect.bottom = resources.getDimensionPixelSize(R.dimen.default_app_widget_padding_bottom);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return rect;
    }

    private void inflateAsync(RemoteViews remoteViews) {
        View view;
        this.mRemoteContext = getRemoteContext();
        int layoutId = remoteViews.getLayoutId();
        if (layoutId == this.mLayoutId && (view = this.mView) != null) {
            try {
                this.mLastExecutionSignal = remoteViews.reapplyAsync(this.mContext, view, this.mAsyncExecutor, new ViewApplyListener(remoteViews, layoutId, true), this.mOnClickHandler);
            } catch (Exception unused) {
            }
        }
        if (this.mLastExecutionSignal == null) {
            this.mLastExecutionSignal = remoteViews.applyAsync(this.mContext, this, this.mAsyncExecutor, new ViewApplyListener(remoteViews, layoutId, false), this.mOnClickHandler);
        }
    }

    private void updateContentDescription(AppWidgetProviderInfo appWidgetProviderInfo) {
        ApplicationInfo applicationInfo;
        if (appWidgetProviderInfo != null) {
            try {
                applicationInfo = ((LauncherApps) getContext().getSystemService(LauncherApps.class)).getApplicationInfo(appWidgetProviderInfo.provider.getPackageName(), 0, appWidgetProviderInfo.getProfile());
            } catch (PackageManager.NameNotFoundException unused) {
                applicationInfo = null;
            }
            if (applicationInfo == null || (applicationInfo.flags & 1073741824) == 0) {
                setContentDescription(appWidgetProviderInfo.label);
            } else {
                setContentDescription(Resources.getSystem().getString(R.string.suspended_widget_accessibility, appWidgetProviderInfo.label));
            }
        }
    }

    public void applyRemoteViews(RemoteViews remoteViews, boolean z2) {
        View viewApply;
        CancellationSignal cancellationSignal = this.mLastExecutionSignal;
        View view = null;
        RuntimeException runtimeException = null;
        view = null;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mLastExecutionSignal = null;
        }
        boolean z3 = false;
        if (remoteViews == null) {
            if (this.mViewMode == 3) {
                return;
            }
            viewApply = getDefaultView();
            this.mLayoutId = -1;
            this.mViewMode = 3;
        } else {
            if (this.mAsyncExecutor != null && z2) {
                inflateAsync(remoteViews);
                return;
            }
            this.mRemoteContext = getRemoteContext();
            int layoutId = remoteViews.getLayoutId();
            if (layoutId == this.mLayoutId) {
                try {
                    remoteViews.reapply(this.mContext, this.mView, this.mOnClickHandler);
                    e = null;
                    view = this.mView;
                    z3 = true;
                } catch (RuntimeException e2) {
                    e = e2;
                }
            } else {
                e = null;
            }
            if (view == null) {
                try {
                    viewApply = remoteViews.apply(this.mContext, this, this.mOnClickHandler);
                } catch (RuntimeException e3) {
                    View view2 = view;
                    runtimeException = e3;
                    viewApply = view2;
                }
            } else {
                viewApply = view;
            }
            runtimeException = e;
            this.mLayoutId = layoutId;
            this.mViewMode = 1;
        }
        applyContent(viewApply, z3, runtimeException);
        updateContentDescription(this.mInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(generateId());
        ParcelableSparseArray parcelableSparseArray = (parcelable == null || !(parcelable instanceof ParcelableSparseArray)) ? null : (ParcelableSparseArray) parcelable;
        if (parcelableSparseArray == null) {
            parcelableSparseArray = new ParcelableSparseArray();
        }
        try {
            super.dispatchRestoreInstanceState(parcelableSparseArray);
        } catch (Exception e2) {
            StringBuilder sb = new StringBuilder("failed to restoreInstanceState for widget id: ");
            sb.append(this.mAppWidgetId);
            sb.append(", ");
            sb.append(this.mInfo == null ? "null" : this.mInfo.provider);
            Log.e(TAG, sb.toString(), e2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        super.dispatchSaveInstanceState(parcelableSparseArray);
        sparseArray.put(generateId(), parcelableSparseArray);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public int getAppWidgetId() {
        return this.mAppWidgetId;
    }

    public AppWidgetProviderInfo getAppWidgetInfo() {
        return this.mInfo;
    }

    public View getDefaultView() {
        View viewInflate;
        int i2;
        RuntimeException runtimeException = null;
        try {
            if (this.mInfo != null) {
                Context remoteContext = getRemoteContext();
                this.mRemoteContext = remoteContext;
                LayoutInflater layoutInflaterCloneInContext = ((LayoutInflater) remoteContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).cloneInContext(remoteContext);
                layoutInflaterCloneInContext.setFilter(sInflaterFilter);
                Bundle appWidgetOptions = AppWidgetManager.getInstance(this.mContext).getAppWidgetOptions(this.mAppWidgetId);
                int i3 = this.mInfo.initialLayout;
                if (appWidgetOptions.containsKey(AppWidgetManager.OPTION_APPWIDGET_HOST_CATEGORY) && appWidgetOptions.getInt(AppWidgetManager.OPTION_APPWIDGET_HOST_CATEGORY) == 2 && (i2 = this.mInfo.initialKeyguardLayout) != 0) {
                    i3 = i2;
                }
                viewInflate = layoutInflaterCloneInContext.inflate(i3, (ViewGroup) this, false);
            } else {
                Log.w(TAG, "can't inflate defaultView because mInfo is missing");
                viewInflate = null;
            }
        } catch (RuntimeException e2) {
            runtimeException = e2;
            viewInflate = null;
        }
        if (runtimeException != null) {
            Log.w(TAG, "Error inflating AppWidget " + this.mInfo + ": " + runtimeException.toString());
        }
        return viewInflate == null ? getErrorView() : viewInflate;
    }

    public View getErrorView() {
        TextView textView = new TextView(this.mContext);
        textView.setText(R.string.gadget_host_error_inflating);
        textView.setBackgroundColor(Color.argb(127, 0, 0, 0));
        return textView;
    }

    public Context getRemoteContext() {
        try {
            return this.mContext.createApplicationContext(this.mInfo.providerInfo.applicationInfo, 4);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "Package name " + this.mInfo.providerInfo.packageName + " not found");
            return this.mContext;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AppWidgetHostView.class.getName());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        try {
            super.onLayout(z2, i2, i3, i4, i5);
        } catch (RuntimeException e2) {
            Log.e(TAG, "Remote provider threw runtime exception, using error view instead.", e2);
            removeViewInLayout(this.mView);
            View errorView = getErrorView();
            prepareView(errorView);
            addViewInLayout(errorView, 0, errorView.getLayoutParams());
            measureChild(errorView, View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            errorView.layout(0, 0, errorView.getMeasuredWidth() + this.mPaddingLeft + this.mPaddingRight, errorView.getMeasuredHeight() + this.mPaddingTop + this.mPaddingBottom);
            this.mView = errorView;
            this.mViewMode = 2;
        }
    }

    public void prepareView(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1);
        }
        layoutParams.gravity = 17;
        view.setLayoutParams(layoutParams);
    }

    public void resetAppWidget(AppWidgetProviderInfo appWidgetProviderInfo) {
        this.mInfo = appWidgetProviderInfo;
        this.mViewMode = 0;
        updateAppWidget(null);
    }

    public void setAppWidget(int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        this.mAppWidgetId = i2;
        this.mInfo = appWidgetProviderInfo;
        if (appWidgetProviderInfo != null) {
            Rect defaultPaddingForWidget = getDefaultPaddingForWidget(this.mContext, appWidgetProviderInfo.provider, null);
            setPadding(defaultPaddingForWidget.left, defaultPaddingForWidget.top, defaultPaddingForWidget.right, defaultPaddingForWidget.bottom);
            updateContentDescription(appWidgetProviderInfo);
        }
    }

    public void setExecutor(Executor executor) {
        CancellationSignal cancellationSignal = this.mLastExecutionSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mLastExecutionSignal = null;
        }
        this.mAsyncExecutor = executor;
    }

    public void setOnClickHandler(RemoteViews.OnClickHandler onClickHandler) {
        this.mOnClickHandler = onClickHandler;
    }

    public void updateAppWidget(RemoteViews remoteViews) {
        applyRemoteViews(remoteViews, true);
    }

    public void updateAppWidgetOptions(Bundle bundle) {
        AppWidgetManager.getInstance(this.mContext).updateAppWidgetOptions(this.mAppWidgetId, bundle);
    }

    public void updateAppWidgetSize(Bundle bundle, int i2, int i3, int i4, int i5) {
        updateAppWidgetSize(bundle, i2, i3, i4, i5, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void viewDataChanged(int i2) {
        View viewFindViewById = findViewById(i2);
        if (viewFindViewById == null || !(viewFindViewById instanceof AdapterView)) {
            return;
        }
        AdapterView adapterView = (AdapterView) viewFindViewById;
        Adapter adapter = adapterView.getAdapter();
        if (adapter instanceof BaseAdapter) {
            ((BaseAdapter) adapter).notifyDataSetChanged();
        } else if (adapter == null && (adapterView instanceof RemoteViewsAdapter.RemoteAdapterConnectionCallback)) {
            ((RemoteViewsAdapter.RemoteAdapterConnectionCallback) adapterView).deferNotifyDataSetChanged();
        }
    }

    public AppWidgetHostView(Context context, RemoteViews.OnClickHandler onClickHandler) {
        this(context, 17432576, 17432577);
        this.mOnClickHandler = onClickHandler;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = this.mRemoteContext;
        if (context == null) {
            context = this.mContext;
        }
        return new FrameLayout.LayoutParams(context, attributeSet);
    }

    public void updateAppWidgetSize(Bundle bundle, int i2, int i3, int i4, int i5, boolean z2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        Rect rect = new Rect();
        AppWidgetProviderInfo appWidgetProviderInfo = this.mInfo;
        if (appWidgetProviderInfo != null) {
            rect = getDefaultPaddingForWidget(this.mContext, appWidgetProviderInfo.provider, rect);
        }
        float f2 = getResources().getDisplayMetrics().density;
        int i6 = (int) ((rect.left + rect.right) / f2);
        int i7 = (int) ((rect.top + rect.bottom) / f2);
        int i8 = i2 - (z2 ? 0 : i6);
        int i9 = i3 - (z2 ? 0 : i7);
        if (z2) {
            i6 = 0;
        }
        int i10 = i4 - i6;
        if (z2) {
            i7 = 0;
        }
        int i11 = i5 - i7;
        Bundle appWidgetOptions = AppWidgetManager.getInstance(this.mContext).getAppWidgetOptions(this.mAppWidgetId);
        if ((i8 == appWidgetOptions.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH) && i9 == appWidgetOptions.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT) && i10 == appWidgetOptions.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH) && i11 == appWidgetOptions.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT)) ? false : true) {
            bundle.putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH, i8);
            bundle.putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT, i9);
            bundle.putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH, i10);
            bundle.putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT, i11);
            updateAppWidgetOptions(bundle);
        }
    }

    public AppWidgetHostView(Context context, int i2, int i3) {
        super(context);
        this.mViewMode = 0;
        this.mLayoutId = -1;
        this.mFadeStartTime = -1L;
        this.mOldPaint = new Paint();
        this.mContext = context;
        setIsRootNamespace(true);
    }
}
