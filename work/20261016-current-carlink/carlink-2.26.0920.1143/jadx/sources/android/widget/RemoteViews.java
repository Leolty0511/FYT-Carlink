package android.widget;

import android.app.ActivityOptions;
import android.app.ActivityThread;
import android.app.Application;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import com.android.internal.R;
import com.android.internal.util.NotificationColorUtil;
import com.android.internal.util.Preconditions;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.Executor;
import libcore.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteViews implements Parcelable, LayoutInflater.Filter {
    private static final int BITMAP_REFLECTION_ACTION_TAG = 12;
    static final String EXTRA_REMOTEADAPTER_APPWIDGET_ID = "remoteAdapterAppWidgetId";
    private static final int LAYOUT_PARAM_ACTION_TAG = 19;
    private static final String LOG_TAG = "RemoteViews";
    private static final int MAX_NESTED_VIEWS = 10;
    private static final int MODE_HAS_LANDSCAPE_AND_PORTRAIT = 1;
    private static final int MODE_NORMAL = 0;
    private static final int OVERRIDE_TEXT_COLORS_TAG = 20;
    private static final int REFLECTION_ACTION_TAG = 2;
    private static final int SET_DRAWABLE_PARAMETERS_TAG = 3;
    private static final int SET_EMPTY_VIEW_ACTION_TAG = 6;
    private static final int SET_ON_CLICK_FILL_IN_INTENT_TAG = 9;
    private static final int SET_ON_CLICK_PENDING_INTENT_TAG = 1;
    private static final int SET_PENDING_INTENT_TEMPLATE_TAG = 8;
    private static final int SET_REFLECTION_ACTION_WITHOUT_PARAMS_TAG = 5;
    private static final int SET_REMOTE_INPUTS_ACTION_TAG = 18;
    private static final int SET_REMOTE_VIEW_ADAPTER_INTENT_TAG = 10;
    private static final int SET_REMOTE_VIEW_ADAPTER_LIST_TAG = 15;
    private static final int TEXT_VIEW_DRAWABLE_ACTION_TAG = 11;
    private static final int TEXT_VIEW_DRAWABLE_COLOR_FILTER_ACTION_TAG = 17;
    private static final int TEXT_VIEW_SIZE_ACTION_TAG = 13;
    private static final int VIEW_GROUP_ACTION_ADD_TAG = 4;
    private static final int VIEW_GROUP_ACTION_REMOVE_TAG = 7;
    private static final int VIEW_PADDING_ACTION_TAG = 14;
    private ArrayList<Action> mActions;
    private ApplicationInfo mApplication;
    private BitmapCache mBitmapCache;
    private boolean mIsRoot;
    private boolean mIsWidgetCollectionChild;
    private RemoteViews mLandscape;
    private final int mLayoutId;
    private MemoryUsageCounter mMemoryUsageCounter;
    private final MutablePair<String, Class<?>> mPair;
    private RemoteViews mPortrait;
    private boolean mReapplyDisallowed;
    private static final OnClickHandler DEFAULT_ON_CLICK_HANDLER = new OnClickHandler();
    private static final Object[] sMethodsLock = new Object[0];
    private static final ArrayMap<Class<? extends View>, ArrayMap<MutablePair<String, Class<?>>, Method>> sMethods = new ArrayMap<>();
    private static final ArrayMap<Method, Method> sAsyncMethods = new ArrayMap<>();
    private static final ThreadLocal<Object[]> sInvokeArgsTls = new ThreadLocal<Object[]>() { // from class: android.widget.RemoteViews.1
        @Override // java.lang.ThreadLocal
        public Object[] initialValue() {
            return new Object[1];
        }
    };
    private static final Action ACTION_NOOP = new RuntimeAction() { // from class: android.widget.RemoteViews.2
        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
        }
    };
    public static final Parcelable.Creator<RemoteViews> CREATOR = new Parcelable.Creator<RemoteViews>() { // from class: android.widget.RemoteViews.3
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

    public static abstract class Action implements Parcelable {
        public static final int MERGE_APPEND = 1;
        public static final int MERGE_IGNORE = 2;
        public static final int MERGE_REPLACE = 0;
        int viewId;

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

        public boolean hasSameAppInfo(ApplicationInfo applicationInfo) {
            return true;
        }

        public Action initActionAsync(ViewTree viewTree, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            return this;
        }

        public int mergeBehavior() {
            return 0;
        }

        public boolean prefersAsyncApply() {
            return false;
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

    public class AsyncApplyTask extends AsyncTask<Void, Void, ViewTree> implements CancellationSignal.OnCancelListener {
        private Action[] mActions;
        final Context mContext;
        private Exception mError;
        final OnClickHandler mHandler;
        final OnViewAppliedListener mListener;
        final ViewGroup mParent;
        final RemoteViews mRV;
        private View mResult;
        private ViewTree mTree;

        @Override // android.os.CancellationSignal.OnCancelListener
        public void onCancel() {
            cancel(true);
        }

        private AsyncApplyTask(RemoteViews remoteViews, ViewGroup viewGroup, Context context, OnViewAppliedListener onViewAppliedListener, OnClickHandler onClickHandler, View view) {
            this.mRV = remoteViews;
            this.mParent = viewGroup;
            this.mContext = context;
            this.mListener = onViewAppliedListener;
            this.mHandler = onClickHandler;
            this.mResult = view;
            RemoteViews.loadTransitionOverride(context, onClickHandler);
        }

        @Override // android.os.AsyncTask
        public ViewTree doInBackground(Void... voidArr) {
            try {
                if (this.mResult == null) {
                    this.mResult = RemoteViews.this.inflateView(this.mContext, this.mRV, this.mParent);
                }
                this.mTree = new ViewTree(this.mResult);
                if (this.mRV.mActions != null) {
                    int size = this.mRV.mActions.size();
                    this.mActions = new Action[size];
                    for (int i2 = 0; i2 < size && !isCancelled(); i2++) {
                        this.mActions[i2] = ((Action) this.mRV.mActions.get(i2)).initActionAsync(this.mTree, this.mParent, this.mHandler);
                    }
                } else {
                    this.mActions = null;
                }
                return this.mTree;
            } catch (Exception e2) {
                this.mError = e2;
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(ViewTree viewTree) {
            if (this.mError == null) {
                try {
                    if (this.mActions != null) {
                        OnClickHandler onClickHandler = this.mHandler;
                        if (onClickHandler == null) {
                            onClickHandler = RemoteViews.DEFAULT_ON_CLICK_HANDLER;
                        }
                        for (Action action : this.mActions) {
                            action.apply(viewTree.mRoot, this.mParent, onClickHandler);
                        }
                    }
                } catch (Exception e2) {
                    this.mError = e2;
                }
            }
            OnViewAppliedListener onViewAppliedListener = this.mListener;
            if (onViewAppliedListener != null) {
                Exception exc = this.mError;
                if (exc != null) {
                    onViewAppliedListener.onError(exc);
                    return;
                } else {
                    onViewAppliedListener.onViewApplied(viewTree.mRoot);
                    return;
                }
            }
            Exception exc2 = this.mError;
            if (exc2 != null) {
                if (!(exc2 instanceof ActionException)) {
                    throw new ActionException(this.mError);
                }
                throw ((ActionException) exc2);
            }
        }
    }

    public static class BitmapCache {
        ArrayList<Bitmap> mBitmaps;

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

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public BitmapCache m39clone() {
            BitmapCache bitmapCache = new BitmapCache();
            bitmapCache.mBitmaps.addAll(this.mBitmaps);
            return bitmapCache;
        }

        public BitmapCache(Parcel parcel) {
            int i2 = parcel.readInt();
            this.mBitmaps = new ArrayList<>();
            for (int i3 = 0; i3 < i2; i3++) {
                this.mBitmaps.add(Bitmap.CREATOR.createFromParcel(parcel));
            }
        }
    }

    public class MemoryUsageCounter {
        int mMemoryUsage;

        private MemoryUsageCounter() {
        }

        public void addBitmapMemory(Bitmap bitmap) {
            increment(bitmap.getAllocationByteCount());
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
        F first;
        S second;

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
        private int mEnterAnimationId;

        public boolean onClickHandler(View view, PendingIntent pendingIntent, Intent intent) {
            return onClickHandler(view, pendingIntent, intent, -1);
        }

        public void setEnterAnimationId(int i2) {
            this.mEnterAnimationId = i2;
        }

        public boolean onClickHandler(View view, PendingIntent pendingIntent, Intent intent, int i2) {
            try {
                Context context = view.getContext();
                int i3 = this.mEnterAnimationId;
                ActivityOptions activityOptionsMakeCustomAnimation = i3 != 0 ? ActivityOptions.makeCustomAnimation(context, i3, 0) : ActivityOptions.makeBasic();
                if (i2 != -1) {
                    activityOptionsMakeCustomAnimation.setLaunchStackId(i2);
                }
                context.startIntentSender(pendingIntent.getIntentSender(), intent, 268435456, 268435456, 0, activityOptionsMakeCustomAnimation.toBundle());
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

    public interface OnViewAppliedListener {
        void onError(Exception exc);

        void onViewApplied(View view);
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface RemoteView {
    }

    public static class RemoteViewsContextWrapper extends ContextWrapper {
        private final Context mContextForResources;

        public RemoteViewsContextWrapper(Context context, Context context2) {
            super(context);
            this.mContextForResources = context2;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public String getPackageName() {
            return this.mContextForResources.getPackageName();
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Resources getResources() {
            return this.mContextForResources.getResources();
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Resources.Theme getTheme() {
            return this.mContextForResources.getTheme();
        }
    }

    public static final class RunnableAction extends RuntimeAction {
        private final Runnable mRunnable;

        public RunnableAction(Runnable runnable) {
            super();
            this.mRunnable = runnable;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            this.mRunnable.run();
        }
    }

    public static abstract class RuntimeAction extends Action {
        private RuntimeAction() {
            super();
        }

        @Override // android.widget.RemoteViews.Action
        public final String getActionName() {
            return "RuntimeAction";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    public class ViewGroupActionAdd extends Action {
        private int mIndex;
        private RemoteViews mNestedViews;

        public ViewGroupActionAdd(RemoteViews remoteViews, int i2, RemoteViews remoteViews2) {
            this(i2, remoteViews2, -1);
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            Context context = view.getContext();
            ViewGroup viewGroup2 = (ViewGroup) view.findViewById(this.viewId);
            if (viewGroup2 == null) {
                return;
            }
            viewGroup2.addView(this.mNestedViews.apply(context, viewGroup2, onClickHandler), this.mIndex);
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "ViewGroupActionAdd";
        }

        @Override // android.widget.RemoteViews.Action
        public boolean hasSameAppInfo(ApplicationInfo applicationInfo) {
            return this.mNestedViews.mApplication.packageName.equals(applicationInfo.packageName) && this.mNestedViews.mApplication.uid == applicationInfo.uid;
        }

        @Override // android.widget.RemoteViews.Action
        public Action initActionAsync(ViewTree viewTree, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            viewTree.createTree();
            ViewTree viewTreeFindViewTreeById = viewTree.findViewTreeById(this.viewId);
            if (viewTreeFindViewTreeById == null || !(viewTreeFindViewTreeById.mRoot instanceof ViewGroup)) {
                return RemoteViews.ACTION_NOOP;
            }
            final ViewGroup viewGroup2 = (ViewGroup) viewTreeFindViewTreeById.mRoot;
            final AsyncApplyTask asyncApplyTask = this.mNestedViews.getAsyncApplyTask(viewTree.mRoot.getContext(), viewGroup2, null, onClickHandler);
            final ViewTree viewTreeDoInBackground = asyncApplyTask.doInBackground(new Void[0]);
            if (viewTreeDoInBackground == null) {
                throw new ActionException(asyncApplyTask.mError);
            }
            viewTreeFindViewTreeById.addChild(viewTreeDoInBackground, this.mIndex);
            return new RuntimeAction() { // from class: android.widget.RemoteViews.ViewGroupActionAdd.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // android.widget.RemoteViews.Action
                public void apply(View view, ViewGroup viewGroup3, OnClickHandler onClickHandler2) {
                    asyncApplyTask.onPostExecute(viewTreeDoInBackground);
                    viewGroup2.addView(asyncApplyTask.mResult, ViewGroupActionAdd.this.mIndex);
                }
            };
        }

        @Override // android.widget.RemoteViews.Action
        public int mergeBehavior() {
            return 1;
        }

        @Override // android.widget.RemoteViews.Action
        public boolean prefersAsyncApply() {
            return this.mNestedViews.prefersAsyncApply();
        }

        @Override // android.widget.RemoteViews.Action
        public void setBitmapCache(BitmapCache bitmapCache) {
            this.mNestedViews.setBitmapCache(bitmapCache);
        }

        @Override // android.widget.RemoteViews.Action
        public void updateMemoryUsageEstimate(MemoryUsageCounter memoryUsageCounter) {
            memoryUsageCounter.increment(this.mNestedViews.estimateMemoryUsage());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(4);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.mIndex);
            this.mNestedViews.writeToParcel(parcel, i2);
        }

        public ViewGroupActionAdd(int i2, RemoteViews remoteViews, int i3) {
            super();
            this.viewId = i2;
            this.mNestedViews = remoteViews;
            this.mIndex = i3;
            if (remoteViews != null) {
                RemoteViews.this.configureRemoteViewsAsChild(remoteViews);
            }
        }

        public ViewGroupActionAdd(Parcel parcel, BitmapCache bitmapCache, ApplicationInfo applicationInfo, int i2) {
            super();
            this.viewId = parcel.readInt();
            this.mIndex = parcel.readInt();
            this.mNestedViews = new RemoteViews(parcel, bitmapCache, applicationInfo, i2);
        }
    }

    public class ViewGroupActionRemove extends Action {
        private static final int REMOVE_ALL_VIEWS_ID = -2;
        private int mViewIdToKeep;

        public ViewGroupActionRemove(RemoteViews remoteViews, int i2) {
            this(i2, -2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAllViewsExceptIdToKeep(ViewGroup viewGroup) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (viewGroup.getChildAt(childCount).getId() != this.mViewIdToKeep) {
                    viewGroup.removeViewAt(childCount);
                }
            }
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            ViewGroup viewGroup2 = (ViewGroup) view.findViewById(this.viewId);
            if (viewGroup2 == null) {
                return;
            }
            if (this.mViewIdToKeep == -2) {
                viewGroup2.removeAllViews();
            } else {
                removeAllViewsExceptIdToKeep(viewGroup2);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "ViewGroupActionRemove";
        }

        @Override // android.widget.RemoteViews.Action
        public Action initActionAsync(ViewTree viewTree, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            viewTree.createTree();
            ViewTree viewTreeFindViewTreeById = viewTree.findViewTreeById(this.viewId);
            if (viewTreeFindViewTreeById == null || !(viewTreeFindViewTreeById.mRoot instanceof ViewGroup)) {
                return RemoteViews.ACTION_NOOP;
            }
            final ViewGroup viewGroup2 = (ViewGroup) viewTreeFindViewTreeById.mRoot;
            viewTreeFindViewTreeById.mChildren = null;
            return new RuntimeAction() { // from class: android.widget.RemoteViews.ViewGroupActionRemove.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // android.widget.RemoteViews.Action
                public void apply(View view, ViewGroup viewGroup3, OnClickHandler onClickHandler2) {
                    if (ViewGroupActionRemove.this.mViewIdToKeep == -2) {
                        viewGroup2.removeAllViews();
                    } else {
                        ViewGroupActionRemove.this.removeAllViewsExceptIdToKeep(viewGroup2);
                    }
                }
            };
        }

        @Override // android.widget.RemoteViews.Action
        public int mergeBehavior() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(7);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.mViewIdToKeep);
        }

        public ViewGroupActionRemove(int i2, int i3) {
            super();
            this.viewId = i2;
            this.mViewIdToKeep = i3;
        }

        public ViewGroupActionRemove(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.mViewIdToKeep = parcel.readInt();
        }
    }

    public static class ViewTree {
        private static final int INSERT_AT_END_INDEX = -1;
        private ArrayList<ViewTree> mChildren;
        private View mRoot;

        private void addViewChild(View view) {
            ViewTree viewTree;
            if (view.isRootNamespace()) {
                return;
            }
            if (view.getId() != 0) {
                viewTree = new ViewTree(view);
                this.mChildren.add(viewTree);
            } else {
                viewTree = this;
            }
            if ((view instanceof ViewGroup) && viewTree.mChildren == null) {
                viewTree.mChildren = new ArrayList<>();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    viewTree.addViewChild(viewGroup.getChildAt(i2));
                }
            }
        }

        public void addChild(ViewTree viewTree) {
            addChild(viewTree, -1);
        }

        public void createTree() {
            if (this.mChildren != null) {
                return;
            }
            this.mChildren = new ArrayList<>();
            View view = this.mRoot;
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    addViewChild(viewGroup.getChildAt(i2));
                }
            }
        }

        public <T extends View> T findViewById(int i2) {
            if (this.mChildren == null) {
                return (T) this.mRoot.findViewById(i2);
            }
            ViewTree viewTreeFindViewTreeById = findViewTreeById(i2);
            if (viewTreeFindViewTreeById == null) {
                return null;
            }
            return (T) viewTreeFindViewTreeById.mRoot;
        }

        public ViewTree findViewTreeById(int i2) {
            if (this.mRoot.getId() == i2) {
                return this;
            }
            ArrayList<ViewTree> arrayList = this.mChildren;
            if (arrayList == null) {
                return null;
            }
            Iterator<ViewTree> it = arrayList.iterator();
            while (it.hasNext()) {
                ViewTree viewTreeFindViewTreeById = it.next().findViewTreeById(i2);
                if (viewTreeFindViewTreeById != null) {
                    return viewTreeFindViewTreeById;
                }
            }
            return null;
        }

        public void replaceView(View view) {
            this.mRoot = view;
            this.mChildren = null;
            createTree();
        }

        private ViewTree(View view) {
            this.mRoot = view;
        }

        public void addChild(ViewTree viewTree, int i2) {
            if (this.mChildren == null) {
                this.mChildren = new ArrayList<>();
            }
            viewTree.createTree();
            if (i2 == -1) {
                this.mChildren.add(viewTree);
            } else {
                this.mChildren.add(i2, viewTree);
            }
        }
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

    private static ApplicationInfo getApplicationInfo(String str, int i2) {
        if (str == null) {
            return null;
        }
        Application applicationCurrentApplication = ActivityThread.currentApplication();
        if (applicationCurrentApplication == null) {
            throw new IllegalStateException("Cannot create remote views out of an aplication.");
        }
        ApplicationInfo applicationInfo = applicationCurrentApplication.getApplicationInfo();
        if (UserHandle.getUserId(applicationInfo.uid) == i2 && applicationInfo.packageName.equals(str)) {
            return applicationInfo;
        }
        try {
            return applicationCurrentApplication.getBaseContext().createPackageContextAsUser(str, 0, new UserHandle(i2)).getApplicationInfo();
        } catch (PackageManager.NameNotFoundException unused) {
            throw new IllegalArgumentException("No such package ".concat(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AsyncApplyTask getAsyncApplyTask(Context context, ViewGroup viewGroup, OnViewAppliedListener onViewAppliedListener, OnClickHandler onClickHandler) {
        return new AsyncApplyTask(getRemoteViewsToApply(context), viewGroup, context, onViewAppliedListener, onClickHandler, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Method getAsyncMethod(Method method) {
        Method method2;
        ArrayMap<Method, Method> arrayMap = sAsyncMethods;
        synchronized (arrayMap) {
            int iIndexOfKey = arrayMap.indexOfKey(method);
            if (iIndexOfKey >= 0) {
                return arrayMap.valueAt(iIndexOfKey);
            }
            RemotableViewMethod remotableViewMethod = (RemotableViewMethod) method.getAnnotation(RemotableViewMethod.class);
            if (remotableViewMethod.asyncImpl().isEmpty()) {
                method2 = null;
            } else {
                try {
                    method2 = method.getDeclaringClass().getMethod(remotableViewMethod.asyncImpl(), method.getParameterTypes());
                    if (!method2.getReturnType().equals(Runnable.class)) {
                        throw new ActionException("Async implementation for " + method.getName() + " does not return a Runnable");
                    }
                } catch (NoSuchMethodException unused) {
                    throw new ActionException("Async implementation declared but not defined for " + method.getName());
                }
            }
            arrayMap.put(method, method2);
            return method2;
        }
    }

    private Context getContextForResources(Context context) {
        if (this.mApplication != null) {
            if (context.getUserId() == UserHandle.getUserId(this.mApplication.uid) && context.getPackageName().equals(this.mApplication.packageName)) {
                return context;
            }
            try {
                return context.createApplicationContext(this.mApplication, 4);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e(LOG_TAG, "Package name " + this.mApplication.packageName + " not found");
            }
        }
        return context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.reflect.Method] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object, java.lang.reflect.AccessibleObject] */
    /* JADX WARN: Type inference failed for: r8v0, types: [F, java.lang.Object, java.lang.String] */
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
        ?? r3;
        ?? method = "view: ";
        Class<?> cls2 = view.getClass();
        synchronized (sMethodsLock) {
            Map map = sMethods;
            ArrayMap arrayMap = (ArrayMap) map.get(cls2);
            if (arrayMap == null) {
                arrayMap = new ArrayMap();
                map.put(cls2, arrayMap);
            }
            MutablePair<String, Class<?>> mutablePair = this.mPair;
            mutablePair.first = str;
            mutablePair.second = cls;
            Method method2 = (Method) arrayMap.get(mutablePair);
            r3 = method2;
            if (method2 == null) {
                try {
                    method = cls == 0 ? cls2.getMethod(str, new Class[0]) : cls2.getMethod(str, cls);
                    ?? r4 = method;
                    if (!r4.isAnnotationPresent(RemotableViewMethod.class)) {
                        throw new ActionException("view: " + cls2.getName() + " can't use method with RemoteViews: " + ((String) str) + getParameters(cls));
                    }
                    arrayMap.put(new MutablePair(str, cls), r4);
                    r3 = r4;
                } catch (NoSuchMethodException unused) {
                    throw new ActionException(((String) method) + cls2.getName() + " doesn't have method: " + ((String) str) + getParameters(cls));
                }
            }
        }
        return r3;
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
        int i2 = iArr[0];
        rect.left = (int) ((i2 * f2) + 0.5f);
        rect.top = (int) ((iArr[1] * f2) + 0.5f);
        rect.right = (int) (((view.getWidth() + i2) * f2) + 0.5f);
        rect.bottom = (int) (((view.getHeight() + iArr[1]) * f2) + 0.5f);
        return rect;
    }

    private boolean hasLandscapeAndPortraitLayouts() {
        return (this.mLandscape == null || this.mPortrait == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View inflateView(Context context, RemoteViews remoteViews, ViewGroup viewGroup) {
        LayoutInflater layoutInflaterCloneInContext = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).cloneInContext(new RemoteViewsContextWrapper(context, getContextForResources(context)));
        layoutInflaterCloneInContext.setFilter(this);
        View viewInflate = layoutInflaterCloneInContext.inflate(remoteViews.getLayoutId(), viewGroup, false);
        viewInflate.setTagInternal(16908312, Integer.valueOf(remoteViews.getLayoutId()));
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loadTransitionOverride(Context context, OnClickHandler onClickHandler) {
        if (onClickHandler == null || !context.getResources().getBoolean(R.bool.config_overrideRemoteViewsActivityTransition)) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(R.styleable.Window);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(typedArrayObtainStyledAttributes.getResourceId(8, 0), R.styleable.WindowAnimation);
        onClickHandler.setEnterAnimationId(typedArrayObtainStyledAttributes2.getResourceId(26, 0));
        typedArrayObtainStyledAttributes.recycle();
        typedArrayObtainStyledAttributes2.recycle();
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

    private CancellationSignal startTaskOnExecutor(AsyncApplyTask asyncApplyTask, Executor executor) {
        CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.setOnCancelListener(asyncApplyTask);
        if (executor == null) {
            executor = AsyncTask.THREAD_POOL_EXECUTOR;
        }
        asyncApplyTask.executeOnExecutor(executor, new Void[0]);
        return cancellationSignal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object[] wrapArg(Object obj) {
        Object[] objArr = sInvokeArgsTls.get();
        objArr[0] = obj;
        return objArr;
    }

    public void addView(int i2, RemoteViews remoteViews) {
        addAction(remoteViews == null ? new ViewGroupActionRemove(this, i2) : new ViewGroupActionAdd(this, i2, remoteViews));
    }

    public View apply(Context context, ViewGroup viewGroup) {
        return apply(context, viewGroup, null);
    }

    public CancellationSignal applyAsync(Context context, ViewGroup viewGroup, Executor executor, OnViewAppliedListener onViewAppliedListener) {
        return applyAsync(context, viewGroup, executor, onViewAppliedListener, null);
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
        ApplicationInfo applicationInfo = this.mApplication;
        if (applicationInfo != null) {
            return applicationInfo.packageName;
        }
        return null;
    }

    public int getSequenceNumber() {
        ArrayList<Action> arrayList = this.mActions;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public boolean isReapplyDisallowed() {
        return this.mReapplyDisallowed;
    }

    public void mergeRemoteViews(RemoteViews remoteViews) {
        if (remoteViews == null) {
            return;
        }
        RemoteViews remoteViewsMo11clone = remoteViews.mo11clone();
        HashMap map = new HashMap();
        if (this.mActions == null) {
            this.mActions = new ArrayList<>();
        }
        int size = this.mActions.size();
        for (int i2 = 0; i2 < size; i2++) {
            Action action = this.mActions.get(i2);
            map.put(action.getUniqueKey(), action);
        }
        ArrayList<Action> arrayList = remoteViewsMo11clone.mActions;
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
        recalculateMemoryUsage();
    }

    @Override // android.view.LayoutInflater.Filter
    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(RemoteView.class);
    }

    public void overrideTextColors(int i2) {
        addAction(new OverrideTextColorsAction(i2));
    }

    public boolean prefersAsyncApply() {
        ArrayList<Action> arrayList = this.mActions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mActions.get(i2).prefersAsyncApply()) {
                    return true;
                }
            }
        }
        return false;
    }

    public void reapply(Context context, View view) {
        reapply(context, view, null);
    }

    public CancellationSignal reapplyAsync(Context context, View view, Executor executor, OnViewAppliedListener onViewAppliedListener) {
        return reapplyAsync(context, view, executor, onViewAppliedListener, null);
    }

    public void reduceImageSizes(int i2, int i3) {
        ArrayList<Bitmap> arrayList = this.mBitmapCache.mBitmaps;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            arrayList.set(i4, Icon.scaleDownIfNecessary(arrayList.get(i4), i2, i3));
        }
    }

    public void removeAllViews(int i2) {
        addAction(new ViewGroupActionRemove(this, i2));
    }

    public void removeAllViewsExceptId(int i2, int i3) {
        addAction(new ViewGroupActionRemove(i2, i3));
    }

    public void setAccessibilityTraversalAfter(int i2, int i3) {
        setInt(i2, "setAccessibilityTraversalAfter", i3);
    }

    public void setAccessibilityTraversalBefore(int i2, int i3) {
        setInt(i2, "setAccessibilityTraversalBefore", i3);
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

    public void setChar(int i2, String str, char c) {
        addAction(new ReflectionAction(i2, str, 8, Character.valueOf(c)));
    }

    public void setCharSequence(int i2, String str, CharSequence charSequence) {
        addAction(new ReflectionAction(i2, str, 10, charSequence));
    }

    public void setChronometer(int i2, long j2, String str, boolean z2) {
        setLong(i2, "setBase", j2);
        setString(i2, "setFormat", str);
        setBoolean(i2, "setStarted", z2);
    }

    public void setChronometerCountDown(int i2, boolean z2) {
        setBoolean(i2, "setCountDown", z2);
    }

    public void setChronometerNoDelay(int i2, String str, String str2, boolean z2) {
        setString(i2, "setBaseNoDelay", str);
        setString(i2, "setFormat", str2);
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

    public void setIcon(int i2, String str, Icon icon) {
        addAction(new ReflectionAction(i2, str, 16, icon));
    }

    public void setImageViewBitmap(int i2, Bitmap bitmap) {
        setBitmap(i2, "setImageBitmap", bitmap);
    }

    public void setImageViewIcon(int i2, Icon icon) {
        setIcon(i2, "setImageIcon", icon);
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

    public void setProgressBackgroundTintList(int i2, ColorStateList colorStateList) {
        addAction(new ReflectionAction(i2, "setProgressBackgroundTintList", 15, colorStateList));
    }

    public void setProgressBar(int i2, int i3, int i4, boolean z2) {
        setBoolean(i2, "setIndeterminate", z2);
        if (z2) {
            return;
        }
        setInt(i2, "setMax", i3);
        setInt(i2, "setProgress", i4);
    }

    public void setProgressIndeterminateTintList(int i2, ColorStateList colorStateList) {
        addAction(new ReflectionAction(i2, "setIndeterminateTintList", 15, colorStateList));
    }

    public void setProgressTintList(int i2, ColorStateList colorStateList) {
        addAction(new ReflectionAction(i2, "setProgressTintList", 15, colorStateList));
    }

    public void setReapplyDisallowed() {
        this.mReapplyDisallowed = true;
    }

    public void setRelativeScrollPosition(int i2, int i3) {
        setInt(i2, "smoothScrollByOffset", i3);
    }

    @Deprecated
    public void setRemoteAdapter(int i2, int i3, Intent intent) {
        setRemoteAdapter(i3, intent);
    }

    public void setRemoteInputs(int i2, RemoteInput[] remoteInputArr) {
        this.mActions.add(new SetRemoteInputsAction(i2, remoteInputArr));
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

    public void setTextViewCompoundDrawablesRelativeColorFilter(int i2, int i3, int i4, PorterDuff.Mode mode) {
        if (i3 < 0 || i3 >= 4) {
            throw new IllegalArgumentException("index must be in range [0, 3].");
        }
        addAction(new TextViewDrawableColorFilterAction(i2, true, i3, i4, mode));
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

    public void setViewLayoutMarginBottomDimen(int i2, int i3) {
        addAction(new LayoutParamAction(i2, 3, i3));
    }

    public void setViewLayoutMarginEndDimen(int i2, int i3) {
        addAction(new LayoutParamAction(i2, 1, i3));
    }

    public void setViewLayoutWidth(int i2, int i3) {
        if (i3 != 0 && i3 != -1 && i3 != -2) {
            throw new IllegalArgumentException("Only supports 0, WRAP_CONTENT and MATCH_PARENT");
        }
        this.mActions.add(new LayoutParamAction(i2, 2, i3));
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
            this.mPortrait.writeToParcel(parcel, i2 | 2);
        } else {
            parcel.writeInt(0);
            if (this.mIsRoot) {
                this.mBitmapCache.writeBitmapsToParcel(parcel, i2);
            }
            if (this.mIsRoot || (i2 & 2) == 0) {
                parcel.writeInt(1);
                this.mApplication.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.mLayoutId);
            parcel.writeInt(this.mIsWidgetCollectionChild ? 1 : 0);
            ArrayList<Action> arrayList = this.mActions;
            int size = arrayList != null ? arrayList.size() : 0;
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                Action action = this.mActions.get(i3);
                action.writeToParcel(parcel, action.hasSameAppInfo(this.mApplication) ? 2 : 0);
            }
        }
        parcel.writeInt(this.mReapplyDisallowed ? 1 : 0);
    }

    public class OverrideTextColorsAction extends Action {
        private final int textColor;

        public OverrideTextColorsAction(int i2) {
            super();
            this.textColor = i2;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            Stack stack = new Stack();
            stack.add(view);
            while (!stack.isEmpty()) {
                View view2 = (View) stack.pop();
                if (view2 instanceof TextView) {
                    TextView textView = (TextView) view2;
                    textView.setText(NotificationColorUtil.clearColorSpans(textView.getText()));
                    textView.setTextColor(this.textColor);
                }
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) view2;
                    for (int i2 = 0; i2 < viewGroup2.getChildCount(); i2++) {
                        stack.push(viewGroup2.getChildAt(i2));
                    }
                }
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "OverrideTextColorsAction";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(20);
            parcel.writeInt(this.textColor);
        }

        public OverrideTextColorsAction(Parcel parcel) {
            super();
            this.textColor = parcel.readInt();
        }
    }

    public RemoteViews(String str, int i2) {
        this(getApplicationInfo(str, UserHandle.myUserId()), i2);
    }

    public void addView(int i2, RemoteViews remoteViews, int i3) {
        addAction(new ViewGroupActionAdd(i2, remoteViews, i3));
    }

    public View apply(Context context, ViewGroup viewGroup, OnClickHandler onClickHandler) {
        RemoteViews remoteViewsToApply = getRemoteViewsToApply(context);
        View viewInflateView = inflateView(context, remoteViewsToApply, viewGroup);
        loadTransitionOverride(context, onClickHandler);
        remoteViewsToApply.performApply(viewInflateView, viewGroup, onClickHandler);
        return viewInflateView;
    }

    public CancellationSignal applyAsync(Context context, ViewGroup viewGroup, Executor executor, OnViewAppliedListener onViewAppliedListener, OnClickHandler onClickHandler) {
        return startTaskOnExecutor(getAsyncApplyTask(context, viewGroup, onViewAppliedListener, onClickHandler), executor);
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RemoteViews mo11clone() {
        RemoteViews remoteViews;
        synchronized (this) {
            Preconditions.checkState(this.mIsRoot, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy.");
            Parcel parcelObtain = Parcel.obtain();
            this.mIsRoot = false;
            writeToParcel(parcelObtain, 2);
            parcelObtain.setDataPosition(0);
            this.mIsRoot = true;
            remoteViews = new RemoteViews(parcelObtain, this.mBitmapCache.m39clone(), this.mApplication, 0);
            remoteViews.mIsRoot = true;
            parcelObtain.recycle();
        }
        return remoteViews;
    }

    public void reapply(Context context, View view, OnClickHandler onClickHandler) {
        RemoteViews remoteViewsToApply = getRemoteViewsToApply(context);
        if (hasLandscapeAndPortraitLayouts() && ((Integer) view.getTag(16908312)).intValue() != remoteViewsToApply.getLayoutId()) {
            throw new RuntimeException("Attempting to re-apply RemoteViews to a view that that does not share the same root layout id.");
        }
        remoteViewsToApply.performApply(view, (ViewGroup) view.getParent(), onClickHandler);
    }

    public CancellationSignal reapplyAsync(Context context, View view, Executor executor, OnViewAppliedListener onViewAppliedListener, OnClickHandler onClickHandler) {
        RemoteViews remoteViewsToApply = getRemoteViewsToApply(context);
        if (!hasLandscapeAndPortraitLayouts() || ((Integer) view.getTag(16908312)).intValue() == remoteViewsToApply.getLayoutId()) {
            return startTaskOnExecutor(new AsyncApplyTask(remoteViewsToApply, (ViewGroup) view.getParent(), context, onViewAppliedListener, onClickHandler, view), executor);
        }
        throw new RuntimeException("Attempting to re-apply RemoteViews to a view that that does not share the same root layout id.");
    }

    public void setRemoteAdapter(int i2, Intent intent) {
        addAction(new SetRemoteViewsAdapterIntent(i2, intent));
    }

    public void setTextColor(int i2, ColorStateList colorStateList) {
        addAction(new ReflectionAction(i2, "setTextColor", 15, colorStateList));
    }

    public void setTextViewCompoundDrawables(int i2, Icon icon, Icon icon2, Icon icon3, Icon icon4) {
        addAction(new TextViewDrawableAction(i2, false, icon, icon2, icon3, icon4));
    }

    public void setTextViewCompoundDrawablesRelative(int i2, Icon icon, Icon icon2, Icon icon3, Icon icon4) {
        addAction(new TextViewDrawableAction(i2, true, icon, icon2, icon3, icon4));
    }

    public final class ReflectionActionWithoutParams extends Action {
        final String methodName;

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
        int emptyViewId;
        int viewId;

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
        Intent fillInIntent;

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
                viewFindViewById.setTagInternal(R.id.fillInIntent, this.fillInIntent);
            } else if (this.fillInIntent != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: android.widget.RemoteViews.SetOnClickFillInIntent.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        View view3 = (View) view2.getParent();
                        while (view3 != null && !(view3 instanceof AdapterView) && (!(view3 instanceof AppWidgetHostView) || (view3 instanceof RemoteViewsAdapter.RemoteViewsFrameLayout))) {
                            view3 = (View) view3.getParent();
                        }
                        if (!(view3 instanceof AdapterView)) {
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
        PendingIntent pendingIntent;

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
        PendingIntent pendingIntentTemplate;

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
                        Intent intent;
                        if (view2 instanceof ViewGroup) {
                            ViewGroup viewGroup2 = (ViewGroup) view2;
                            int i3 = 0;
                            if (adapterView2 instanceof AdapterViewAnimator) {
                                viewGroup2 = (ViewGroup) viewGroup2.getChildAt(0);
                            }
                            if (viewGroup2 == null) {
                                return;
                            }
                            int childCount = viewGroup2.getChildCount();
                            while (true) {
                                if (i3 >= childCount) {
                                    intent = null;
                                    break;
                                }
                                Object tag = viewGroup2.getChildAt(i3).getTag(R.id.fillInIntent);
                                if (tag instanceof Intent) {
                                    intent = (Intent) tag;
                                    break;
                                }
                                i3++;
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

    public class SetRemoteInputsAction extends Action {
        final Parcelable[] remoteInputs;

        public SetRemoteInputsAction(int i2, RemoteInput[] remoteInputArr) {
            super();
            this.viewId = i2;
            this.remoteInputs = remoteInputArr;
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            viewFindViewById.setTagInternal(R.id.remote_input_tag, this.remoteInputs);
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetRemoteInputsAction";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(18);
            parcel.writeInt(this.viewId);
            parcel.writeTypedArray(this.remoteInputs, i2);
        }

        public SetRemoteInputsAction(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.remoteInputs = (Parcelable[]) parcel.createTypedArray(RemoteInput.CREATOR);
        }
    }

    public RemoteViews(String str, int i2, int i3) {
        this(getApplicationInfo(str, i2), i3);
    }

    public void setRemoteAdapter(int i2, ArrayList<RemoteViews> arrayList, int i3) {
        addAction(new SetRemoteViewsAdapterList(i2, arrayList, i3));
    }

    public static class LayoutParamAction extends Action {
        public static final int LAYOUT_MARGIN_BOTTOM_DIMEN = 3;
        public static final int LAYOUT_MARGIN_END_DIMEN = 1;
        public static final int LAYOUT_WIDTH = 2;
        int property;
        int value;

        public LayoutParamAction(int i2, int i3, int i4) {
            super();
            this.viewId = i2;
            this.property = i3;
            this.value = i4;
        }

        private static int resolveDimenPixelOffset(View view, int i2) {
            if (i2 == 0) {
                return 0;
            }
            return view.getContext().getResources().getDimensionPixelOffset(i2);
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            ViewGroup.LayoutParams layoutParams;
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null || (layoutParams = viewFindViewById.getLayoutParams()) == null) {
                return;
            }
            int i2 = this.property;
            if (i2 == 1) {
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(resolveDimenPixelOffset(viewFindViewById, this.value));
                    viewFindViewById.setLayoutParams(layoutParams);
                    return;
                }
                return;
            }
            if (i2 == 2) {
                layoutParams.width = this.value;
                viewFindViewById.setLayoutParams(layoutParams);
            } else {
                if (i2 != 3) {
                    throw new IllegalArgumentException("Unknown property " + this.property);
                }
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = resolveDimenPixelOffset(viewFindViewById, this.value);
                    viewFindViewById.setLayoutParams(layoutParams);
                }
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return android.accessibilityservice.c.m(new StringBuilder("LayoutParamAction"), this.property, ".");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(19);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.property);
            parcel.writeInt(this.value);
        }

        public LayoutParamAction(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.property = parcel.readInt();
            this.value = parcel.readInt();
        }
    }

    public class SetRemoteViewsAdapterIntent extends Action {
        Intent intent;
        boolean isAsync;

        public SetRemoteViewsAdapterIntent(int i2, Intent intent) {
            super();
            this.isAsync = false;
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
                absListView.setRemoteViewsAdapter(this.intent, this.isAsync);
                absListView.setRemoteViewsOnClickHandler(onClickHandler);
            } else if (viewFindViewById instanceof AdapterViewAnimator) {
                AdapterViewAnimator adapterViewAnimator = (AdapterViewAnimator) viewFindViewById;
                adapterViewAnimator.setRemoteViewsAdapter(this.intent, this.isAsync);
                adapterViewAnimator.setRemoteViewsOnClickHandler(onClickHandler);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "SetRemoteViewsAdapterIntent";
        }

        @Override // android.widget.RemoteViews.Action
        public Action initActionAsync(ViewTree viewTree, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            SetRemoteViewsAdapterIntent setRemoteViewsAdapterIntent = RemoteViews.this.new SetRemoteViewsAdapterIntent(this.viewId, this.intent);
            setRemoteViewsAdapterIntent.isAsync = true;
            return setRemoteViewsAdapterIntent;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(10);
            parcel.writeInt(this.viewId);
            this.intent.writeToParcel(parcel, i2);
        }

        public SetRemoteViewsAdapterIntent(Parcel parcel) {
            super();
            this.isAsync = false;
            this.viewId = parcel.readInt();
            this.intent = Intent.CREATOR.createFromParcel(parcel);
        }
    }

    public class SetRemoteViewsAdapterList extends Action {
        ArrayList<RemoteViews> list;
        int viewTypeCount;

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
        float size;
        int units;

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

    public RemoteViews(ApplicationInfo applicationInfo, int i2) {
        this.mIsRoot = true;
        this.mLandscape = null;
        this.mPortrait = null;
        this.mIsWidgetCollectionChild = false;
        this.mPair = new MutablePair<>(null, null);
        this.mApplication = applicationInfo;
        this.mLayoutId = i2;
        this.mBitmapCache = new BitmapCache();
        this.mMemoryUsageCounter = new MemoryUsageCounter();
        recalculateMemoryUsage();
    }

    public class BitmapReflectionAction extends Action {
        Bitmap bitmap;
        int bitmapId;
        String methodName;

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
        static final int BITMAP = 12;
        static final int BOOLEAN = 1;
        static final int BUNDLE = 13;
        static final int BYTE = 2;
        static final int CHAR = 8;
        static final int CHAR_SEQUENCE = 10;
        static final int COLOR_STATE_LIST = 15;
        static final int DOUBLE = 7;
        static final int FLOAT = 6;
        static final int ICON = 16;
        static final int INT = 4;
        static final int INTENT = 14;
        static final int LONG = 5;
        static final int SHORT = 3;
        static final int STRING = 9;
        static final int URI = 11;
        String methodName;
        int type;
        Object value;

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
                case 15:
                    return ColorStateList.class;
                case 16:
                    return Icon.class;
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
        public Action initActionAsync(ViewTree viewTree, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            View viewFindViewById = viewTree.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return RemoteViews.ACTION_NOOP;
            }
            Class<?> parameterType = getParameterType();
            if (parameterType == null) {
                throw new ActionException("bad type: " + this.type);
            }
            try {
                Method asyncMethod = RemoteViews.this.getAsyncMethod(RemoteViews.this.getMethod(viewFindViewById, this.methodName, parameterType));
                if (asyncMethod == null) {
                    return this;
                }
                Runnable runnable = (Runnable) asyncMethod.invoke(viewFindViewById, RemoteViews.wrapArg(this.value));
                if (runnable == null) {
                    return RemoteViews.ACTION_NOOP;
                }
                if (runnable instanceof ViewStub.ViewReplaceRunnable) {
                    viewTree.createTree();
                    viewTree.findViewTreeById(this.viewId).replaceView(((ViewStub.ViewReplaceRunnable) runnable).view);
                }
                return new RunnableAction(runnable);
            } catch (ActionException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new ActionException(e3);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public int mergeBehavior() {
            return this.methodName.equals("smoothScrollBy") ? 1 : 0;
        }

        @Override // android.widget.RemoteViews.Action
        public boolean prefersAsyncApply() {
            int i2 = this.type;
            return i2 == 11 || i2 == 16;
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
                case 15:
                    parcel.writeInt(this.value == null ? 0 : 1);
                    Object obj4 = this.value;
                    if (obj4 != null) {
                        ((ColorStateList) obj4).writeToParcel(parcel, i2);
                    }
                    break;
                case 16:
                    parcel.writeInt(this.value == null ? 0 : 1);
                    Object obj5 = this.value;
                    if (obj5 != null) {
                        ((Icon) obj5).writeToParcel(parcel, i2);
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
                case 15:
                    if (parcel.readInt() != 0) {
                        this.value = ColorStateList.CREATOR.createFromParcel(parcel);
                    }
                    break;
                case 16:
                    if (parcel.readInt() != 0) {
                        this.value = Icon.CREATOR.createFromParcel(parcel);
                    }
                    break;
            }
        }
    }

    public class TextViewDrawableColorFilterAction extends Action {
        final int color;
        final int index;
        final boolean isRelative;
        final PorterDuff.Mode mode;

        public TextViewDrawableColorFilterAction(int i2, boolean z2, int i3, int i4, PorterDuff.Mode mode) {
            super();
            this.viewId = i2;
            this.isRelative = z2;
            this.index = i3;
            this.color = i4;
            this.mode = mode;
        }

        private PorterDuff.Mode readPorterDuffMode(Parcel parcel) {
            int i2 = parcel.readInt();
            return (i2 < 0 || i2 >= PorterDuff.Mode.values().length) ? PorterDuff.Mode.CLEAR : PorterDuff.Mode.values()[i2];
        }

        @Override // android.widget.RemoteViews.Action
        public void apply(View view, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            TextView textView = (TextView) view.findViewById(this.viewId);
            if (textView == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.isRelative ? textView.getCompoundDrawablesRelative() : textView.getCompoundDrawables();
            int i2 = this.index;
            if (i2 < 0 || i2 >= 4) {
                throw new IllegalStateException("index must be in range [0, 3].");
            }
            Drawable drawable = compoundDrawablesRelative[i2];
            if (drawable != null) {
                drawable.mutate();
                drawable.setColorFilter(this.color, this.mode);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "TextViewDrawableColorFilterAction";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(17);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.isRelative ? 1 : 0);
            parcel.writeInt(this.index);
            parcel.writeInt(this.color);
            parcel.writeInt(this.mode.ordinal());
        }

        public TextViewDrawableColorFilterAction(Parcel parcel) {
            super();
            this.viewId = parcel.readInt();
            this.isRelative = parcel.readInt() != 0;
            this.index = parcel.readInt();
            this.color = parcel.readInt();
            this.mode = readPorterDuffMode(parcel);
        }
    }

    public class ViewPaddingAction extends Action {
        int bottom;
        int left;
        int right;
        int top;

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
        int alpha;
        int colorFilter;
        PorterDuff.Mode filterMode;
        int level;
        boolean targetBackground;

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
            Drawable drawable;
            View viewFindViewById = view.findViewById(this.viewId);
            if (viewFindViewById == null) {
                return;
            }
            if (this.targetBackground) {
                drawable = viewFindViewById.getBackground();
            } else {
                drawable = viewFindViewById instanceof ImageView ? ((ImageView) viewFindViewById).getDrawable() : null;
            }
            if (drawable != null) {
                if (this.alpha != -1) {
                    drawable.mutate().setAlpha(this.alpha);
                }
                if (this.filterMode != null) {
                    drawable.mutate().setColorFilter(this.colorFilter, this.filterMode);
                }
                if (this.level != -1) {
                    drawable.mutate().setLevel(this.level);
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
        int d1;
        int d2;
        int d3;
        int d4;
        boolean drawablesLoaded;
        Icon i1;
        Icon i2;
        Icon i3;
        Icon i4;
        Drawable id1;
        Drawable id2;
        Drawable id3;
        Drawable id4;
        boolean isRelative;
        boolean useIcons;

        public TextViewDrawableAction(int i2, boolean z2, int i3, int i4, int i5, int i6) {
            super();
            this.drawablesLoaded = false;
            this.viewId = i2;
            this.isRelative = z2;
            this.useIcons = false;
            this.d1 = i3;
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
            if (this.drawablesLoaded) {
                if (this.isRelative) {
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds(this.id1, this.id2, this.id3, this.id4);
                    return;
                } else {
                    textView.setCompoundDrawablesWithIntrinsicBounds(this.id1, this.id2, this.id3, this.id4);
                    return;
                }
            }
            if (!this.useIcons) {
                if (this.isRelative) {
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds(this.d1, this.d2, this.d3, this.d4);
                    return;
                } else {
                    textView.setCompoundDrawablesWithIntrinsicBounds(this.d1, this.d2, this.d3, this.d4);
                    return;
                }
            }
            Context context = textView.getContext();
            Icon icon = this.i1;
            Drawable drawableLoadDrawable = icon == null ? null : icon.loadDrawable(context);
            Icon icon2 = this.i2;
            Drawable drawableLoadDrawable2 = icon2 == null ? null : icon2.loadDrawable(context);
            Icon icon3 = this.i3;
            Drawable drawableLoadDrawable3 = icon3 == null ? null : icon3.loadDrawable(context);
            Icon icon4 = this.i4;
            Drawable drawableLoadDrawable4 = icon4 != null ? icon4.loadDrawable(context) : null;
            if (this.isRelative) {
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawableLoadDrawable, drawableLoadDrawable2, drawableLoadDrawable3, drawableLoadDrawable4);
            } else {
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableLoadDrawable, drawableLoadDrawable2, drawableLoadDrawable3, drawableLoadDrawable4);
            }
        }

        @Override // android.widget.RemoteViews.Action
        public String getActionName() {
            return "TextViewDrawableAction";
        }

        @Override // android.widget.RemoteViews.Action
        public Action initActionAsync(ViewTree viewTree, ViewGroup viewGroup, OnClickHandler onClickHandler) {
            TextView textView = (TextView) viewTree.findViewById(this.viewId);
            if (textView == null) {
                return RemoteViews.ACTION_NOOP;
            }
            TextViewDrawableAction textViewDrawableAction = this.useIcons ? RemoteViews.this.new TextViewDrawableAction(this.viewId, this.isRelative, this.i1, this.i2, this.i3, this.i4) : RemoteViews.this.new TextViewDrawableAction(this.viewId, this.isRelative, this.d1, this.d2, this.d3, this.d4);
            textViewDrawableAction.drawablesLoaded = true;
            Context context = textView.getContext();
            if (this.useIcons) {
                Icon icon = this.i1;
                textViewDrawableAction.id1 = icon == null ? null : icon.loadDrawable(context);
                Icon icon2 = this.i2;
                textViewDrawableAction.id2 = icon2 == null ? null : icon2.loadDrawable(context);
                Icon icon3 = this.i3;
                textViewDrawableAction.id3 = icon3 == null ? null : icon3.loadDrawable(context);
                Icon icon4 = this.i4;
                textViewDrawableAction.id4 = icon4 != null ? icon4.loadDrawable(context) : null;
            } else {
                int i2 = this.d1;
                textViewDrawableAction.id1 = i2 == 0 ? null : context.getDrawable(i2);
                int i3 = this.d2;
                textViewDrawableAction.id2 = i3 == 0 ? null : context.getDrawable(i3);
                int i4 = this.d3;
                textViewDrawableAction.id3 = i4 == 0 ? null : context.getDrawable(i4);
                int i5 = this.d4;
                textViewDrawableAction.id4 = i5 != 0 ? context.getDrawable(i5) : null;
            }
            return textViewDrawableAction;
        }

        @Override // android.widget.RemoteViews.Action
        public boolean prefersAsyncApply() {
            return this.useIcons;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(11);
            parcel.writeInt(this.viewId);
            parcel.writeInt(this.isRelative ? 1 : 0);
            parcel.writeInt(this.useIcons ? 1 : 0);
            if (!this.useIcons) {
                parcel.writeInt(this.d1);
                parcel.writeInt(this.d2);
                parcel.writeInt(this.d3);
                parcel.writeInt(this.d4);
                return;
            }
            if (this.i1 != null) {
                parcel.writeInt(1);
                this.i1.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            if (this.i2 != null) {
                parcel.writeInt(1);
                this.i2.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            if (this.i3 != null) {
                parcel.writeInt(1);
                this.i3.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            if (this.i4 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.i4.writeToParcel(parcel, 0);
            }
        }

        public TextViewDrawableAction(int i2, boolean z2, Icon icon, Icon icon2, Icon icon3, Icon icon4) {
            super();
            this.drawablesLoaded = false;
            this.viewId = i2;
            this.isRelative = z2;
            this.useIcons = true;
            this.i1 = icon;
            this.i2 = icon2;
            this.i3 = icon3;
            this.i4 = icon4;
        }

        public TextViewDrawableAction(Parcel parcel) {
            super();
            this.isRelative = false;
            this.useIcons = false;
            this.drawablesLoaded = false;
            this.viewId = parcel.readInt();
            this.isRelative = parcel.readInt() != 0;
            boolean z2 = parcel.readInt() != 0;
            this.useIcons = z2;
            if (z2) {
                if (parcel.readInt() != 0) {
                    this.i1 = Icon.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    this.i2 = Icon.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    this.i3 = Icon.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    this.i4 = Icon.CREATOR.createFromParcel(parcel);
                    return;
                }
                return;
            }
            this.d1 = parcel.readInt();
            this.d2 = parcel.readInt();
            this.d3 = parcel.readInt();
            this.d4 = parcel.readInt();
        }
    }

    public RemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) {
        this.mIsRoot = true;
        this.mLandscape = null;
        this.mPortrait = null;
        this.mIsWidgetCollectionChild = false;
        this.mPair = new MutablePair<>(null, null);
        if (remoteViews != null && remoteViews2 != null) {
            ApplicationInfo applicationInfo = remoteViews.mApplication;
            int i2 = applicationInfo.uid;
            ApplicationInfo applicationInfo2 = remoteViews2.mApplication;
            if (i2 == applicationInfo2.uid && applicationInfo.packageName.equals(applicationInfo2.packageName)) {
                this.mApplication = remoteViews2.mApplication;
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
            throw new RuntimeException("Both RemoteViews must share the same package and user");
        }
        throw new RuntimeException("Both RemoteViews must be non-null");
    }

    public RemoteViews(Parcel parcel) {
        this(parcel, null, null, 0);
    }

    private RemoteViews(Parcel parcel, BitmapCache bitmapCache, ApplicationInfo applicationInfo, int i2) {
        this.mIsRoot = true;
        this.mLandscape = null;
        this.mPortrait = null;
        this.mIsWidgetCollectionChild = false;
        this.mPair = new MutablePair<>(null, null);
        if (i2 > 10 && UserHandle.getAppId(Binder.getCallingUid()) != 1000) {
            throw new IllegalArgumentException("Too many nested views.");
        }
        int i3 = i2 + 1;
        int i4 = parcel.readInt();
        if (bitmapCache == null) {
            this.mBitmapCache = new BitmapCache(parcel);
        } else {
            setBitmapCache(bitmapCache);
            setNotRoot();
        }
        if (i4 == 0) {
            this.mApplication = parcel.readInt() != 0 ? ApplicationInfo.CREATOR.createFromParcel(parcel) : applicationInfo;
            this.mLayoutId = parcel.readInt();
            this.mIsWidgetCollectionChild = parcel.readInt() == 1;
            int i5 = parcel.readInt();
            if (i5 > 0) {
                this.mActions = new ArrayList<>(i5);
                for (int i6 = 0; i6 < i5; i6++) {
                    int i7 = parcel.readInt();
                    switch (i7) {
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
                            this.mActions.add(new ViewGroupActionAdd(parcel, this.mBitmapCache, this.mApplication, i3));
                            break;
                        case 5:
                            this.mActions.add(new ReflectionActionWithoutParams(parcel));
                            break;
                        case 6:
                            this.mActions.add(new SetEmptyView(parcel));
                            break;
                        case 7:
                            this.mActions.add(new ViewGroupActionRemove(parcel));
                            break;
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
                        case 16:
                        default:
                            throw new ActionException(android.accessibilityservice.c.e("Tag ", i7, " not found"));
                        case 17:
                            this.mActions.add(new TextViewDrawableColorFilterAction(parcel));
                            break;
                        case 18:
                            this.mActions.add(new SetRemoteInputsAction(parcel));
                            break;
                        case 19:
                            this.mActions.add(new LayoutParamAction(parcel));
                            break;
                        case 20:
                            this.mActions.add(new OverrideTextColorsAction(parcel));
                            break;
                    }
                }
            }
        } else {
            RemoteViews remoteViews = new RemoteViews(parcel, this.mBitmapCache, applicationInfo, i3);
            this.mLandscape = remoteViews;
            RemoteViews remoteViews2 = new RemoteViews(parcel, this.mBitmapCache, remoteViews.mApplication, i3);
            this.mPortrait = remoteViews2;
            this.mApplication = remoteViews2.mApplication;
            this.mLayoutId = remoteViews2.getLayoutId();
        }
        this.mReapplyDisallowed = parcel.readInt() == 0;
        this.mMemoryUsageCounter = new MemoryUsageCounter();
        recalculateMemoryUsage();
    }
}
