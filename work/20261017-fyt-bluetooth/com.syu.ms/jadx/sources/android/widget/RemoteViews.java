package android.widget;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.StrictMode;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import libcore.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RemoteViews implements Parcelable, LayoutInflater.Filter {
    public static final String EXTRA_REMOTEADAPTER_APPWIDGET_ID = "remoteAdapterAppWidgetId";
    private static final String LOG_TAG = "RemoteViews";
    private static final int MODE_HAS_LANDSCAPE_AND_PORTRAIT = 1;
    private static final int MODE_NORMAL = 0;
    private ArrayList<Action> mActions;
    private BitmapCache mBitmapCache;
    private boolean mIsRoot;
    private boolean mIsWidgetCollectionChild;
    private RemoteViews mLandscape;
    private final int mLayoutId;
    private MemoryUsageCounter mMemoryUsageCounter;
    private final String mPackage;
    private final MutablePair<String, Class<?>> mPair;
    private RemoteViews mPortrait;
    private UserHandle mUser;
    private static final OnClickHandler DEFAULT_ON_CLICK_HANDLER = new OnClickHandler();
    private static final Object[] sMethodsLock = new Object[0];
    private static final ArrayMap<Class<? extends View>, ArrayMap<MutablePair<String, Class<?>>, Method>> sMethods = new ArrayMap<>();
    private static final ThreadLocal<Object[]> sInvokeArgsTls = new ThreadLocal<Object[]>() { // from class: android.widget.RemoteViews.1
        @Override // java.lang.ThreadLocal
        public Object[] initialValue() {
            return new Object[1];
        }
    };
    public static final Parcelable.Creator<RemoteViews> CREATOR = new Parcelable.Creator<RemoteViews>() { // from class: android.widget.RemoteViews.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteViews createFromParcel(Parcel parcel) {
            return new RemoteViews(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteViews[] newArray(int i2) {
            return new RemoteViews[i2];
        }
    };

    /* JADX INFO: renamed from: android.widget.RemoteViews$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static abstract class Action implements Parcelable {
        public static final int MERGE_APPEND = 1;
        public static final int MERGE_IGNORE = 2;
        public static final int MERGE_REPLACE = 0;
        public int viewId;

        private Action() {
        }

        public abstract void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler);

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public abstract String getActionName();

        public String getUniqueKey() {
            return getActionName() + this.viewId;
        }

        public int mergeBehavior() {
            return 0;
        }

        public void setBitmapCache(BitmapCache bitmapCache) {
        }

        public void updateMemoryUsageEstimate(MemoryUsageCounter memoryUsageCounter) {
        }
    }

    public static class ActionException extends RuntimeException {
        public ActionException(Exception exc) {
            super(exc);
        }

        public ActionException(String str) {
            super(str);
        }
    }

    public class MemoryUsageCounter {
        public int mMemoryUsage;

        private MemoryUsageCounter() {
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001b  */
        public void addBitmapMemory(Bitmap bitmap) {
            Bitmap.Config config = bitmap.getConfig();
            int i2 = 2;
            if (config == null) {
                i2 = 4;
            } else {
                int i3 = AnonymousClass3.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
                if (i3 == 1) {
                    i2 = 1;
                } else if (i3 != 2 && i3 != 3) {
                    i2 = 4;
                }
            }
            increment(bitmap.getWidth() * bitmap.getHeight() * i2);
        }

        public void clear() {
            this.mMemoryUsage = 0;
        }

        public int getMemoryUsage() {
            return this.mMemoryUsage;
        }

        public void increment(int i2) {
            this.mMemoryUsage += i2;
        }
    }

    public static class MutablePair<F, S> {
        public F first;
        public S second;

        public MutablePair(F f2, S s2) {
            this.first = f2;
            this.second = s2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof MutablePair)) {
                return false;
            }
            MutablePair mutablePair = (MutablePair) obj;
            return Objects.equal(mutablePair.first, this.first) && Objects.equal(mutablePair.second, this.second);
        }

        public int hashCode() {
            F f2 = this.first;
            int iHashCode = f2 == null ? 0 : f2.hashCode();
            S s2 = this.second;
            return iHashCode ^ (s2 != null ? s2.hashCode() : 0);
        }
    }

    public static class OnClickHandler {
        public boolean onClickHandler(View view, PendingIntent pendingIntent, Intent intent) {
            try {
                view.getContext().startIntentSender(pendingIntent.getIntentSender(), intent, 268435456, 268435456, 0, ActivityOptions.makeScaleUpAnimation(view, 0, 0, view.getMeasuredWidth(), view.getMeasuredHeight()).toBundle());
                return true;
            } catch (IntentSender.SendIntentException e2) {
                Log.e(RemoteViews.LOG_TAG, "Cannot send pending intent: ", e2);
                return false;
            } catch (Exception e3) {
                Log.e(RemoteViews.LOG_TAG, "Cannot send pending intent due to unknown exception: ", e3);
                return false;
            }
        }
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface RemoteView {
    }

    private void addAction(Action action) {
        if (hasLandscapeAndPortraitLayouts()) {
            throw new RuntimeException("RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout.");
        }
        if (this.mActions == null) {
            this.mActions = new ArrayList<>();
        }
        this.mActions.add(action);
        action.updateMemoryUsageEstimate(this.mMemoryUsageCounter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureRemoteViewsAsChild(RemoteViews remoteViews) {
        this.mBitmapCache.assimilate(remoteViews.mBitmapCache);
        remoteViews.setBitmapCache(this.mBitmapCache);
        remoteViews.setNotRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public Method getMethod(View view, String str, Class<?> cls) {
        Method method;
        Class<?> cls2 = view.getClass();
        synchronized (sMethodsLock) {
            ArrayMap<Class<? extends View>, ArrayMap<MutablePair<String, Class<?>>, Method>> arrayMap = sMethods;
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.get(cls2);
            if (arrayMap2 == null) {
                arrayMap2 = new ArrayMap();
                arrayMap.put(cls2, arrayMap2);
            }
            MutablePair<String, Class<?>> mutablePair = this.mPair;
            mutablePair.first = str;
            mutablePair.second = cls;
            method = (Method) arrayMap2.get(mutablePair);
            if (method == null) {
                try {
                    method = cls == 0 ? cls2.getMethod(str, new Class[0]) : cls2.getMethod(str, cls);
                    if (!method.isAnnotationPresent(RemotableViewMethod.class)) {
                        throw new ActionException("view: " + cls2.getName() + " can't use method with RemoteViews: " + str + getParameters(cls));
                    }
                    arrayMap2.put(new MutablePair(str, cls), method);
                } catch (NoSuchMethodException unused) {
                    throw new ActionException("view: " + cls2.getName() + " doesn't have method: " + str + getParameters(cls));
                }
            }
        }
        return method;
    }

    private static String getParameters(Class<?> cls) {
        if (cls == null) {
            return "()";
        }
        return "(" + cls + ")";
    }

    private RemoteViews getRemoteViewsToApply(Context context) {
        if (hasLandscapeAndPortraitLayouts()) {
            return context.getResources().getConfiguration().orientation == 2 ? this.mLandscape : this.mPortrait;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Rect getSourceBounds(View view) {
        float f2 = view.getContext().getResources().getCompatibilityInfo().applicationScale;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        rect.left = (int) ((iArr[0] * f2) + 0.5f);
        rect.top = (int) ((iArr[1] * f2) + 0.5f);
        rect.right = (int) (((iArr[0] + view.getWidth()) * f2) + 0.5f);
        rect.bottom = (int) (((iArr[1] + view.getHeight()) * f2) + 0.5f);
        return rect;
    }

    private boolean hasLandscapeAndPortraitLayouts() {
        return (this.mLandscape == null || this.mPortrait == null) ? false : true;
    }

    private void performApply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
        ArrayList<Action> arrayList = this.mActions;
        if (arrayList != null) {
            if (onClickHandler == null) {
                onClickHandler = DEFAULT_ON_CLICK_HANDLER;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mActions.get(i2).apply(view, viewGroup, onClickHandler);
            }
        }
    }

    private Context prepareContext(Context context) {
        String str = this.mPackage;
        if (str == null) {
            return context;
        }
        try {
            return context.createPackageContextAsUser(str, 4, this.mUser);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(LOG_TAG, "Package name " + str + " not found");
            return context;
        }
    }

    private void recalculateMemoryUsage() {
        this.mMemoryUsageCounter.clear();
        if (hasLandscapeAndPortraitLayouts()) {
            this.mMemoryUsageCounter.increment(this.mLandscape.estimateMemoryUsage());
            this.mMemoryUsageCounter.increment(this.mPortrait.estimateMemoryUsage());
            this.mBitmapCache.addBitmapMemory(this.mMemoryUsageCounter);
            return;
        }
        ArrayList<Action> arrayList = this.mActions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mActions.get(i2).updateMemoryUsageEstimate(this.mMemoryUsageCounter);
            }
        }
        if (this.mIsRoot) {
            this.mBitmapCache.addBitmapMemory(this.mMemoryUsageCounter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBitmapCache(BitmapCache bitmapCache) {
        this.mBitmapCache = bitmapCache;
        if (hasLandscapeAndPortraitLayouts()) {
            this.mLandscape.setBitmapCache(bitmapCache);
            this.mPortrait.setBitmapCache(bitmapCache);
            return;
        }
        ArrayList<Action> arrayList = this.mActions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mActions.get(i2).setBitmapCache(bitmapCache);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object[] wrapArg(Object obj) {
        Object[] objArr = sInvokeArgsTls.get();
        objArr[0] = obj;
        return objArr;
    }

    public void addView(int i2, RemoteViews remoteViews) {
        addAction(new ViewGroupAction(i2, remoteViews));
    }

    public View apply(Context context, ViewGroup viewGroup) {
        return apply(context, viewGroup, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int estimateMemoryUsage() {
        return this.mMemoryUsageCounter.getMemoryUsage();
    }

    public int getLayoutId() {
        return this.mLayoutId;
    }

    public String getPackage() {
        return this.mPackage;
    }

    public void mergeRemoteViews(RemoteViews remoteViews) {
        if (remoteViews == null) {
            return;
        }
        RemoteViews remoteViewsM22clone = remoteViews.m22clone();
        HashMap map = new HashMap();
        if (this.mActions == null) {
            this.mActions = new ArrayList<>();
        }
        int size = this.mActions.size();
        for (int i2 = 0; i2 < size; i2++) {
            Action action = this.mActions.get(i2);
            map.put(action.getUniqueKey(), action);
        }
        ArrayList<Action> arrayList = remoteViewsM22clone.mActions;
        if (arrayList == null) {
            return;
        }
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Action action2 = arrayList.get(i3);
            String uniqueKey = arrayList.get(i3).getUniqueKey();
            int iMergeBehavior = arrayList.get(i3).mergeBehavior();
            if (map.containsKey(uniqueKey) && iMergeBehavior == 0) {
                this.mActions.remove(map.get(uniqueKey));
                map.remove(uniqueKey);
            }
            if (iMergeBehavior == 0 || iMergeBehavior == 1) {
                this.mActions.add(action2);
            }
        }
        BitmapCache bitmapCache = new BitmapCache();
        this.mBitmapCache = bitmapCache;
        setBitmapCache(bitmapCache);
    }

    @Override // android.view.LayoutInflater.Filter
    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(RemoteView.class);
    }

    public void reapply(Context context, View view) {
        reapply(context, view, null);
    }

    public void removeAllViews(int i2) {
        addAction(new ViewGroupAction(i2, (RemoteViews) null));
    }

    public void setBitmap(int i2, String str, Bitmap bitmap) {
        addAction(new BitmapReflectionAction(i2, str, bitmap));
    }

    public void setBoolean(int i2, String str, boolean z2) {
        addAction(new ReflectionAction(i2, str, 1, Boolean.valueOf(z2)));
    }

    public void setBundle(int i2, String str, Bundle bundle) {
        addAction(new ReflectionAction(i2, str, 13, bundle));
    }

    public void setByte(int i2, String str, byte b2) {
        addAction(new ReflectionAction(i2, str, 2, Byte.valueOf(b2)));
    }

    public void setChar(int i2, String str, char c2) {
        addAction(new ReflectionAction(i2, str, 8, Character.valueOf(c2)));
    }

    public void setCharSequence(int i2, String str, CharSequence charSequence) {
        addAction(new ReflectionAction(i2, str, 10, charSequence));
    }

    public void setChronometer(int i2, long j2, String str, boolean z2) {
        setLong(i2, "setBase", j2);
        setString(i2, "setFormat", str);
        setBoolean(i2, "setStarted", z2);
    }

    public void setContentDescription(int i2, CharSequence charSequence) {
        setCharSequence(i2, "setContentDescription", charSequence);
    }

    public void setDisplayedChild(int i2, int i3) {
        setInt(i2, "setDisplayedChild", i3);
    }

    public void setDouble(int i2, String str, double d2) {
        addAction(new ReflectionAction(i2, str, 7, Double.valueOf(d2)));
    }

    public void setDrawableParameters(int i2, boolean z2, int i3, int i4, PorterDuff.Mode mode, int i5) {
        addAction(new SetDrawableParameters(i2, z2, i3, i4, mode, i5));
    }

    public void setEmptyView(int i2, int i3) {
        addAction(new SetEmptyView(i2, i3));
    }

    public void setFloat(int i2, String str, float f2) {
        addAction(new ReflectionAction(i2, str, 6, Float.valueOf(f2)));
    }

    public void setImageViewBitmap(int i2, Bitmap bitmap) {
        setBitmap(i2, "setImageBitmap", bitmap);
    }

    public void setImageViewResource(int i2, int i3) {
        setInt(i2, "setImageResource", i3);
    }

    public void setImageViewUri(int i2, Uri uri) {
        setUri(i2, "setImageURI", uri);
    }

    public void setInt(int i2, String str, int i3) {
        addAction(new ReflectionAction(i2, str, 4, Integer.valueOf(i3)));
    }

    public void setIntent(int i2, String str, Intent intent) {
        addAction(new ReflectionAction(i2, str, 14, intent));
    }

    public void setIsWidgetCollectionChild(boolean z2) {
        this.mIsWidgetCollectionChild = z2;
    }

    public void setLabelFor(int i2, int i3) {
        setInt(i2, "setLabelFor", i3);
    }

    public void setLong(int i2, String str, long j2) {
        addAction(new ReflectionAction(i2, str, 5, Long.valueOf(j2)));
    }

    public void setNotRoot() {
        this.mIsRoot = false;
    }

    public void setOnClickFillInIntent(int i2, Intent intent) {
        addAction(new SetOnClickFillInIntent(i2, intent));
    }

    public void setOnClickPendingIntent(int i2, PendingIntent pendingIntent) {
        addAction(new SetOnClickPendingIntent(i2, pendingIntent));
    }

    public void setPendingIntentTemplate(int i2, PendingIntent pendingIntent) {
        addAction(new SetPendingIntentTemplate(i2, pendingIntent));
    }

    public void setProgressBar(int i2, int i3, int i4, boolean z2) {
        setBoolean(i2, "setIndeterminate", z2);
        if (z2) {
            return;
        }
        setInt(i2, "setMax", i3);
        setInt(i2, "setProgress", i4);
    }

    public void setRelativeScrollPosition(int i2, int i3) {
        setInt(i2, "smoothScrollByOffset", i3);
    }

    @Deprecated
    public void setRemoteAdapter(int i2, int i3, Intent intent) {
        setRemoteAdapter(i3, intent);
    }

    public void setScrollPosition(int i2, int i3) {
        setInt(i2, "smoothScrollToPosition", i3);
    }

    public void setShort(int i2, String str, short s2) {
        addAction(new ReflectionAction(i2, str, 3, Short.valueOf(s2)));
    }

    public void setString(int i2, String str, String str2) {
        addAction(new ReflectionAction(i2, str, 9, str2));
    }

    public void setTextColor(int i2, int i3) {
        setInt(i2, "setTextColor", i3);
    }

    public void setTextViewCompoundDrawables(int i2, int i3, int i4, int i5, int i6) {
        addAction(new TextViewDrawableAction(i2, false, i3, i4, i5, i6));
    }

    public void setTextViewCompoundDrawablesRelative(int i2, int i3, int i4, int i5, int i6) {
        addAction(new TextViewDrawableAction(i2, true, i3, i4, i5, i6));
    }

    public void setTextViewText(int i2, CharSequence charSequence) {
        setCharSequence(i2, "setText", charSequence);
    }

    public void setTextViewTextSize(int i2, int i3, float f2) {
        addAction(new TextViewSizeAction(i2, i3, f2));
    }

    public void setUri(int i2, String str, Uri uri) {
        if (uri != null) {
            uri = uri.getCanonicalUri();
            if (StrictMode.vmFileUriExposureEnabled()) {
                uri.checkFileUriExposed("RemoteViews.setUri()");
            }
        }
        addAction(new ReflectionAction(i2, str, 11, uri));
    }

    public void setUser(UserHandle userHandle) {
        this.mUser = userHandle;
    }

    public void setViewPadding(int i2, int i3, int i4, int i5, int i6) {
        addAction(new ViewPaddingAction(i2, i3, i4, i5, i6));
    }

    public void setViewVisibility(int i2, int i3) {
        setInt(i2, "setVisibility", i3);
    }

    public void showNext(int i2) {
        addAction(new ReflectionActionWithoutParams(i2, "showNext"));
    }

    public void showPrevious(int i2) {
        addAction(new ReflectionActionWithoutParams(i2, "showPrevious"));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (hasLandscapeAndPortraitLayouts()) {
            parcel.writeInt(1);
            if (this.mIsRoot) {
                this.mBitmapCache.writeBitmapsToParcel(parcel, i2);
            }
            this.mLandscape.writeToParcel(parcel, i2);
            this.mPortrait.writeToParcel(parcel, i2);
            return;
        }
        parcel.writeInt(0);
        if (this.mIsRoot) {
            this.mBitmapCache.writeBitmapsToParcel(parcel, i2);
        }
        parcel.writeString(this.mPackage);
        parcel.writeInt(this.mLayoutId);
        parcel.writeInt(this.mIsWidgetCollectionChild ? 1 : 0);
        ArrayList<Action> arrayList = this.mActions;
        int size = arrayList != null ? arrayList.size() : 0;
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            this.mActions.get(i3).writeToParcel(parcel, 0);
        }
    }

    public static class BitmapCache {
        public ArrayList<Bitmap> mBitmaps;

        public BitmapCache() {
            this.mBitmaps = new ArrayList<>();
        }

        public void addBitmapMemory(MemoryUsageCounter memoryUsageCounter) {
            for (int i2 = 0; i2 < this.mBitmaps.size(); i2++) {
                memoryUsageCounter.addBitmapMemory(this.mBitmaps.get(i2));
            }
        }

        public void assimilate(BitmapCache bitmapCache) {
            ArrayList<Bitmap> arrayList = bitmapCache.mBitmaps;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Bitmap bitmap = arrayList.get(i2);
                if (!this.mBitmaps.contains(bitmap)) {
                    this.mBitmaps.add(bitmap);
                }
            }
        }

        public Bitmap getBitmapForId(int i2) {
            if (i2 == -1 || i2 >= this.mBitmaps.size()) {
                return null;
            }
            return this.mBitmaps.get(i2);
        }

        public int getBitmapId(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.mBitmaps.contains(bitmap)) {
                return this.mBitmaps.indexOf(bitmap);
            }
            this.mBitmaps.add(bitmap);
            return this.mBitmaps.size() - 1;
        }

        public void writeBitmapsToParcel(Parcel parcel, int i2) {
            int size = this.mBitmaps.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                this.mBitmaps.get(i3).writeToParcel(parcel, i2);
            }
        }

        public BitmapCache(Parcel parcel) {
            int i2 = parcel.readInt();
            this.mBitmaps = new ArrayList<>();
            for (int i3 = 0; i3 < i2; i3++) {
                this.mBitmaps.add(Bitmap.CREATOR.createFromParcel(parcel));
            }
        }
    }

    public RemoteViews(String str, int i2) {
        this.mUser = Process.myUserHandle();
        this.mIsRoot = true;
        this.mLandscape = null;
        this.mPortrait = null;
        this.mIsWidgetCollectionChild = false;
        this.mPair = new MutablePair<>(null, null);
        this.mPackage = str;
        this.mLayoutId = i2;
        this.mBitmapCache = new BitmapCache();
        this.mMemoryUsageCounter = new MemoryUsageCounter();
        recalculateMemoryUsage();
    }

    public View apply(Context context, ViewGroup viewGroup, OnClickHandler onClickHandler) {
        RemoteViews remoteViewsToApply = getRemoteViewsToApply(context);
        Context contextPrepareContext = prepareContext(context);
        LayoutInflater layoutInflaterCloneInContext = ((LayoutInflater) contextPrepareContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).cloneInContext(contextPrepareContext);
        layoutInflaterCloneInContext.setFilter(this);
        View viewInflate = layoutInflaterCloneInContext.inflate(remoteViewsToApply.getLayoutId(), viewGroup, false);
        remoteViewsToApply.performApply(viewInflate, viewGroup, onClickHandler);
        return viewInflate;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RemoteViews m22clone() {
        Parcel parcelObtain = Parcel.obtain();
        writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        return new RemoteViews(parcelObtain);
    }

    public void reapply(Context context, View view, OnClickHandler onClickHandler) {
        RemoteViews remoteViewsToApply = getRemoteViewsToApply(context);
        if (hasLandscapeAndPortraitLayouts() && view.getId() != remoteViewsToApply.getLayoutId()) {
            throw new RuntimeException("Attempting to re-apply RemoteViews to a view that that does not share the same root layout id.");
        }
        prepareContext(context);
        remoteViewsToApply.performApply(view, (ViewGroup) view.getParent(), onClickHandler);
    }

    public void setRemoteAdapter(int i2, Intent intent) {
        addAction(new SetRemoteViewsAdapterIntent(i2, intent));
    }

    public final class ReflectionActionWithoutParams extends Action {
        public static final int TAG = 5;
        public final String methodName;

        public ReflectionActionWithoutParams(int i2, String str) {
            super();
            this.viewId = i2;
            this.methodName = str;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            try {
                RemoteViews.this.getMethod(viewFindViewById, this.methodName, null).invoke(viewFindViewById, new Object[0]);
            } catch (ActionException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new ActionException(e3);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "ReflectionActionWithoutParams";
        }

        @Override // android.widget.RemoteViews.Action
        public int mergeBehavior() {
            return (this.methodName.equals("showNext") || this.methodName.equals("showPrevious")) ? 2 : 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(5);
            parcel.writeInt(this.viewId);
            parcel.writeString(this.methodName);
        }

        public ReflectionActionWithoutParams(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.methodName = parcel.readString();
        }
    }

    public class SetEmptyView extends Action {
        public static final int TAG = 6;
        public int emptyViewId;
        public int viewId;

        public SetEmptyView(int i2, int i3) {
            super();
            this.viewId = i2;
            this.emptyViewId = i3;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById instanceof AdapterView) {
                AdapterView adapterView = (AdapterView) viewFindViewById;
                View viewFindViewById2 = view.findViewById(this.emptyViewId);
                if (viewFindViewById2 == null) {
                    return;
                }
                adapterView.setEmptyView(viewFindViewById2);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetEmptyView";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(6);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.emptyViewId);
        }

        public SetEmptyView(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.emptyViewId = parcel.readInt();
        }
    }

    public class SetOnClickFillInIntent extends Action {
        public static final int TAG = 9;
        public Intent fillInIntent;

        public SetOnClickFillInIntent(int i2, Intent intent) {
            super();
            this.viewId = i2;
            this.fillInIntent = intent;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, final OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            if (!RemoteViews.this.mIsWidgetCollectionChild) {
                Log.e(RemoteViews.LOG_TAG, "The method setOnClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items).");
            } else if (viewFindViewById == view) {
                viewFindViewById.setTagInternal(16908904, this.fillInIntent);
            } else if (this.fillInIntent != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: android.widget.RemoteViews.SetOnClickFillInIntent.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        View view3 = (View) view2.getParent();
                        while (view3 != null && !(view3 instanceof AdapterView) && !(view3 instanceof AppWidgetHostView)) {
                            view3 = (View) view3.getParent();
                        }
                        if ((view3 instanceof AppWidgetHostView) || view3 == null) {
                            Log.e(RemoteViews.LOG_TAG, "Collection item doesn't have AdapterView parent");
                            return;
                        }
                        if (!(view3.getTag() instanceof PendingIntent)) {
                            Log.e(RemoteViews.LOG_TAG, "Attempting setOnClickFillInIntent without calling setPendingIntentTemplate on parent.");
                            return;
                        }
                        PendingIntent pendingIntent = (PendingIntent) view3.getTag();
                        SetOnClickFillInIntent.this.fillInIntent.setSourceBounds(RemoteViews.getSourceBounds(view2));
                        onClickHandler.onClickHandler(view2, pendingIntent, SetOnClickFillInIntent.this.fillInIntent);
                    }
                });
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetOnClickFillInIntent";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(9);
            parcel.writeInt(this.viewId);
            this.fillInIntent.writeToParcel(parcel, 0);
        }

        public SetOnClickFillInIntent(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.fillInIntent = Intent.CREATOR.createFromParcel(parcel);
        }
    }

    public class SetOnClickPendingIntent extends Action {
        public static final int TAG = 1;
        public PendingIntent pendingIntent;

        public SetOnClickPendingIntent(int i2, PendingIntent pendingIntent) {
            super();
            this.viewId = i2;
            this.pendingIntent = pendingIntent;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, final OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            if (RemoteViews.this.mIsWidgetCollectionChild) {
                Log.w(RemoteViews.LOG_TAG, "Cannot setOnClickPendingIntent for collection item (id: " + this.viewId + ")");
                ApplicationInfo applicationInfo = view.getContext().getApplicationInfo();
                if (applicationInfo != null && applicationInfo.targetSdkVersion >= 16) {
                    return;
                }
            }
            viewFindViewById.setOnClickListener(this.pendingIntent != null ? new View.OnClickListener() { // from class: android.widget.RemoteViews.SetOnClickPendingIntent.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Rect sourceBounds = RemoteViews.getSourceBounds(view2);
                    Intent intent = new Intent();
                    intent.setSourceBounds(sourceBounds);
                    onClickHandler.onClickHandler(view2, SetOnClickPendingIntent.this.pendingIntent, intent);
                }
            } : null);
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetOnClickPendingIntent";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(1);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.pendingIntent == null ? 0 : 1);
            PendingIntent pendingIntent = this.pendingIntent;
            if (pendingIntent != null) {
                pendingIntent.writeToParcel(parcel, 0);
            }
        }

        public SetOnClickPendingIntent(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.pendingIntent = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
        }
    }

    public class SetPendingIntentTemplate extends Action {
        public static final int TAG = 8;
        public PendingIntent pendingIntentTemplate;

        public SetPendingIntentTemplate(int i2, PendingIntent pendingIntent) {
            super();
            this.viewId = i2;
            this.pendingIntentTemplate = pendingIntent;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, final OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            if (viewFindViewById instanceof AdapterView) {
                AdapterView adapterView = (AdapterView) viewFindViewById;
                adapterView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.widget.RemoteViews.SetPendingIntentTemplate.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView2, View view2, int i2, long j2) {
                        if (view2 instanceof ViewGroup) {
                            ViewGroup viewGroup2 = (ViewGroup) view2;
                            if (adapterView2 instanceof AdapterViewAnimator) {
                                viewGroup2 = (ViewGroup) viewGroup2.getChildAt(0);
                            }
                            if (viewGroup2 == null) {
                                return;
                            }
                            Intent intent = null;
                            int childCount = viewGroup2.getChildCount();
                            for (int i3 = 0; i3 < childCount; i3++) {
                                Object tag = viewGroup2.getChildAt(i3).getTag(16908904);
                                if (tag instanceof Intent) {
                                    intent = (Intent) tag;
                                    break;
                                }
                            }
                            if (intent == null) {
                                return;
                            }
                            new Intent().setSourceBounds(RemoteViews.getSourceBounds(view2));
                            onClickHandler.onClickHandler(view2, SetPendingIntentTemplate.this.pendingIntentTemplate, intent);
                        }
                    }
                });
                adapterView.setTag(this.pendingIntentTemplate);
            } else {
                Log.e(RemoteViews.LOG_TAG, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: " + this.viewId + ")");
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetPendingIntentTemplate";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(8);
            parcel.writeInt(this.viewId);
            this.pendingIntentTemplate.writeToParcel(parcel, 0);
        }

        public SetPendingIntentTemplate(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.pendingIntentTemplate = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        }
    }

    public class SetRemoteViewsAdapterIntent extends Action {
        public static final int TAG = 10;
        public Intent intent;

        public SetRemoteViewsAdapterIntent(int i2, Intent intent) {
            super();
            this.viewId = i2;
            this.intent = intent;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            if (!(viewGroup instanceof AppWidgetHostView)) {
                Log.e(RemoteViews.LOG_TAG, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: " + this.viewId + ")");
                return;
            }
            boolean z2 = viewFindViewById instanceof AbsListView;
            if (!z2 && !(viewFindViewById instanceof AdapterViewAnimator)) {
                Log.e(RemoteViews.LOG_TAG, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: " + this.viewId + ")");
                return;
            }
            this.intent.putExtra(RemoteViews.EXTRA_REMOTEADAPTER_APPWIDGET_ID, ((AppWidgetHostView) viewGroup).getAppWidgetId());
            if (z2) {
                AbsListView absListView = (AbsListView) viewFindViewById;
                absListView.setRemoteViewsAdapter(this.intent);
                absListView.setRemoteViewsOnClickHandler(onClickHandler);
            } else if (viewFindViewById instanceof AdapterViewAnimator) {
                AdapterViewAnimator adapterViewAnimator = (AdapterViewAnimator) viewFindViewById;
                adapterViewAnimator.setRemoteViewsAdapter(this.intent);
                adapterViewAnimator.setRemoteViewsOnClickHandler(onClickHandler);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetRemoteViewsAdapterIntent";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(10);
            parcel.writeInt(this.viewId);
            this.intent.writeToParcel(parcel, i2);
        }

        public SetRemoteViewsAdapterIntent(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.intent = Intent.CREATOR.createFromParcel(parcel);
        }
    }

    public void setRemoteAdapter(int i2, ArrayList<RemoteViews> arrayList, int i3) {
        addAction(new SetRemoteViewsAdapterList(i2, arrayList, i3));
    }

    public class SetRemoteViewsAdapterList extends Action {
        public static final int TAG = 15;
        public ArrayList<RemoteViews> list;
        public int viewTypeCount;

        public SetRemoteViewsAdapterList(int i2, ArrayList<RemoteViews> arrayList, int i3) {
            super();
            this.viewId = i2;
            this.list = arrayList;
            this.viewTypeCount = i3;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            if (!(viewGroup instanceof AppWidgetHostView)) {
                Log.e(RemoteViews.LOG_TAG, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: " + this.viewId + ")");
                return;
            }
            boolean z2 = viewFindViewById instanceof AbsListView;
            if (!z2 && !(viewFindViewById instanceof AdapterViewAnimator)) {
                Log.e(RemoteViews.LOG_TAG, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: " + this.viewId + ")");
                return;
            }
            if (z2) {
                AbsListView absListView = (AbsListView) viewFindViewById;
                ListAdapter adapter = absListView.getAdapter();
                if (!(adapter instanceof RemoteViewsListAdapter) || this.viewTypeCount > adapter.getViewTypeCount()) {
                    absListView.setAdapter((ListAdapter) new RemoteViewsListAdapter(absListView.getContext(), this.list, this.viewTypeCount));
                    return;
                } else {
                    ((RemoteViewsListAdapter) adapter).setViewsList(this.list);
                    return;
                }
            }
            if (viewFindViewById instanceof AdapterViewAnimator) {
                AdapterViewAnimator adapterViewAnimator = (AdapterViewAnimator) viewFindViewById;
                Adapter adapter2 = adapterViewAnimator.getAdapter();
                if (!(adapter2 instanceof RemoteViewsListAdapter) || this.viewTypeCount > adapter2.getViewTypeCount()) {
                    adapterViewAnimator.setAdapter(new RemoteViewsListAdapter(adapterViewAnimator.getContext(), this.list, this.viewTypeCount));
                } else {
                    ((RemoteViewsListAdapter) adapter2).setViewsList(this.list);
                }
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetRemoteViewsAdapterList";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(15);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.viewTypeCount);
            ArrayList<RemoteViews> arrayList = this.list;
            if (arrayList == null || arrayList.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.list.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                this.list.get(i3).writeToParcel(parcel, i2);
            }
        }

        public SetRemoteViewsAdapterList(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.viewTypeCount = parcel.readInt();
            int i2 = parcel.readInt();
            this.list = new ArrayList<>();
            for (int i3 = 0; i3 < i2; i3++) {
                this.list.add(RemoteViews.CREATOR.createFromParcel(parcel));
            }
        }
    }

    public class TextViewSizeAction extends Action {
        public static final int TAG = 13;
        public float size;
        public int units;

        public TextViewSizeAction(int i2, int i3, float f2) {
            super();
            this.viewId = i2;
            this.units = i3;
            this.size = f2;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            TextView textView = (TextView) view.findViewById(this.viewId);
            if (textView == null) {
                return;
            }
            textView.setTextSize(this.units, this.size);
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "TextViewSizeAction";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(13);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.units);
            parcel.writeFloat(this.size);
        }

        public TextViewSizeAction(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.units = parcel.readInt();
            this.size = parcel.readFloat();
        }
    }

    public class ViewGroupAction extends Action {
        public static final int TAG = 4;
        public RemoteViews nestedViews;

        public ViewGroupAction(int i2, RemoteViews remoteViews) {
            super();
            this.viewId = i2;
            this.nestedViews = remoteViews;
            if (remoteViews != null) {
                RemoteViews.this.configureRemoteViewsAsChild(remoteViews);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            Context context = view.getContext();
            ViewGroup viewGroup2 = (ViewGroup) view.findViewById(this.viewId);
            if (viewGroup2 == null) {
                return;
            }
            RemoteViews remoteViews = this.nestedViews;
            if (remoteViews != null) {
                viewGroup2.addView(remoteViews.apply(context, viewGroup2, onClickHandler));
            } else {
                viewGroup2.removeAllViews();
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            StringBuilder sb = new StringBuilder();
            sb.append("ViewGroupAction");
            sb.append(this.nestedViews == null ? "Remove" : "Add");
            return sb.toString();
        }

        @Override // android.widget.RemoteViews.Action
        public int mergeBehavior() {
            return 1;
        }

        @Override // android.widget.RemoteViews.Action
        public void setBitmapCache(BitmapCache bitmapCache) {
            RemoteViews remoteViews = this.nestedViews;
            if (remoteViews != null) {
                remoteViews.setBitmapCache(bitmapCache);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public void updateMemoryUsageEstimate(MemoryUsageCounter memoryUsageCounter) {
            RemoteViews remoteViews = this.nestedViews;
            if (remoteViews != null) {
                memoryUsageCounter.increment(remoteViews.estimateMemoryUsage());
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(4);
            parcel.writeInt(this.viewId);
            if (this.nestedViews == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.nestedViews.writeToParcel(parcel, i2);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ViewGroupAction(Parcel parcel, BitmapCache bitmapCache) {
            super();
            this.viewId = parcel.readInt();
            if (!(parcel.readInt() == 0)) {
                this.nestedViews = new RemoteViews(parcel, bitmapCache);
            } else {
                this.nestedViews = null;
            }
        }
    }

    public class BitmapReflectionAction extends Action {
        public static final int TAG = 12;
        public Bitmap bitmap;
        public int bitmapId;
        public String methodName;

        public BitmapReflectionAction(int i2, String str, Bitmap bitmap) {
            super();
            this.bitmap = bitmap;
            this.viewId = i2;
            this.methodName = str;
            this.bitmapId = RemoteViews.this.mBitmapCache.getBitmapId(bitmap);
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            RemoteViews.this.new ReflectionAction(this.viewId, this.methodName, 12, this.bitmap).apply(view, viewGroup, onClickHandler);
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "BitmapReflectionAction";
        }

        @Override // android.widget.RemoteViews.Action
        public void setBitmapCache(BitmapCache bitmapCache) {
            this.bitmapId = bitmapCache.getBitmapId(this.bitmap);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(12);
            parcel.writeInt(this.viewId);
            parcel.writeString(this.methodName);
            parcel.writeInt(this.bitmapId);
        }

        public BitmapReflectionAction(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.methodName = parcel.readString();
            this.bitmapId = parcel.readInt();
            this.bitmap = RemoteViews.this.mBitmapCache.getBitmapForId(this.bitmapId);
        }
    }

    public final class ReflectionAction extends Action {
        public static final int BITMAP = 12;
        public static final int BOOLEAN = 1;
        public static final int BUNDLE = 13;
        public static final int BYTE = 2;
        public static final int CHAR = 8;
        public static final int CHAR_SEQUENCE = 10;
        public static final int DOUBLE = 7;
        public static final int FLOAT = 6;
        public static final int INT = 4;
        public static final int INTENT = 14;
        public static final int LONG = 5;
        public static final int SHORT = 3;
        public static final int STRING = 9;
        public static final int TAG = 2;
        public static final int URI = 11;
        public String methodName;
        public int type;
        public Object value;

        public ReflectionAction(int i2, String str, int i3, Object obj) {
            super();
            this.viewId = i2;
            this.methodName = str;
            this.type = i3;
            this.value = obj;
        }

        private Class<?> getParameterType() {
            switch (this.type) {
                case 1:
                    return Boolean.TYPE;
                case 2:
                    return Byte.TYPE;
                case 3:
                    return Short.TYPE;
                case 4:
                    return Integer.TYPE;
                case 5:
                    return Long.TYPE;
                case 6:
                    return Float.TYPE;
                case 7:
                    return Double.TYPE;
                case 8:
                    return Character.TYPE;
                case 9:
                    return String.class;
                case 10:
                    return CharSequence.class;
                case 11:
                    return Uri.class;
                case 12:
                    return Bitmap.class;
                case 13:
                    return Bundle.class;
                case 14:
                    return Intent.class;
                default:
                    return null;
            }
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            Class<?> parameterType = getParameterType();
            if (parameterType == null) {
                throw new ActionException("bad type: " + this.type);
            }
            try {
                RemoteViews.this.getMethod(viewFindViewById, this.methodName, parameterType).invoke(viewFindViewById, RemoteViews.wrapArg(this.value));
            } catch (ActionException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new ActionException(e3);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "ReflectionAction" + this.methodName + this.type;
        }

        @Override // android.widget.RemoteViews.Action
        public int mergeBehavior() {
            return this.methodName.equals("smoothScrollBy") ? 1 : 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(2);
            parcel.writeInt(this.viewId);
            parcel.writeString(this.methodName);
            parcel.writeInt(this.type);
            switch (this.type) {
                case 1:
                    parcel.writeInt(((Boolean) this.value).booleanValue() ? 1 : 0);
                    break;
                case 2:
                    parcel.writeByte(((Byte) this.value).byteValue());
                    break;
                case 3:
                    parcel.writeInt(((Short) this.value).shortValue());
                    break;
                case 4:
                    parcel.writeInt(((Integer) this.value).intValue());
                    break;
                case 5:
                    parcel.writeLong(((Long) this.value).longValue());
                    break;
                case 6:
                    parcel.writeFloat(((Float) this.value).floatValue());
                    break;
                case 7:
                    parcel.writeDouble(((Double) this.value).doubleValue());
                    break;
                case 8:
                    parcel.writeInt(((Character) this.value).charValue());
                    break;
                case 9:
                    parcel.writeString((String) this.value);
                    break;
                case 10:
                    TextUtils.writeToParcel((CharSequence) this.value, parcel, i2);
                    break;
                case 11:
                    parcel.writeInt(this.value == null ? 0 : 1);
                    Object obj = this.value;
                    if (obj != null) {
                        ((Uri) obj).writeToParcel(parcel, i2);
                    }
                    break;
                case 12:
                    parcel.writeInt(this.value == null ? 0 : 1);
                    Object obj2 = this.value;
                    if (obj2 != null) {
                        ((Bitmap) obj2).writeToParcel(parcel, i2);
                    }
                    break;
                case 13:
                    parcel.writeBundle((Bundle) this.value);
                    break;
                case 14:
                    parcel.writeInt(this.value == null ? 0 : 1);
                    Object obj3 = this.value;
                    if (obj3 != null) {
                        ((Intent) obj3).writeToParcel(parcel, i2);
                    }
                    break;
            }
        }

        public ReflectionAction(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.methodName = parcel.readString();
            int i2 = parcel.readInt();
            this.type = i2;
            switch (i2) {
                case 1:
                    this.value = Boolean.valueOf(parcel.readInt() != 0);
                    break;
                case 2:
                    this.value = Byte.valueOf(parcel.readByte());
                    break;
                case 3:
                    this.value = Short.valueOf((short) parcel.readInt());
                    break;
                case 4:
                    this.value = Integer.valueOf(parcel.readInt());
                    break;
                case 5:
                    this.value = Long.valueOf(parcel.readLong());
                    break;
                case 6:
                    this.value = Float.valueOf(parcel.readFloat());
                    break;
                case 7:
                    this.value = Double.valueOf(parcel.readDouble());
                    break;
                case 8:
                    this.value = Character.valueOf((char) parcel.readInt());
                    break;
                case 9:
                    this.value = parcel.readString();
                    break;
                case 10:
                    this.value = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                    break;
                case 11:
                    if (parcel.readInt() != 0) {
                        this.value = Uri.CREATOR.createFromParcel(parcel);
                    }
                    break;
                case 12:
                    if (parcel.readInt() != 0) {
                        this.value = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                    break;
                case 13:
                    this.value = parcel.readBundle();
                    break;
                case 14:
                    if (parcel.readInt() != 0) {
                        this.value = Intent.CREATOR.createFromParcel(parcel);
                    }
                    break;
            }
        }
    }

    public class ViewPaddingAction extends Action {
        public static final int TAG = 14;
        public int bottom;
        public int left;
        public int right;
        public int top;

        public ViewPaddingAction(int i2, int i3, int i4, int i5, int i6) {
            super();
            this.viewId = i2;
            this.left = i3;
            this.top = i4;
            this.right = i5;
            this.bottom = i6;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            viewFindViewById.setPadding(this.left, this.top, this.right, this.bottom);
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "ViewPaddingAction";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(14);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.left);
            parcel.writeInt(this.top);
            parcel.writeInt(this.right);
            parcel.writeInt(this.bottom);
        }

        public ViewPaddingAction(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.left = parcel.readInt();
            this.top = parcel.readInt();
            this.right = parcel.readInt();
            this.bottom = parcel.readInt();
        }
    }

    public class SetDrawableParameters extends Action {
        public static final int TAG = 3;
        public int alpha;
        public int colorFilter;
        public PorterDuff.Mode filterMode;
        public int level;
        public boolean targetBackground;

        public SetDrawableParameters(int i2, boolean z2, int i3, int i4, PorterDuff.Mode mode, int i5) {
            super();
            this.viewId = i2;
            this.targetBackground = z2;
            this.alpha = i3;
            this.colorFilter = i4;
            this.filterMode = mode;
            this.level = i5;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            PorterDuff.Mode mode;
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            Drawable drawable = null;
            if (this.targetBackground) {
                drawable = viewFindViewById.getBackground();
            } else if (viewFindViewById instanceof ImageView) {
                drawable = ((ImageView) viewFindViewById).getDrawable();
            }
            if (drawable != null) {
                int i2 = this.alpha;
                if (i2 != -1) {
                    drawable.setAlpha(i2);
                }
                int i3 = this.colorFilter;
                if (i3 != -1 && (mode = this.filterMode) != null) {
                    drawable.setColorFilter(i3, mode);
                }
                int i4 = this.level;
                if (i4 != -1) {
                    drawable.setLevel(i4);
                }
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetDrawableParameters";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(3);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.targetBackground ? 1 : 0);
            parcel.writeInt(this.alpha);
            parcel.writeInt(this.colorFilter);
            if (this.filterMode != null) {
                parcel.writeInt(1);
                parcel.writeString(this.filterMode.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.level);
        }

        public SetDrawableParameters(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.targetBackground = parcel.readInt() != 0;
            this.alpha = parcel.readInt();
            this.colorFilter = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.filterMode = PorterDuff.Mode.valueOf(parcel.readString());
            } else {
                this.filterMode = null;
            }
            this.level = parcel.readInt();
        }
    }

    public class TextViewDrawableAction extends Action {
        public static final int TAG = 11;

        /* JADX INFO: renamed from: d1, reason: collision with root package name */
        public int f210d1;
        public int d2;
        public int d3;
        public int d4;
        public boolean isRelative;

        public TextViewDrawableAction(int i2, boolean z2, int i3, int i4, int i5, int i6) {
            super();
            this.isRelative = false;
            this.viewId = i2;
            this.isRelative = z2;
            this.f210d1 = i3;
            this.d2 = i4;
            this.d3 = i5;
            this.d4 = i6;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            TextView textView = (TextView) view.findViewById(this.viewId);
            if (textView == null) {
                return;
            }
            if (this.isRelative) {
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(this.f210d1, this.d2, this.d3, this.d4);
            } else {
                textView.setCompoundDrawablesWithIntrinsicBounds(this.f210d1, this.d2, this.d3, this.d4);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "TextViewDrawableAction";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(11);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.isRelative ? 1 : 0);
            parcel.writeInt(this.f210d1);
            parcel.writeInt(this.d2);
            parcel.writeInt(this.d3);
            parcel.writeInt(this.d4);
        }

        public TextViewDrawableAction(Parcel parcel) {
            super();
            this.isRelative = false;
            this.viewId = parcel.readInt();
            this.isRelative = parcel.readInt() != 0;
            this.f210d1 = parcel.readInt();
            this.d2 = parcel.readInt();
            this.d3 = parcel.readInt();
            this.d4 = parcel.readInt();
        }
    }

    public RemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) {
        this.mUser = Process.myUserHandle();
        this.mIsRoot = true;
        this.mLandscape = null;
        this.mPortrait = null;
        this.mIsWidgetCollectionChild = false;
        this.mPair = new MutablePair<>(null, null);
        if (remoteViews != null && remoteViews2 != null) {
            if (remoteViews.getPackage().compareTo(remoteViews2.getPackage()) == 0) {
                this.mPackage = remoteViews2.getPackage();
                this.mLayoutId = remoteViews2.getLayoutId();
                this.mLandscape = remoteViews;
                this.mPortrait = remoteViews2;
                this.mMemoryUsageCounter = new MemoryUsageCounter();
                this.mBitmapCache = new BitmapCache();
                configureRemoteViewsAsChild(remoteViews);
                configureRemoteViewsAsChild(remoteViews2);
                recalculateMemoryUsage();
                return;
            }
            throw new RuntimeException("Both RemoteViews must share the same package");
        }
        throw new RuntimeException("Both RemoteViews must be non-null");
    }

    public RemoteViews(Parcel parcel) {
        this(parcel, (BitmapCache) null);
    }

    private RemoteViews(Parcel parcel, BitmapCache bitmapCache) {
        this.mUser = Process.myUserHandle();
        this.mIsRoot = true;
        this.mLandscape = null;
        this.mPortrait = null;
        this.mIsWidgetCollectionChild = false;
        this.mPair = new MutablePair<>(null, null);
        int i2 = parcel.readInt();
        if (bitmapCache == null) {
            this.mBitmapCache = new BitmapCache(parcel);
        } else {
            setBitmapCache(bitmapCache);
            setNotRoot();
        }
        if (i2 == 0) {
            this.mPackage = parcel.readString();
            this.mLayoutId = parcel.readInt();
            this.mIsWidgetCollectionChild = parcel.readInt() == 1;
            int i3 = parcel.readInt();
            if (i3 > 0) {
                this.mActions = new ArrayList<>(i3);
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = parcel.readInt();
                    switch (i5) {
                        case 1:
                            this.mActions.add(new SetOnClickPendingIntent(parcel));
                            break;
                        case 2:
                            this.mActions.add(new ReflectionAction(parcel));
                            break;
                        case 3:
                            this.mActions.add(new SetDrawableParameters(parcel));
                            break;
                        case 4:
                            this.mActions.add(new ViewGroupAction(parcel, this.mBitmapCache));
                            break;
                        case 5:
                            this.mActions.add(new ReflectionActionWithoutParams(parcel));
                            break;
                        case 6:
                            this.mActions.add(new SetEmptyView(parcel));
                            break;
                        case 7:
                        default:
                            throw new ActionException("Tag " + i5 + " not found");
                        case 8:
                            this.mActions.add(new SetPendingIntentTemplate(parcel));
                            break;
                        case 9:
                            this.mActions.add(new SetOnClickFillInIntent(parcel));
                            break;
                        case 10:
                            this.mActions.add(new SetRemoteViewsAdapterIntent(parcel));
                            break;
                        case 11:
                            this.mActions.add(new TextViewDrawableAction(parcel));
                            break;
                        case 12:
                            this.mActions.add(new BitmapReflectionAction(parcel));
                            break;
                        case 13:
                            this.mActions.add(new TextViewSizeAction(parcel));
                            break;
                        case 14:
                            this.mActions.add(new ViewPaddingAction(parcel));
                            break;
                        case 15:
                            this.mActions.add(new SetRemoteViewsAdapterList(parcel));
                            break;
                    }
                }
            }
        } else {
            this.mLandscape = new RemoteViews(parcel, this.mBitmapCache);
            RemoteViews remoteViews = new RemoteViews(parcel, this.mBitmapCache);
            this.mPortrait = remoteViews;
            this.mPackage = remoteViews.getPackage();
            this.mLayoutId = this.mPortrait.getLayoutId();
        }
        this.mMemoryUsageCounter = new MemoryUsageCounter();
        recalculateMemoryUsage();
    }
}
