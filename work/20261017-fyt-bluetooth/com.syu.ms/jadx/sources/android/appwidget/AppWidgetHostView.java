package android.appwidget;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.UserHandle;
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

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetHostView extends FrameLayout {
    public static final boolean CROSSFADE = false;
    public static final int FADE_DURATION = 1000;
    public static final boolean LOGD = false;
    public static final String TAG = "AppWidgetHostView";
    public static final int VIEW_MODE_CONTENT = 1;
    public static final int VIEW_MODE_DEFAULT = 3;
    public static final int VIEW_MODE_ERROR = 2;
    public static final int VIEW_MODE_NOINIT = 0;
    public static final LayoutInflater.Filter sInflaterFilter = new LayoutInflater.Filter() { // from class: android.appwidget.AppWidgetHostView.1
        @Override // android.view.LayoutInflater.Filter
        public boolean onLoadClass(Class cls) {
            return cls.isAnnotationPresent(RemoteViews.RemoteView.class);
        }
    };
    public int mAppWidgetId;
    public Context mContext;
    public long mFadeStartTime;
    public AppWidgetProviderInfo mInfo;
    public int mLayoutId;
    public Bitmap mOld;
    public Paint mOldPaint;
    private RemoteViews.OnClickHandler mOnClickHandler;
    public Context mRemoteContext;
    private UserHandle mUser;
    public View mView;
    public int mViewMode;

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

    public AppWidgetHostView(Context context) {
        this(context, R.anim.fade_in, R.anim.fade_out);
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
                rect.left = resources.getDimensionPixelSize(17104976);
                rect.right = resources.getDimensionPixelSize(17104978);
                rect.top = resources.getDimensionPixelSize(17104977);
                rect.bottom = resources.getDimensionPixelSize(17104979);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return rect;
    }

    private Context getRemoteContext(RemoteViews remoteViews) {
        String str = remoteViews.getPackage();
        if (str == null) {
            return this.mContext;
        }
        try {
            return this.mContext.createPackageContextAsUser(str, 4, this.mUser);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "Package name " + str + " not found");
            return this.mContext;
        }
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
            StringBuilder sb = new StringBuilder();
            sb.append("failed to restoreInstanceState for widget id: ");
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
        Exception exc = null;
        try {
            AppWidgetProviderInfo appWidgetProviderInfo = this.mInfo;
            if (appWidgetProviderInfo != null) {
                Context contextCreatePackageContextAsUser = this.mContext.createPackageContextAsUser(appWidgetProviderInfo.provider.getPackageName(), 4, this.mUser);
                this.mRemoteContext = contextCreatePackageContextAsUser;
                LayoutInflater layoutInflaterCloneInContext = ((LayoutInflater) contextCreatePackageContextAsUser.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).cloneInContext(contextCreatePackageContextAsUser);
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
        } catch (PackageManager.NameNotFoundException | RuntimeException e2) {
            exc = e2;
            viewInflate = null;
        }
        if (exc != null) {
            Log.w(TAG, "Error inflating AppWidget " + this.mInfo + ": " + exc.toString());
        }
        return viewInflate == null ? getErrorView() : viewInflate;
    }

    public View getErrorView() {
        TextView textView = new TextView(this.mContext);
        textView.setText(17040545);
        textView.setBackgroundColor(Color.argb(127, 0, 0, 0));
        return textView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AppWidgetHostView.class.getName());
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
            setContentDescription(appWidgetProviderInfo.label);
        }
    }

    public void setOnClickHandler(RemoteViews.OnClickHandler onClickHandler) {
        this.mOnClickHandler = onClickHandler;
    }

    public void setUserId(int i2) {
        this.mUser = new UserHandle(i2);
    }

    public void updateAppWidget(RemoteViews remoteViews) {
        View viewApply;
        View view = null;
        RuntimeException runtimeException = null;
        view = null;
        boolean z2 = false;
        if (remoteViews != null) {
            this.mRemoteContext = getRemoteContext(remoteViews);
            int layoutId = remoteViews.getLayoutId();
            if (layoutId == this.mLayoutId) {
                try {
                    remoteViews.reapply(this.mContext, this.mView, this.mOnClickHandler);
                    e = null;
                    view = this.mView;
                    z2 = true;
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
        } else {
            if (this.mViewMode == 3) {
                return;
            }
            viewApply = getDefaultView();
            this.mLayoutId = -1;
            this.mViewMode = 3;
        }
        if (viewApply == null) {
            if (this.mViewMode == 2) {
                return;
            }
            Log.w(TAG, "updateAppWidget couldn't find any view, using error view", runtimeException);
            viewApply = getErrorView();
            this.mViewMode = 2;
        }
        if (!z2) {
            prepareView(viewApply);
            addView(viewApply);
        }
        View view3 = this.mView;
        if (view3 != viewApply) {
            removeView(view3);
            this.mView = viewApply;
        }
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
        this(context, R.anim.fade_in, R.anim.fade_out);
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
        this.mUser = Process.myUserHandle();
        setIsRootNamespace(true);
    }
}
