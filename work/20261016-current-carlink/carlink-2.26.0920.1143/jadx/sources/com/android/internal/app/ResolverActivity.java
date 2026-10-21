package com.android.internal.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.KeyguardManager;
import android.app.VoiceInteractor;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LabeledIntent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.PatternMatcher;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.MediaStore;
import android.provider.Settings;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.IconDrawableFactory;
import android.util.Log;
import android.util.Slog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.internal.R;
import com.android.internal.content.PackageMonitor;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.widget.ResolverDrawerLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ResolverActivity extends Activity {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_APPCLONE = true;
    private static final String TAG = "ResolverActivity";
    protected ResolveListAdapter mAdapter;
    private AbsListView mAdapterView;
    private Button mAlwaysButton;
    private int mDefaultTitleResId;
    private int mIconDpi;
    IconDrawableFactory mIconFactory;
    protected int mLaunchedFromUid;
    private int mLayoutId;
    private Button mOnceButton;
    private PickTargetOptionRequest mPickOptionRequest;
    protected PackageManager mPm;
    private Runnable mPostListReadyRunnable;
    private View mProfileView;
    private String mReferrerPackage;
    private boolean mRegistered;
    protected ResolverDrawerLayout mResolverDrawerLayout;
    private boolean mRetainInOnStop;
    private boolean mSafeForwardingMode;
    private boolean mSupportsAlwaysUseOption;
    private CharSequence mTitle;
    private int mLastSelected = -1;
    private boolean mResolvingHome = false;
    private int mProfileSwitchMessageId = -1;
    private final ArrayList<Intent> mIntents = new ArrayList<>();
    private boolean isAppCloneMode = false;
    private final PackageMonitor mPackageMonitor = new PackageMonitor() { // from class: com.android.internal.app.ResolverActivity.1
        @Override // com.android.internal.content.PackageMonitor
        public boolean onPackageChanged(String str, int i2, String[] strArr) {
            return true;
        }

        @Override // com.android.internal.content.PackageMonitor
        public void onSomePackagesChanged() {
            ResolverActivity.this.mAdapter.handlePackagesChanged();
            if (ResolverActivity.this.mProfileView != null) {
                ResolverActivity.this.bindProfileView();
            }
        }
    };

    public enum ActionTitle {
        VIEW("android.intent.action.VIEW", R.string.whichViewApplication, R.string.whichViewApplicationNamed, R.string.whichViewApplicationLabel),
        EDIT(Intent.ACTION_EDIT, R.string.whichEditApplication, R.string.whichEditApplicationNamed, R.string.whichEditApplicationLabel),
        SEND(Intent.ACTION_SEND, R.string.whichSendApplication, R.string.whichSendApplicationNamed, R.string.whichSendApplicationLabel),
        SENDTO(Intent.ACTION_SENDTO, R.string.whichSendToApplication, R.string.whichSendToApplicationNamed, R.string.whichSendToApplicationLabel),
        SEND_MULTIPLE(Intent.ACTION_SEND_MULTIPLE, R.string.whichSendApplication, R.string.whichSendApplicationNamed, R.string.whichSendApplicationLabel),
        CAPTURE_IMAGE(MediaStore.ACTION_IMAGE_CAPTURE, R.string.whichImageCaptureApplication, R.string.whichImageCaptureApplicationNamed, R.string.whichImageCaptureApplicationLabel),
        DEFAULT(null, R.string.whichApplication, R.string.whichApplicationNamed, R.string.whichApplicationLabel),
        HOME(Intent.ACTION_MAIN, R.string.whichHomeApplication, R.string.whichHomeApplicationNamed, R.string.whichHomeApplicationLabel);

        public final String action;
        public final int labelRes;
        public final int namedTitleRes;
        public final int titleRes;

        ActionTitle(String str, int i2, int i3, int i4) {
            this.action = str;
            this.titleRes = i2;
            this.namedTitleRes = i3;
            this.labelRes = i4;
        }

        public static ActionTitle forAction(String str) {
            for (ActionTitle actionTitle : values()) {
                if (actionTitle != HOME && str != null && str.equals(actionTitle.action)) {
                    return actionTitle;
                }
            }
            return DEFAULT;
        }
    }

    public class ItemClickListener implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
        public ItemClickListener() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            ListView listView = adapterView instanceof ListView ? (ListView) adapterView : null;
            if (listView != null) {
                i2 -= listView.getHeaderViewsCount();
            }
            if (i2 >= 0 && ResolverActivity.this.mAdapter.resolveInfoForPosition(i2, true) != null) {
                int checkedItemPosition = ResolverActivity.this.mAdapterView.getCheckedItemPosition();
                boolean z2 = checkedItemPosition != -1;
                if (ResolverActivity.this.useLayoutWithDefault() || ((z2 && ResolverActivity.this.mLastSelected == checkedItemPosition) || ResolverActivity.this.mAlwaysButton == null)) {
                    ResolverActivity.this.startSelected(i2, false, true);
                    return;
                }
                ResolverActivity.this.setAlwaysButtonEnabled(z2, checkedItemPosition, true);
                ResolverActivity.this.mOnceButton.setEnabled(z2);
                if (z2) {
                    ResolverActivity.this.mAdapterView.smoothScrollToPosition(checkedItemPosition);
                }
                ResolverActivity.this.mLastSelected = checkedItemPosition;
            }
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            ListView listView = adapterView instanceof ListView ? (ListView) adapterView : null;
            if (listView != null) {
                i2 -= listView.getHeaderViewsCount();
            }
            if (i2 < 0) {
                return false;
            }
            ResolverActivity.this.showTargetDetails(ResolverActivity.this.mAdapter.resolveInfoForPosition(i2, true));
            return true;
        }
    }

    public class LoadAdapterIconTask extends LoadIconTask {
        public LoadAdapterIconTask(DisplayResolveInfo displayResolveInfo) {
            super(displayResolveInfo);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.android.internal.app.ResolverActivity.LoadIconTask, android.os.AsyncTask
        public void onPostExecute(Drawable drawable) {
            super.onPostExecute(drawable);
            if (ResolverActivity.this.mProfileView != null && ResolverActivity.this.mAdapter.getOtherProfile() == this.mDisplayResolveInfo) {
                ResolverActivity.this.bindProfileView();
            }
            ResolverActivity.this.mAdapter.notifyDataSetChanged();
        }
    }

    public class LoadIconIntoViewTask extends LoadIconTask {
        private final ImageView mTargetView;

        public LoadIconIntoViewTask(DisplayResolveInfo displayResolveInfo, ImageView imageView) {
            super(displayResolveInfo);
            this.mTargetView = imageView;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.android.internal.app.ResolverActivity.LoadIconTask, android.os.AsyncTask
        public void onPostExecute(Drawable drawable) {
            super.onPostExecute(drawable);
            this.mTargetView.setImageDrawable(drawable);
        }
    }

    public abstract class LoadIconTask extends AsyncTask<Void, Void, Drawable> {
        protected final DisplayResolveInfo mDisplayResolveInfo;
        private final ResolveInfo mResolveInfo;

        public LoadIconTask(DisplayResolveInfo displayResolveInfo) {
            this.mDisplayResolveInfo = displayResolveInfo;
            this.mResolveInfo = displayResolveInfo.getResolveInfo();
        }

        @Override // android.os.AsyncTask
        public Drawable doInBackground(Void... voidArr) {
            return ResolverActivity.this.loadIconForResolveInfo(this.mResolveInfo);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.AsyncTask
        public void onPostExecute(Drawable drawable) {
            this.mDisplayResolveInfo.setDisplayIcon(drawable);
        }
    }

    public static class PickTargetOptionRequest extends VoiceInteractor.PickOptionRequest {
        public PickTargetOptionRequest(VoiceInteractor.Prompt prompt, VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            super(prompt, optionArr, bundle);
        }

        @Override // android.app.VoiceInteractor.Request
        public void onCancel() {
            super.onCancel();
            ResolverActivity resolverActivity = (ResolverActivity) getActivity();
            if (resolverActivity != null) {
                resolverActivity.mPickOptionRequest = null;
                resolverActivity.finish();
            }
        }

        @Override // android.app.VoiceInteractor.PickOptionRequest
        public void onPickOptionResult(boolean z2, VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            ResolverActivity resolverActivity;
            super.onPickOptionResult(z2, optionArr, bundle);
            if (optionArr.length == 1 && (resolverActivity = (ResolverActivity) getActivity()) != null && resolverActivity.onTargetSelected(resolverActivity.mAdapter.getItem(optionArr[0].getIndex()), false)) {
                resolverActivity.mPickOptionRequest = null;
                resolverActivity.finish();
            }
        }
    }

    public class ResolveListAdapter extends BaseAdapter {
        private final List<ResolveInfo> mBaseResolveList;
        List<DisplayResolveInfo> mDisplayList;
        private boolean mFilterLastUsed;
        private boolean mHasExtendedInfo;
        protected final LayoutInflater mInflater;
        private final Intent[] mInitialIntents;
        private final List<Intent> mIntents;
        protected ResolveInfo mLastChosen;
        private int mLastChosenPosition = -1;
        private DisplayResolveInfo mOtherProfile;
        private int mPlaceholderCount;
        private ResolverListController mResolverListController;
        List<ResolvedComponentInfo> mUnfilteredResolveList;

        public ResolveListAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i2, boolean z2, ResolverListController resolverListController) {
            this.mIntents = list;
            this.mInitialIntents = intentArr;
            this.mBaseResolveList = list2;
            ResolverActivity.this.mLaunchedFromUid = i2;
            this.mInflater = LayoutInflater.from(context);
            this.mDisplayList = new ArrayList();
            this.mFilterLastUsed = z2;
            this.mResolverListController = resolverListController;
        }

        private void addResolveInfo(DisplayResolveInfo displayResolveInfo) {
            if (displayResolveInfo == null || displayResolveInfo.mResolveInfo == null || displayResolveInfo.mResolveInfo.targetUserId != -2) {
                return;
            }
            Iterator<DisplayResolveInfo> it = this.mDisplayList.iterator();
            while (it.hasNext()) {
                if (ResolverActivity.resolveInfoMatch(displayResolveInfo.mResolveInfo, it.next().mResolveInfo)) {
                    return;
                }
            }
            this.mDisplayList.add(displayResolveInfo);
        }

        private void addResolveInfoWithAlternates(ResolvedComponentInfo resolvedComponentInfo, CharSequence charSequence, CharSequence charSequence2) {
            int count = resolvedComponentInfo.getCount();
            Intent intentAt = resolvedComponentInfo.getIntentAt(0);
            ResolveInfo resolveInfoAt = resolvedComponentInfo.getResolveInfoAt(0);
            Intent replacementIntent = ResolverActivity.this.getReplacementIntent(resolveInfoAt.activityInfo, intentAt);
            DisplayResolveInfo displayResolveInfo = ResolverActivity.this.new DisplayResolveInfo(intentAt, resolveInfoAt, charSequence2, charSequence, replacementIntent);
            displayResolveInfo.setPinned(resolvedComponentInfo.isPinned());
            addResolveInfo(displayResolveInfo);
            if (replacementIntent == intentAt) {
                for (int i2 = 1; i2 < count; i2++) {
                    displayResolveInfo.addAlternateSourceIntent(resolvedComponentInfo.getIntentAt(i2));
                }
            }
            updateLastChosenPosition(resolveInfoAt);
        }

        private void onBindView(View view, TargetInfo targetInfo) {
            ViewHolder viewHolder = (ViewHolder) view.getTag();
            if (targetInfo == null) {
                viewHolder.icon.setImageDrawable(ResolverActivity.this.getDrawable(R.drawable.resolver_icon_placeholder));
                return;
            }
            if (!TextUtils.equals(viewHolder.text.getText(), targetInfo.getDisplayLabel())) {
                viewHolder.text.setText(targetInfo.getDisplayLabel());
            }
            if (showsExtendedInfo(targetInfo)) {
                viewHolder.text2.setVisibility(0);
                viewHolder.text2.setText(targetInfo.getExtendedInfo());
            } else {
                viewHolder.text2.setVisibility(8);
            }
            if (targetInfo instanceof DisplayResolveInfo) {
                DisplayResolveInfo displayResolveInfo = (DisplayResolveInfo) targetInfo;
                if (!displayResolveInfo.hasDisplayIcon()) {
                    ResolverActivity.this.new LoadAdapterIconTask(displayResolveInfo).execute(new Void[0]);
                }
            }
            viewHolder.icon.setImageDrawable(targetInfo.getDisplayIcon());
            if (viewHolder.badge != null) {
                Drawable badgeIcon = targetInfo.getBadgeIcon();
                if (badgeIcon == null) {
                    viewHolder.badge.setVisibility(8);
                    return;
                }
                viewHolder.badge.setImageDrawable(badgeIcon);
                viewHolder.badge.setContentDescription(targetInfo.getBadgeContentDescription());
                viewHolder.badge.setVisibility(0);
            }
        }

        private void postListReadyRunnable() {
            if (ResolverActivity.this.mPostListReadyRunnable == null) {
                ResolverActivity.this.mPostListReadyRunnable = new Runnable() { // from class: com.android.internal.app.ResolverActivity.ResolveListAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ResolverActivity.this.setTitleAndIcon();
                        ResolverActivity.this.resetAlwaysOrOnceButtonBar();
                        ResolveListAdapter.this.onListRebuilt();
                        ResolverActivity.this.mPostListReadyRunnable = null;
                    }
                };
                ResolverActivity.this.getMainThreadHandler().post(ResolverActivity.this.mPostListReadyRunnable);
            }
        }

        private void processGroup(List<ResolvedComponentInfo> list, int i2, int i3, ResolvedComponentInfo resolvedComponentInfo, CharSequence charSequence) {
            boolean z2 = true;
            if ((i3 - i2) + 1 == 1) {
                addResolveInfoWithAlternates(resolvedComponentInfo, null, charSequence);
                return;
            }
            this.mHasExtendedInfo = true;
            CharSequence charSequenceLoadLabel = resolvedComponentInfo.getResolveInfoAt(0).activityInfo.applicationInfo.loadLabel(ResolverActivity.this.mPm);
            boolean z3 = charSequenceLoadLabel == null;
            if (!z3) {
                HashSet hashSet = new HashSet();
                hashSet.add(charSequenceLoadLabel);
                int i4 = i2 + 1;
                while (true) {
                    if (i4 > i3) {
                        z2 = z3;
                        break;
                    }
                    CharSequence charSequenceLoadLabel2 = list.get(i4).getResolveInfoAt(0).activityInfo.applicationInfo.loadLabel(ResolverActivity.this.mPm);
                    if (charSequenceLoadLabel2 == null || hashSet.contains(charSequenceLoadLabel2)) {
                        break;
                    }
                    hashSet.add(charSequenceLoadLabel2);
                    i4++;
                }
                hashSet.clear();
                z3 = z2;
            }
            while (i2 <= i3) {
                ResolvedComponentInfo resolvedComponentInfo2 = list.get(i2);
                ResolveInfo resolveInfoAt = resolvedComponentInfo2.getResolveInfoAt(0);
                addResolveInfoWithAlternates(resolvedComponentInfo2, z3 ? resolveInfoAt.activityInfo.packageName : resolveInfoAt.activityInfo.applicationInfo.loadLabel(ResolverActivity.this.mPm), charSequence);
                i2++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void processSortedList(List<ResolvedComponentInfo> list) {
            int size;
            if (list != null && (size = list.size()) != 0) {
                if (this.mInitialIntents != null) {
                    int i2 = 0;
                    while (true) {
                        Intent[] intentArr = this.mInitialIntents;
                        if (i2 >= intentArr.length) {
                            break;
                        }
                        Intent intent = intentArr[i2];
                        if (intent != null) {
                            ActivityInfo activityInfoResolveActivityInfo = intent.resolveActivityInfo(ResolverActivity.this.getPackageManager(), 0);
                            if (activityInfoResolveActivityInfo == null) {
                                Log.w(ResolverActivity.TAG, "No activity found for " + intent);
                            } else {
                                ResolveInfo resolveInfo = new ResolveInfo();
                                resolveInfo.activityInfo = activityInfoResolveActivityInfo;
                                UserManager userManager = (UserManager) ResolverActivity.this.getSystemService("user");
                                if (intent instanceof LabeledIntent) {
                                    LabeledIntent labeledIntent = (LabeledIntent) intent;
                                    resolveInfo.resolvePackageName = labeledIntent.getSourcePackage();
                                    resolveInfo.labelRes = labeledIntent.getLabelResource();
                                    resolveInfo.nonLocalizedLabel = labeledIntent.getNonLocalizedLabel();
                                    int iconResource = labeledIntent.getIconResource();
                                    resolveInfo.icon = iconResource;
                                    resolveInfo.iconResourceId = iconResource;
                                }
                                if (userManager.isManagedProfile()) {
                                    resolveInfo.noResourceId = true;
                                    resolveInfo.icon = 0;
                                }
                                ResolverActivity resolverActivity = ResolverActivity.this;
                                addResolveInfo(resolverActivity.new DisplayResolveInfo(intent, resolveInfo, resolveInfo.loadLabel(resolverActivity.getPackageManager()), null, intent));
                            }
                        }
                        i2++;
                    }
                }
                ResolvedComponentInfo resolvedComponentInfo = list.get(0);
                ResolveInfo resolveInfoAt = resolvedComponentInfo.getResolveInfoAt(0);
                CharSequence charSequenceLoadLabel = resolveInfoAt.loadLabel(ResolverActivity.this.mPm);
                this.mHasExtendedInfo = false;
                ResolvedComponentInfo resolvedComponentInfo2 = resolvedComponentInfo;
                int i3 = 0;
                CharSequence charSequence = charSequenceLoadLabel;
                for (int i4 = 1; i4 < size; i4++) {
                    if (charSequence == null) {
                        charSequence = resolveInfoAt.activityInfo.packageName;
                    }
                    ResolvedComponentInfo resolvedComponentInfo3 = list.get(i4);
                    ResolveInfo resolveInfoAt2 = resolvedComponentInfo3.getResolveInfoAt(0);
                    CharSequence charSequenceLoadLabel2 = resolveInfoAt2.loadLabel(ResolverActivity.this.mPm);
                    if (charSequenceLoadLabel2 == null) {
                        charSequenceLoadLabel2 = resolveInfoAt2.activityInfo.packageName;
                    }
                    CharSequence charSequence2 = charSequenceLoadLabel2;
                    if (!charSequence2.equals(charSequence)) {
                        processGroup(list, i3, i4 - 1, resolvedComponentInfo2, charSequence);
                        i3 = i4;
                        resolvedComponentInfo2 = resolvedComponentInfo3;
                        resolveInfoAt = resolveInfoAt2;
                        charSequence = charSequence2;
                    }
                }
                processGroup(list, i3, size - 1, resolvedComponentInfo2, charSequence);
            }
            postListReadyRunnable();
        }

        private void updateLastChosenPosition(ResolveInfo resolveInfo) {
            if (this.mOtherProfile != null) {
                this.mLastChosenPosition = -1;
                return;
            }
            ResolveInfo resolveInfo2 = this.mLastChosen;
            if (resolveInfo2 != null && resolveInfo2.activityInfo.packageName.equals(resolveInfo.activityInfo.packageName) && this.mLastChosen.activityInfo.name.equals(resolveInfo.activityInfo.name)) {
                this.mLastChosenPosition = this.mDisplayList.size() - 1;
            }
        }

        public final void bindView(int i2, View view) {
            onBindView(view, getItem(i2));
        }

        public final View createView(ViewGroup viewGroup) {
            View viewOnCreateView = onCreateView(viewGroup);
            viewOnCreateView.setTag(new ViewHolder(viewOnCreateView));
            return viewOnCreateView;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<DisplayResolveInfo> list = this.mDisplayList;
            int size = (list == null || list.isEmpty()) ? this.mPlaceholderCount : this.mDisplayList.size();
            return (!this.mFilterLastUsed || this.mLastChosenPosition < 0) ? size : size - 1;
        }

        public DisplayResolveInfo getDisplayInfoAt(int i2) {
            return this.mDisplayList.get(i2);
        }

        public int getDisplayInfoCount() {
            return this.mDisplayList.size();
        }

        public DisplayResolveInfo getDisplayResolveInfo(int i2) {
            return this.mDisplayList.get(i2);
        }

        public int getDisplayResolveInfoCount() {
            return this.mDisplayList.size();
        }

        public DisplayResolveInfo getFilteredItem() {
            int i2;
            if (!this.mFilterLastUsed || (i2 = this.mLastChosenPosition) < 0) {
                return null;
            }
            return this.mDisplayList.get(i2);
        }

        public int getFilteredPosition() {
            int i2;
            if (!this.mFilterLastUsed || (i2 = this.mLastChosenPosition) < 0) {
                return -1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        public DisplayResolveInfo getOtherProfile() {
            return this.mOtherProfile;
        }

        public int getPlaceholderCount() {
            return this.mPlaceholderCount;
        }

        public float getScore(DisplayResolveInfo displayResolveInfo) {
            return this.mResolverListController.getScore(displayResolveInfo);
        }

        public int getUnfilteredCount() {
            return this.mDisplayList.size();
        }

        @Override // android.widget.Adapter
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = createView(viewGroup);
            }
            onBindView(view, getItem(i2));
            return view;
        }

        public void handlePackagesChanged() {
            try {
                if (this.mResolverListController.getLastChosen() == null || ResolverActivity.this.mAdapter.hasFilteredItem()) {
                    rebuildList();
                } else {
                    ResolverActivity.this.recreate();
                }
            } catch (RemoteException e2) {
                Log.d(ResolverActivity.TAG, "Error calling getLastChosenActivity when handlePackagesChanged\n" + e2);
            }
            if (getCount() == 0) {
                ResolverActivity.this.finish();
            }
        }

        public boolean hasExtendedInfo() {
            return this.mHasExtendedInfo;
        }

        public boolean hasFilteredItem() {
            return this.mFilterLastUsed && this.mLastChosen != null;
        }

        public boolean hasResolvedTarget(ResolveInfo resolveInfo) {
            int size = this.mDisplayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (ResolverActivity.resolveInfoMatch(resolveInfo, this.mDisplayList.get(i2).getResolveInfo())) {
                    return true;
                }
            }
            return false;
        }

        public boolean isComponentPinned(ComponentName componentName) {
            return false;
        }

        public View onCreateView(ViewGroup viewGroup) {
            return this.mInflater.inflate(R.layout.resolve_list_item, viewGroup, false);
        }

        public void onListRebuilt() {
            if (getUnfilteredCount() == 1 && getOtherProfile() == null) {
                TargetInfo targetInfoTargetInfoForPosition = targetInfoForPosition(0, false);
                if (ResolverActivity.this.shouldAutoLaunchSingleChoice(targetInfoTargetInfoForPosition)) {
                    ResolverActivity.this.safelyStartActivity(targetInfoTargetInfoForPosition);
                    ResolverActivity.this.finish();
                }
            }
        }

        public boolean rebuildList() {
            List<ResolvedComponentInfo> resolversForIntent;
            this.mOtherProfile = null;
            this.mLastChosen = null;
            this.mLastChosenPosition = -1;
            this.mDisplayList.clear();
            if (this.mBaseResolveList != null) {
                resolversForIntent = new ArrayList<>();
                this.mUnfilteredResolveList = resolversForIntent;
                this.mResolverListController.addResolveListDedupe(resolversForIntent, ResolverActivity.this.getTargetIntent(), this.mBaseResolveList);
            } else {
                resolversForIntent = this.mResolverListController.getResolversForIntent(shouldGetResolvedFilter(), ResolverActivity.this.shouldGetActivityMetadata(), this.mIntents);
                this.mUnfilteredResolveList = resolversForIntent;
                if (resolversForIntent == null) {
                    processSortedList(resolversForIntent);
                    return true;
                }
                ArrayList<ResolvedComponentInfo> arrayListFilterIneligibleActivities = this.mResolverListController.filterIneligibleActivities(resolversForIntent, true);
                if (arrayListFilterIneligibleActivities != null) {
                    this.mUnfilteredResolveList = arrayListFilterIneligibleActivities;
                }
            }
            for (ResolvedComponentInfo resolvedComponentInfo : resolversForIntent) {
                if (resolvedComponentInfo.getResolveInfoAt(0).targetUserId != -2) {
                    this.mOtherProfile = ResolverActivity.this.new DisplayResolveInfo(resolvedComponentInfo.getIntentAt(0), resolvedComponentInfo.getResolveInfoAt(0), resolvedComponentInfo.getResolveInfoAt(0).loadLabel(ResolverActivity.this.mPm), resolvedComponentInfo.getResolveInfoAt(0).loadLabel(ResolverActivity.this.mPm), ResolverActivity.this.getReplacementIntent(resolvedComponentInfo.getResolveInfoAt(0).activityInfo, resolvedComponentInfo.getIntentAt(0)));
                    resolversForIntent.remove(resolvedComponentInfo);
                    break;
                }
            }
            if (this.mOtherProfile == null) {
                try {
                    this.mLastChosen = this.mResolverListController.getLastChosen();
                } catch (RemoteException e2) {
                    Log.d(ResolverActivity.TAG, "Error calling getLastChosenActivity\n" + e2);
                }
            }
            if (resolversForIntent.size() <= 0) {
                processSortedList(resolversForIntent);
                return true;
            }
            ArrayList<ResolvedComponentInfo> arrayListFilterLowPriority = this.mResolverListController.filterLowPriority(resolversForIntent, this.mUnfilteredResolveList == resolversForIntent);
            if (arrayListFilterLowPriority != null) {
                this.mUnfilteredResolveList = arrayListFilterLowPriority;
            }
            if (resolversForIntent.size() <= 1) {
                processSortedList(resolversForIntent);
                return true;
            }
            int size = resolversForIntent.size();
            if (ResolverActivity.this.useLayoutWithDefault()) {
                size--;
            }
            setPlaceholderCount(size);
            new AsyncTask<List<ResolvedComponentInfo>, Void, List<ResolvedComponentInfo>>() { // from class: com.android.internal.app.ResolverActivity.ResolveListAdapter.1
                @Override // android.os.AsyncTask
                public List<ResolvedComponentInfo> doInBackground(List<ResolvedComponentInfo>... listArr) {
                    ResolveListAdapter.this.mResolverListController.sort(listArr[0]);
                    return listArr[0];
                }

                @Override // android.os.AsyncTask
                public void onPostExecute(List<ResolvedComponentInfo> list) {
                    ResolveListAdapter.this.processSortedList(list);
                    if (ResolverActivity.this.mProfileView != null) {
                        ResolverActivity.this.bindProfileView();
                    }
                    ResolveListAdapter.this.notifyDataSetChanged();
                }
            }.execute(resolversForIntent);
            postListReadyRunnable();
            return false;
        }

        public ResolveInfo resolveInfoForPosition(int i2, boolean z2) {
            TargetInfo targetInfoTargetInfoForPosition = targetInfoForPosition(i2, z2);
            if (targetInfoTargetInfoForPosition != null) {
                return targetInfoTargetInfoForPosition.getResolveInfo();
            }
            return null;
        }

        public void setPlaceholderCount(int i2) {
            this.mPlaceholderCount = i2;
        }

        public boolean shouldGetResolvedFilter() {
            return this.mFilterLastUsed;
        }

        public boolean showsExtendedInfo(TargetInfo targetInfo) {
            return !TextUtils.isEmpty(targetInfo.getExtendedInfo());
        }

        public TargetInfo targetInfoForPosition(int i2, boolean z2) {
            if (z2) {
                return getItem(i2);
            }
            if (this.mDisplayList.size() > i2) {
                return this.mDisplayList.get(i2);
            }
            return null;
        }

        public void updateChooserCounts(String str, int i2, String str2) {
            this.mResolverListController.updateChooserCounts(str, i2, str2);
        }

        public void updateModel(ComponentName componentName) {
            this.mResolverListController.updateModel(componentName);
        }

        @Override // android.widget.Adapter
        public TargetInfo getItem(int i2) {
            int i3;
            if (this.mFilterLastUsed && (i3 = this.mLastChosenPosition) >= 0 && i2 >= i3) {
                i2++;
            }
            if (this.mDisplayList.size() > i2) {
                return this.mDisplayList.get(i2);
            }
            return null;
        }
    }

    public static final class ResolvedComponentInfo {
        private boolean mPinned;
        public final ComponentName name;
        private final List<Intent> mIntents = new ArrayList();
        private final List<ResolveInfo> mResolveInfos = new ArrayList();

        public ResolvedComponentInfo(ComponentName componentName, Intent intent, ResolveInfo resolveInfo) {
            this.name = componentName;
            add(intent, resolveInfo);
        }

        public void add(Intent intent, ResolveInfo resolveInfo) {
            this.mIntents.add(intent);
            this.mResolveInfos.add(resolveInfo);
        }

        public int findIntent(Intent intent) {
            int size = this.mIntents.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (intent.equals(this.mIntents.get(i2))) {
                    return i2;
                }
            }
            return -1;
        }

        public int findResolveInfo(ResolveInfo resolveInfo) {
            int size = this.mResolveInfos.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (resolveInfo.equals(this.mResolveInfos.get(i2))) {
                    return i2;
                }
            }
            return -1;
        }

        public int getCount() {
            return this.mIntents.size();
        }

        public Intent getIntentAt(int i2) {
            if (i2 >= 0) {
                return this.mIntents.get(i2);
            }
            return null;
        }

        public ResolveInfo getResolveInfoAt(int i2) {
            if (i2 >= 0) {
                return this.mResolveInfos.get(i2);
            }
            return null;
        }

        public boolean isPinned() {
            return this.mPinned;
        }

        public void setPinned(boolean z2) {
            this.mPinned = z2;
        }
    }

    public interface TargetInfo {
        TargetInfo cloneFilledIn(Intent intent, int i2);

        List<Intent> getAllSourceIntents();

        CharSequence getBadgeContentDescription();

        Drawable getBadgeIcon();

        Drawable getDisplayIcon();

        CharSequence getDisplayLabel();

        CharSequence getExtendedInfo();

        ResolveInfo getResolveInfo();

        ComponentName getResolvedComponentName();

        Intent getResolvedIntent();

        boolean isPinned();

        boolean start(Activity activity, Bundle bundle);

        boolean startAsCaller(Activity activity, Bundle bundle, int i2);

        boolean startAsUser(Activity activity, Bundle bundle, UserHandle userHandle);
    }

    public static class ViewHolder {
        public ImageView badge;
        public ImageView icon;
        public TextView text;
        public TextView text2;

        public ViewHolder(View view) {
            this.text = (TextView) view.findViewById(16908308);
            this.text2 = (TextView) view.findViewById(16908309);
            this.icon = (ImageView) view.findViewById(16908294);
            this.badge = (ImageView) view.findViewById(R.id.target_badge);
        }
    }

    public static int getLabelRes(String str) {
        return ActionTitle.forAction(str).labelRes;
    }

    private boolean hasManagedProfile() {
        UserManager userManager = (UserManager) getSystemService("user");
        if (userManager == null) {
            return false;
        }
        try {
            for (UserInfo userInfo : userManager.getProfiles(getUserId())) {
                if (userInfo != null && userInfo.isManagedProfile()) {
                    return true;
                }
            }
        } catch (SecurityException unused) {
        }
        return false;
    }

    public static final boolean isSpecificUriMatch(int i2) {
        int i3 = i2 & IntentFilter.MATCH_CATEGORY_MASK;
        return i3 >= 3145728 && i3 <= 5242880;
    }

    private Intent makeMyIntent() {
        Intent intent = new Intent(getIntent());
        intent.setComponent(null);
        intent.setFlags(intent.getFlags() & (-8388609));
        return intent;
    }

    public static boolean resolveInfoMatch(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
        if (resolveInfo != null) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo == null) {
                if (resolveInfo2.activityInfo == null) {
                    return true;
                }
            } else if (Objects.equals(activityInfo.name, resolveInfo2.activityInfo.name) && Objects.equals(resolveInfo.activityInfo.packageName, resolveInfo2.activityInfo.packageName) && Objects.equals(Integer.valueOf(resolveInfo.activityInfo.applicationInfo.uid), Integer.valueOf(resolveInfo2.activityInfo.applicationInfo.uid))) {
                return true;
            }
        } else if (resolveInfo2 == null) {
            return true;
        }
        return false;
    }

    private void safelyStartActivityInternal(TargetInfo targetInfo) {
        String launchedFromPackage;
        int i2 = this.mProfileSwitchMessageId;
        if (i2 != -1) {
            Toast.makeText(this, getString(i2), 1).show();
        }
        if (!this.mSafeForwardingMode) {
            if (targetInfo.start(this, null)) {
                onActivityStarted(targetInfo);
                return;
            }
            return;
        }
        try {
            if (targetInfo.startAsCaller(this, null, UserHandle.getUserId(targetInfo.getResolveInfo().activityInfo.applicationInfo.uid))) {
                onActivityStarted(targetInfo);
            }
        } catch (RuntimeException e2) {
            try {
                launchedFromPackage = ActivityManager.getService().getLaunchedFromPackage(getActivityToken());
            } catch (RemoteException unused) {
                launchedFromPackage = "??";
            }
            Slog.wtf(TAG, "Unable to launch as uid " + this.mLaunchedFromUid + " package " + launchedFromPackage + ", while running in " + ActivityThread.currentProcessName(), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAlwaysButtonEnabled(boolean z2, int i2, boolean z3) {
        boolean z4;
        if (z2) {
            ResolveInfo resolveInfoResolveInfoForPosition = this.mAdapter.resolveInfoForPosition(i2, z3);
            if (resolveInfoResolveInfoForPosition == null) {
                Log.e(TAG, "Invalid position supplied to setAlwaysButtonEnabled");
                return;
            } else {
                if (resolveInfoResolveInfoForPosition.targetUserId != -2) {
                    Log.e(TAG, "Attempted to set selection to resolve info for another user");
                    return;
                }
                z4 = true;
            }
        } else {
            z4 = false;
        }
        this.mAlwaysButton.setEnabled(z4);
    }

    private void setProfileSwitchMessageId(int i2) {
        if (i2 == -2 || i2 == UserHandle.myUserId()) {
            return;
        }
        UserManager userManager = (UserManager) getSystemService("user");
        UserInfo userInfo = userManager.getUserInfo(i2);
        boolean zIsManagedProfile = userInfo != null ? userInfo.isManagedProfile() : false;
        boolean zIsManagedProfile2 = userManager.isManagedProfile();
        if (zIsManagedProfile && !zIsManagedProfile2) {
            this.mProfileSwitchMessageId = R.string.forward_intent_to_owner;
        } else {
            if (zIsManagedProfile || !zIsManagedProfile2) {
                return;
            }
            this.mProfileSwitchMessageId = R.string.forward_intent_to_work;
        }
    }

    private boolean supportsManagedProfiles(ResolveInfo resolveInfo) {
        try {
            return getPackageManager().getApplicationInfo(resolveInfo.activityInfo.packageName, 0).targetSdkVersion >= 21;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean useLayoutWithDefault() {
        return this.mSupportsAlwaysUseOption && this.mAdapter.hasFilteredItem();
    }

    public void bindProfileView() {
        DisplayResolveInfo otherProfile = this.mAdapter.getOtherProfile();
        if (otherProfile == null) {
            this.mProfileView.setVisibility(8);
            return;
        }
        this.mProfileView.setVisibility(0);
        View viewFindViewById = this.mProfileView.findViewById(R.id.profile_button);
        if (!(viewFindViewById instanceof TextView)) {
            viewFindViewById = this.mProfileView.findViewById(16908308);
        }
        ((TextView) viewFindViewById).setText(otherProfile.getDisplayLabel());
    }

    public boolean configureContentView(List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2) {
        ResolveListAdapter resolveListAdapterCreateAdapter = createAdapter(this, list, intentArr, list2, this.mLaunchedFromUid, this.mSupportsAlwaysUseOption && !isVoiceInteraction());
        this.mAdapter = resolveListAdapterCreateAdapter;
        boolean zRebuildList = resolveListAdapterCreateAdapter.rebuildList();
        if (useLayoutWithDefault()) {
            this.mLayoutId = R.layout.resolver_list_with_default;
        } else {
            this.mLayoutId = getLayoutResource();
        }
        setContentView(this.mLayoutId);
        int unfilteredCount = this.mAdapter.getUnfilteredCount();
        if (zRebuildList && unfilteredCount == 1 && this.mAdapter.getOtherProfile() == null) {
            TargetInfo targetInfoTargetInfoForPosition = this.mAdapter.targetInfoForPosition(0, false);
            if (shouldAutoLaunchSingleChoice(targetInfoTargetInfoForPosition)) {
                safelyStartActivity(targetInfoTargetInfoForPosition);
                this.mPackageMonitor.unregister();
                this.mRegistered = false;
                finish();
                return true;
            }
        }
        this.mAdapterView = (AbsListView) findViewById(R.id.resolver_list);
        if (unfilteredCount == 0 && this.mAdapter.mPlaceholderCount == 0) {
            ((TextView) findViewById(16908292)).setVisibility(0);
            this.mAdapterView.setVisibility(8);
        } else {
            this.mAdapterView.setVisibility(0);
            onPrepareAdapterView(this.mAdapterView, this.mAdapter);
        }
        return false;
    }

    public ResolveListAdapter createAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i2, boolean z2) {
        return new ResolveListAdapter(context, list, intentArr, list2, i2, z2, createListController());
    }

    public ResolverListController createListController() {
        return new ResolverListController(this, this.mPm, getTargetIntent(), getReferrerPackageName(), this.mLaunchedFromUid);
    }

    public void dismiss() {
        if (isFinishing()) {
            return;
        }
        finish();
    }

    public Drawable getIcon(Resources resources, int i2) {
        try {
            return resources.getDrawableForDensity(i2, this.mIconDpi);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public int getLayoutResource() {
        return R.layout.resolver_list;
    }

    public String getReferrerPackageName() {
        Uri referrer = getReferrer();
        if (referrer == null || !"android-app".equals(referrer.getScheme())) {
            return null;
        }
        return referrer.getHost();
    }

    public Intent getReplacementIntent(ActivityInfo activityInfo, Intent intent) {
        return intent;
    }

    public Intent getTargetIntent() {
        if (this.mIntents.isEmpty()) {
            return null;
        }
        return this.mIntents.get(0);
    }

    public CharSequence getTitleForAction(String str, int i2) {
        ActionTitle actionTitleForAction = this.mResolvingHome ? ActionTitle.HOME : ActionTitle.forAction(str);
        boolean z2 = this.mAdapter.getFilteredPosition() >= 0;
        if (actionTitleForAction != ActionTitle.DEFAULT || i2 == 0) {
            return z2 ? getString(actionTitleForAction.namedTitleRes, this.mAdapter.getFilteredItem().getDisplayLabel()) : getString(actionTitleForAction.titleRes);
        }
        return getString(i2);
    }

    public Drawable loadIconForResolveInfo(ResolveInfo resolveInfo) {
        Drawable icon;
        Drawable icon2;
        try {
            String str = resolveInfo.resolvePackageName;
            if (str != null && resolveInfo.icon != 0 && (icon2 = getIcon(this.mPm.getResourcesForApplication(str), resolveInfo.icon)) != null) {
                return this.mIconFactory.getShadowedIcon(icon2);
            }
            int iconResource = resolveInfo.getIconResource();
            if (iconResource != 0 && (icon = getIcon(this.mPm.getResourcesForApplication(resolveInfo.activityInfo.packageName), iconResource)) != null) {
                return this.mIconFactory.getShadowedIcon(this.mPm.getUserBadgedIcon(icon, UserHandle.getUserHandleForUid(resolveInfo.activityInfo.applicationInfo.uid)));
            }
            return this.mIconFactory.getBadgedIcon(resolveInfo.activityInfo.applicationInfo);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e(TAG, "Couldn't find resources for package", e2);
        }
    }

    public void onActivityStarted(TargetInfo targetInfo) {
    }

    public void onButtonClick(View view) {
        startSelected(this.mAdapter.hasFilteredItem() ? this.mAdapter.getFilteredPosition() : this.mAdapterView.getCheckedItemPosition(), view.getId() == 16908760, !this.mAdapter.hasFilteredItem());
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mAdapter.handlePackagesChanged();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        ArrayList parcelableArrayList;
        Intent intentMakeMyIntent = makeMyIntent();
        Set<String> categories = intentMakeMyIntent.getCategories();
        if (Intent.ACTION_MAIN.equals(intentMakeMyIntent.getAction()) && categories != null && categories.size() == 1 && categories.contains(Intent.CATEGORY_HOME)) {
            this.mResolvingHome = true;
        }
        setSafeForwardingMode(true);
        Bundle internalExtras = intentMakeMyIntent.getInternalExtras();
        if (internalExtras != null) {
            parcelableArrayList = internalExtras.getParcelableArrayList("queryList");
            Log.d(TAG, "internalExtras.getParcelableArrayList = " + parcelableArrayList);
        } else {
            Log.d(TAG, "Intent#getInternalExtras is empty");
            parcelableArrayList = null;
        }
        ArrayList arrayList = parcelableArrayList;
        if (arrayList != null) {
            this.isAppCloneMode = true;
            Slog.d(TAG, "Resolver Activity is in AppCloneMode, intent: " + intentMakeMyIntent + " , queryList: " + arrayList);
            intentMakeMyIntent.addFlags(Integer.MIN_VALUE);
        }
        if (this.isAppCloneMode) {
            onCreate(bundle, intentMakeMyIntent, null, 0, null, arrayList, false);
        } else {
            onCreate(bundle, intentMakeMyIntent, null, 0, null, arrayList, true);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        PickTargetOptionRequest pickTargetOptionRequest;
        super.onDestroy();
        if (!isChangingConfigurations() && (pickTargetOptionRequest = this.mPickOptionRequest) != null) {
            pickTargetOptionRequest.cancel();
        }
        if (this.mPostListReadyRunnable != null) {
            getMainThreadHandler().removeCallbacks(this.mPostListReadyRunnable);
            this.mPostListReadyRunnable = null;
        }
        ResolveListAdapter resolveListAdapter = this.mAdapter;
        if (resolveListAdapter == null || resolveListAdapter.mResolverListController == null) {
            return;
        }
        this.mAdapter.mResolverListController.destroy();
    }

    public void onPrepareAdapterView(AbsListView absListView, ResolveListAdapter resolveListAdapter) {
        boolean zHasFilteredItem = resolveListAdapter.hasFilteredItem();
        ListView listView = absListView instanceof ListView ? (ListView) absListView : null;
        absListView.setAdapter(this.mAdapter);
        ItemClickListener itemClickListener = new ItemClickListener();
        absListView.setOnItemClickListener(itemClickListener);
        absListView.setOnItemLongClickListener(itemClickListener);
        if (this.mSupportsAlwaysUseOption) {
            listView.setChoiceMode(1);
        }
        if (this.isAppCloneMode || !zHasFilteredItem || listView == null || listView.getHeaderViewsCount() != 0) {
            return;
        }
        listView.addHeaderView(LayoutInflater.from(this).inflate(R.layout.resolver_different_item_header, (ViewGroup) listView, false));
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        if (!this.mRegistered) {
            this.mPackageMonitor.register(this, getMainLooper(), false);
            this.mRegistered = true;
        }
        this.mAdapter.handlePackagesChanged();
        if (this.mProfileView != null) {
            bindProfileView();
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        resetAlwaysOrOnceButtonBar();
    }

    public void onSetupVoiceInteraction() {
        sendVoiceChoicesIfNeeded();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.mRegistered) {
            this.mPackageMonitor.unregister();
            this.mRegistered = false;
        }
        if ((getIntent().getFlags() & 268435456) == 0 || isVoiceInteraction() || this.mResolvingHome || this.mRetainInOnStop) {
            return;
        }
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService(Context.KEYGUARD_SERVICE);
        if (isChangingConfigurations() || keyguardManager.isKeyguardLocked()) {
            return;
        }
        finish();
    }

    public boolean onTargetSelected(TargetInfo targetInfo, boolean z2) {
        String strResolveType;
        ResolveInfo resolveInfo = targetInfo.getResolveInfo();
        Intent resolvedIntent = targetInfo.getResolvedIntent();
        if (resolvedIntent != null && ((this.mSupportsAlwaysUseOption || this.mAdapter.hasFilteredItem()) && this.mAdapter.mUnfilteredResolveList != null)) {
            IntentFilter intentFilter = new IntentFilter();
            Intent selector = resolvedIntent.getSelector() != null ? resolvedIntent.getSelector() : resolvedIntent;
            String action = selector.getAction();
            if (action != null) {
                intentFilter.addAction(action);
            }
            Set<String> categories = selector.getCategories();
            if (categories != null) {
                Iterator<String> it = categories.iterator();
                while (it.hasNext()) {
                    intentFilter.addCategory(it.next());
                }
            }
            intentFilter.addCategory(Intent.CATEGORY_DEFAULT);
            int i2 = resolveInfo.match & IntentFilter.MATCH_CATEGORY_MASK;
            Uri data = selector.getData();
            String str = TAG;
            if (i2 == 6291456 && (strResolveType = selector.resolveType(this)) != null) {
                try {
                    intentFilter.addDataType(strResolveType);
                } catch (IntentFilter.MalformedMimeTypeException e2) {
                    Log.w(TAG, e2);
                    intentFilter = null;
                }
            }
            if (data != null && data.getScheme() != null && (i2 != 6291456 || (!ContentResolver.SCHEME_FILE.equals(data.getScheme()) && !"content".equals(data.getScheme())))) {
                intentFilter.addDataScheme(data.getScheme());
                Iterator<PatternMatcher> itSchemeSpecificPartsIterator = resolveInfo.filter.schemeSpecificPartsIterator();
                if (itSchemeSpecificPartsIterator != null) {
                    String schemeSpecificPart = data.getSchemeSpecificPart();
                    while (schemeSpecificPart != null && itSchemeSpecificPartsIterator.hasNext()) {
                        PatternMatcher next = itSchemeSpecificPartsIterator.next();
                        if (next.match(schemeSpecificPart)) {
                            intentFilter.addDataSchemeSpecificPart(next.getPath(), next.getType());
                            break;
                        }
                    }
                }
                Iterator<IntentFilter.AuthorityEntry> itAuthoritiesIterator = resolveInfo.filter.authoritiesIterator();
                if (itAuthoritiesIterator != null) {
                    while (itAuthoritiesIterator.hasNext()) {
                        IntentFilter.AuthorityEntry next2 = itAuthoritiesIterator.next();
                        if (next2.match(data) >= 0) {
                            int port = next2.getPort();
                            intentFilter.addDataAuthority(next2.getHost(), port >= 0 ? Integer.toString(port) : null);
                            break;
                        }
                    }
                }
                Iterator<PatternMatcher> itPathsIterator = resolveInfo.filter.pathsIterator();
                if (itPathsIterator != null) {
                    String path = data.getPath();
                    while (path != null && itPathsIterator.hasNext()) {
                        PatternMatcher next3 = itPathsIterator.next();
                        if (next3.match(path)) {
                            intentFilter.addDataPath(next3.getPath(), next3.getType());
                            break;
                        }
                    }
                }
            }
            if (intentFilter != null) {
                int size = this.mAdapter.mUnfilteredResolveList.size();
                int i3 = 0;
                boolean z3 = this.mAdapter.mOtherProfile != null;
                ComponentName[] componentNameArr = !z3 ? new ComponentName[size] : new ComponentName[size + 1];
                int i4 = 0;
                int i5 = 0;
                while (i4 < size) {
                    ResolveInfo resolveInfoAt = this.mAdapter.mUnfilteredResolveList.get(i4).getResolveInfoAt(i3);
                    ActivityInfo activityInfo = resolveInfoAt.activityInfo;
                    String str2 = str;
                    componentNameArr[i4] = new ComponentName(activityInfo.packageName, activityInfo.name);
                    int i6 = resolveInfoAt.match;
                    if (i6 > i5) {
                        i5 = i6;
                    }
                    i4++;
                    str = str2;
                    i3 = 0;
                }
                String str3 = str;
                if (z3) {
                    componentNameArr[size] = this.mAdapter.mOtherProfile.getResolvedComponentName();
                    int i7 = this.mAdapter.mOtherProfile.getResolveInfo().match;
                    if (i7 > i5) {
                        i5 = i7;
                    }
                }
                if (z2) {
                    int userId = getUserId();
                    PackageManager packageManager = getPackageManager();
                    packageManager.addPreferredActivity(intentFilter, i5, componentNameArr, resolvedIntent.getComponent());
                    if (!resolveInfo.handleAllWebDataURI) {
                        String packageName = resolvedIntent.getComponent().getPackageName();
                        String scheme = data != null ? data.getScheme() : null;
                        boolean z4 = scheme != null && (scheme.equals(IntentFilter.SCHEME_HTTP) || scheme.equals(IntentFilter.SCHEME_HTTPS));
                        boolean z5 = action != null && action.equals("android.intent.action.VIEW");
                        boolean z6 = categories != null && categories.contains(Intent.CATEGORY_BROWSABLE);
                        if (z4 && z5 && z6) {
                            packageManager.updateIntentVerificationStatusAsUser(packageName, 2, userId);
                        }
                    } else if (TextUtils.isEmpty(packageManager.getDefaultBrowserPackageNameAsUser(userId))) {
                        packageManager.setDefaultBrowserPackageNameAsUser(resolveInfo.activityInfo.packageName, userId);
                    }
                } else {
                    try {
                        this.mAdapter.mResolverListController.setLastChosen(resolvedIntent, intentFilter, i5);
                    } catch (RemoteException e3) {
                        Log.d(str3, "Error calling setLastChosenActivity\n" + e3);
                    }
                }
            }
        }
        safelyStartActivity(targetInfo);
        return true;
    }

    public VoiceInteractor.PickOptionRequest.Option optionForChooserTarget(TargetInfo targetInfo, int i2) {
        return new VoiceInteractor.PickOptionRequest.Option(targetInfo.getDisplayLabel(), i2);
    }

    public void resetAlwaysOrOnceButtonBar() {
        if (this.mSupportsAlwaysUseOption) {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.button_bar);
            if (viewGroup != null) {
                if (this.isAppCloneMode) {
                    viewGroup.setVisibility(8);
                } else {
                    viewGroup.setVisibility(0);
                }
                this.mAlwaysButton = (Button) viewGroup.findViewById(R.id.button_always);
                this.mOnceButton = (Button) viewGroup.findViewById(R.id.button_once);
            } else {
                Log.e(TAG, "Layout unexpectedly does not have a button bar");
            }
        }
        if (useLayoutWithDefault() && this.mAdapter.getFilteredPosition() != -1) {
            setAlwaysButtonEnabled(true, this.mAdapter.getFilteredPosition(), false);
            this.mOnceButton.setEnabled(true);
            return;
        }
        AbsListView absListView = this.mAdapterView;
        if (absListView == null || absListView.getCheckedItemPosition() == -1) {
            return;
        }
        setAlwaysButtonEnabled(true, this.mAdapterView.getCheckedItemPosition(), true);
        this.mOnceButton.setEnabled(true);
    }

    public void safelyStartActivity(TargetInfo targetInfo) {
        StrictMode.disableDeathOnFileUriExposure();
        try {
            safelyStartActivityInternal(targetInfo);
        } finally {
            StrictMode.enableDeathOnFileUriExposure();
        }
    }

    public void sendVoiceChoicesIfNeeded() {
        if (isVoiceInteraction()) {
            int count = this.mAdapter.getCount();
            VoiceInteractor.PickOptionRequest.Option[] optionArr = new VoiceInteractor.PickOptionRequest.Option[count];
            for (int i2 = 0; i2 < count; i2++) {
                optionArr[i2] = optionForChooserTarget(this.mAdapter.getItem(i2), i2);
            }
            this.mPickOptionRequest = new PickTargetOptionRequest(new VoiceInteractor.Prompt(getTitle()), optionArr, null);
            getVoiceInteractor().submitRequest(this.mPickOptionRequest);
        }
    }

    public final void setAdditionalTargets(Intent[] intentArr) {
        if (intentArr != null) {
            for (Intent intent : intentArr) {
                this.mIntents.add(intent);
            }
        }
    }

    public void setRetainInOnStop(boolean z2) {
        this.mRetainInOnStop = z2;
    }

    public void setSafeForwardingMode(boolean z2) {
        this.mSafeForwardingMode = z2;
    }

    public void setTitleAndIcon() {
        TextView textView;
        if (this.mAdapter.getCount() == 0 && this.mAdapter.mPlaceholderCount == 0 && (textView = (TextView) findViewById(16908310)) != null) {
            textView.setVisibility(8);
        }
        CharSequence titleForAction = this.mTitle;
        if (titleForAction == null) {
            titleForAction = getTitleForAction(getTargetIntent().getAction(), this.mDefaultTitleResId);
        }
        if (!TextUtils.isEmpty(titleForAction)) {
            TextView textView2 = (TextView) findViewById(16908310);
            if (textView2 != null) {
                textView2.setText(titleForAction);
            }
            setTitle(titleForAction);
            ImageView imageView = (ImageView) findViewById(R.id.title_icon);
            if (imageView != null) {
                ApplicationInfo applicationInfo = null;
                try {
                    if (!TextUtils.isEmpty(this.mReferrerPackage)) {
                        applicationInfo = this.mPm.getApplicationInfo(this.mReferrerPackage, 0);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e(TAG, "Could not find referrer package " + this.mReferrerPackage);
                }
                if (applicationInfo != null) {
                    imageView.setImageDrawable(applicationInfo.loadIcon(this.mPm));
                }
            }
        }
        ImageView imageView2 = (ImageView) findViewById(16908294);
        DisplayResolveInfo filteredItem = this.mAdapter.getFilteredItem();
        if (imageView2 == null || filteredItem == null) {
            return;
        }
        new LoadIconIntoViewTask(filteredItem, imageView2).execute(new Void[0]);
    }

    public boolean shouldAutoLaunchSingleChoice(TargetInfo targetInfo) {
        return true;
    }

    public boolean shouldGetActivityMetadata() {
        return false;
    }

    public void showTargetDetails(ResolveInfo resolveInfo) {
        if (resolveInfo == null) {
            return;
        }
        startActivity(new Intent().setAction(Settings.ACTION_APPLICATION_DETAILS_SETTINGS).setData(Uri.fromParts("package", resolveInfo.activityInfo.packageName, null)).addFlags(524288));
    }

    public void startSelected(int i2, boolean z2, boolean z3) {
        if (isFinishing()) {
            return;
        }
        ResolveInfo resolveInfoResolveInfoForPosition = this.mAdapter.resolveInfoForPosition(i2, z3);
        if (this.mResolvingHome && hasManagedProfile() && !supportsManagedProfiles(resolveInfoResolveInfoForPosition)) {
            Toast.makeText(this, String.format(getResources().getString(R.string.activity_resolver_work_profiles_support), resolveInfoResolveInfoForPosition.activityInfo.loadLabel(getPackageManager()).toString()), 1).show();
            return;
        }
        TargetInfo targetInfoTargetInfoForPosition = this.mAdapter.targetInfoForPosition(i2, z3);
        if (targetInfoTargetInfoForPosition != null && onTargetSelected(targetInfoTargetInfoForPosition, z2)) {
            if (z2 && this.mSupportsAlwaysUseOption) {
                MetricsLogger.action(this, MetricsProto.MetricsEvent.ACTION_APP_DISAMBIG_ALWAYS);
            } else if (this.mSupportsAlwaysUseOption) {
                MetricsLogger.action(this, MetricsProto.MetricsEvent.ACTION_APP_DISAMBIG_JUST_ONCE);
            } else {
                MetricsLogger.action(this, MetricsProto.MetricsEvent.ACTION_APP_DISAMBIG_TAP);
            }
            MetricsLogger.action(this, this.mAdapter.hasFilteredItem() ? MetricsProto.MetricsEvent.ACTION_HIDE_APP_DISAMBIG_APP_FEATURED : MetricsProto.MetricsEvent.ACTION_HIDE_APP_DISAMBIG_NONE_FEATURED);
            finish();
        }
    }

    public final class DisplayResolveInfo implements TargetInfo {
        private Drawable mBadge;
        private Drawable mDisplayIcon;
        private final CharSequence mDisplayLabel;
        private final CharSequence mExtendedInfo;
        private boolean mPinned;
        private final ResolveInfo mResolveInfo;
        private final Intent mResolvedIntent;
        private final List<Intent> mSourceIntents;

        public DisplayResolveInfo(Intent intent, ResolveInfo resolveInfo, CharSequence charSequence, CharSequence charSequence2, Intent intent2) {
            ArrayList arrayList = new ArrayList();
            this.mSourceIntents = arrayList;
            arrayList.add(intent);
            this.mResolveInfo = resolveInfo;
            this.mDisplayLabel = charSequence;
            this.mExtendedInfo = charSequence2;
            Intent intent3 = new Intent(intent2 == null ? ResolverActivity.this.getReplacementIntent(resolveInfo.activityInfo, ResolverActivity.this.getTargetIntent()) : intent2);
            intent3.addFlags(View.SCROLLBARS_OUTSIDE_INSET);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent3.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            this.mResolvedIntent = intent3;
        }

        public void addAlternateSourceIntent(Intent intent) {
            this.mSourceIntents.add(intent);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public TargetInfo cloneFilledIn(Intent intent, int i2) {
            return ResolverActivity.this.new DisplayResolveInfo(this, intent, i2);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public List<Intent> getAllSourceIntents() {
            return this.mSourceIntents;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getBadgeContentDescription() {
            return null;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getBadgeIcon() {
            ResolveInfo resolveInfo;
            ActivityInfo activityInfo;
            ApplicationInfo applicationInfo;
            if (TextUtils.isEmpty(getExtendedInfo())) {
                return null;
            }
            if (this.mBadge == null && (resolveInfo = this.mResolveInfo) != null && (activityInfo = resolveInfo.activityInfo) != null && (applicationInfo = activityInfo.applicationInfo) != null) {
                int i2 = activityInfo.icon;
                if (i2 == 0 || i2 == applicationInfo.icon) {
                    return null;
                }
                this.mBadge = applicationInfo.loadIcon(ResolverActivity.this.mPm);
            }
            return this.mBadge;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getDisplayIcon() {
            return this.mDisplayIcon;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getDisplayLabel() {
            return this.mDisplayLabel;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getExtendedInfo() {
            return this.mExtendedInfo;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ResolveInfo getResolveInfo() {
            return this.mResolveInfo;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ComponentName getResolvedComponentName() {
            ActivityInfo activityInfo = this.mResolveInfo.activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Intent getResolvedIntent() {
            return this.mResolvedIntent;
        }

        public boolean hasDisplayIcon() {
            return this.mDisplayIcon != null;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean isPinned() {
            return this.mPinned;
        }

        public void setDisplayIcon(Drawable drawable) {
            this.mDisplayIcon = drawable;
        }

        public void setPinned(boolean z2) {
            this.mPinned = z2;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean start(Activity activity, Bundle bundle) {
            activity.startActivity(this.mResolvedIntent, bundle);
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsCaller(Activity activity, Bundle bundle, int i2) {
            activity.startActivityAsCaller(this.mResolvedIntent, bundle, false, i2);
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsUser(Activity activity, Bundle bundle, UserHandle userHandle) {
            activity.startActivityAsUser(this.mResolvedIntent, bundle, userHandle);
            return false;
        }

        private DisplayResolveInfo(DisplayResolveInfo displayResolveInfo, Intent intent, int i2) {
            ArrayList arrayList = new ArrayList();
            this.mSourceIntents = arrayList;
            arrayList.addAll(displayResolveInfo.getAllSourceIntents());
            this.mResolveInfo = displayResolveInfo.mResolveInfo;
            this.mDisplayLabel = displayResolveInfo.mDisplayLabel;
            this.mDisplayIcon = displayResolveInfo.mDisplayIcon;
            this.mExtendedInfo = displayResolveInfo.mExtendedInfo;
            Intent intent2 = new Intent(displayResolveInfo.mResolvedIntent);
            this.mResolvedIntent = intent2;
            intent2.fillIn(intent, i2);
            this.mPinned = displayResolveInfo.mPinned;
        }
    }

    public void onCreate(Bundle bundle, Intent intent, CharSequence charSequence, Intent[] intentArr, List<ResolveInfo> list, boolean z2) {
        onCreate(bundle, intent, charSequence, 0, intentArr, list, z2);
    }

    public void onCreate(Bundle bundle, Intent intent, CharSequence charSequence, int i2, Intent[] intentArr, List<ResolveInfo> list, boolean z2) {
        setTheme(R.style.Theme_DeviceDefault_Resolver);
        super.onCreate(bundle);
        setProfileSwitchMessageId(intent.getContentUserHint());
        try {
            this.mLaunchedFromUid = ActivityManager.getService().getLaunchedFromUid(getActivityToken());
        } catch (RemoteException unused) {
            this.mLaunchedFromUid = -1;
        }
        int i3 = this.mLaunchedFromUid;
        if (i3 >= 0 && !UserHandle.isIsolated(i3)) {
            this.mPm = getPackageManager();
            this.mIconFactory = IconDrawableFactory.newInstance(this, true);
            this.mPackageMonitor.register(this, getMainLooper(), false);
            this.mRegistered = true;
            this.mReferrerPackage = getReferrerPackageName();
            this.mSupportsAlwaysUseOption = z2;
            this.mIconDpi = ((ActivityManager) getSystemService(Context.ACTIVITY_SERVICE)).getLauncherLargeIconDensity();
            this.mIntents.add(0, new Intent(intent));
            this.mTitle = charSequence;
            this.mDefaultTitleResId = i2;
            if (configureContentView(this.mIntents, intentArr, list)) {
                return;
            }
            ResolverDrawerLayout resolverDrawerLayout = (ResolverDrawerLayout) findViewById(R.id.contentPanel);
            if (resolverDrawerLayout != null) {
                resolverDrawerLayout.setOnDismissedListener(new ResolverDrawerLayout.OnDismissedListener() { // from class: com.android.internal.app.ResolverActivity.2
                    @Override // com.android.internal.widget.ResolverDrawerLayout.OnDismissedListener
                    public void onDismissed() {
                        ResolverActivity.this.finish();
                    }
                });
                if (isVoiceInteraction()) {
                    resolverDrawerLayout.setCollapsed(false);
                }
                this.mResolverDrawerLayout = resolverDrawerLayout;
            }
            View viewFindViewById = findViewById(R.id.profile_button);
            this.mProfileView = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.app.ResolverActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        DisplayResolveInfo otherProfile = ResolverActivity.this.mAdapter.getOtherProfile();
                        if (otherProfile == null) {
                            return;
                        }
                        ResolverActivity.this.mProfileSwitchMessageId = -1;
                        ResolverActivity.this.onTargetSelected(otherProfile, false);
                        ResolverActivity.this.finish();
                    }
                });
                bindProfileView();
            }
            if (isVoiceInteraction()) {
                onSetupVoiceInteraction();
            }
            Set<String> categories = intent.getCategories();
            int i4 = this.mAdapter.hasFilteredItem() ? MetricsProto.MetricsEvent.ACTION_SHOW_APP_DISAMBIG_APP_FEATURED : MetricsProto.MetricsEvent.ACTION_SHOW_APP_DISAMBIG_NONE_FEATURED;
            StringBuilder sb = new StringBuilder();
            sb.append(intent.getAction());
            sb.append(SettingsStringUtil.DELIMITER);
            sb.append(intent.getType());
            sb.append(SettingsStringUtil.DELIMITER);
            sb.append(categories != null ? Arrays.toString(categories.toArray()) : "");
            MetricsLogger.action(this, i4, sb.toString());
            return;
        }
        finish();
    }
}
