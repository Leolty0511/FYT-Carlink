package android.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.DebugUtils;
import android.util.Log;
import android.util.LogWriter;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SuperNotCalledException;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import com.android.internal.util.FastPrintWriter;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
final class FragmentManagerImpl extends FragmentManager implements LayoutInflater.Factory2 {
    static boolean DEBUG = false;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    SparseArray<Fragment> mActive;
    boolean mAllowOldReentrantBehavior;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    ArrayList<Fragment> mCreatedMenus;
    boolean mDestroyed;
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    FragmentHostCallback<?> mHost;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<OpGenerator> mPendingActions;
    ArrayList<StartEnterTransitionListener> mPostponedTransactions;
    Fragment mPrimaryNav;
    FragmentManagerNonConfig mSavedNonConfig;
    boolean mStateSaved;
    ArrayList<Fragment> mTmpAddedFragments;
    ArrayList<Boolean> mTmpIsPop;
    ArrayList<BackStackRecord> mTmpRecords;
    int mNextFragmentIndex = 0;
    final ArrayList<Fragment> mAdded = new ArrayList<>();
    final CopyOnWriteArrayList<Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean>> mLifecycleCallbacks = new CopyOnWriteArrayList<>();
    int mCurState = 0;
    Bundle mStateBundle = null;
    SparseArray<Parcelable> mStateArray = null;
    Runnable mExecCommit = new Runnable() { // from class: android.app.FragmentManagerImpl.1
        @Override // java.lang.Runnable
        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };

    public static class AnimateOnHWLayerIfNeededListener implements Animator.AnimatorListener {
        private boolean mShouldRunOnHWLayer = false;
        private View mView;

        public AnimateOnHWLayerIfNeededListener(View view) {
            if (view == null) {
                return;
            }
            this.mView = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final /* synthetic */ void onAnimationEnd(Animator animator, boolean z2) {
            android.animation.a.a(this, animator, z2);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final /* synthetic */ void onAnimationStart(Animator animator, boolean z2) {
            android.animation.a.b(this, animator, z2);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.mShouldRunOnHWLayer) {
                this.mView.setLayerType(0, null);
            }
            this.mView = null;
            animator.removeListener(this);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            boolean zShouldRunOnHWLayer = FragmentManagerImpl.shouldRunOnHWLayer(this.mView, animator);
            this.mShouldRunOnHWLayer = zShouldRunOnHWLayer;
            if (zShouldRunOnHWLayer) {
                this.mView.setLayerType(2, null);
            }
        }
    }

    public interface OpGenerator {
        boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2);
    }

    public class PopBackStackState implements OpGenerator {
        final int mFlags;
        final int mId;
        final String mName;

        public PopBackStackState(String str, int i2, int i3) {
            this.mName = str;
            this.mId = i2;
            this.mFlags = i3;
        }

        @Override // android.app.FragmentManagerImpl.OpGenerator
        public boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
            FragmentManagerImpl fragmentManagerImpl;
            Fragment fragment = FragmentManagerImpl.this.mPrimaryNav;
            if (fragment == null || this.mId >= 0 || this.mName != null || (fragmentManagerImpl = fragment.mChildFragmentManager) == null || !fragmentManagerImpl.popBackStackImmediate()) {
                return FragmentManagerImpl.this.popBackStackState(arrayList, arrayList2, this.mName, this.mId, this.mFlags);
            }
            return false;
        }
    }

    public static class StartEnterTransitionListener implements Fragment.OnStartEnterTransitionListener {
        private final boolean mIsBack;
        private int mNumPostponed;
        private final BackStackRecord mRecord;

        public StartEnterTransitionListener(BackStackRecord backStackRecord, boolean z2) {
            this.mIsBack = z2;
            this.mRecord = backStackRecord;
        }

        public void cancelTransaction() {
            BackStackRecord backStackRecord = this.mRecord;
            backStackRecord.mManager.completeExecute(backStackRecord, this.mIsBack, false, false);
        }

        public void completeTransaction() {
            boolean z2 = this.mNumPostponed > 0;
            FragmentManagerImpl fragmentManagerImpl = this.mRecord.mManager;
            int size = fragmentManagerImpl.mAdded.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = fragmentManagerImpl.mAdded.get(i2);
                fragment.setOnStartEnterTransitionListener(null);
                if (z2 && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            BackStackRecord backStackRecord = this.mRecord;
            backStackRecord.mManager.completeExecute(backStackRecord, this.mIsBack, !z2, true);
        }

        public boolean isReady() {
            return this.mNumPostponed == 0;
        }

        @Override // android.app.Fragment.OnStartEnterTransitionListener
        public void onStartEnterTransition() {
            int i2 = this.mNumPostponed - 1;
            this.mNumPostponed = i2;
            if (i2 != 0) {
                return;
            }
            this.mRecord.mManager.scheduleCommit();
        }

        @Override // android.app.Fragment.OnStartEnterTransitionListener
        public void startListening() {
            this.mNumPostponed++;
        }
    }

    private void addAddedFragments(ArraySet<Fragment> arraySet) {
        int i2 = this.mCurState;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 4);
        ArrayList<Fragment> arrayList = this.mTmpAddedFragments;
        if (arrayList == null) {
            this.mTmpAddedFragments = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        ArrayList<Fragment> arrayList2 = this.mAdded;
        if (arrayList2 != null) {
            this.mTmpAddedFragments.addAll(arrayList2);
        }
        int size = this.mTmpAddedFragments.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.mTmpAddedFragments.get(i3);
            if (fragment.mAdded && fragment.mState < iMin) {
                moveToState(fragment, iMin, fragment.getNextAnim(), fragment.getNextTransition(), false);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    arraySet.add(fragment);
                }
            }
        }
        this.mTmpAddedFragments.clear();
    }

    private void burpActive() {
        SparseArray<Fragment> sparseArray = this.mActive;
        if (sparseArray != null) {
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                if (this.mActive.valueAt(size) == null) {
                    SparseArray<Fragment> sparseArray2 = this.mActive;
                    sparseArray2.delete(sparseArray2.keyAt(size));
                }
            }
        }
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.mNoTransactionsBecause == null) {
            return;
        }
        throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
    }

    private void cleanupExec() {
        this.mExecutingActions = false;
        this.mTmpIsPop.clear();
        this.mTmpRecords.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeExecute(BackStackRecord backStackRecord, boolean z2, boolean z3, boolean z4) {
        if (z2) {
            backStackRecord.executePopOps(z4);
        } else {
            backStackRecord.executeOps();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(backStackRecord);
        arrayList2.add(Boolean.valueOf(z2));
        if (z3) {
            FragmentTransition.startTransitions(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z4) {
            moveToState(this.mCurState, true);
        }
        SparseArray<Fragment> sparseArray = this.mActive;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragmentValueAt = this.mActive.valueAt(i2);
                if (fragmentValueAt != null && fragmentValueAt.mView != null && fragmentValueAt.mIsNewlyAdded && backStackRecord.interactsWith(fragmentValueAt.mContainerId)) {
                    fragmentValueAt.mIsNewlyAdded = false;
                }
            }
        }
    }

    private void dispatchMoveToState(int i2) {
        if (this.mAllowOldReentrantBehavior) {
            moveToState(i2, false);
        } else {
            try {
                this.mExecutingActions = true;
                moveToState(i2, false);
                this.mExecutingActions = false;
            } catch (Throwable th) {
                this.mExecutingActions = false;
                throw th;
            }
        }
        execPendingActions();
    }

    private void endAnimatingAwayFragments() {
        SparseArray<Fragment> sparseArray = this.mActive;
        int size = sparseArray == null ? 0 : sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragmentValueAt = this.mActive.valueAt(i2);
            if (fragmentValueAt != null && fragmentValueAt.getAnimatingAway() != null) {
                fragmentValueAt.getAnimatingAway().end();
            }
        }
    }

    private void ensureExecReady(boolean z2) {
        if (this.mExecutingActions) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (Looper.myLooper() != this.mHost.getHandler().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z2) {
            checkStateLoss();
        }
        if (this.mTmpRecords == null) {
            this.mTmpRecords = new ArrayList<>();
            this.mTmpIsPop = new ArrayList<>();
        }
        this.mExecutingActions = true;
        try {
            executePostponedTransaction(null, null);
        } finally {
            this.mExecutingActions = false;
        }
    }

    private static void executeOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            BackStackRecord backStackRecord = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                backStackRecord.bumpBackStackNesting(-1);
                backStackRecord.executePopOps(i2 == i3 + (-1));
            } else {
                backStackRecord.bumpBackStackNesting(1);
                backStackRecord.executeOps();
            }
            i2++;
        }
    }

    private void executeOpsTogether(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i2;
        boolean z2 = arrayList.get(i6).mReorderingAllowed;
        ArrayList<Fragment> arrayList3 = this.mTmpAddedFragments;
        if (arrayList3 == null) {
            this.mTmpAddedFragments = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.mTmpAddedFragments.addAll(this.mAdded);
        Fragment primaryNavigationFragment = getPrimaryNavigationFragment();
        boolean z3 = false;
        for (int i7 = i6; i7 < i3; i7++) {
            BackStackRecord backStackRecord = arrayList.get(i7);
            if (arrayList2.get(i7).booleanValue()) {
                backStackRecord.trackAddedFragmentsInPop(this.mTmpAddedFragments);
            } else {
                primaryNavigationFragment = backStackRecord.expandOps(this.mTmpAddedFragments, primaryNavigationFragment);
            }
            z3 = z3 || backStackRecord.mAddToBackStack;
        }
        this.mTmpAddedFragments.clear();
        if (!z2) {
            FragmentTransition.startTransitions(this, arrayList, arrayList2, i2, i3, false);
        }
        executeOps(arrayList, arrayList2, i2, i3);
        if (z2) {
            ArraySet<Fragment> arraySet = new ArraySet<>();
            addAddedFragments(arraySet);
            int iPostponePostponableTransactions = postponePostponableTransactions(arrayList, arrayList2, i2, i3, arraySet);
            makeRemovedFragmentsInvisible(arraySet);
            i4 = iPostponePostponableTransactions;
        } else {
            i4 = i3;
        }
        if (i4 != i6 && z2) {
            FragmentTransition.startTransitions(this, arrayList, arrayList2, i2, i4, true);
            moveToState(this.mCurState, true);
        }
        while (i6 < i3) {
            BackStackRecord backStackRecord2 = arrayList.get(i6);
            if (arrayList2.get(i6).booleanValue() && (i5 = backStackRecord2.mIndex) >= 0) {
                freeBackStackIndex(i5);
                backStackRecord2.mIndex = -1;
            }
            backStackRecord2.runOnCommitRunnables();
            i6++;
        }
        if (z3) {
            reportBackStackChanged();
        }
    }

    private void executePostponedTransaction(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<StartEnterTransitionListener> arrayList3 = this.mPostponedTransactions;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            StartEnterTransitionListener startEnterTransitionListener = this.mPostponedTransactions.get(i2);
            if (arrayList != null && !startEnterTransitionListener.mIsBack && (iIndexOf2 = arrayList.indexOf(startEnterTransitionListener.mRecord)) != -1 && arrayList2.get(iIndexOf2).booleanValue()) {
                startEnterTransitionListener.cancelTransaction();
            } else if (startEnterTransitionListener.isReady() || (arrayList != null && startEnterTransitionListener.mRecord.interactsWith(arrayList, 0, arrayList.size()))) {
                this.mPostponedTransactions.remove(i2);
                i2--;
                size--;
                if (arrayList == null || startEnterTransitionListener.mIsBack || (iIndexOf = arrayList.indexOf(startEnterTransitionListener.mRecord)) == -1 || !arrayList2.get(iIndexOf).booleanValue()) {
                    startEnterTransitionListener.completeTransaction();
                } else {
                    startEnterTransitionListener.cancelTransaction();
                }
            }
            i2++;
        }
    }

    private Fragment findFragmentUnder(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup != null && view != null) {
            for (int iIndexOf = this.mAdded.indexOf(fragment) - 1; iIndexOf >= 0; iIndexOf--) {
                Fragment fragment2 = this.mAdded.get(iIndexOf);
                if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    private void forcePostponedTransactions() {
        if (this.mPostponedTransactions != null) {
            while (!this.mPostponedTransactions.isEmpty()) {
                this.mPostponedTransactions.remove(0).completeTransaction();
            }
        }
    }

    private boolean generateOpsForPendingActions(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            ArrayList<OpGenerator> arrayList3 = this.mPendingActions;
            if (arrayList3 != null && arrayList3.size() != 0) {
                int size = this.mPendingActions.size();
                boolean zGenerateOps = false;
                for (int i2 = 0; i2 < size; i2++) {
                    zGenerateOps |= this.mPendingActions.get(i2).generateOps(arrayList, arrayList2);
                }
                this.mPendingActions.clear();
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                return zGenerateOps;
            }
            return false;
        }
    }

    private void makeRemovedFragmentsInvisible(ArraySet<Fragment> arraySet) {
        int size = arraySet.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragmentValueAt = arraySet.valueAt(i2);
            if (!fragmentValueAt.mAdded) {
                fragmentValueAt.getView().setTransitionAlpha(0.0f);
            }
        }
    }

    public static boolean modifiesAlpha(Animator animator) {
        if (animator == null) {
            return false;
        }
        if (animator instanceof ValueAnimator) {
            for (PropertyValuesHolder propertyValuesHolder : ((ValueAnimator) animator).getValues()) {
                if ("alpha".equals(propertyValuesHolder.getPropertyName())) {
                    return true;
                }
            }
        } else if (animator instanceof AnimatorSet) {
            ArrayList<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                if (modifiesAlpha(childAnimations.get(i2))) {
                    return true;
                }
            }
        }
        return false;
    }

    private int postponePostponableTransactions(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, ArraySet<Fragment> arraySet) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            BackStackRecord backStackRecord = arrayList.get(i5);
            boolean zBooleanValue = arrayList2.get(i5).booleanValue();
            if (backStackRecord.isPostponed() && !backStackRecord.interactsWith(arrayList, i5 + 1, i3)) {
                if (this.mPostponedTransactions == null) {
                    this.mPostponedTransactions = new ArrayList<>();
                }
                StartEnterTransitionListener startEnterTransitionListener = new StartEnterTransitionListener(backStackRecord, zBooleanValue);
                this.mPostponedTransactions.add(startEnterTransitionListener);
                backStackRecord.setOnStartPostponedListener(startEnterTransitionListener);
                if (zBooleanValue) {
                    backStackRecord.executeOps();
                } else {
                    backStackRecord.executePopOps(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, backStackRecord);
                }
                addAddedFragments(arraySet);
            }
        }
        return i4;
    }

    private void removeRedundantOperationsAndExecute(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        executePostponedTransaction(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).mReorderingAllowed) {
                if (i3 != i2) {
                    executeOpsTogether(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).mReorderingAllowed) {
                        i3++;
                    }
                }
                executeOpsTogether(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            executeOpsTogether(arrayList, arrayList2, i3, size);
        }
    }

    public static int reverseTransit(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleCommit() {
        synchronized (this) {
            ArrayList<StartEnterTransitionListener> arrayList = this.mPostponedTransactions;
            boolean z2 = false;
            boolean z3 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            ArrayList<OpGenerator> arrayList2 = this.mPendingActions;
            if (arrayList2 != null && arrayList2.size() == 1) {
                z2 = true;
            }
            if (z3 || z2) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
            }
        }
    }

    private void setHWLayerAnimListenerIfAlpha(View view, Animator animator) {
        if (view == null || animator == null || !shouldRunOnHWLayer(view, animator)) {
            return;
        }
        animator.addListener(new AnimateOnHWLayerIfNeededListener(view));
    }

    private static void setRetaining(FragmentManagerNonConfig fragmentManagerNonConfig) {
        if (fragmentManagerNonConfig == null) {
            return;
        }
        List<Fragment> fragments = fragmentManagerNonConfig.getFragments();
        if (fragments != null) {
            Iterator<Fragment> it = fragments.iterator();
            while (it.hasNext()) {
                it.next().mRetaining = true;
            }
        }
        List<FragmentManagerNonConfig> childNonConfigs = fragmentManagerNonConfig.getChildNonConfigs();
        if (childNonConfigs != null) {
            Iterator<FragmentManagerNonConfig> it2 = childNonConfigs.iterator();
            while (it2.hasNext()) {
                setRetaining(it2.next());
            }
        }
    }

    public static boolean shouldRunOnHWLayer(View view, Animator animator) {
        return view != null && animator != null && view.getLayerType() == 0 && view.hasOverlappingRendering() && modifiesAlpha(animator);
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) new LogWriter(6, TAG), false, 1024);
        if (this.mHost != null) {
            Log.e(TAG, "Activity state:");
            try {
                this.mHost.onDump("  ", null, fastPrintWriter, new String[0]);
            } catch (Exception e2) {
                fastPrintWriter.flush();
                Log.e(TAG, "Failed dumping state", e2);
            }
        } else {
            Log.e(TAG, "Fragment manager state:");
            try {
                dump("  ", null, fastPrintWriter, new String[0]);
            } catch (Exception e3) {
                fastPrintWriter.flush();
                Log.e(TAG, "Failed dumping state", e3);
            }
        }
        fastPrintWriter.flush();
        throw runtimeException;
    }

    public static int transitToStyleIndex(int i2, boolean z2) {
        if (i2 == 4097) {
            return !z2 ? 1 : 0;
        }
        if (i2 == 4099) {
            return z2 ? 4 : 5;
        }
        if (i2 != 8194) {
            return -1;
        }
        return z2 ? 2 : 3;
    }

    public void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList<>();
        }
        this.mBackStack.add(backStackRecord);
    }

    public void addFragment(Fragment fragment, boolean z2) {
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.mAdded) {
            this.mAdded.add(fragment);
        }
        fragment.mAdded = true;
        fragment.mRemoving = false;
        if (fragment.mView == null) {
            fragment.mHiddenChanged = false;
        }
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        if (z2) {
            moveToState(fragment);
        }
    }

    @Override // android.app.FragmentManager
    public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList<>();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    public int allocBackStackIndex(BackStackRecord backStackRecord) {
        synchronized (this) {
            ArrayList<Integer> arrayList = this.mAvailBackStackIndices;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList<Integer> arrayList2 = this.mAvailBackStackIndices;
                int iIntValue = arrayList2.remove(arrayList2.size() - 1).intValue();
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + iIntValue + " with " + backStackRecord);
                }
                this.mBackStackIndices.set(iIntValue, backStackRecord);
                return iIntValue;
            }
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int size = this.mBackStackIndices.size();
            if (DEBUG) {
                Log.v(TAG, "Setting back stack index " + size + " to " + backStackRecord);
            }
            this.mBackStackIndices.add(backStackRecord);
            return size;
        }
    }

    public void attachController(FragmentHostCallback<?> fragmentHostCallback, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = fragmentHostCallback;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
        this.mAllowOldReentrantBehavior = getTargetSdk() <= 25;
    }

    public void attachFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            if (DEBUG) {
                Log.v(TAG, "add from attach: " + fragment);
            }
            synchronized (this.mAdded) {
                this.mAdded.add(fragment);
            }
            fragment.mAdded = true;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
        }
    }

    @Override // android.app.FragmentManager
    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public void completeShowHideFragment(Fragment fragment) {
        if (fragment.mView != null) {
            Animator animatorLoadAnimator = loadAnimator(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
            if (animatorLoadAnimator != null) {
                animatorLoadAnimator.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    final ViewGroup viewGroup = fragment.mContainer;
                    final View view = fragment.mView;
                    if (viewGroup != null) {
                        viewGroup.startViewTransition(view);
                    }
                    animatorLoadAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.app.FragmentManagerImpl.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ViewGroup viewGroup2 = viewGroup;
                            if (viewGroup2 != null) {
                                viewGroup2.endViewTransition(view);
                            }
                            animator.removeListener(this);
                            view.setVisibility(8);
                        }
                    });
                }
                setHWLayerAnimListenerIfAlpha(fragment.mView, animatorLoadAnimator);
                animatorLoadAnimator.start();
            } else {
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            }
        }
        if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    public void detachFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (DEBUG) {
                Log.v(TAG, "remove from detach: " + fragment);
            }
            synchronized (this.mAdded) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
        }
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        dispatchMoveToState(2);
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        dispatchMoveToState(1);
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.mCurState < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z2 = true;
            }
        }
        if (this.mCreatedMenus != null) {
            for (int i3 = 0; i3 < this.mCreatedMenus.size(); i3++) {
                Fragment fragment2 = this.mCreatedMenus.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z2;
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        dispatchMoveToState(0);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchDestroyView() {
        dispatchMoveToState(1);
    }

    public void dispatchLowMemory() {
        for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    @Deprecated
    public void dispatchMultiWindowModeChanged(boolean z2) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z2);
            }
        }
    }

    public void dispatchOnFragmentActivityCreated(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentActivityCreated(fragment, bundle, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentActivityCreated(this, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentAttached(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentAttached(fragment, context, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentAttached(this, fragment, context);
            }
        }
    }

    public void dispatchOnFragmentCreated(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentCreated(fragment, bundle, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentCreated(this, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentDestroyed(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentDestroyed(fragment, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentDestroyed(this, fragment);
            }
        }
    }

    public void dispatchOnFragmentDetached(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentDetached(fragment, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentDetached(this, fragment);
            }
        }
    }

    public void dispatchOnFragmentPaused(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentPaused(fragment, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentPaused(this, fragment);
            }
        }
    }

    public void dispatchOnFragmentPreAttached(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentPreAttached(fragment, context, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentPreAttached(this, fragment, context);
            }
        }
    }

    public void dispatchOnFragmentPreCreated(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentPreCreated(fragment, bundle, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentPreCreated(this, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentResumed(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentResumed(fragment, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentResumed(this, fragment);
            }
        }
    }

    public void dispatchOnFragmentSaveInstanceState(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentSaveInstanceState(fragment, bundle, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentSaveInstanceState(this, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentStarted(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentStarted(fragment, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentStarted(this, fragment);
            }
        }
    }

    public void dispatchOnFragmentStopped(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentStopped(fragment, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentStopped(this, fragment);
            }
        }
    }

    public void dispatchOnFragmentViewCreated(Fragment fragment, View view, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentViewCreated(fragment, view, bundle, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentViewCreated(this, fragment, view, bundle);
            }
        }
    }

    public void dispatchOnFragmentViewDestroyed(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.mParent;
        if (fragment2 != null) {
            FragmentManager fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentViewDestroyed(fragment, true);
            }
        }
        for (Pair<FragmentManager.FragmentLifecycleCallbacks, Boolean> pair : this.mLifecycleCallbacks) {
            if (!z2 || pair.second.booleanValue()) {
                pair.first.onFragmentViewDestroyed(this, fragment);
            }
        }
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mCurState < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public void dispatchPause() {
        dispatchMoveToState(4);
    }

    @Deprecated
    public void dispatchPictureInPictureModeChanged(boolean z2) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z2);
            }
        }
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mCurState < 1) {
            return false;
        }
        boolean z2 = false;
        for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z2 = true;
            }
        }
        return z2;
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        dispatchMoveToState(5);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        dispatchMoveToState(4);
    }

    public void dispatchStop() {
        dispatchMoveToState(3);
    }

    public void dispatchTrimMemory(int i2) {
        for (int i3 = 0; i3 < this.mAdded.size(); i3++) {
            Fragment fragment = this.mAdded.get(i3);
            if (fragment != null) {
                fragment.performTrimMemory(i2);
            }
        }
    }

    public void doPendingDeferredStart() {
        LoaderManagerImpl loaderManagerImpl;
        if (this.mHavePendingDeferredStart) {
            boolean zHasRunningLoaders = false;
            for (int i2 = 0; i2 < this.mActive.size(); i2++) {
                Fragment fragmentValueAt = this.mActive.valueAt(i2);
                if (fragmentValueAt != null && (loaderManagerImpl = fragmentValueAt.mLoaderManager) != null) {
                    zHasRunningLoaders |= loaderManagerImpl.hasRunningLoaders();
                }
            }
            if (zHasRunningLoaders) {
                return;
            }
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
    }

    @Override // android.app.FragmentManager
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        String strD = android.accessibilityservice.c.D(str, "    ");
        SparseArray<Fragment> sparseArray = this.mActive;
        if (sparseArray != null && (size5 = sparseArray.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(SettingsStringUtil.DELIMITER);
            for (int i2 = 0; i2 < size5; i2++) {
                Fragment fragmentValueAt = this.mActive.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragmentValueAt);
                if (fragmentValueAt != null) {
                    fragmentValueAt.dump(strD, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size6 = this.mAdded.size();
        if (size6 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i3 = 0; i3 < size6; i3++) {
                Fragment fragment = this.mAdded.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<Fragment> arrayList = this.mCreatedMenus;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < size4; i4++) {
                Fragment fragment2 = this.mCreatedMenus.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList<BackStackRecord> arrayList2 = this.mBackStack;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i5 = 0; i5 < size3; i5++) {
                BackStackRecord backStackRecord = this.mBackStack.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(strD, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            ArrayList<BackStackRecord> arrayList3 = this.mBackStackIndices;
            if (arrayList3 != null && (size2 = arrayList3.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i6 = 0; i6 < size2; i6++) {
                    Object obj = (BackStackRecord) this.mBackStackIndices.get(i6);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            ArrayList<Integer> arrayList4 = this.mAvailBackStackIndices;
            if (arrayList4 != null && arrayList4.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        ArrayList<OpGenerator> arrayList5 = this.mPendingActions;
        if (arrayList5 != null && (size = arrayList5.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i7 = 0; i7 < size; i7++) {
                Object obj2 = (OpGenerator) this.mPendingActions.get(i7);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
    }

    public void enqueueAction(OpGenerator opGenerator, boolean z2) {
        if (!z2) {
            checkStateLoss();
        }
        synchronized (this) {
            if (!this.mDestroyed && this.mHost != null) {
                if (this.mPendingActions == null) {
                    this.mPendingActions = new ArrayList<>();
                }
                this.mPendingActions.add(opGenerator);
                scheduleCommit();
                return;
            }
            if (!z2) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    public void ensureInflatedFragmentView(Fragment fragment) {
        if (!fragment.mFromLayout || fragment.mPerformedCreateView) {
            return;
        }
        View viewPerformCreateView = fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
        fragment.mView = viewPerformCreateView;
        if (viewPerformCreateView != null) {
            viewPerformCreateView.setSaveFromParentEnabled(false);
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
            dispatchOnFragmentViewCreated(fragment, fragment.mView, fragment.mSavedFragmentState, false);
        }
    }

    public boolean execPendingActions() {
        ensureExecReady(true);
        boolean z2 = false;
        while (generateOpsForPendingActions(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
                cleanupExec();
                z2 = true;
            } catch (Throwable th) {
                cleanupExec();
                throw th;
            }
        }
        doPendingDeferredStart();
        burpActive();
        return z2;
    }

    public void execSingleAction(OpGenerator opGenerator, boolean z2) {
        if (z2 && (this.mHost == null || this.mDestroyed)) {
            return;
        }
        ensureExecReady(z2);
        if (opGenerator.generateOps(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
                cleanupExec();
            } catch (Throwable th) {
                cleanupExec();
                throw th;
            }
        }
        doPendingDeferredStart();
        burpActive();
    }

    @Override // android.app.FragmentManager
    public boolean executePendingTransactions() {
        boolean zExecPendingActions = execPendingActions();
        forcePostponedTransactions();
        return zExecPendingActions;
    }

    @Override // android.app.FragmentManager
    public Fragment findFragmentById(int i2) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null && fragment.mFragmentId == i2) {
                return fragment;
            }
        }
        SparseArray<Fragment> sparseArray = this.mActive;
        if (sparseArray == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            Fragment fragmentValueAt = this.mActive.valueAt(size2);
            if (fragmentValueAt != null && fragmentValueAt.mFragmentId == i2) {
                return fragmentValueAt;
            }
        }
        return null;
    }

    @Override // android.app.FragmentManager
    public Fragment findFragmentByTag(String str) {
        if (str != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        SparseArray<Fragment> sparseArray = this.mActive;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            Fragment fragmentValueAt = this.mActive.valueAt(size2);
            if (fragmentValueAt != null && str.equals(fragmentValueAt.mTag)) {
                return fragmentValueAt;
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        Fragment fragmentFindFragmentByWho;
        SparseArray<Fragment> sparseArray = this.mActive;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            Fragment fragmentValueAt = this.mActive.valueAt(size);
            if (fragmentValueAt != null && (fragmentFindFragmentByWho = fragmentValueAt.findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    public void freeBackStackIndex(int i2) {
        synchronized (this) {
            this.mBackStackIndices.set(i2, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList<>();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + i2);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(i2));
        }
    }

    @Override // android.app.FragmentManager
    public FragmentManager.BackStackEntry getBackStackEntryAt(int i2) {
        return this.mBackStack.get(i2);
    }

    @Override // android.app.FragmentManager
    public int getBackStackEntryCount() {
        ArrayList<BackStackRecord> arrayList = this.mBackStack;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // android.app.FragmentManager
    public Fragment getFragment(Bundle bundle, String str) {
        int i2 = bundle.getInt(str, -1);
        if (i2 == -1) {
            return null;
        }
        Fragment fragment = this.mActive.get(i2);
        if (fragment == null) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i2));
        }
        return fragment;
    }

    @Override // android.app.FragmentManager
    public List<Fragment> getFragments() {
        List<Fragment> list;
        if (this.mAdded.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.mAdded) {
            list = (List) this.mAdded.clone();
        }
        return list;
    }

    public LayoutInflater.Factory2 getLayoutInflaterFactory() {
        return this;
    }

    @Override // android.app.FragmentManager
    public Fragment getPrimaryNavigationFragment() {
        return this.mPrimaryNav;
    }

    public int getTargetSdk() {
        Context context;
        ApplicationInfo applicationInfo;
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback == null || (context = fragmentHostCallback.getContext()) == null || (applicationInfo = context.getApplicationInfo()) == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    public void hideFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
    }

    @Override // android.app.FragmentManager
    public void invalidateOptionsMenu() {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback == null || this.mCurState != 5) {
            this.mNeedMenuInvalidate = true;
        } else {
            fragmentHostCallback.onInvalidateOptionsMenu();
        }
    }

    @Override // android.app.FragmentManager
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public boolean isStateAtLeast(int i2) {
        return this.mCurState >= i2;
    }

    @Override // android.app.FragmentManager
    public boolean isStateSaved() {
        return this.mStateSaved;
    }

    public Animator loadAnimator(Fragment fragment, int i2, boolean z2, int i3) {
        int iTransitToStyleIndex;
        Animator animatorLoadAnimator;
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(i2, z2, fragment.getNextAnim());
        if (animatorOnCreateAnimator != null) {
            return animatorOnCreateAnimator;
        }
        if (fragment.getNextAnim() != 0 && (animatorLoadAnimator = AnimatorInflater.loadAnimator(this.mHost.getContext(), fragment.getNextAnim())) != null) {
            return animatorLoadAnimator;
        }
        if (i2 == 0 || (iTransitToStyleIndex = transitToStyleIndex(i2, z2)) < 0) {
            return null;
        }
        if (i3 == 0 && this.mHost.onHasWindowAnimations()) {
            i3 = this.mHost.onGetWindowAnimations();
        }
        if (i3 == 0) {
            return null;
        }
        TypedArray typedArrayObtainStyledAttributes = this.mHost.getContext().obtainStyledAttributes(i3, R.styleable.FragmentAnimation);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(iTransitToStyleIndex, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId == 0) {
            return null;
        }
        return AnimatorInflater.loadAnimator(this.mHost.getContext(), resourceId);
    }

    public void makeActive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            return;
        }
        int i2 = this.mNextFragmentIndex;
        this.mNextFragmentIndex = i2 + 1;
        fragment.setIndex(i2, this.mParent);
        if (this.mActive == null) {
            this.mActive = new SparseArray<>();
        }
        this.mActive.put(fragment.mIndex, fragment);
        if (DEBUG) {
            Log.v(TAG, "Allocated fragment index " + fragment);
        }
    }

    public void makeInactive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            return;
        }
        if (DEBUG) {
            Log.v(TAG, "Freeing fragment index " + fragment);
        }
        this.mActive.put(fragment.mIndex, null);
        this.mHost.inactivateFragment(fragment.mWho);
        fragment.initState();
    }

    public void moveFragmentToExpectedState(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        int iMin = this.mCurState;
        if (fragment.mRemoving) {
            iMin = fragment.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, 0);
        }
        moveToState(fragment, iMin, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
        if (fragment.mView != null) {
            Fragment fragmentFindFragmentUnder = findFragmentUnder(fragment);
            if (fragmentFindFragmentUnder != null) {
                View view = fragmentFindFragmentUnder.mView;
                ViewGroup viewGroup = fragment.mContainer;
                int iIndexOfChild = viewGroup.indexOfChild(view);
                int iIndexOfChild2 = viewGroup.indexOfChild(fragment.mView);
                if (iIndexOfChild2 < iIndexOfChild) {
                    viewGroup.removeViewAt(iIndexOfChild2);
                    viewGroup.addView(fragment.mView, iIndexOfChild);
                }
            }
            if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                fragment.mView.setTransitionAlpha(1.0f);
                fragment.mIsNewlyAdded = false;
                Animator animatorLoadAnimator = loadAnimator(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                if (animatorLoadAnimator != null) {
                    animatorLoadAnimator.setTarget(fragment.mView);
                    setHWLayerAnimListenerIfAlpha(fragment.mView, animatorLoadAnimator);
                    animatorLoadAnimator.start();
                }
            }
        }
        if (fragment.mHiddenChanged) {
            completeShowHideFragment(fragment);
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0245  */
    /* JADX WARN: Code duplicated, block: B:127:0x0249  */
    /* JADX WARN: Code duplicated, block: B:129:0x024d  */
    /* JADX WARN: Code duplicated, block: B:133:0x0268  */
    /* JADX WARN: Code duplicated, block: B:135:0x026c  */
    /* JADX WARN: Code duplicated, block: B:191:0x038b  */
    /* JADX WARN: Code duplicated, block: B:198:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:199:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:201:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:204:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:205:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:208:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:210:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:211:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:215:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:219:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:129:0x024d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:135:0x026c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:201:0x03ad, please report this as an issue */
    public void moveToState(final Fragment fragment, int i2, int i3, int i4, boolean z2) {
        int i5;
        ViewGroup viewGroup;
        String resourceName;
        int i6;
        int i7 = 1;
        if (!fragment.mAdded || fragment.mDetached) {
            i5 = i2;
            if (i5 > 1) {
                i5 = 1;
            }
        } else {
            i5 = i2;
        }
        if (fragment.mRemoving && i5 > (i6 = fragment.mState)) {
            i5 = (i6 == 0 && fragment.isInBackStack()) ? 1 : fragment.mState;
        }
        int i8 = 4;
        int i9 = (!fragment.mDeferStart || fragment.mState >= 4 || i5 <= 3) ? i5 : 3;
        int i10 = fragment.mState;
        if (i10 > i9) {
            if (i10 > i9) {
                if (i10 != 1) {
                    if (i10 != 2 && i10 != 3) {
                        int i11 = 4;
                        if (i10 != 4) {
                            if (i10 == 5) {
                                if (i9 < 5) {
                                    if (DEBUG) {
                                        Log.v(TAG, "movefrom RESUMED: " + fragment);
                                    }
                                    fragment.performPause();
                                    dispatchOnFragmentPaused(fragment, false);
                                }
                                i11 = 4;
                            }
                        }
                        if (i9 < i11) {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom STARTED: " + fragment);
                            }
                            fragment.performStop();
                            dispatchOnFragmentStopped(fragment, false);
                        }
                    }
                    if (i9 < 2) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        if (fragment.mView != null && this.mHost.onShouldSaveFragmentState(fragment) && fragment.mSavedViewState == null) {
                            saveFragmentViewState(fragment);
                        }
                        fragment.performDestroyView();
                        dispatchOnFragmentViewDestroyed(fragment, false);
                        if (fragment.mView != null && fragment.mContainer != null) {
                            if (getTargetSdk() >= 26) {
                                fragment.mView.clearAnimation();
                                fragment.mContainer.endViewTransition(fragment.mView);
                            }
                            Animator animatorLoadAnimator = (this.mCurState <= 0 || this.mDestroyed || fragment.mView.getVisibility() != 0 || fragment.mView.getTransitionAlpha() <= 0.0f) ? null : loadAnimator(fragment, i3, false, i4);
                            fragment.mView.setTransitionAlpha(1.0f);
                            if (animatorLoadAnimator != null) {
                                final ViewGroup viewGroup2 = fragment.mContainer;
                                final View view = fragment.mView;
                                viewGroup2.startViewTransition(view);
                                fragment.setAnimatingAway(animatorLoadAnimator);
                                fragment.setStateAfterAnimating(i9);
                                animatorLoadAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.app.FragmentManagerImpl.2
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        viewGroup2.endViewTransition(view);
                                        Animator animatingAway = fragment.getAnimatingAway();
                                        fragment.setAnimatingAway(null);
                                        if (viewGroup2.indexOfChild(view) != -1 || animatingAway == null) {
                                            return;
                                        }
                                        FragmentManagerImpl fragmentManagerImpl = FragmentManagerImpl.this;
                                        Fragment fragment2 = fragment;
                                        fragmentManagerImpl.moveToState(fragment2, fragment2.getStateAfterAnimating(), 0, 0, false);
                                    }
                                });
                                animatorLoadAnimator.setTarget(fragment.mView);
                                setHWLayerAnimListenerIfAlpha(fragment.mView, animatorLoadAnimator);
                                animatorLoadAnimator.start();
                            }
                            fragment.mContainer.removeView(fragment.mView);
                        }
                        fragment.mContainer = null;
                        fragment.mView = null;
                        fragment.mInLayout = false;
                    }
                    if (i9 >= 1) {
                        if (this.mDestroyed) {
                            Animator animatingAway = fragment.getAnimatingAway();
                            fragment.setAnimatingAway(null);
                            animatingAway.cancel();
                        }
                        if (fragment.getAnimatingAway() != null) {
                            fragment.setStateAfterAnimating(i9);
                        } else {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom CREATED: " + fragment);
                            }
                            if (fragment.mRetaining) {
                                fragment.mState = 0;
                            } else {
                                fragment.performDestroy();
                                dispatchOnFragmentDestroyed(fragment, false);
                            }
                            fragment.performDetach();
                            dispatchOnFragmentDetached(fragment, false);
                            if (!z2) {
                                if (fragment.mRetaining) {
                                    fragment.mHost = null;
                                    fragment.mParentFragment = null;
                                    fragment.mFragmentManager = null;
                                } else {
                                    makeInactive(fragment);
                                }
                            }
                        }
                    }
                } else if (i9 >= 1) {
                    if (this.mDestroyed && fragment.getAnimatingAway() != null) {
                        Animator animatingAway2 = fragment.getAnimatingAway();
                        fragment.setAnimatingAway(null);
                        animatingAway2.cancel();
                    }
                    if (fragment.getAnimatingAway() != null) {
                        fragment.setStateAfterAnimating(i9);
                    } else {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom CREATED: " + fragment);
                        }
                        if (fragment.mRetaining) {
                            fragment.performDestroy();
                            dispatchOnFragmentDestroyed(fragment, false);
                        } else {
                            fragment.mState = 0;
                        }
                        fragment.performDetach();
                        dispatchOnFragmentDetached(fragment, false);
                        if (!z2) {
                            if (fragment.mRetaining) {
                                makeInactive(fragment);
                            } else {
                                fragment.mHost = null;
                                fragment.mParentFragment = null;
                                fragment.mFragmentManager = null;
                            }
                        }
                    }
                }
            }
            if (fragment.mState != i7) {
                StringBuilder sb = new StringBuilder("moveToState: Fragment state for ");
                sb.append(fragment);
                sb.append(" not updated inline; expected state ");
                sb.append(i7);
                sb.append(" found ");
                android.accessibilityservice.c.A(sb, fragment.mState, TAG);
                fragment.mState = i7;
            }
        }
        if (fragment.mFromLayout && !fragment.mInLayout) {
            return;
        }
        if (fragment.getAnimatingAway() != null) {
            fragment.setAnimatingAway(null);
            moveToState(fragment, fragment.getStateAfterAnimating(), 0, 0, true);
        }
        int i12 = fragment.mState;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 == 4) {
                        }
                    }
                    if (i9 > i8) {
                        if (DEBUG) {
                            Log.v(TAG, "moveto RESUMED: " + fragment);
                        }
                        fragment.performResume();
                        dispatchOnFragmentResumed(fragment, false);
                        fragment.mSavedFragmentState = null;
                        fragment.mSavedViewState = null;
                    }
                }
                if (i9 > 3) {
                    if (DEBUG) {
                        Log.v(TAG, "moveto STARTED: " + fragment);
                    }
                    fragment.performStart();
                    dispatchOnFragmentStarted(fragment, false);
                }
                i8 = 4;
                if (i9 > i8) {
                    if (DEBUG) {
                        Log.v(TAG, "moveto RESUMED: " + fragment);
                    }
                    fragment.performResume();
                    dispatchOnFragmentResumed(fragment, false);
                    fragment.mSavedFragmentState = null;
                    fragment.mSavedViewState = null;
                }
            }
            if (i9 > 2) {
                fragment.mState = 3;
            }
            if (i9 > 3) {
                if (DEBUG) {
                    Log.v(TAG, "moveto STARTED: " + fragment);
                }
                fragment.performStart();
                dispatchOnFragmentStarted(fragment, false);
            }
            i8 = 4;
            if (i9 > i8) {
                if (DEBUG) {
                    Log.v(TAG, "moveto RESUMED: " + fragment);
                }
                fragment.performResume();
                dispatchOnFragmentResumed(fragment, false);
                fragment.mSavedFragmentState = null;
                fragment.mSavedViewState = null;
            }
        } else if (i9 > 0) {
            if (DEBUG) {
                Log.v(TAG, "moveto CREATED: " + fragment);
            }
            Bundle bundle = fragment.mSavedFragmentState;
            if (bundle != null) {
                fragment.mSavedViewState = bundle.getSparseParcelableArray(VIEW_STATE_TAG);
                Fragment fragment2 = getFragment(fragment.mSavedFragmentState, TARGET_STATE_TAG);
                fragment.mTarget = fragment2;
                if (fragment2 != null) {
                    fragment.mTargetRequestCode = fragment.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
                }
                boolean z3 = fragment.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
                fragment.mUserVisibleHint = z3;
                if (!z3) {
                    fragment.mDeferStart = true;
                    if (i9 > 3) {
                        i9 = 3;
                    }
                }
            }
            FragmentHostCallback<?> fragmentHostCallback = this.mHost;
            fragment.mHost = fragmentHostCallback;
            Fragment fragment3 = this.mParent;
            fragment.mParentFragment = fragment3;
            fragment.mFragmentManager = fragment3 != null ? fragment3.mChildFragmentManager : fragmentHostCallback.getFragmentManagerImpl();
            Fragment fragment4 = fragment.mTarget;
            if (fragment4 != null) {
                Fragment fragment5 = this.mActive.get(fragment4.mIndex);
                Fragment fragment6 = fragment.mTarget;
                if (fragment5 != fragment6) {
                    throw new IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.mTarget + " that does not belong to this FragmentManager!");
                }
                if (fragment6.mState < 1) {
                    moveToState(fragment6, 1, 0, 0, true);
                }
            }
            dispatchOnFragmentPreAttached(fragment, this.mHost.getContext(), false);
            fragment.mCalled = false;
            fragment.onAttach(this.mHost.getContext());
            if (!fragment.mCalled) {
                throw new SuperNotCalledException(android.accessibilityservice.c.g("Fragment ", fragment, " did not call through to super.onAttach()"));
            }
            Fragment fragment7 = fragment.mParentFragment;
            if (fragment7 == null) {
                this.mHost.onAttachFragment(fragment);
            } else {
                fragment7.onAttachFragment(fragment);
            }
            dispatchOnFragmentAttached(fragment, this.mHost.getContext(), false);
            if (fragment.mIsCreated) {
                fragment.restoreChildFragmentState(fragment.mSavedFragmentState, true);
                fragment.mState = 1;
            } else {
                dispatchOnFragmentPreCreated(fragment, fragment.mSavedFragmentState, false);
                fragment.performCreate(fragment.mSavedFragmentState);
                dispatchOnFragmentCreated(fragment, fragment.mSavedFragmentState, false);
            }
            fragment.mRetaining = false;
        }
        ensureInflatedFragmentView(fragment);
        if (i9 > 1) {
            if (DEBUG) {
                Log.v(TAG, "moveto ACTIVITY_CREATED: " + fragment);
            }
            if (!fragment.mFromLayout) {
                int i13 = fragment.mContainerId;
                if (i13 != 0) {
                    if (i13 == -1) {
                        throwException(new IllegalArgumentException(android.accessibilityservice.c.g("Cannot create fragment ", fragment, " for a container view with no id")));
                    }
                    viewGroup = (ViewGroup) this.mContainer.onFindViewById(fragment.mContainerId);
                    if (viewGroup == null && !fragment.mRestored) {
                        try {
                            resourceName = fragment.getResources().getResourceName(fragment.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throwException(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + resourceName + ") for fragment " + fragment));
                    }
                } else {
                    viewGroup = null;
                }
                fragment.mContainer = viewGroup;
                View viewPerformCreateView = fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), viewGroup, fragment.mSavedFragmentState);
                fragment.mView = viewPerformCreateView;
                if (viewPerformCreateView != null) {
                    viewPerformCreateView.setSaveFromParentEnabled(false);
                    if (viewGroup != null) {
                        viewGroup.addView(fragment.mView);
                    }
                    if (fragment.mHidden) {
                        fragment.mView.setVisibility(8);
                    }
                    fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                    dispatchOnFragmentViewCreated(fragment, fragment.mView, fragment.mSavedFragmentState, false);
                    fragment.mIsNewlyAdded = fragment.mView.getVisibility() == 0 && fragment.mContainer != null;
                }
            }
            fragment.performActivityCreated(fragment.mSavedFragmentState);
            dispatchOnFragmentActivityCreated(fragment, fragment.mSavedFragmentState, false);
            if (fragment.mView != null) {
                fragment.restoreViewState(fragment.mSavedFragmentState);
            }
            fragment.mSavedFragmentState = null;
        }
        if (i9 > 2) {
            fragment.mState = 3;
        }
        if (i9 > 3) {
            if (DEBUG) {
                Log.v(TAG, "moveto STARTED: " + fragment);
            }
            fragment.performStart();
            dispatchOnFragmentStarted(fragment, false);
        }
        i8 = 4;
        if (i9 > i8) {
            if (DEBUG) {
                Log.v(TAG, "moveto RESUMED: " + fragment);
            }
            fragment.performResume();
            dispatchOnFragmentResumed(fragment, false);
            fragment.mSavedFragmentState = null;
            fragment.mSavedViewState = null;
        }
        i7 = i9;
        if (fragment.mState != i7) {
            StringBuilder sb2 = new StringBuilder("moveToState: Fragment state for ");
            sb2.append(fragment);
            sb2.append(" not updated inline; expected state ");
            sb2.append(i7);
            sb2.append(" found ");
            android.accessibilityservice.c.A(sb2, fragment.mState, TAG);
            fragment.mState = i7;
        }
    }

    public void noteStateNotSaved() {
        this.mSavedNonConfig = null;
        this.mStateSaved = false;
        int size = this.mAdded.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.mAdded.get(i2);
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return null;
    }

    public void performPendingDeferredStart(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.mExecutingActions) {
                this.mHavePendingDeferredStart = true;
            } else {
                fragment.mDeferStart = false;
                moveToState(fragment, this.mCurState, 0, 0, false);
            }
        }
    }

    @Override // android.app.FragmentManager
    public void popBackStack() {
        enqueueAction(new PopBackStackState(null, -1, 0), false);
    }

    @Override // android.app.FragmentManager
    public boolean popBackStackImmediate() {
        checkStateLoss();
        return popBackStackImmediate(null, -1, 0);
    }

    public boolean popBackStackState(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int i4;
        ArrayList<BackStackRecord> arrayList3 = this.mBackStack;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.mBackStack.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i2 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    BackStackRecord backStackRecord = this.mBackStack.get(size2);
                    if ((str != null && str.equals(backStackRecord.getName())) || (i2 >= 0 && i2 == backStackRecord.mIndex)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        BackStackRecord backStackRecord2 = this.mBackStack.get(size2);
                        if (str == null || !str.equals(backStackRecord2.getName())) {
                            if (i2 < 0 || i2 != backStackRecord2.mIndex) {
                                break;
                            }
                        }
                    }
                }
                i4 = size2;
            } else {
                i4 = -1;
            }
            if (i4 == this.mBackStack.size() - 1) {
                return false;
            }
            for (int size3 = this.mBackStack.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.mBackStack.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    @Override // android.app.FragmentManager
    public void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException(android.accessibilityservice.c.g("Fragment ", fragment, " is not currently in the FragmentManager")));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    @Override // android.app.FragmentManager
    public void registerFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z2) {
        this.mLifecycleCallbacks.add(new Pair<>(fragmentLifecycleCallbacks, Boolean.valueOf(z2)));
    }

    public void removeFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z2 = !fragment.isInBackStack();
        if (!fragment.mDetached || z2) {
            synchronized (this.mAdded) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    @Override // android.app.FragmentManager
    public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        ArrayList<FragmentManager.OnBackStackChangedListener> arrayList = this.mBackStackChangeListeners;
        if (arrayList != null) {
            arrayList.remove(onBackStackChangedListener);
        }
    }

    public void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            for (int i2 = 0; i2 < this.mBackStackChangeListeners.size(); i2++) {
                this.mBackStackChangeListeners.get(i2).onBackStackChanged();
            }
        }
    }

    public void restoreAllState(Parcelable parcelable, FragmentManagerNonConfig fragmentManagerNonConfig) {
        List<FragmentManagerNonConfig> childNonConfigs;
        FragmentState[] fragmentStateArr;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.mActive == null) {
            return;
        }
        if (fragmentManagerNonConfig != null) {
            List<Fragment> fragments = fragmentManagerNonConfig.getFragments();
            childNonConfigs = fragmentManagerNonConfig.getChildNonConfigs();
            int size = fragments != null ? fragments.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = fragments.get(i2);
                if (DEBUG) {
                    Log.v(TAG, "restoreAllState: re-attaching retained " + fragment);
                }
                int i3 = 0;
                while (true) {
                    fragmentStateArr = fragmentManagerState.mActive;
                    if (i3 >= fragmentStateArr.length || fragmentStateArr[i3].mIndex == fragment.mIndex) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 == fragmentStateArr.length) {
                    throwException(new IllegalStateException("Could not find active fragment with index " + fragment.mIndex));
                }
                FragmentState fragmentState = fragmentManagerState.mActive[i3];
                fragmentState.mInstance = fragment;
                fragment.mSavedViewState = null;
                fragment.mBackStackNesting = 0;
                fragment.mInLayout = false;
                fragment.mAdded = false;
                fragment.mTarget = null;
                Bundle bundle = fragmentState.mSavedFragmentState;
                if (bundle != null) {
                    bundle.setClassLoader(this.mHost.getContext().getClassLoader());
                    fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                    fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
                }
            }
        } else {
            childNonConfigs = null;
        }
        this.mActive = new SparseArray<>(fragmentManagerState.mActive.length);
        int i4 = 0;
        while (true) {
            FragmentState[] fragmentStateArr2 = fragmentManagerState.mActive;
            if (i4 >= fragmentStateArr2.length) {
                break;
            }
            FragmentState fragmentState2 = fragmentStateArr2[i4];
            if (fragmentState2 != null) {
                Fragment fragmentInstantiate = fragmentState2.instantiate(this.mHost, this.mContainer, this.mParent, (childNonConfigs == null || i4 >= childNonConfigs.size()) ? null : childNonConfigs.get(i4));
                if (DEBUG) {
                    Log.v(TAG, "restoreAllState: active #" + i4 + ": " + fragmentInstantiate);
                }
                this.mActive.put(fragmentInstantiate.mIndex, fragmentInstantiate);
                fragmentState2.mInstance = null;
            }
            i4++;
        }
        if (fragmentManagerNonConfig != null) {
            List<Fragment> fragments2 = fragmentManagerNonConfig.getFragments();
            int size2 = fragments2 != null ? fragments2.size() : 0;
            for (int i5 = 0; i5 < size2; i5++) {
                Fragment fragment2 = fragments2.get(i5);
                int i6 = fragment2.mTargetIndex;
                if (i6 >= 0) {
                    Fragment fragment3 = this.mActive.get(i6);
                    fragment2.mTarget = fragment3;
                    if (fragment3 == null) {
                        StringBuilder sb = new StringBuilder("Re-attaching retained fragment ");
                        sb.append(fragment2);
                        sb.append(" target no longer exists: ");
                        android.accessibilityservice.c.A(sb, fragment2.mTargetIndex, TAG);
                        fragment2.mTarget = null;
                    }
                }
            }
        }
        this.mAdded.clear();
        if (fragmentManagerState.mAdded != null) {
            int i7 = 0;
            while (true) {
                int[] iArr = fragmentManagerState.mAdded;
                if (i7 >= iArr.length) {
                    break;
                }
                Fragment fragment4 = this.mActive.get(iArr[i7]);
                if (fragment4 == null) {
                    throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i7]));
                }
                fragment4.mAdded = true;
                if (DEBUG) {
                    Log.v(TAG, "restoreAllState: added #" + i7 + ": " + fragment4);
                }
                if (this.mAdded.contains(fragment4)) {
                    throw new IllegalStateException("Already added!");
                }
                synchronized (this.mAdded) {
                    this.mAdded.add(fragment4);
                }
                i7++;
            }
        }
        if (fragmentManagerState.mBackStack != null) {
            this.mBackStack = new ArrayList<>(fragmentManagerState.mBackStack.length);
            int i8 = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.mBackStack;
                if (i8 >= backStackStateArr.length) {
                    break;
                }
                BackStackRecord backStackRecordInstantiate = backStackStateArr[i8].instantiate(this);
                if (DEBUG) {
                    StringBuilder sbS = android.accessibilityservice.c.s("restoreAllState: back stack #", i8, " (index ");
                    sbS.append(backStackRecordInstantiate.mIndex);
                    sbS.append("): ");
                    sbS.append(backStackRecordInstantiate);
                    Log.v(TAG, sbS.toString());
                    FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) new LogWriter(2, TAG), false, 1024);
                    backStackRecordInstantiate.dump("  ", fastPrintWriter, false);
                    fastPrintWriter.flush();
                }
                this.mBackStack.add(backStackRecordInstantiate);
                int i9 = backStackRecordInstantiate.mIndex;
                if (i9 >= 0) {
                    setBackStackIndex(i9, backStackRecordInstantiate);
                }
                i8++;
            }
        } else {
            this.mBackStack = null;
        }
        int i10 = fragmentManagerState.mPrimaryNavActiveIndex;
        if (i10 >= 0) {
            this.mPrimaryNav = this.mActive.get(i10);
        }
        this.mNextFragmentIndex = fragmentManagerState.mNextFragmentIndex;
    }

    public FragmentManagerNonConfig retainNonConfig() {
        setRetaining(this.mSavedNonConfig);
        return this.mSavedNonConfig;
    }

    public Parcelable saveAllState() {
        int[] iArr;
        int size;
        forcePostponedTransactions();
        endAnimatingAwayFragments();
        execPendingActions();
        this.mStateSaved = true;
        BackStackState[] backStackStateArr = null;
        this.mSavedNonConfig = null;
        SparseArray<Fragment> sparseArray = this.mActive;
        if (sparseArray == null || sparseArray.size() <= 0) {
            return null;
        }
        int size2 = this.mActive.size();
        FragmentState[] fragmentStateArr = new FragmentState[size2];
        boolean z2 = false;
        for (int i2 = 0; i2 < size2; i2++) {
            Fragment fragmentValueAt = this.mActive.valueAt(i2);
            if (fragmentValueAt != null) {
                if (fragmentValueAt.mIndex < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + fragmentValueAt + " has cleared index: " + fragmentValueAt.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragmentValueAt);
                fragmentStateArr[i2] = fragmentState;
                if (fragmentValueAt.mState <= 0 || fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState = fragmentValueAt.mSavedFragmentState;
                } else {
                    fragmentState.mSavedFragmentState = saveFragmentBasicState(fragmentValueAt);
                    Fragment fragment = fragmentValueAt.mTarget;
                    if (fragment != null) {
                        if (fragment.mIndex < 0) {
                            throwException(new IllegalStateException("Failure saving state: " + fragmentValueAt + " has target not in fragment manager: " + fragmentValueAt.mTarget));
                        }
                        if (fragmentState.mSavedFragmentState == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fragmentState.mSavedFragmentState, TARGET_STATE_TAG, fragmentValueAt.mTarget);
                        int i3 = fragmentValueAt.mTargetRequestCode;
                        if (i3 != 0) {
                            fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, i3);
                        }
                    }
                }
                if (DEBUG) {
                    Log.v(TAG, "Saved state of " + fragmentValueAt + ": " + fragmentState.mSavedFragmentState);
                }
                z2 = true;
            }
        }
        if (!z2) {
            if (DEBUG) {
                Log.v(TAG, "saveAllState: no fragments!");
            }
            return null;
        }
        int size3 = this.mAdded.size();
        if (size3 > 0) {
            iArr = new int[size3];
            for (int i4 = 0; i4 < size3; i4++) {
                int i5 = this.mAdded.get(i4).mIndex;
                iArr[i4] = i5;
                if (i5 < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + this.mAdded.get(i4) + " has cleared index: " + iArr[i4]));
                }
                if (DEBUG) {
                    StringBuilder sbS = android.accessibilityservice.c.s("saveAllState: adding fragment #", i4, ": ");
                    sbS.append(this.mAdded.get(i4));
                    Log.v(TAG, sbS.toString());
                }
            }
        } else {
            iArr = null;
        }
        ArrayList<BackStackRecord> arrayList = this.mBackStack;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i6 = 0; i6 < size; i6++) {
                backStackStateArr[i6] = new BackStackState(this, this.mBackStack.get(i6));
                if (DEBUG) {
                    StringBuilder sbS2 = android.accessibilityservice.c.s("saveAllState: adding back stack #", i6, ": ");
                    sbS2.append(this.mBackStack.get(i6));
                    Log.v(TAG, sbS2.toString());
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = fragmentStateArr;
        fragmentManagerState.mAdded = iArr;
        fragmentManagerState.mBackStack = backStackStateArr;
        fragmentManagerState.mNextFragmentIndex = this.mNextFragmentIndex;
        Fragment fragment2 = this.mPrimaryNav;
        if (fragment2 != null) {
            fragmentManagerState.mPrimaryNavActiveIndex = fragment2.mIndex;
        }
        saveNonConfig();
        return fragmentManagerState;
    }

    public Bundle saveFragmentBasicState(Fragment fragment) {
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        dispatchOnFragmentSaveInstanceState(fragment, this.mStateBundle, false);
        Bundle bundle = null;
        if (!this.mStateBundle.isEmpty()) {
            Bundle bundle2 = this.mStateBundle;
            this.mStateBundle = null;
            bundle = bundle2;
        }
        if (fragment.mView != null) {
            saveFragmentViewState(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, fragment.mUserVisibleHint);
        }
        return bundle;
    }

    @Override // android.app.FragmentManager
    public Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        Bundle bundleSaveFragmentBasicState;
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException(android.accessibilityservice.c.g("Fragment ", fragment, " is not currently in the FragmentManager")));
        }
        if (fragment.mState <= 0 || (bundleSaveFragmentBasicState = saveFragmentBasicState(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleSaveFragmentBasicState);
    }

    public void saveFragmentViewState(Fragment fragment) {
        if (fragment.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = this.mStateArray;
        if (sparseArray == null) {
            this.mStateArray = new SparseArray<>();
        } else {
            sparseArray.clear();
        }
        fragment.mView.saveHierarchyState(this.mStateArray);
        if (this.mStateArray.size() > 0) {
            fragment.mSavedViewState = this.mStateArray;
            this.mStateArray = null;
        }
    }

    public void saveNonConfig() {
        ArrayList arrayList;
        ArrayList arrayList2;
        FragmentManagerNonConfig fragmentManagerNonConfig;
        if (this.mActive != null) {
            arrayList = null;
            arrayList2 = null;
            for (int i2 = 0; i2 < this.mActive.size(); i2++) {
                Fragment fragmentValueAt = this.mActive.valueAt(i2);
                if (fragmentValueAt != null) {
                    if (fragmentValueAt.mRetainInstance) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(fragmentValueAt);
                        Fragment fragment = fragmentValueAt.mTarget;
                        fragmentValueAt.mTargetIndex = fragment != null ? fragment.mIndex : -1;
                        if (DEBUG) {
                            Log.v(TAG, "retainNonConfig: keeping retained " + fragmentValueAt);
                        }
                    }
                    FragmentManagerImpl fragmentManagerImpl = fragmentValueAt.mChildFragmentManager;
                    if (fragmentManagerImpl != null) {
                        fragmentManagerImpl.saveNonConfig();
                        fragmentManagerNonConfig = fragmentValueAt.mChildFragmentManager.mSavedNonConfig;
                    } else {
                        fragmentManagerNonConfig = fragmentValueAt.mChildNonConfig;
                    }
                    if (arrayList2 == null && fragmentManagerNonConfig != null) {
                        arrayList2 = new ArrayList(this.mActive.size());
                        for (int i3 = 0; i3 < i2; i3++) {
                            arrayList2.add(null);
                        }
                    }
                    if (arrayList2 != null) {
                        arrayList2.add(fragmentManagerNonConfig);
                    }
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        if (arrayList == null && arrayList2 == null) {
            this.mSavedNonConfig = null;
        } else {
            this.mSavedNonConfig = new FragmentManagerNonConfig(arrayList, arrayList2);
        }
    }

    public void setBackStackIndex(int i2, BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int size = this.mBackStackIndices.size();
            if (i2 < size) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + i2 + " to " + backStackRecord);
                }
                this.mBackStackIndices.set(i2, backStackRecord);
            } else {
                while (size < i2) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList<>();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + size);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size++;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + i2 + " with " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
        }
    }

    public void setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment == null || (this.mActive.get(fragment.mIndex) == fragment && (fragment.mHost == null || fragment.getFragmentManager() == this))) {
            this.mPrimaryNav = fragment;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public void showFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public void startPendingDeferredFragments() {
        if (this.mActive == null) {
            return;
        }
        for (int i2 = 0; i2 < this.mActive.size(); i2++) {
            Fragment fragmentValueAt = this.mActive.valueAt(i2);
            if (fragmentValueAt != null) {
                performPendingDeferredStart(fragmentValueAt);
            }
        }
    }

    public String toString() {
        StringBuilder sbQ = android.accessibilityservice.c.q(128, "FragmentManager{");
        sbQ.append(Integer.toHexString(System.identityHashCode(this)));
        sbQ.append(" in ");
        Fragment fragment = this.mParent;
        if (fragment != null) {
            DebugUtils.buildShortClassTag(fragment, sbQ);
        } else {
            DebugUtils.buildShortClassTag(this.mHost, sbQ);
        }
        sbQ.append("}}");
        return sbQ.toString();
    }

    @Override // android.app.FragmentManager
    public void unregisterFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        synchronized (this.mLifecycleCallbacks) {
            int size = this.mLifecycleCallbacks.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mLifecycleCallbacks.get(i2).first == fragmentLifecycleCallbacks) {
                    this.mLifecycleCallbacks.remove(i2);
                    break;
                }
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        String str2 = attributeValue;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        Fragment fragmentFindFragmentById = resourceId != -1 ? findFragmentById(resourceId) : null;
        if (fragmentFindFragmentById == null && string != null) {
            fragmentFindFragmentById = findFragmentByTag(string);
        }
        if (fragmentFindFragmentById == null && id != -1) {
            fragmentFindFragmentById = findFragmentById(id);
        }
        if (DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragmentFindFragmentById);
        }
        if (fragmentFindFragmentById == null) {
            fragmentFindFragmentById = this.mContainer.instantiate(context, str2, null);
            fragmentFindFragmentById.mFromLayout = true;
            fragmentFindFragmentById.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentFindFragmentById.mContainerId = id;
            fragmentFindFragmentById.mTag = string;
            fragmentFindFragmentById.mInLayout = true;
            fragmentFindFragmentById.mFragmentManager = this;
            FragmentHostCallback<?> fragmentHostCallback = this.mHost;
            fragmentFindFragmentById.mHost = fragmentHostCallback;
            fragmentFindFragmentById.onInflate(fragmentHostCallback.getContext(), attributeSet, fragmentFindFragmentById.mSavedFragmentState);
            addFragment(fragmentFindFragmentById, true);
        } else {
            if (fragmentFindFragmentById.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
            }
            fragmentFindFragmentById.mInLayout = true;
            FragmentHostCallback<?> fragmentHostCallback2 = this.mHost;
            fragmentFindFragmentById.mHost = fragmentHostCallback2;
            if (!fragmentFindFragmentById.mRetaining) {
                fragmentFindFragmentById.onInflate(fragmentHostCallback2.getContext(), attributeSet, fragmentFindFragmentById.mSavedFragmentState);
            }
        }
        Fragment fragment = fragmentFindFragmentById;
        if (this.mCurState >= 1 || !fragment.mFromLayout) {
            moveToState(fragment);
        } else {
            moveToState(fragment, 1, 0, 0, false);
        }
        View view2 = fragment.mView;
        if (view2 == null) {
            throw new IllegalStateException(android.accessibilityservice.c.k("Fragment ", str2, " did not create a view."));
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string);
        }
        return fragment.mView;
    }

    @Override // android.app.FragmentManager
    public void popBackStack(String str, int i2) {
        enqueueAction(new PopBackStackState(str, -1, i2), false);
    }

    @Override // android.app.FragmentManager
    public void popBackStack(int i2, int i3) {
        if (i2 >= 0) {
            enqueueAction(new PopBackStackState(null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.d("Bad id: ", i2));
    }

    @Override // android.app.FragmentManager
    public boolean popBackStackImmediate(String str, int i2) {
        checkStateLoss();
        return popBackStackImmediate(str, -1, i2);
    }

    public void dispatchMultiWindowModeChanged(boolean z2, Configuration configuration) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z2, configuration);
            }
        }
    }

    public void dispatchPictureInPictureModeChanged(boolean z2, Configuration configuration) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z2, configuration);
            }
        }
    }

    @Override // android.app.FragmentManager
    public boolean popBackStackImmediate(int i2, int i3) {
        checkStateLoss();
        if (i2 >= 0) {
            return popBackStackImmediate(null, i2, i3);
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.d("Bad id: ", i2));
    }

    private boolean popBackStackImmediate(String str, int i2, int i3) {
        FragmentManagerImpl fragmentManagerImpl;
        execPendingActions();
        ensureExecReady(true);
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null && i2 < 0 && str == null && (fragmentManagerImpl = fragment.mChildFragmentManager) != null && fragmentManagerImpl.popBackStackImmediate()) {
            return true;
        }
        boolean zPopBackStackState = popBackStackState(this.mTmpRecords, this.mTmpIsPop, str, i2, i3);
        if (zPopBackStackState) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
                cleanupExec();
            } catch (Throwable th) {
                cleanupExec();
                throw th;
            }
        }
        doPendingDeferredStart();
        burpActive();
        return zPopBackStackState;
    }

    public void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState, 0, 0, false);
    }

    public void moveToState(int i2, boolean z2) {
        FragmentHostCallback<?> fragmentHostCallback;
        if (this.mHost == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z2 || this.mCurState != i2) {
            this.mCurState = i2;
            if (this.mActive != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.mAdded);
                int size = arrayList.size();
                boolean zHasRunningLoaders = false;
                for (int i3 = 0; i3 < size; i3++) {
                    Fragment fragment = (Fragment) arrayList.get(i3);
                    if (fragment.mAdded) {
                        moveFragmentToExpectedState(fragment);
                        LoaderManagerImpl loaderManagerImpl = fragment.mLoaderManager;
                        if (loaderManagerImpl != null) {
                            zHasRunningLoaders |= loaderManagerImpl.hasRunningLoaders();
                        }
                    }
                }
                int size2 = this.mActive.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    Fragment fragmentValueAt = this.mActive.valueAt(i4);
                    if (fragmentValueAt != null && ((fragmentValueAt.mRemoving || fragmentValueAt.mDetached) && !fragmentValueAt.mIsNewlyAdded)) {
                        moveFragmentToExpectedState(fragmentValueAt);
                        LoaderManagerImpl loaderManagerImpl2 = fragmentValueAt.mLoaderManager;
                        if (loaderManagerImpl2 != null) {
                            zHasRunningLoaders = loaderManagerImpl2.hasRunningLoaders() | zHasRunningLoaders;
                        }
                    }
                }
                if (!zHasRunningLoaders) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && (fragmentHostCallback = this.mHost) != null && this.mCurState == 5) {
                    fragmentHostCallback.onInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = false;
                }
            }
        }
    }
}
