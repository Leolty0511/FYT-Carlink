package com.android.internal.app;

import android.accessibilityservice.c;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.LabeledIntent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.BatteryManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.service.chooser.ChooserTarget;
import android.service.chooser.ChooserTargetService;
import android.service.chooser.IChooserTargetResult;
import android.service.chooser.IChooserTargetService;
import android.text.TextUtils;
import android.util.FloatProperty;
import android.util.Log;
import android.util.Slog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Space;
import com.android.internal.R;
import com.android.internal.logging.MetricsLogger;
import com.google.android.collect.Lists;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ChooserActivity extends ResolverActivity {
    private static final float CALLER_TARGET_SCORE_BOOST = 900.0f;
    private static final int CHOOSER_TARGET_SERVICE_RESULT = 1;
    private static final int CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT = 2;
    private static final boolean DEBUG = false;
    public static final String EXTRA_PRIVATE_RETAIN_IN_ON_STOP = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP";
    private static final String PINNED_SHARED_PREFS_NAME = "chooser_pin_settings";
    private static final float PINNED_TARGET_SCORE_BOOST = 1000.0f;
    private static final int QUERY_TARGET_SERVICE_LIMIT = 5;
    private static final String TAG = "ChooserActivity";
    private static final String TARGET_DETAILS_FRAGMENT_TAG = "targetDetailsFragment";
    private static final int WATCHDOG_TIMEOUT_MILLIS = 2000;
    private ChooserTarget[] mCallerChooserTargets;
    private ChooserListAdapter mChooserListAdapter;
    private ChooserRowAdapter mChooserRowAdapter;
    private long mChooserShownTime;
    private IntentSender mChosenComponentSender;
    private ComponentName[] mFilteredComponentNames;
    protected boolean mIsSuccessfullySelected;
    private SharedPreferences mPinnedSharedPrefs;
    private Intent mReferrerFillInIntent;
    private IntentSender mRefinementIntentSender;
    private RefinementResultReceiver mRefinementResultReceiver;
    private Bundle mReplacementExtras;
    private final List<ChooserTargetServiceConnection> mServiceConnections = new ArrayList();
    private final Handler mChooserHandler = new Handler() { // from class: com.android.internal.app.ChooserActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    super.handleMessage(message);
                    return;
                }
                ChooserActivity.this.unbindRemainingServices();
                ChooserActivity.this.sendVoiceChoicesIfNeeded();
                ChooserActivity.this.mChooserListAdapter.setShowServiceTargets(true);
                return;
            }
            if (ChooserActivity.this.isDestroyed()) {
                return;
            }
            ServiceResultInfo serviceResultInfo = (ServiceResultInfo) message.obj;
            if (!ChooserActivity.this.mServiceConnections.contains(serviceResultInfo.connection)) {
                Log.w(ChooserActivity.TAG, "ChooserTargetServiceConnection " + serviceResultInfo.connection + " returned after being removed from active connections. Have you considered returning results faster?");
                return;
            }
            if (serviceResultInfo.resultTargets != null) {
                ChooserActivity.this.mChooserListAdapter.addServiceResults(serviceResultInfo.originalTarget, serviceResultInfo.resultTargets);
            }
            ChooserActivity.this.unbindService(serviceResultInfo.connection);
            serviceResultInfo.connection.destroy();
            ChooserActivity.this.mServiceConnections.remove(serviceResultInfo.connection);
            if (ChooserActivity.this.mServiceConnections.isEmpty()) {
                ChooserActivity.this.mChooserHandler.removeMessages(2);
                ChooserActivity.this.sendVoiceChoicesIfNeeded();
                ChooserActivity.this.mChooserListAdapter.setShowServiceTargets(true);
            }
        }
    };

    public static class BaseChooserTargetComparator implements Comparator<ChooserTarget> {
        @Override // java.util.Comparator
        public int compare(ChooserTarget chooserTarget, ChooserTarget chooserTarget2) {
            return (int) Math.signum(chooserTarget2.getScore() - chooserTarget.getScore());
        }
    }

    public class ChooserListAdapter extends ResolverActivity.ResolveListAdapter {
        private static final int MAX_SERVICE_TARGETS = 8;
        private static final int MAX_TARGETS_PER_SERVICE = 4;
        public static final int TARGET_BAD = -1;
        public static final int TARGET_CALLER = 0;
        public static final int TARGET_SERVICE = 1;
        public static final int TARGET_STANDARD = 2;
        private final BaseChooserTargetComparator mBaseTargetComparator;
        private final List<ResolverActivity.TargetInfo> mCallerTargets;
        private float mLateFee;
        private final List<ChooserTargetInfo> mServiceTargets;
        private boolean mShowServiceTargets;

        public ChooserListAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i2, boolean z2, ResolverListController resolverListController) {
            ActivityInfo activityInfo;
            ResolveInfo resolveInfo;
            ResolveInfo resolveInfo2;
            super(context, list, null, list2, i2, z2, resolverListController);
            this.mServiceTargets = new ArrayList();
            this.mCallerTargets = new ArrayList();
            this.mLateFee = 1.0f;
            this.mBaseTargetComparator = new BaseChooserTargetComparator();
            if (intentArr != null) {
                PackageManager packageManager = ChooserActivity.this.getPackageManager();
                for (Intent intent : intentArr) {
                    if (intent != null) {
                        if (intent.getComponent() != null) {
                            try {
                                activityInfo = packageManager.getActivityInfo(intent.getComponent(), 0);
                                try {
                                    resolveInfo = new ResolveInfo();
                                    try {
                                        resolveInfo.activityInfo = activityInfo;
                                    } catch (PackageManager.NameNotFoundException unused) {
                                    }
                                } catch (PackageManager.NameNotFoundException unused2) {
                                    resolveInfo = null;
                                }
                            } catch (PackageManager.NameNotFoundException unused3) {
                                activityInfo = null;
                                resolveInfo = null;
                            }
                        } else {
                            activityInfo = null;
                            resolveInfo = null;
                        }
                        if (activityInfo == null) {
                            Log.d(ChooserActivity.TAG, "addFlags: Intent.FLAG_FOR_APPCLONE");
                            intent.addFlags(Integer.MIN_VALUE);
                            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
                            resolveInfo2 = resolveInfoResolveActivity;
                            activityInfo = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo : null;
                        } else {
                            resolveInfo2 = resolveInfo;
                        }
                        if (activityInfo == null) {
                            Log.w(ChooserActivity.TAG, "No activity found for " + intent);
                        } else {
                            UserManager userManager = (UserManager) ChooserActivity.this.getSystemService("user");
                            if (intent instanceof LabeledIntent) {
                                LabeledIntent labeledIntent = (LabeledIntent) intent;
                                resolveInfo2.resolvePackageName = labeledIntent.getSourcePackage();
                                resolveInfo2.labelRes = labeledIntent.getLabelResource();
                                resolveInfo2.nonLocalizedLabel = labeledIntent.getNonLocalizedLabel();
                                int iconResource = labeledIntent.getIconResource();
                                resolveInfo2.icon = iconResource;
                                resolveInfo2.iconResourceId = iconResource;
                            }
                            if (userManager.isManagedProfile()) {
                                resolveInfo2.noResourceId = true;
                                resolveInfo2.icon = 0;
                            }
                            this.mCallerTargets.add(new ResolverActivity.DisplayResolveInfo(intent, resolveInfo2, resolveInfo2.loadLabel(packageManager), null, intent));
                        }
                    }
                }
            }
        }

        private void insertServiceTarget(ChooserTargetInfo chooserTargetInfo) {
            float modifiedScore = chooserTargetInfo.getModifiedScore();
            int size = this.mServiceTargets.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (modifiedScore > this.mServiceTargets.get(i2).getModifiedScore()) {
                    this.mServiceTargets.add(i2, chooserTargetInfo);
                    return;
                }
            }
            this.mServiceTargets.add(chooserTargetInfo);
        }

        private void pruneServiceTargets() {
            for (int size = this.mServiceTargets.size() - 1; size >= 0; size--) {
                if (!hasResolvedTarget(this.mServiceTargets.get(size).getResolveInfo())) {
                    this.mServiceTargets.remove(size);
                }
            }
        }

        public void addServiceResults(ResolverActivity.DisplayResolveInfo displayResolveInfo, List<ChooserTarget> list) {
            float score = getScore(displayResolveInfo);
            Collections.sort(list, this.mBaseTargetComparator);
            int iMin = Math.min(list.size(), 4);
            float f2 = 0.0f;
            int i2 = 0;
            while (i2 < iMin) {
                ChooserTarget chooserTarget = list.get(i2);
                float score2 = chooserTarget.getScore() * score * this.mLateFee;
                f2 = (i2 <= 0 || score2 < f2) ? score2 : f2 * 0.95f;
                insertServiceTarget(ChooserActivity.this.new ChooserTargetInfo(displayResolveInfo, chooserTarget, f2));
                i2++;
            }
            this.mLateFee *= 0.95f;
            notifyDataSetChanged();
        }

        public int getCallerTargetCount() {
            return this.mCallerTargets.size();
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter, android.widget.Adapter
        public int getCount() {
            return getCallerTargetCount() + getServiceTargetCount() + super.getCount();
        }

        public int getPositionTargetType(int i2) {
            int callerTargetCount = getCallerTargetCount();
            if (i2 < callerTargetCount) {
                return 0;
            }
            int i3 = callerTargetCount + 0;
            int serviceTargetCount = getServiceTargetCount();
            if (i2 - i3 < serviceTargetCount) {
                return 1;
            }
            return i2 - (i3 + serviceTargetCount) < super.getCount() ? 2 : -1;
        }

        public int getServiceTargetCount() {
            if (this.mShowServiceTargets) {
                return Math.min(this.mServiceTargets.size(), 8);
            }
            return 0;
        }

        public int getStandardTargetCount() {
            return super.getCount();
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public int getUnfilteredCount() {
            return getCallerTargetCount() + getServiceTargetCount() + super.getUnfilteredCount();
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public boolean isComponentPinned(ComponentName componentName) {
            return ChooserActivity.this.mPinnedSharedPrefs.getBoolean(componentName.flattenToString(), false);
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public View onCreateView(ViewGroup viewGroup) {
            return this.mInflater.inflate(R.layout.resolve_grid_item, viewGroup, false);
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public void onListRebuilt() {
            if (this.mServiceTargets != null) {
                pruneServiceTargets();
            }
            ChooserActivity.this.queryTargetServices(this);
        }

        public void setShowServiceTargets(boolean z2) {
            if (z2 != this.mShowServiceTargets) {
                this.mShowServiceTargets = z2;
                notifyDataSetChanged();
            }
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public boolean shouldGetResolvedFilter() {
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public boolean showsExtendedInfo(ResolverActivity.TargetInfo targetInfo) {
            return false;
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public ResolverActivity.TargetInfo targetInfoForPosition(int i2, boolean z2) {
            int callerTargetCount = getCallerTargetCount();
            if (i2 < callerTargetCount) {
                return this.mCallerTargets.get(i2);
            }
            int i3 = callerTargetCount + 0;
            int serviceTargetCount = getServiceTargetCount();
            int i4 = i2 - i3;
            if (i4 < serviceTargetCount) {
                return this.mServiceTargets.get(i4);
            }
            int i5 = i2 - (i3 + serviceTargetCount);
            return z2 ? super.getItem(i5) : getDisplayInfoAt(i5);
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter, android.widget.Adapter
        public ResolverActivity.TargetInfo getItem(int i2) {
            return targetInfoForPosition(i2, true);
        }
    }

    public class ChooserListController extends ResolverListController {
        public ChooserListController(Context context, PackageManager packageManager, Intent intent, String str, int i2) {
            super(context, packageManager, intent, str, i2);
        }

        @Override // com.android.internal.app.ResolverListController
        public float getScore(ResolverActivity.DisplayResolveInfo displayResolveInfo) {
            if (displayResolveInfo == null) {
                return ChooserActivity.CALLER_TARGET_SCORE_BOOST;
            }
            float score = super.getScore(displayResolveInfo);
            return displayResolveInfo.isPinned() ? score + ChooserActivity.PINNED_TARGET_SCORE_BOOST : score;
        }

        @Override // com.android.internal.app.ResolverListController
        public boolean isComponentFiltered(ComponentName componentName) {
            if (ChooserActivity.this.mFilteredComponentNames == null) {
                return false;
            }
            for (ComponentName componentName2 : ChooserActivity.this.mFilteredComponentNames) {
                if (componentName.equals(componentName2)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.android.internal.app.ResolverListController
        public boolean isComponentPinned(ComponentName componentName) {
            return ChooserActivity.this.mPinnedSharedPrefs.getBoolean(componentName.flattenToString(), false);
        }
    }

    public class ChooserRowAdapter extends BaseAdapter {
        private ChooserListAdapter mChooserListAdapter;
        private final Interpolator mInterpolator;
        private final LayoutInflater mLayoutInflater;
        private RowScale[] mServiceTargetScale;
        private final int mColumnCount = 4;
        private int mAnimationCount = 0;

        public ChooserRowAdapter(ChooserListAdapter chooserListAdapter) {
            this.mChooserListAdapter = chooserListAdapter;
            this.mLayoutInflater = LayoutInflater.from(ChooserActivity.this);
            this.mInterpolator = AnimationUtils.loadInterpolator(ChooserActivity.this, 17563653);
            chooserListAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.android.internal.app.ChooserActivity.ChooserRowAdapter.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    super.onChanged();
                    int serviceTargetRowCount = ChooserRowAdapter.this.getServiceTargetRowCount();
                    if (ChooserRowAdapter.this.mServiceTargetScale == null || ChooserRowAdapter.this.mServiceTargetScale.length != serviceTargetRowCount) {
                        RowScale[] rowScaleArr = ChooserRowAdapter.this.mServiceTargetScale;
                        int length = rowScaleArr != null ? rowScaleArr.length : 0;
                        ChooserRowAdapter.this.mServiceTargetScale = new RowScale[serviceTargetRowCount];
                        if (rowScaleArr != null && serviceTargetRowCount > 0) {
                            System.arraycopy(rowScaleArr, 0, ChooserRowAdapter.this.mServiceTargetScale, 0, Math.min(rowScaleArr.length, serviceTargetRowCount));
                        }
                        for (int i2 = serviceTargetRowCount; i2 < length; i2++) {
                            rowScaleArr[i2].cancelAnimation();
                        }
                        for (int i3 = length; i3 < serviceTargetRowCount; i3++) {
                            ChooserRowAdapter.this.mServiceTargetScale[i3] = new RowScale(ChooserRowAdapter.this, 0.0f, 1.0f).setInterpolator(ChooserRowAdapter.this.mInterpolator);
                        }
                        while (length < serviceTargetRowCount) {
                            ChooserRowAdapter.this.mServiceTargetScale[length].startAnimation();
                            length++;
                        }
                    }
                    ChooserRowAdapter.this.notifyDataSetChanged();
                }

                @Override // android.database.DataSetObserver
                public void onInvalidated() {
                    super.onInvalidated();
                    ChooserRowAdapter.this.notifyDataSetInvalidated();
                    if (ChooserRowAdapter.this.mServiceTargetScale != null) {
                        for (RowScale rowScale : ChooserRowAdapter.this.mServiceTargetScale) {
                            rowScale.cancelAnimation();
                        }
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getRowScale(int i2) {
            int callerTargetRowCount = getCallerTargetRowCount();
            int serviceTargetRowCount = getServiceTargetRowCount() + callerTargetRowCount;
            if (i2 < callerTargetRowCount || i2 >= serviceTargetRowCount) {
                return 1.0f;
            }
            return this.mServiceTargetScale[i2 - callerTargetRowCount].get();
        }

        private void setVertPadding(RowViewHolder rowViewHolder, int i2, int i3) {
            ViewGroup viewGroup = rowViewHolder.row;
            viewGroup.setPadding(viewGroup.getPaddingLeft(), i2, rowViewHolder.row.getPaddingRight(), i3);
        }

        public void bindViewHolder(int i2, RowViewHolder rowViewHolder) {
            int firstRowPosition = getFirstRowPosition(i2);
            int positionTargetType = this.mChooserListAdapter.getPositionTargetType(firstRowPosition);
            int i3 = (firstRowPosition + 4) - 1;
            while (this.mChooserListAdapter.getPositionTargetType(i3) != positionTargetType && i3 >= firstRowPosition) {
                i3--;
            }
            if (positionTargetType == 1) {
                rowViewHolder.row.setBackgroundColor(ChooserActivity.this.getColor(R.color.chooser_service_row_background_color));
                int positionTargetType2 = this.mChooserListAdapter.getPositionTargetType(getFirstRowPosition(i2 + 1));
                int dimensionPixelSize = rowViewHolder.row.getContext().getResources().getDimensionPixelSize(R.dimen.chooser_service_spacing);
                if (i2 != 0 || positionTargetType2 == 1) {
                    int i4 = i2 == 0 ? dimensionPixelSize : 0;
                    if (positionTargetType2 != 1) {
                        setVertPadding(rowViewHolder, i4, dimensionPixelSize);
                    } else {
                        setVertPadding(rowViewHolder, i4, 0);
                    }
                } else {
                    setVertPadding(rowViewHolder, 0, 0);
                }
            } else {
                rowViewHolder.row.setBackgroundColor(0);
                if (this.mChooserListAdapter.getPositionTargetType(getFirstRowPosition(i2 - 1)) == 1 || i2 == 0) {
                    setVertPadding(rowViewHolder, rowViewHolder.row.getContext().getResources().getDimensionPixelSize(R.dimen.chooser_service_spacing), 0);
                } else {
                    setVertPadding(rowViewHolder, 0, 0);
                }
            }
            int i5 = rowViewHolder.row.getLayoutParams().height;
            rowViewHolder.row.getLayoutParams().height = Math.max(1, (int) (rowViewHolder.measuredRowHeight * getRowScale(i2)));
            if (rowViewHolder.row.getLayoutParams().height != i5) {
                rowViewHolder.row.requestLayout();
            }
            for (int i6 = 0; i6 < 4; i6++) {
                View view = rowViewHolder.cells[i6];
                int i7 = firstRowPosition + i6;
                if (i7 <= i3) {
                    view.setVisibility(0);
                    rowViewHolder.itemIndices[i6] = i7;
                    this.mChooserListAdapter.bindView(i7, view);
                } else {
                    view.setVisibility(4);
                }
            }
        }

        public RowViewHolder createViewHolder(ViewGroup viewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) this.mLayoutInflater.inflate(R.layout.chooser_row, viewGroup, false);
            final RowViewHolder rowViewHolder = new RowViewHolder(viewGroup2, 4);
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            for (final int i2 = 0; i2 < 4; i2++) {
                View viewCreateView = this.mChooserListAdapter.createView(viewGroup2);
                viewCreateView.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.app.ChooserActivity.ChooserRowAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ChooserActivity.this.startSelected(rowViewHolder.itemIndices[i2], false, true);
                    }
                });
                viewCreateView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.internal.app.ChooserActivity.ChooserRowAdapter.3
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        ChooserRowAdapter chooserRowAdapter = ChooserRowAdapter.this;
                        ChooserActivity.this.showTargetDetails(chooserRowAdapter.mChooserListAdapter.resolveInfoForPosition(rowViewHolder.itemIndices[i2], true));
                        return true;
                    }
                });
                viewGroup2.addView(viewCreateView);
                rowViewHolder.cells[i2] = viewCreateView;
                ViewGroup.LayoutParams layoutParams = viewCreateView.getLayoutParams();
                viewCreateView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                if (layoutParams == null) {
                    viewGroup2.setLayoutParams(new ViewGroup.LayoutParams(-1, viewCreateView.getMeasuredHeight()));
                } else {
                    layoutParams.height = viewCreateView.getMeasuredHeight();
                }
                if (i2 != 3) {
                    viewGroup2.addView(new Space(ChooserActivity.this), new LinearLayout.LayoutParams(0, 0, 1.0f));
                }
            }
            rowViewHolder.measure();
            ViewGroup.LayoutParams layoutParams2 = viewGroup2.getLayoutParams();
            if (layoutParams2 == null) {
                viewGroup2.setLayoutParams(new ViewGroup.LayoutParams(-1, rowViewHolder.measuredRowHeight));
            } else {
                layoutParams2.height = rowViewHolder.measuredRowHeight;
            }
            viewGroup2.setTag(rowViewHolder);
            return rowViewHolder;
        }

        public int getCallerTargetRowCount() {
            return (int) Math.ceil(this.mChooserListAdapter.getCallerTargetCount() / 4.0f);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (int) (Math.ceil(this.mChooserListAdapter.getStandardTargetCount() / 4.0f) + ((double) (getCallerTargetRowCount() + getServiceTargetRowCount())));
        }

        public int getFirstRowPosition(int i2) {
            int i3;
            int callerTargetCount = this.mChooserListAdapter.getCallerTargetCount();
            int iCeil = (int) Math.ceil(callerTargetCount / 4.0f);
            if (i2 < iCeil) {
                return i2 * 4;
            }
            int serviceTargetCount = this.mChooserListAdapter.getServiceTargetCount();
            int iCeil2 = (int) Math.ceil(serviceTargetCount / 4.0f);
            if (i2 < iCeil + iCeil2) {
                i3 = i2 - iCeil;
            } else {
                callerTargetCount += serviceTargetCount;
                i3 = (i2 - iCeil) - iCeil2;
            }
            return (i3 * 4) + callerTargetCount;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return Integer.valueOf(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        public int getServiceTargetRowCount() {
            return (int) Math.ceil(this.mChooserListAdapter.getServiceTargetCount() / 4.0f);
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            RowViewHolder rowViewHolderCreateViewHolder = view == null ? createViewHolder(viewGroup) : (RowViewHolder) view.getTag();
            bindViewHolder(i2, rowViewHolderCreateViewHolder);
            return rowViewHolderCreateViewHolder.row;
        }

        public void onAnimationEnd() {
            int i2 = this.mAnimationCount - 1;
            this.mAnimationCount = i2;
            if (i2 == 0) {
                ChooserActivity.this.mResolverDrawerLayout.setDismissLocked(false);
            }
        }

        public void onAnimationStart() {
            int i2 = this.mAnimationCount;
            boolean z2 = i2 == 0;
            this.mAnimationCount = i2 + 1;
            if (z2) {
                ChooserActivity.this.mResolverDrawerLayout.setDismissLocked(true);
            }
        }
    }

    public static class ChooserTargetServiceConnection implements ServiceConnection {
        private ChooserActivity mChooserActivity;
        private ComponentName mConnectedComponent;
        private ResolverActivity.DisplayResolveInfo mOriginalTarget;
        private final Object mLock = new Object();
        private final IChooserTargetResult mChooserTargetResult = new IChooserTargetResult.Stub() { // from class: com.android.internal.app.ChooserActivity.ChooserTargetServiceConnection.1
            @Override // android.service.chooser.IChooserTargetResult
            public void sendResult(List<ChooserTarget> list) {
                synchronized (ChooserTargetServiceConnection.this.mLock) {
                    if (ChooserTargetServiceConnection.this.mChooserActivity == null) {
                        Log.e(ChooserActivity.TAG, "destroyed ChooserTargetServiceConnection received result from " + ChooserTargetServiceConnection.this.mConnectedComponent + "; ignoring...");
                        return;
                    }
                    ChooserTargetServiceConnection.this.mChooserActivity.filterServiceTargets(ChooserTargetServiceConnection.this.mOriginalTarget.getResolveInfo().activityInfo.packageName, list);
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 1;
                    messageObtain.obj = new ServiceResultInfo(ChooserTargetServiceConnection.this.mOriginalTarget, list, ChooserTargetServiceConnection.this);
                    ChooserTargetServiceConnection.this.mChooserActivity.mChooserHandler.sendMessage(messageObtain);
                }
            }
        };

        public ChooserTargetServiceConnection(ChooserActivity chooserActivity, ResolverActivity.DisplayResolveInfo displayResolveInfo) {
            this.mChooserActivity = chooserActivity;
            this.mOriginalTarget = displayResolveInfo;
        }

        public void destroy() {
            synchronized (this.mLock) {
                this.mChooserActivity = null;
                this.mOriginalTarget = null;
            }
        }

        @Override // android.content.ServiceConnection
        public final /* synthetic */ void onBindingDied(ComponentName componentName) {
            android.content.a.a(this, componentName);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this.mLock) {
                if (this.mChooserActivity == null) {
                    Log.e(ChooserActivity.TAG, "destroyed ChooserTargetServiceConnection got onServiceConnected");
                    return;
                }
                try {
                    IChooserTargetService.Stub.asInterface(iBinder).getChooserTargets(this.mOriginalTarget.getResolvedComponentName(), this.mOriginalTarget.getResolveInfo().filter, this.mChooserTargetResult);
                } catch (RemoteException e2) {
                    Log.e(ChooserActivity.TAG, "Querying ChooserTargetService " + componentName + " failed.", e2);
                    this.mChooserActivity.unbindService(this);
                    this.mChooserActivity.mServiceConnections.remove(this);
                    destroy();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (this.mLock) {
                ChooserActivity chooserActivity = this.mChooserActivity;
                if (chooserActivity == null) {
                    Log.e(ChooserActivity.TAG, "destroyed ChooserTargetServiceConnection got onServiceDisconnected");
                    return;
                }
                chooserActivity.unbindService(this);
                this.mChooserActivity.mServiceConnections.remove(this);
                if (this.mChooserActivity.mServiceConnections.isEmpty()) {
                    this.mChooserActivity.mChooserHandler.removeMessages(2);
                    this.mChooserActivity.sendVoiceChoicesIfNeeded();
                }
                this.mConnectedComponent = null;
                destroy();
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ChooserTargetServiceConnection{service=");
            sb.append(this.mConnectedComponent);
            sb.append(", activity=");
            ResolverActivity.DisplayResolveInfo displayResolveInfo = this.mOriginalTarget;
            return c.n(sb, displayResolveInfo != null ? displayResolveInfo.getResolveInfo().activityInfo.toString() : "<connection destroyed>", "}");
        }
    }

    public class OffsetDataSetObserver extends DataSetObserver {
        private View mCachedView;
        private int mCachedViewType = -1;
        private final AbsListView mListView;

        public OffsetDataSetObserver(AbsListView absListView) {
            this.mListView = absListView;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ChooserActivity chooserActivity = ChooserActivity.this;
            if (chooserActivity.mResolverDrawerLayout == null) {
                return;
            }
            int serviceTargetRowCount = chooserActivity.mChooserRowAdapter.getServiceTargetRowCount();
            int rowScale = 0;
            for (int i2 = 0; i2 < serviceTargetRowCount; i2++) {
                int callerTargetRowCount = ChooserActivity.this.mChooserRowAdapter.getCallerTargetRowCount() + i2;
                int itemViewType = ChooserActivity.this.mChooserRowAdapter.getItemViewType(callerTargetRowCount);
                if (itemViewType != this.mCachedViewType) {
                    this.mCachedView = null;
                }
                View view = ChooserActivity.this.mChooserRowAdapter.getView(callerTargetRowCount, this.mCachedView, this.mListView);
                rowScale += (int) (((RowViewHolder) view.getTag()).measuredRowHeight * ChooserActivity.this.mChooserRowAdapter.getRowScale(callerTargetRowCount));
                if (itemViewType >= 0) {
                    this.mCachedViewType = itemViewType;
                    this.mCachedView = view;
                } else {
                    this.mCachedViewType = -1;
                }
            }
            ChooserActivity.this.mResolverDrawerLayout.setCollapsibleHeightReserved(rowScale);
        }
    }

    public static class RefinementResultReceiver extends ResultReceiver {
        private ChooserActivity mChooserActivity;
        private ResolverActivity.TargetInfo mSelectedTarget;

        public RefinementResultReceiver(ChooserActivity chooserActivity, ResolverActivity.TargetInfo targetInfo, Handler handler) {
            super(handler);
            this.mChooserActivity = chooserActivity;
            this.mSelectedTarget = targetInfo;
        }

        public void destroy() {
            this.mChooserActivity = null;
            this.mSelectedTarget = null;
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i2, Bundle bundle) {
            ChooserActivity chooserActivity = this.mChooserActivity;
            if (chooserActivity == null) {
                Log.e(ChooserActivity.TAG, "Destroyed RefinementResultReceiver received a result");
                return;
            }
            if (bundle == null) {
                Log.e(ChooserActivity.TAG, "RefinementResultReceiver received null resultData");
                return;
            }
            if (i2 == -1) {
                Parcelable parcelable = bundle.getParcelable(Intent.EXTRA_INTENT);
                if (parcelable instanceof Intent) {
                    this.mChooserActivity.onRefinementResult(this.mSelectedTarget, (Intent) parcelable);
                    return;
                } else {
                    Log.e(ChooserActivity.TAG, "RefinementResultReceiver received RESULT_OK but no Intent in resultData with key Intent.EXTRA_INTENT");
                    return;
                }
            }
            if (i2 == 0) {
                chooserActivity.onRefinementCanceled();
                return;
            }
            Log.w(ChooserActivity.TAG, "Unknown result code " + i2 + " sent to RefinementResultReceiver");
        }
    }

    public static class RowScale {
        private static final int DURATION = 400;
        public static final FloatProperty<RowScale> PROPERTY = new FloatProperty<RowScale>(BatteryManager.EXTRA_SCALE) { // from class: com.android.internal.app.ChooserActivity.RowScale.1
            @Override // android.util.Property
            public Float get(RowScale rowScale) {
                return Float.valueOf(rowScale.mScale);
            }

            @Override // android.util.FloatProperty
            public void setValue(RowScale rowScale, float f2) {
                rowScale.mScale = f2;
                rowScale.mAdapter.notifyDataSetChanged();
            }
        };
        ChooserRowAdapter mAdapter;
        private final ObjectAnimator mAnimator;
        float mScale;

        public RowScale(ChooserRowAdapter chooserRowAdapter, float f2, float f3) {
            this.mAdapter = chooserRowAdapter;
            this.mScale = f2;
            if (f2 == f3) {
                this.mAnimator = null;
                return;
            }
            ObjectAnimator duration = ObjectAnimator.ofFloat(this, PROPERTY, f2, f3).setDuration(400L);
            this.mAnimator = duration;
            duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.app.ChooserActivity.RowScale.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RowScale.this.mAdapter.onAnimationEnd();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    RowScale.this.mAdapter.onAnimationStart();
                }
            });
        }

        public void cancelAnimation() {
            ObjectAnimator objectAnimator = this.mAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
        }

        public float get() {
            return this.mScale;
        }

        public RowScale setInterpolator(Interpolator interpolator) {
            ObjectAnimator objectAnimator = this.mAnimator;
            if (objectAnimator != null) {
                objectAnimator.setInterpolator(interpolator);
            }
            return this;
        }

        public void startAnimation() {
            ObjectAnimator objectAnimator = this.mAnimator;
            if (objectAnimator != null) {
                objectAnimator.start();
            }
        }
    }

    public static class RowViewHolder {
        final View[] cells;
        int[] itemIndices;
        int measuredRowHeight;
        final ViewGroup row;

        public RowViewHolder(ViewGroup viewGroup, int i2) {
            this.row = viewGroup;
            this.cells = new View[i2];
            this.itemIndices = new int[i2];
        }

        public void measure() {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.row.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            this.measuredRowHeight = this.row.getMeasuredHeight();
        }
    }

    public static class ServiceResultInfo {
        public final ChooserTargetServiceConnection connection;
        public final ResolverActivity.DisplayResolveInfo originalTarget;
        public final List<ChooserTarget> resultTargets;

        public ServiceResultInfo(ResolverActivity.DisplayResolveInfo displayResolveInfo, List<ChooserTarget> list, ChooserTargetServiceConnection chooserTargetServiceConnection) {
            this.originalTarget = displayResolveInfo;
            this.resultTargets = list;
            this.connection = chooserTargetServiceConnection;
        }
    }

    private String convertServiceName(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (str2.startsWith(".")) {
            return c.D(str, str2);
        }
        if (str2.indexOf(46) >= 0) {
            return str2;
        }
        return null;
    }

    public static SharedPreferences getPinnedSharedPrefs(Context context) {
        return context.getSharedPreferences(new File(new File(Environment.getDataUserCePackageDirectory(StorageManager.UUID_PRIVATE_INTERNAL, context.getUserId(), context.getPackageName()), "shared_prefs"), "chooser_pin_settings.xml"), 0);
    }

    private void modifyTargetIntent(Intent intent) {
        String action = intent.getAction();
        if (Intent.ACTION_SEND.equals(action) || Intent.ACTION_SEND_MULTIPLE.equals(action)) {
            intent.addFlags(134742016);
        }
    }

    public boolean checkTargetSourceIntent(ResolverActivity.TargetInfo targetInfo, Intent intent) {
        List<Intent> allSourceIntents = targetInfo.getAllSourceIntents();
        int size = allSourceIntents.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (allSourceIntents.get(i2).filterEquals(intent)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.internal.app.ResolverActivity
    public ResolverActivity.ResolveListAdapter createAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i2, boolean z2) {
        return new ChooserListAdapter(context, list, intentArr, list2, i2, z2, createListController());
    }

    @Override // com.android.internal.app.ResolverActivity
    public ResolverListController createListController() {
        return new ChooserListController(this, this.mPm, getTargetIntent(), getReferrerPackageName(), this.mLaunchedFromUid);
    }

    public void filterServiceTargets(String str, List<ChooserTarget> list) {
        boolean z2;
        if (list == null) {
            return;
        }
        PackageManager packageManager = getPackageManager();
        for (int size = list.size() - 1; size >= 0; size--) {
            ChooserTarget chooserTarget = list.get(size);
            ComponentName componentName = chooserTarget.getComponentName();
            if (str == null || !str.equals(componentName.getPackageName())) {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 0);
                    z2 = (activityInfo.exported && activityInfo.permission == null) ? false : true;
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e(TAG, "Target " + chooserTarget + " returned by " + str + " component not found");
                }
                if (z2) {
                    list.remove(size);
                }
            }
        }
    }

    @Override // com.android.internal.app.ResolverActivity
    public int getLayoutResource() {
        return R.layout.chooser_grid;
    }

    @Override // com.android.internal.app.ResolverActivity
    public Intent getReplacementIntent(ActivityInfo activityInfo, Intent intent) {
        Bundle bundle;
        Bundle bundle2 = this.mReplacementExtras;
        if (bundle2 != null && (bundle = bundle2.getBundle(activityInfo.packageName)) != null) {
            Intent intent2 = new Intent(intent);
            intent2.putExtras(bundle);
            intent = intent2;
        }
        if (!activityInfo.name.equals(IntentForwarderActivity.FORWARD_INTENT_TO_PARENT) && !activityInfo.name.equals(IntentForwarderActivity.FORWARD_INTENT_TO_MANAGED_PROFILE)) {
            return intent;
        }
        Intent intentCreateChooser = Intent.createChooser(intent, getIntent().getCharSequenceExtra(Intent.EXTRA_TITLE));
        intentCreateChooser.putExtra(Intent.EXTRA_AUTO_LAUNCH_SINGLE_CHOICE, false);
        return intentCreateChooser;
    }

    @Override // com.android.internal.app.ResolverActivity
    public void onActivityStarted(ResolverActivity.TargetInfo targetInfo) {
        ComponentName resolvedComponentName;
        if (this.mChosenComponentSender == null || (resolvedComponentName = targetInfo.getResolvedComponentName()) == null) {
            return;
        }
        try {
            this.mChosenComponentSender.sendIntent(this, -1, new Intent().putExtra(Intent.EXTRA_CHOSEN_COMPONENT, resolvedComponentName), null, null);
        } catch (IntentSender.SendIntentException e2) {
            Slog.e(TAG, "Unable to launch supplied IntentSender to report the chosen component: " + e2);
        }
    }

    @Override // com.android.internal.app.ResolverActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent[] intentArr;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mIsSuccessfullySelected = false;
        Intent intent = getIntent();
        Parcelable parcelableExtra = intent.getParcelableExtra(Intent.EXTRA_INTENT);
        if (!(parcelableExtra instanceof Intent)) {
            Log.w(TAG, "Target is not an intent: " + parcelableExtra);
            finish();
            super.onCreate(null);
            return;
        }
        Intent intent2 = (Intent) parcelableExtra;
        if (intent2 != null) {
            modifyTargetIntent(intent2);
        }
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra(Intent.EXTRA_ALTERNATE_INTENTS);
        if (parcelableArrayExtra != null) {
            boolean z2 = intent2 == null;
            int length = parcelableArrayExtra.length;
            if (z2) {
                length--;
            }
            Intent[] intentArr2 = new Intent[length];
            for (int i2 = 0; i2 < parcelableArrayExtra.length; i2++) {
                Parcelable parcelable = parcelableArrayExtra[i2];
                if (!(parcelable instanceof Intent)) {
                    StringBuilder sbS = c.s("EXTRA_ALTERNATE_INTENTS array entry #", i2, " is not an Intent: ");
                    sbS.append(parcelableArrayExtra[i2]);
                    Log.w(TAG, sbS.toString());
                    finish();
                    super.onCreate(null);
                    return;
                }
                Intent intent3 = (Intent) parcelable;
                if (i2 == 0 && intent2 == null) {
                    modifyTargetIntent(intent3);
                    intent2 = intent3;
                } else {
                    intentArr2[z2 ? i2 - 1 : i2] = intent3;
                    modifyTargetIntent(intent3);
                }
            }
            setAdditionalTargets(intentArr2);
        }
        this.mReplacementExtras = intent.getBundleExtra(Intent.EXTRA_REPLACEMENT_EXTRAS);
        CharSequence charSequenceExtra = intent.getCharSequenceExtra(Intent.EXTRA_TITLE);
        int i3 = charSequenceExtra == null ? R.string.chooseActivity : 0;
        Parcelable[] parcelableArrayExtra2 = intent.getParcelableArrayExtra(Intent.EXTRA_INITIAL_INTENTS);
        if (parcelableArrayExtra2 != null) {
            intentArr = new Intent[parcelableArrayExtra2.length];
            for (int i4 = 0; i4 < parcelableArrayExtra2.length; i4++) {
                Parcelable parcelable2 = parcelableArrayExtra2[i4];
                if (!(parcelable2 instanceof Intent)) {
                    StringBuilder sbS2 = c.s("Initial intent #", i4, " not an Intent: ");
                    sbS2.append(parcelableArrayExtra2[i4]);
                    Log.w(TAG, sbS2.toString());
                    finish();
                    super.onCreate(null);
                    return;
                }
                Intent intent4 = (Intent) parcelable2;
                modifyTargetIntent(intent4);
                intentArr[i4] = intent4;
            }
        } else {
            intentArr = null;
        }
        this.mReferrerFillInIntent = new Intent().putExtra(Intent.EXTRA_REFERRER, getReferrer());
        this.mChosenComponentSender = (IntentSender) intent.getParcelableExtra(Intent.EXTRA_CHOSEN_COMPONENT_INTENT_SENDER);
        this.mRefinementIntentSender = (IntentSender) intent.getParcelableExtra(Intent.EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER);
        setSafeForwardingMode(true);
        Parcelable[] parcelableArrayExtra3 = intent.getParcelableArrayExtra(Intent.EXTRA_EXCLUDE_COMPONENTS);
        if (parcelableArrayExtra3 != null) {
            ComponentName[] componentNameArr = new ComponentName[parcelableArrayExtra3.length];
            for (int i5 = 0; i5 < parcelableArrayExtra3.length; i5++) {
                Parcelable parcelable3 = parcelableArrayExtra3[i5];
                if (!(parcelable3 instanceof ComponentName)) {
                    StringBuilder sbS3 = c.s("Filtered component #", i5, " not a ComponentName: ");
                    sbS3.append(parcelableArrayExtra3[i5]);
                    Log.w(TAG, sbS3.toString());
                    componentNameArr = null;
                    break;
                }
                componentNameArr[i5] = (ComponentName) parcelable3;
            }
            this.mFilteredComponentNames = componentNameArr;
        }
        Parcelable[] parcelableArrayExtra4 = intent.getParcelableArrayExtra(Intent.EXTRA_CHOOSER_TARGETS);
        if (parcelableArrayExtra4 != null) {
            ChooserTarget[] chooserTargetArr = new ChooserTarget[parcelableArrayExtra4.length];
            for (int i6 = 0; i6 < parcelableArrayExtra4.length; i6++) {
                Parcelable parcelable4 = parcelableArrayExtra4[i6];
                if (!(parcelable4 instanceof ChooserTarget)) {
                    StringBuilder sbS4 = c.s("Chooser target #", i6, " not a ChooserTarget: ");
                    sbS4.append(parcelableArrayExtra4[i6]);
                    Log.w(TAG, sbS4.toString());
                    chooserTargetArr = null;
                    break;
                }
                chooserTargetArr[i6] = (ChooserTarget) parcelable4;
            }
            this.mCallerChooserTargets = chooserTargetArr;
        }
        this.mPinnedSharedPrefs = getPinnedSharedPrefs(this);
        setRetainInOnStop(intent.getBooleanExtra(EXTRA_PRIVATE_RETAIN_IN_ON_STOP, false));
        super.onCreate(bundle, intent2, charSequenceExtra, i3, intentArr, null, false);
        MetricsLogger.action(this, 214);
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        this.mChooserShownTime = jCurrentTimeMillis2;
        MetricsLogger.histogram(null, "system_cost_for_smart_sharing", (int) (jCurrentTimeMillis2 - jCurrentTimeMillis));
    }

    @Override // com.android.internal.app.ResolverActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        RefinementResultReceiver refinementResultReceiver = this.mRefinementResultReceiver;
        if (refinementResultReceiver != null) {
            refinementResultReceiver.destroy();
            this.mRefinementResultReceiver = null;
        }
        unbindRemainingServices();
        this.mChooserHandler.removeMessages(1);
    }

    @Override // com.android.internal.app.ResolverActivity
    public void onPrepareAdapterView(AbsListView absListView, ResolverActivity.ResolveListAdapter resolveListAdapter) {
        ListView listView = absListView instanceof ListView ? (ListView) absListView : null;
        ChooserListAdapter chooserListAdapter = (ChooserListAdapter) resolveListAdapter;
        this.mChooserListAdapter = chooserListAdapter;
        ChooserTarget[] chooserTargetArr = this.mCallerChooserTargets;
        if (chooserTargetArr != null && chooserTargetArr.length > 0) {
            chooserListAdapter.addServiceResults(null, Lists.newArrayList(chooserTargetArr));
        }
        ChooserRowAdapter chooserRowAdapter = new ChooserRowAdapter(this.mChooserListAdapter);
        this.mChooserRowAdapter = chooserRowAdapter;
        chooserRowAdapter.registerDataSetObserver(new OffsetDataSetObserver(absListView));
        absListView.setAdapter((ListAdapter) this.mChooserRowAdapter);
        if (listView != null) {
            listView.setItemsCanFocus(true);
        }
    }

    public void onRefinementCanceled() {
        RefinementResultReceiver refinementResultReceiver = this.mRefinementResultReceiver;
        if (refinementResultReceiver != null) {
            refinementResultReceiver.destroy();
            this.mRefinementResultReceiver = null;
        }
        finish();
    }

    public void onRefinementResult(ResolverActivity.TargetInfo targetInfo, Intent intent) {
        RefinementResultReceiver refinementResultReceiver = this.mRefinementResultReceiver;
        if (refinementResultReceiver != null) {
            refinementResultReceiver.destroy();
            this.mRefinementResultReceiver = null;
        }
        if (targetInfo == null) {
            Log.e(TAG, "Refinement result intent did not match any known targets; canceling");
        } else if (checkTargetSourceIntent(targetInfo, intent)) {
            ResolverActivity.TargetInfo targetInfoCloneFilledIn = targetInfo.cloneFilledIn(intent, 0);
            if (super.onTargetSelected(targetInfoCloneFilledIn, false)) {
                updateModelAndChooserCounts(targetInfoCloneFilledIn);
                finish();
                return;
            }
        } else {
            Log.e(TAG, "onRefinementResult: Selected target " + targetInfo + " cannot match refined source intent " + intent);
        }
        onRefinementCanceled();
    }

    @Override // com.android.internal.app.ResolverActivity
    public void onSetupVoiceInteraction() {
    }

    @Override // com.android.internal.app.ResolverActivity
    public boolean onTargetSelected(ResolverActivity.TargetInfo targetInfo, boolean z2) {
        if (this.mRefinementIntentSender != null) {
            Intent intent = new Intent();
            List<Intent> allSourceIntents = targetInfo.getAllSourceIntents();
            if (!allSourceIntents.isEmpty()) {
                intent.putExtra(Intent.EXTRA_INTENT, allSourceIntents.get(0));
                if (allSourceIntents.size() > 1) {
                    Intent[] intentArr = new Intent[allSourceIntents.size() - 1];
                    int size = allSourceIntents.size();
                    for (int i2 = 1; i2 < size; i2++) {
                        intentArr[i2 - 1] = allSourceIntents.get(i2);
                    }
                    intent.putExtra(Intent.EXTRA_ALTERNATE_INTENTS, intentArr);
                }
                RefinementResultReceiver refinementResultReceiver = this.mRefinementResultReceiver;
                if (refinementResultReceiver != null) {
                    refinementResultReceiver.destroy();
                }
                RefinementResultReceiver refinementResultReceiver2 = new RefinementResultReceiver(this, targetInfo, null);
                this.mRefinementResultReceiver = refinementResultReceiver2;
                intent.putExtra(Intent.EXTRA_RESULT_RECEIVER, refinementResultReceiver2);
                try {
                    this.mRefinementIntentSender.sendIntent(this, 0, intent, null, null);
                    return false;
                } catch (IntentSender.SendIntentException e2) {
                    Log.e(TAG, "Refinement IntentSender failed to send", e2);
                }
            }
        }
        updateModelAndChooserCounts(targetInfo);
        return super.onTargetSelected(targetInfo, z2);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c0 A[EDGE_INSN: B:33:0x00c0->B:25:0x00c0 BREAK  A[LOOP:0: B:3:0x000f->B:24:0x00bc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc A[SYNTHETIC] */
    public void queryTargetServices(ChooserListAdapter chooserListAdapter) {
        PackageManager packageManager = getPackageManager();
        int displayResolveInfoCount = chooserListAdapter.getDisplayResolveInfoCount();
        int i2 = 0;
        for (int i3 = 0; i3 < displayResolveInfoCount; i3++) {
            ResolverActivity.DisplayResolveInfo displayResolveInfo = chooserListAdapter.getDisplayResolveInfo(i3);
            if (chooserListAdapter.getScore(displayResolveInfo) != 0.0f) {
                ActivityInfo activityInfo = displayResolveInfo.getResolveInfo().activityInfo;
                Bundle bundle = activityInfo.metaData;
                String strConvertServiceName = bundle != null ? convertServiceName(activityInfo.packageName, bundle.getString(ChooserTargetService.META_DATA_NAME)) : null;
                if (strConvertServiceName == null) {
                    if (i2 >= 5) {
                        break;
                        break;
                    }
                } else {
                    ComponentName componentName = new ComponentName(activityInfo.packageName, strConvertServiceName);
                    Intent component = new Intent(ChooserTargetService.SERVICE_INTERFACE).setComponent(componentName);
                    try {
                        if ("android.permission.BIND_CHOOSER_TARGET_SERVICE".equals(packageManager.getServiceInfo(componentName, 0).permission)) {
                            ChooserTargetServiceConnection chooserTargetServiceConnection = new ChooserTargetServiceConnection(this, displayResolveInfo);
                            if (bindServiceAsUser(component, chooserTargetServiceConnection, 5, Process.myUserHandle())) {
                                this.mServiceConnections.add(chooserTargetServiceConnection);
                                i2++;
                            }
                            if (i2 >= 5) {
                                break;
                            }
                        } else {
                            Log.w(TAG, "ChooserTargetService " + componentName + " does not require permission android.permission.BIND_CHOOSER_TARGET_SERVICE - this service will not be queried for ChooserTargets. add android:permission=\"android.permission.BIND_CHOOSER_TARGET_SERVICE\" to the <service> tag for " + componentName + " in the manifest.");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        Log.e(TAG, "Could not look up service " + componentName + "; component name not found");
                    }
                }
            }
        }
        if (this.mServiceConnections.isEmpty()) {
            sendVoiceChoicesIfNeeded();
        } else {
            this.mChooserHandler.sendEmptyMessageDelayed(2, 2000L);
        }
    }

    @Override // com.android.internal.app.ResolverActivity
    public boolean shouldAutoLaunchSingleChoice(ResolverActivity.TargetInfo targetInfo) {
        return getIntent().getBooleanExtra(Intent.EXTRA_AUTO_LAUNCH_SINGLE_CHOICE, super.shouldAutoLaunchSingleChoice(targetInfo));
    }

    @Override // com.android.internal.app.ResolverActivity
    public boolean shouldGetActivityMetadata() {
        return true;
    }

    @Override // com.android.internal.app.ResolverActivity
    public void showTargetDetails(ResolveInfo resolveInfo) {
        if (resolveInfo == null) {
            Log.w(TAG, "showTargetDetails: resolver info is null.");
            return;
        }
        ComponentName componentName = resolveInfo.activityInfo.getComponentName();
        new ResolverTargetActionsDialogFragment(resolveInfo.loadLabel(getPackageManager()), componentName, this.mPinnedSharedPrefs.getBoolean(componentName.flattenToString(), false)).show(getFragmentManager(), TARGET_DETAILS_FRAGMENT_TAG);
    }

    @Override // com.android.internal.app.ResolverActivity
    public void startSelected(int i2, boolean z2, boolean z3) {
        int i3;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.mChooserShownTime;
        super.startSelected(i2, z2, z3);
        ChooserListAdapter chooserListAdapter = this.mChooserListAdapter;
        if (chooserListAdapter != null) {
            int positionTargetType = chooserListAdapter.getPositionTargetType(i2);
            if (positionTargetType == 0) {
                i3 = 215;
            } else if (positionTargetType == 1) {
                i2 -= this.mChooserListAdapter.getCallerTargetCount();
                i3 = 216;
            } else if (positionTargetType != 2) {
                i3 = 0;
            } else {
                i2 -= this.mChooserListAdapter.getServiceTargetCount() + this.mChooserListAdapter.getCallerTargetCount();
                i3 = 217;
            }
            if (i3 != 0) {
                MetricsLogger.action(this, i3, i2);
            }
            if (this.mIsSuccessfullySelected) {
                MetricsLogger.histogram(null, "user_selection_cost_for_smart_sharing", (int) jCurrentTimeMillis);
                MetricsLogger.histogram(null, "app_position_for_smart_sharing", i2);
            }
        }
    }

    public void unbindRemainingServices() {
        int size = this.mServiceConnections.size();
        for (int i2 = 0; i2 < size; i2++) {
            ChooserTargetServiceConnection chooserTargetServiceConnection = this.mServiceConnections.get(i2);
            unbindService(chooserTargetServiceConnection);
            chooserTargetServiceConnection.destroy();
        }
        this.mServiceConnections.clear();
        this.mChooserHandler.removeMessages(2);
    }

    public void updateModelAndChooserCounts(ResolverActivity.TargetInfo targetInfo) {
        ResolverActivity.ResolveListAdapter resolveListAdapter;
        if (targetInfo != null) {
            ResolveInfo resolveInfo = targetInfo.getResolveInfo();
            Intent targetIntent = getTargetIntent();
            if (resolveInfo != null && resolveInfo.activityInfo != null && targetIntent != null && (resolveListAdapter = this.mAdapter) != null) {
                resolveListAdapter.updateModel(targetInfo.getResolvedComponentName());
                this.mAdapter.updateChooserCounts(resolveInfo.activityInfo.packageName, getUserId(), targetIntent.getAction());
            }
        }
        this.mIsSuccessfullySelected = true;
    }

    public final class ChooserTargetInfo implements ResolverActivity.TargetInfo {
        private final ResolveInfo mBackupResolveInfo;
        private CharSequence mBadgeContentDescription;
        private Drawable mBadgeIcon;
        private final ChooserTarget mChooserTarget;
        private Drawable mDisplayIcon;
        private final int mFillInFlags;
        private final Intent mFillInIntent;
        private final float mModifiedScore;
        private final ResolverActivity.DisplayResolveInfo mSourceInfo;

        public ChooserTargetInfo(ResolverActivity.DisplayResolveInfo displayResolveInfo, ChooserTarget chooserTarget, float f2) {
            ResolveInfo resolveInfo;
            ActivityInfo activityInfo;
            this.mBadgeIcon = null;
            this.mSourceInfo = displayResolveInfo;
            this.mChooserTarget = chooserTarget;
            this.mModifiedScore = f2;
            if (displayResolveInfo != null && (resolveInfo = displayResolveInfo.getResolveInfo()) != null && (activityInfo = resolveInfo.activityInfo) != null && activityInfo.applicationInfo != null) {
                PackageManager packageManager = ChooserActivity.this.getPackageManager();
                this.mBadgeIcon = packageManager.getApplicationIcon(activityInfo.applicationInfo);
                this.mBadgeContentDescription = packageManager.getApplicationLabel(activityInfo.applicationInfo);
            }
            Icon icon = chooserTarget.getIcon();
            this.mDisplayIcon = icon != null ? icon.loadDrawable(ChooserActivity.this) : null;
            if (displayResolveInfo != null) {
                this.mBackupResolveInfo = null;
            } else {
                this.mBackupResolveInfo = ChooserActivity.this.getPackageManager().resolveActivity(getResolvedIntent(), 0);
            }
            this.mFillInIntent = null;
            this.mFillInFlags = 0;
        }

        private Intent getBaseIntentToSend() {
            Intent resolvedIntent = getResolvedIntent();
            if (resolvedIntent == null) {
                Log.e(ChooserActivity.TAG, "ChooserTargetInfo: no base intent available to send");
                return resolvedIntent;
            }
            Intent intent = new Intent(resolvedIntent);
            Intent intent2 = this.mFillInIntent;
            if (intent2 != null) {
                intent.fillIn(intent2, this.mFillInFlags);
            }
            intent.fillIn(ChooserActivity.this.mReferrerFillInIntent, 0);
            return intent;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ResolverActivity.TargetInfo cloneFilledIn(Intent intent, int i2) {
            return ChooserActivity.this.new ChooserTargetInfo(this, intent, i2);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public List<Intent> getAllSourceIntents() {
            ArrayList arrayList = new ArrayList();
            ResolverActivity.DisplayResolveInfo displayResolveInfo = this.mSourceInfo;
            if (displayResolveInfo != null) {
                arrayList.add(displayResolveInfo.getAllSourceIntents().get(0));
            }
            return arrayList;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getBadgeContentDescription() {
            return this.mBadgeContentDescription;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getBadgeIcon() {
            return this.mBadgeIcon;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getDisplayIcon() {
            return this.mDisplayIcon;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getDisplayLabel() {
            return this.mChooserTarget.getTitle();
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getExtendedInfo() {
            return null;
        }

        public float getModifiedScore() {
            return this.mModifiedScore;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ResolveInfo getResolveInfo() {
            ResolverActivity.DisplayResolveInfo displayResolveInfo = this.mSourceInfo;
            return displayResolveInfo != null ? displayResolveInfo.getResolveInfo() : this.mBackupResolveInfo;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ComponentName getResolvedComponentName() {
            ResolverActivity.DisplayResolveInfo displayResolveInfo = this.mSourceInfo;
            if (displayResolveInfo != null) {
                return displayResolveInfo.getResolvedComponentName();
            }
            if (this.mBackupResolveInfo == null) {
                return null;
            }
            ActivityInfo activityInfo = this.mBackupResolveInfo.activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Intent getResolvedIntent() {
            ResolverActivity.DisplayResolveInfo displayResolveInfo = this.mSourceInfo;
            if (displayResolveInfo != null) {
                return displayResolveInfo.getResolvedIntent();
            }
            Intent intent = new Intent(ChooserActivity.this.getTargetIntent());
            intent.setComponent(this.mChooserTarget.getComponentName());
            intent.putExtras(this.mChooserTarget.getIntentExtras());
            return intent;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean isPinned() {
            ResolverActivity.DisplayResolveInfo displayResolveInfo = this.mSourceInfo;
            if (displayResolveInfo != null) {
                return displayResolveInfo.isPinned();
            }
            return false;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean start(Activity activity, Bundle bundle) {
            throw new RuntimeException("ChooserTargets should be started as caller.");
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsCaller(Activity activity, Bundle bundle, int i2) {
            Intent baseIntentToSend = getBaseIntentToSend();
            boolean z2 = false;
            if (baseIntentToSend == null) {
                return false;
            }
            baseIntentToSend.setComponent(this.mChooserTarget.getComponentName());
            baseIntentToSend.putExtras(this.mChooserTarget.getIntentExtras());
            ResolverActivity.DisplayResolveInfo displayResolveInfo = this.mSourceInfo;
            if (displayResolveInfo != null && displayResolveInfo.getResolvedComponentName().getPackageName().equals(this.mChooserTarget.getComponentName().getPackageName())) {
                z2 = true;
            }
            activity.startActivityAsCaller(baseIntentToSend, bundle, z2, i2);
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsUser(Activity activity, Bundle bundle, UserHandle userHandle) {
            throw new RuntimeException("ChooserTargets should be started as caller.");
        }

        private ChooserTargetInfo(ChooserTargetInfo chooserTargetInfo, Intent intent, int i2) {
            this.mBadgeIcon = null;
            this.mSourceInfo = chooserTargetInfo.mSourceInfo;
            this.mBackupResolveInfo = chooserTargetInfo.mBackupResolveInfo;
            this.mChooserTarget = chooserTargetInfo.mChooserTarget;
            this.mBadgeIcon = chooserTargetInfo.mBadgeIcon;
            this.mBadgeContentDescription = chooserTargetInfo.mBadgeContentDescription;
            this.mDisplayIcon = chooserTargetInfo.mDisplayIcon;
            this.mFillInIntent = intent;
            this.mFillInFlags = i2;
            this.mModifiedScore = chooserTargetInfo.mModifiedScore;
        }
    }
}
