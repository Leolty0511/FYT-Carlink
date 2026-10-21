package android.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.DebugUtils;
import android.util.Log;
import android.util.LogWriter;
import android.util.SparseArray;
import android.util.SuperNotCalledException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import i.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import u.e;

/* JADX INFO: loaded from: classes.dex */
final class FragmentManagerImpl extends FragmentManager {
    public static boolean DEBUG = false;
    public static final String TAG = "FragmentManager";
    public static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    public static final String TARGET_STATE_TAG = "android:target_state";
    public static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    public static final String VIEW_STATE_TAG = "android:view_state";
    public ArrayList<Fragment> mActive;
    public Activity mActivity;
    public ArrayList<Fragment> mAdded;
    public ArrayList<Integer> mAvailBackStackIndices;
    public ArrayList<Integer> mAvailIndices;
    public ArrayList<BackStackRecord> mBackStack;
    public ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
    public ArrayList<BackStackRecord> mBackStackIndices;
    public FragmentContainer mContainer;
    public ArrayList<Fragment> mCreatedMenus;
    public boolean mDestroyed;
    public boolean mExecutingActions;
    public boolean mHavePendingDeferredStart;
    public boolean mNeedMenuInvalidate;
    public String mNoTransactionsBecause;
    public Fragment mParent;
    public ArrayList<Runnable> mPendingActions;
    public boolean mStateSaved;
    public Runnable[] mTmpActions;
    public int mCurState = 0;
    public Bundle mStateBundle = null;
    public SparseArray<Parcelable> mStateArray = null;
    public Runnable mExecCommit = new Runnable() { // from class: android.app.FragmentManagerImpl.1
        @Override // java.lang.Runnable
        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.mNoTransactionsBecause == null) {
            return;
        }
        throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
    }

    public static int reverseTransit(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 == 4099) {
            return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
        }
        if (i2 != 8194) {
            return 0;
        }
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        e eVar = new e((Writer) new LogWriter(6, "FragmentManager"), false, 1024);
        if (this.mActivity != null) {
            Log.e("FragmentManager", "Activity state:");
            try {
                this.mActivity.dump("  ", null, eVar, new String[0]);
            } catch (Exception e2) {
                eVar.flush();
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        } else {
            Log.e("FragmentManager", "Fragment manager state:");
            try {
                dump("  ", null, eVar, new String[0]);
            } catch (Exception e3) {
                eVar.flush();
                Log.e("FragmentManager", "Failed dumping state", e3);
            }
        }
        eVar.flush();
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
        reportBackStackChanged();
    }

    public void addFragment(Fragment fragment, boolean z2) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList<>();
        }
        if (DEBUG) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        makeActive(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        this.mAdded.add(fragment);
        fragment.mAdded = true;
        fragment.mRemoving = false;
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
                    Log.v("FragmentManager", "Adding back stack index " + iIntValue + " with " + backStackRecord);
                }
                this.mBackStackIndices.set(iIntValue, backStackRecord);
                return iIntValue;
            }
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int size = this.mBackStackIndices.size();
            if (DEBUG) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + backStackRecord);
            }
            this.mBackStackIndices.add(backStackRecord);
            return size;
        }
    }

    public void attachActivity(Activity activity, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mActivity != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mActivity = activity;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public void attachFragment(Fragment fragment, int i2, int i3) {
        if (DEBUG) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            if (this.mAdded == null) {
                this.mAdded = new ArrayList<>();
            }
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            if (DEBUG) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            moveToState(fragment, this.mCurState, i2, i3, false);
        }
    }

    @Override // android.app.FragmentManager
    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public void detachFragment(Fragment fragment, int i2, int i3) {
        if (DEBUG) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (this.mAdded != null) {
                if (DEBUG) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            moveToState(fragment, 1, i2, i3, false);
        }
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        moveToState(2, false);
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment != null) {
                    fragment.performConfigurationChanged(configuration);
                }
            }
        }
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        moveToState(1, false);
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z2;
        ArrayList<Fragment> arrayList = null;
        if (this.mAdded != null) {
            z2 = false;
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
        } else {
            z2 = false;
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
        moveToState(0, false);
        this.mActivity = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchDestroyView() {
        moveToState(1, false);
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment != null) {
                    fragment.performLowMemory();
                }
            }
        }
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            for (int i2 = 0; i2 < this.mAdded.size(); i2++) {
                Fragment fragment = this.mAdded.get(i2);
                if (fragment != null) {
                    fragment.performOptionsMenuClosed(menu);
                }
            }
        }
    }

    public void dispatchPause() {
        moveToState(4, false);
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mAdded == null) {
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
        moveToState(5, false);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        moveToState(4, false);
    }

    public void dispatchStop() {
        moveToState(3, false);
    }

    public void dispatchTrimMemory(int i2) {
        if (this.mAdded != null) {
            for (int i3 = 0; i3 < this.mAdded.size(); i3++) {
                Fragment fragment = this.mAdded.get(i3);
                if (fragment != null) {
                    fragment.performTrimMemory(i2);
                }
            }
        }
    }

    @Override // android.app.FragmentManager
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        int size6;
        String str2 = str + "    ";
        ArrayList<Fragment> arrayList = this.mActive;
        if (arrayList != null && (size6 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i2 = 0; i2 < size6; i2++) {
                Fragment fragment = this.mActive.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        ArrayList<Fragment> arrayList2 = this.mAdded;
        if (arrayList2 != null && (size5 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i3 = 0; i3 < size5; i3++) {
                Fragment fragment2 = this.mAdded.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList<Fragment> arrayList3 = this.mCreatedMenus;
        if (arrayList3 != null && (size4 = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < size4; i4++) {
                Fragment fragment3 = this.mCreatedMenus.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList<BackStackRecord> arrayList4 = this.mBackStack;
        if (arrayList4 != null && (size3 = arrayList4.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i5 = 0; i5 < size3; i5++) {
                BackStackRecord backStackRecord = this.mBackStack.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            ArrayList<BackStackRecord> arrayList5 = this.mBackStackIndices;
            if (arrayList5 != null && (size2 = arrayList5.size()) > 0) {
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
            ArrayList<Integer> arrayList6 = this.mAvailBackStackIndices;
            if (arrayList6 != null && arrayList6.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        ArrayList<Runnable> arrayList7 = this.mPendingActions;
        if (arrayList7 != null && (size = arrayList7.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i7 = 0; i7 < size; i7++) {
                Object obj2 = (Runnable) this.mPendingActions.get(i7);
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
        printWriter.print("  mActivity=");
        printWriter.println(this.mActivity);
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
        ArrayList<Integer> arrayList8 = this.mAvailIndices;
        if (arrayList8 == null || arrayList8.size() <= 0) {
            return;
        }
        printWriter.print(str);
        printWriter.print("  mAvailIndices: ");
        printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
    }

    public void enqueueAction(Runnable runnable, boolean z2) {
        if (!z2) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mActivity == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList<>();
            }
            this.mPendingActions.add(runnable);
            if (this.mPendingActions.size() == 1) {
                this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
                this.mActivity.mHandler.post(this.mExecCommit);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
    
        r6.mExecutingActions = true;
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r3 >= r2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        r6.mTmpActions[r3].run();
        r6.mTmpActions[r3] = null;
        r3 = r3 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean execPendingActions() {
        /*
            r6 = this;
            boolean r0 = r6.mExecutingActions
            if (r0 != 0) goto L98
            android.os.Looper r0 = android.os.Looper.myLooper()
            android.app.Activity r1 = r6.mActivity
            android.os.Handler r1 = r1.mHandler
            android.os.Looper r1 = r1.getLooper()
            if (r0 != r1) goto L90
            r0 = 1
            r1 = 0
            r2 = r1
        L15:
            monitor-enter(r6)
            java.util.ArrayList<java.lang.Runnable> r3 = r6.mPendingActions     // Catch: java.lang.Throwable -> L8d
            if (r3 == 0) goto L60
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L8d
            if (r3 != 0) goto L21
            goto L60
        L21:
            java.util.ArrayList<java.lang.Runnable> r2 = r6.mPendingActions     // Catch: java.lang.Throwable -> L8d
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L8d
            java.lang.Runnable[] r3 = r6.mTmpActions     // Catch: java.lang.Throwable -> L8d
            if (r3 == 0) goto L2e
            int r3 = r3.length     // Catch: java.lang.Throwable -> L8d
            if (r3 >= r2) goto L32
        L2e:
            java.lang.Runnable[] r3 = new java.lang.Runnable[r2]     // Catch: java.lang.Throwable -> L8d
            r6.mTmpActions = r3     // Catch: java.lang.Throwable -> L8d
        L32:
            java.util.ArrayList<java.lang.Runnable> r3 = r6.mPendingActions     // Catch: java.lang.Throwable -> L8d
            java.lang.Runnable[] r4 = r6.mTmpActions     // Catch: java.lang.Throwable -> L8d
            r3.toArray(r4)     // Catch: java.lang.Throwable -> L8d
            java.util.ArrayList<java.lang.Runnable> r3 = r6.mPendingActions     // Catch: java.lang.Throwable -> L8d
            r3.clear()     // Catch: java.lang.Throwable -> L8d
            android.app.Activity r3 = r6.mActivity     // Catch: java.lang.Throwable -> L8d
            android.os.Handler r3 = r3.mHandler     // Catch: java.lang.Throwable -> L8d
            java.lang.Runnable r4 = r6.mExecCommit     // Catch: java.lang.Throwable -> L8d
            r3.removeCallbacks(r4)     // Catch: java.lang.Throwable -> L8d
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L8d
            r6.mExecutingActions = r0
            r3 = r1
        L4b:
            if (r3 >= r2) goto L5c
            java.lang.Runnable[] r4 = r6.mTmpActions
            r4 = r4[r3]
            r4.run()
            java.lang.Runnable[] r4 = r6.mTmpActions
            r5 = 0
            r4[r3] = r5
            int r3 = r3 + 1
            goto L4b
        L5c:
            r6.mExecutingActions = r1
            r2 = r0
            goto L15
        L60:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L8d
            boolean r0 = r6.mHavePendingDeferredStart
            if (r0 == 0) goto L8c
            r0 = r1
            r3 = r0
        L67:
            java.util.ArrayList<android.app.Fragment> r4 = r6.mActive
            int r4 = r4.size()
            if (r0 >= r4) goto L85
            java.util.ArrayList<android.app.Fragment> r4 = r6.mActive
            java.lang.Object r4 = r4.get(r0)
            android.app.Fragment r4 = (android.app.Fragment) r4
            if (r4 == 0) goto L82
            android.app.LoaderManagerImpl r4 = r4.mLoaderManager
            if (r4 == 0) goto L82
            boolean r4 = r4.hasRunningLoaders()
            r3 = r3 | r4
        L82:
            int r0 = r0 + 1
            goto L67
        L85:
            if (r3 != 0) goto L8c
            r6.mHavePendingDeferredStart = r1
            r6.startPendingDeferredFragments()
        L8c:
            return r2
        L8d:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L8d
            throw r0
        L90:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Must be called from main thread of process"
            r0.<init>(r1)
            throw r0
        L98:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Recursive entry to executePendingTransactions"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.FragmentManagerImpl.execPendingActions():boolean");
    }

    @Override // android.app.FragmentManager
    public boolean executePendingTransactions() {
        return execPendingActions();
    }

    @Override // android.app.FragmentManager
    public Fragment findFragmentById(int i2) {
        ArrayList<Fragment> arrayList = this.mAdded;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && fragment.mFragmentId == i2) {
                    return fragment;
                }
            }
        }
        ArrayList<Fragment> arrayList2 = this.mActive;
        if (arrayList2 == null) {
            return null;
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            Fragment fragment2 = this.mActive.get(size2);
            if (fragment2 != null && fragment2.mFragmentId == i2) {
                return fragment2;
            }
        }
        return null;
    }

    @Override // android.app.FragmentManager
    public Fragment findFragmentByTag(String str) {
        ArrayList<Fragment> arrayList = this.mAdded;
        if (arrayList != null && str != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        ArrayList<Fragment> arrayList2 = this.mActive;
        if (arrayList2 == null || str == null) {
            return null;
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            Fragment fragment2 = this.mActive.get(size2);
            if (fragment2 != null && str.equals(fragment2.mTag)) {
                return fragment2;
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        Fragment fragmentFindFragmentByWho;
        ArrayList<Fragment> arrayList = this.mActive;
        if (arrayList == null || str == null) {
            return null;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mActive.get(size);
            if (fragment != null && (fragmentFindFragmentByWho = fragment.findFragmentByWho(str)) != null) {
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
                Log.v("FragmentManager", "Freeing back stack index " + i2);
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
        if (i2 >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i2));
        }
        Fragment fragment = this.mActive.get(i2);
        if (fragment == null) {
            throwException(new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i2));
        }
        return fragment;
    }

    public void hideFragment(final Fragment fragment, int i2, int i3) {
        if (DEBUG) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        if (fragment.mView != null) {
            Animator animatorLoadAnimator = loadAnimator(fragment, i2, false, i3);
            if (animatorLoadAnimator != null) {
                animatorLoadAnimator.setTarget(fragment.mView);
                animatorLoadAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.app.FragmentManagerImpl.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        View view = fragment.mView;
                        if (view != null) {
                            view.setVisibility(8);
                        }
                    }
                });
                animatorLoadAnimator.start();
            } else {
                fragment.mView.setVisibility(8);
            }
        }
        if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        fragment.onHiddenChanged(true);
    }

    @Override // android.app.FragmentManager
    public void invalidateOptionsMenu() {
        Activity activity = this.mActivity;
        if (activity == null || this.mCurState != 5) {
            this.mNeedMenuInvalidate = true;
        } else {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // android.app.FragmentManager
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public Animator loadAnimator(Fragment fragment, int i2, boolean z2, int i3) {
        int iTransitToStyleIndex;
        Animator animatorLoadAnimator;
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(i2, z2, fragment.mNextAnim);
        if (animatorOnCreateAnimator != null) {
            return animatorOnCreateAnimator;
        }
        int i4 = fragment.mNextAnim;
        if (i4 != 0 && (animatorLoadAnimator = AnimatorInflater.loadAnimator(this.mActivity, i4)) != null) {
            return animatorLoadAnimator;
        }
        if (i2 == 0 || (iTransitToStyleIndex = transitToStyleIndex(i2, z2)) < 0) {
            return null;
        }
        if (i3 == 0 && this.mActivity.getWindow() != null) {
            i3 = this.mActivity.getWindow().getAttributes().windowAnimations;
        }
        if (i3 == 0) {
            return null;
        }
        TypedArray typedArrayObtainStyledAttributes = this.mActivity.obtainStyledAttributes(i3, a.FragmentAnimation);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(iTransitToStyleIndex, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId == 0) {
            return null;
        }
        return AnimatorInflater.loadAnimator(this.mActivity, resourceId);
    }

    public void makeActive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            return;
        }
        ArrayList<Integer> arrayList = this.mAvailIndices;
        if (arrayList == null || arrayList.size() <= 0) {
            if (this.mActive == null) {
                this.mActive = new ArrayList<>();
            }
            fragment.setIndex(this.mActive.size(), this.mParent);
            this.mActive.add(fragment);
        } else {
            ArrayList<Integer> arrayList2 = this.mAvailIndices;
            fragment.setIndex(arrayList2.remove(arrayList2.size() - 1).intValue(), this.mParent);
            this.mActive.set(fragment.mIndex, fragment);
        }
        if (DEBUG) {
            Log.v("FragmentManager", "Allocated fragment index " + fragment);
        }
    }

    public void makeInactive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            return;
        }
        if (DEBUG) {
            Log.v("FragmentManager", "Freeing fragment index " + fragment);
        }
        this.mActive.set(fragment.mIndex, null);
        if (this.mAvailIndices == null) {
            this.mAvailIndices = new ArrayList<>();
        }
        this.mAvailIndices.add(Integer.valueOf(fragment.mIndex));
        this.mActivity.invalidateFragment(fragment.mWho);
        fragment.initState();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:105:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:109:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:112:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:114:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:118:0x020a  */
    /* JADX WARN: Code duplicated, block: B:120:0x020e  */
    /* JADX WARN: Code duplicated, block: B:171:0x0307  */
    /* JADX WARN: Code duplicated, block: B:178:0x0318  */
    /* JADX WARN: Code duplicated, block: B:179:0x031b  */
    /* JADX WARN: Code duplicated, block: B:181:0x031f  */
    /* JADX WARN: Code duplicated, block: B:184:0x0337  */
    /* JADX WARN: Code duplicated, block: B:187:0x0343  */
    /* JADX WARN: Code duplicated, block: B:188:0x0345  */
    /* JADX WARN: Code duplicated, block: B:190:0x0349  */
    /* JADX WARN: Code duplicated, block: B:191:0x034d  */
    /* JADX WARN: Code duplicated, block: B:192:0x0354  */
    /* JADX WARN: Code duplicated, block: B:82:0x0136  */
    /* JADX WARN: Code duplicated, block: B:84:0x013a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0152  */
    /* JADX WARN: Code duplicated, block: B:89:0x0156  */
    /* JADX WARN: Code duplicated, block: B:94:0x019f  */
    /* JADX WARN: Code duplicated, block: B:97:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:99:0x01b7  */
    /* JADX WARN: Instruction removed from duplicated block: B:114:0x01f0, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:120:0x020e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:181:0x031f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:192:0x0354, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:84:0x013a, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0, types: [android.app.Fragment, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v6, types: [android.os.Bundle, android.util.SparseArray<android.os.Parcelable>] */
    /* JADX WARN: Type inference failed for: r5v8 */
    public void moveToState(final Fragment fragment, int i2, int i3, int i4, boolean z2) {
        int i5;
        Animator animator;
        int i6;
        String str;
        boolean z3;
        Bundle bundle;
        int i7;
        ?? r3;
        View viewPerformCreateView;
        Animator animatorLoadAnimator;
        ViewGroup viewGroup;
        int i8;
        ?? r5;
        int i9;
        boolean z4 = DEBUG;
        int i10 = 1;
        if (!fragment.mAdded || fragment.mDetached) {
            i5 = i2;
            if (i5 > 1) {
                i5 = 1;
            }
        } else {
            i5 = i2;
        }
        if (fragment.mRemoving && i5 > (i9 = fragment.mState)) {
            i5 = i9;
        }
        int i11 = (!fragment.mDeferStart || fragment.mState >= 4 || i5 <= 3) ? i5 : 3;
        int i12 = fragment.mState;
        if (i12 >= i11) {
            if (i12 > i11) {
                if (i12 != 1) {
                    if (i12 != 2 && i12 != 3) {
                        if (i12 == 4) {
                            i6 = 4;
                        } else if (i12 == 5) {
                            if (i11 < 5) {
                                if (z4) {
                                    Log.v("FragmentManager", "movefrom RESUMED: " + ((Object) fragment));
                                }
                                fragment.performPause();
                                fragment.mResumed = false;
                            }
                            i6 = 4;
                        }
                        if (i11 < i6) {
                            if (DEBUG) {
                                Log.v("FragmentManager", "movefrom STARTED: " + ((Object) fragment));
                            }
                            fragment.performStop();
                        }
                    }
                    if (i11 < 2) {
                        if (DEBUG) {
                            Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + ((Object) fragment));
                        }
                        if (fragment.mView != null && !this.mActivity.isFinishing() && fragment.mSavedViewState == null) {
                            saveFragmentViewState(fragment);
                        }
                        fragment.performDestroyView();
                        if (fragment.mView != null && fragment.mContainer != null) {
                            Animator animatorLoadAnimator2 = (this.mCurState <= 0 || this.mDestroyed) ? null : loadAnimator(fragment, i3, false, i4);
                            if (animatorLoadAnimator2 != null) {
                                final ViewGroup viewGroup2 = fragment.mContainer;
                                final View view = fragment.mView;
                                viewGroup2.startViewTransition(view);
                                fragment.mAnimatingAway = animatorLoadAnimator2;
                                fragment.mStateAfterAnimating = i11;
                                animatorLoadAnimator2.addListener(new AnimatorListenerAdapter() { // from class: android.app.FragmentManagerImpl.5
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator2) {
                                        viewGroup2.endViewTransition(view);
                                        Fragment fragment2 = fragment;
                                        if (fragment2.mAnimatingAway != null) {
                                            fragment2.mAnimatingAway = null;
                                            FragmentManagerImpl.this.moveToState(fragment2, fragment2.mStateAfterAnimating, 0, 0, false);
                                        }
                                    }
                                });
                                animatorLoadAnimator2.setTarget(fragment.mView);
                                animatorLoadAnimator2.start();
                            }
                            fragment.mContainer.removeView(fragment.mView);
                        }
                        fragment.mContainer = null;
                        fragment.mView = null;
                    }
                    if (i11 >= 1) {
                        if (this.mDestroyed) {
                            fragment.mAnimatingAway = null;
                            animator.cancel();
                        }
                        if (fragment.mAnimatingAway != null) {
                            fragment.mStateAfterAnimating = i11;
                        } else {
                            if (DEBUG) {
                                Log.v("FragmentManager", "movefrom CREATED: " + ((Object) fragment));
                            }
                            if (!fragment.mRetaining) {
                                fragment.performDestroy();
                            }
                            fragment.mCalled = false;
                            fragment.onDetach();
                            if (fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + ((Object) fragment) + " did not call through to super.onDetach()");
                            }
                            if (!z2) {
                                if (fragment.mRetaining) {
                                    fragment.mActivity = null;
                                    fragment.mParentFragment = null;
                                    fragment.mFragmentManager = null;
                                } else {
                                    makeInactive(fragment);
                                }
                            }
                        }
                    }
                } else if (i11 >= 1) {
                    if (this.mDestroyed && (animator = fragment.mAnimatingAway) != null) {
                        fragment.mAnimatingAway = null;
                        animator.cancel();
                    }
                    if (fragment.mAnimatingAway != null) {
                        fragment.mStateAfterAnimating = i11;
                    } else {
                        if (DEBUG) {
                            Log.v("FragmentManager", "movefrom CREATED: " + ((Object) fragment));
                        }
                        if (!fragment.mRetaining) {
                            fragment.performDestroy();
                        }
                        fragment.mCalled = false;
                        fragment.onDetach();
                        if (fragment.mCalled) {
                            throw new SuperNotCalledException("Fragment " + ((Object) fragment) + " did not call through to super.onDetach()");
                        }
                        if (!z2) {
                            if (fragment.mRetaining) {
                                makeInactive(fragment);
                            } else {
                                fragment.mActivity = null;
                                fragment.mParentFragment = null;
                                fragment.mFragmentManager = null;
                            }
                        }
                    }
                }
            }
            fragment.mState = i10;
        }
        if (fragment.mFromLayout && !fragment.mInLayout) {
            return;
        }
        if (fragment.mAnimatingAway != null) {
            fragment.mAnimatingAway = null;
            moveToState(fragment, fragment.mStateAfterAnimating, 0, 0, true);
        }
        int i13 = fragment.mState;
        if (i13 == 0) {
            if (DEBUG) {
                str = r4;
                Log.v(str, "moveto CREATED: " + ((Object) fragment));
            } else {
                str = r4;
            }
            Bundle bundle2 = fragment.mSavedFragmentState;
            if (bundle2 != null) {
                fragment.mSavedViewState = bundle2.getSparseParcelableArray(VIEW_STATE_TAG);
                Fragment fragment2 = getFragment(fragment.mSavedFragmentState, TARGET_STATE_TAG);
                fragment.mTarget = fragment2;
                if (fragment2 != null) {
                    z3 = false;
                    fragment.mTargetRequestCode = fragment.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
                } else {
                    z3 = false;
                }
                boolean z5 = fragment.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
                fragment.mUserVisibleHint = z5;
                if (!z5) {
                    fragment.mDeferStart = true;
                    if (i11 > 3) {
                        i11 = 3;
                    }
                }
            } else {
                z3 = false;
            }
            Activity activity = this.mActivity;
            fragment.mActivity = activity;
            Fragment fragment3 = this.mParent;
            fragment.mParentFragment = fragment3;
            fragment.mFragmentManager = fragment3 != null ? fragment3.mChildFragmentManager : activity.mFragments;
            fragment.mCalled = z3;
            fragment.onAttach(activity);
            if (!fragment.mCalled) {
                throw new SuperNotCalledException("Fragment " + ((Object) fragment) + " did not call through to super.onAttach()");
            }
            if (fragment.mParentFragment == null) {
                this.mActivity.onAttachFragment(fragment);
            }
            if (!fragment.mRetaining) {
                fragment.performCreate(fragment.mSavedFragmentState);
            }
            fragment.mRetaining = z3;
            if (fragment.mFromLayout) {
                bundle = null;
                bundle = null;
                View viewPerformCreateView2 = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
                fragment.mView = viewPerformCreateView2;
                if (viewPerformCreateView2 != null) {
                    viewPerformCreateView2.setSaveFromParentEnabled(z3);
                    if (fragment.mHidden) {
                        fragment.mView.setVisibility(8);
                    }
                    fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                }
            }
            if (i11 > 1) {
                if (DEBUG) {
                    Log.v(str, "moveto ACTIVITY_CREATED: " + ((Object) fragment));
                }
                if (!fragment.mFromLayout) {
                    i7 = fragment.mContainerId;
                    if (i7 != 0) {
                        viewGroup = (ViewGroup) this.mContainer.findViewById(i7);
                        if (viewGroup == null && !fragment.mRestored) {
                            r3 = viewGroup;
                            r3 = viewGroup;
                            throwException(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + fragment.getResources().getResourceName(fragment.mContainerId) + ") for fragment " + ((Object) fragment)));
                            r3 = viewGroup;
                        }
                    } else {
                        r3 = bundle;
                    }
                    r3 = viewGroup;
                    r3 = viewGroup;
                    r3 = viewGroup;
                    fragment.mContainer = r3;
                    viewPerformCreateView = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), r3, fragment.mSavedFragmentState);
                    fragment.mView = viewPerformCreateView;
                    if (viewPerformCreateView != null) {
                        viewPerformCreateView.setSaveFromParentEnabled(z3);
                        if (r3 != 0) {
                            animatorLoadAnimator = loadAnimator(fragment, i3, true, i4);
                            if (animatorLoadAnimator != null) {
                                animatorLoadAnimator.setTarget(fragment.mView);
                                animatorLoadAnimator.start();
                            }
                            r3.addView(fragment.mView);
                        }
                        if (fragment.mHidden) {
                            fragment.mView.setVisibility(8);
                        }
                        fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                    }
                }
                fragment.performActivityCreated(fragment.mSavedFragmentState);
                if (fragment.mView != null) {
                    fragment.restoreViewState(fragment.mSavedFragmentState);
                }
                fragment.mSavedFragmentState = bundle;
            }
            if (i11 > 3) {
                if (DEBUG) {
                    Log.v(str, "moveto STARTED: " + ((Object) fragment));
                }
                fragment.performStart();
            }
            i8 = 4;
            r5 = bundle;
            if (i11 > i8) {
                if (DEBUG) {
                    Log.v(str, "moveto RESUMED: " + ((Object) fragment));
                }
                fragment.mResumed = true;
                fragment.performResume();
                fragment.mSavedFragmentState = r5;
                fragment.mSavedViewState = r5;
            }
        } else if (i13 == 1) {
            str = r4;
            z3 = false;
        } else if (i13 == 2 || i13 == 3) {
            str = r4;
            bundle = null;
            if (i11 > 3) {
                if (DEBUG) {
                    Log.v(str, "moveto STARTED: " + ((Object) fragment));
                }
                fragment.performStart();
            }
            i8 = 4;
            r5 = bundle;
            if (i11 > i8) {
                if (DEBUG) {
                    Log.v(str, "moveto RESUMED: " + ((Object) fragment));
                }
                fragment.mResumed = true;
                fragment.performResume();
                fragment.mSavedFragmentState = r5;
                fragment.mSavedViewState = r5;
            }
        } else if (i13 == 4) {
            i8 = 4;
            str = "FragmentManager";
            r5 = 0;
            if (i11 > i8) {
                if (DEBUG) {
                    Log.v(str, "moveto RESUMED: " + ((Object) fragment));
                }
                fragment.mResumed = true;
                fragment.performResume();
                fragment.mSavedFragmentState = r5;
                fragment.mSavedViewState = r5;
            }
        }
        bundle = null;
        if (i11 > 1) {
            if (DEBUG) {
                Log.v(str, "moveto ACTIVITY_CREATED: " + ((Object) fragment));
            }
            if (!fragment.mFromLayout) {
                i7 = fragment.mContainerId;
                if (i7 != 0) {
                    viewGroup = (ViewGroup) this.mContainer.findViewById(i7);
                    if (viewGroup == null) {
                        r3 = viewGroup;
                        r3 = viewGroup;
                        throwException(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + fragment.getResources().getResourceName(fragment.mContainerId) + ") for fragment " + ((Object) fragment)));
                        r3 = viewGroup;
                    }
                } else {
                    r3 = bundle;
                }
                r3 = viewGroup;
                r3 = viewGroup;
                r3 = viewGroup;
                fragment.mContainer = r3;
                viewPerformCreateView = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), r3, fragment.mSavedFragmentState);
                fragment.mView = viewPerformCreateView;
                if (viewPerformCreateView != null) {
                    viewPerformCreateView.setSaveFromParentEnabled(z3);
                    if (r3 != 0) {
                        animatorLoadAnimator = loadAnimator(fragment, i3, true, i4);
                        if (animatorLoadAnimator != null) {
                            animatorLoadAnimator.setTarget(fragment.mView);
                            animatorLoadAnimator.start();
                        }
                        r3.addView(fragment.mView);
                    }
                    if (fragment.mHidden) {
                        fragment.mView.setVisibility(8);
                    }
                    fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                }
            }
            fragment.performActivityCreated(fragment.mSavedFragmentState);
            if (fragment.mView != null) {
                fragment.restoreViewState(fragment.mSavedFragmentState);
            }
            fragment.mSavedFragmentState = bundle;
        }
        if (i11 > 3) {
            if (DEBUG) {
                Log.v(str, "moveto STARTED: " + ((Object) fragment));
            }
            fragment.performStart();
        }
        i8 = 4;
        r5 = bundle;
        if (i11 > i8) {
            if (DEBUG) {
                Log.v(str, "moveto RESUMED: " + ((Object) fragment));
            }
            fragment.mResumed = true;
            fragment.performResume();
            fragment.mSavedFragmentState = r5;
            fragment.mSavedViewState = r5;
        }
        i10 = i11;
        fragment.mState = i10;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
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
        enqueueAction(new Runnable() { // from class: android.app.FragmentManagerImpl.2
            @Override // java.lang.Runnable
            public void run() {
                FragmentManagerImpl fragmentManagerImpl = FragmentManagerImpl.this;
                fragmentManagerImpl.popBackStackState(fragmentManagerImpl.mActivity.mHandler, null, -1, 0);
            }
        }, false);
    }

    @Override // android.app.FragmentManager
    public boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, null, -1, 0);
    }

    public boolean popBackStackState(Handler handler, String str, int i2, int i3) {
        int size;
        ArrayList<BackStackRecord> arrayList = this.mBackStack;
        if (arrayList == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size2 = arrayList.size() - 1;
            if (size2 < 0) {
                return false;
            }
            this.mBackStack.remove(size2).popFromBackStack(true);
            reportBackStackChanged();
        } else {
            if (str != null || i2 >= 0) {
                size = arrayList.size() - 1;
                while (size >= 0) {
                    BackStackRecord backStackRecord = this.mBackStack.get(size);
                    if ((str != null && str.equals(backStackRecord.getName())) || (i2 >= 0 && i2 == backStackRecord.mIndex)) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        BackStackRecord backStackRecord2 = this.mBackStack.get(size);
                        if (str == null || !str.equals(backStackRecord2.getName())) {
                            if (i2 < 0 || i2 != backStackRecord2.mIndex) {
                                break;
                            }
                        }
                    }
                }
            } else {
                size = -1;
            }
            if (size == this.mBackStack.size() - 1) {
                return false;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int size3 = this.mBackStack.size() - 1; size3 > size; size3--) {
                arrayList2.add(this.mBackStack.remove(size3));
            }
            int size4 = arrayList2.size() - 1;
            int i4 = 0;
            while (i4 <= size4) {
                if (DEBUG) {
                    Log.v("FragmentManager", "Popping back stack state: " + arrayList2.get(i4));
                }
                ((BackStackRecord) arrayList2.get(i4)).popFromBackStack(i4 == size4);
                i4++;
            }
            reportBackStackChanged();
        }
        return true;
    }

    @Override // android.app.FragmentManager
    public void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    public void removeFragment(Fragment fragment, int i2, int i3) {
        if (DEBUG) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        int i4 = !fragment.isInBackStack() ? 1 : 0;
        if (fragment.mDetached && i4 == 0) {
            return;
        }
        ArrayList<Fragment> arrayList = this.mAdded;
        if (arrayList != null) {
            arrayList.remove(fragment);
        }
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        fragment.mAdded = false;
        fragment.mRemoving = true;
        moveToState(fragment, i4 ^ 1, i2, i3, false);
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

    public void restoreAllState(Parcelable parcelable, ArrayList<Fragment> arrayList) {
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.mActive == null) {
            return;
        }
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Fragment fragment = arrayList.get(i2);
                if (DEBUG) {
                    Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                }
                FragmentState fragmentState = fragmentManagerState.mActive[fragment.mIndex];
                fragmentState.mInstance = fragment;
                fragment.mSavedViewState = null;
                fragment.mBackStackNesting = 0;
                fragment.mInLayout = false;
                fragment.mAdded = false;
                fragment.mTarget = null;
                Bundle bundle = fragmentState.mSavedFragmentState;
                if (bundle != null) {
                    bundle.setClassLoader(this.mActivity.getClassLoader());
                    fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                }
            }
        }
        this.mActive = new ArrayList<>(fragmentManagerState.mActive.length);
        ArrayList<Integer> arrayList2 = this.mAvailIndices;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        int i3 = 0;
        while (true) {
            FragmentState[] fragmentStateArr = fragmentManagerState.mActive;
            if (i3 >= fragmentStateArr.length) {
                break;
            }
            FragmentState fragmentState2 = fragmentStateArr[i3];
            if (fragmentState2 != null) {
                Fragment fragmentInstantiate = fragmentState2.instantiate(this.mActivity, this.mParent);
                if (DEBUG) {
                    Log.v("FragmentManager", "restoreAllState: active #" + i3 + ": " + fragmentInstantiate);
                }
                this.mActive.add(fragmentInstantiate);
                fragmentState2.mInstance = null;
            } else {
                this.mActive.add(null);
                if (this.mAvailIndices == null) {
                    this.mAvailIndices = new ArrayList<>();
                }
                if (DEBUG) {
                    Log.v("FragmentManager", "restoreAllState: avail #" + i3);
                }
                this.mAvailIndices.add(Integer.valueOf(i3));
            }
            i3++;
        }
        if (arrayList != null) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                Fragment fragment2 = arrayList.get(i4);
                int i5 = fragment2.mTargetIndex;
                if (i5 >= 0) {
                    if (i5 < this.mActive.size()) {
                        fragment2.mTarget = this.mActive.get(fragment2.mTargetIndex);
                    } else {
                        Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                        fragment2.mTarget = null;
                    }
                }
            }
        }
        if (fragmentManagerState.mAdded != null) {
            this.mAdded = new ArrayList<>(fragmentManagerState.mAdded.length);
            int i6 = 0;
            while (true) {
                int[] iArr = fragmentManagerState.mAdded;
                if (i6 >= iArr.length) {
                    break;
                }
                Fragment fragment3 = this.mActive.get(iArr[i6]);
                if (fragment3 == null) {
                    throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i6]));
                }
                fragment3.mAdded = true;
                if (DEBUG) {
                    Log.v("FragmentManager", "restoreAllState: added #" + i6 + ": " + fragment3);
                }
                if (this.mAdded.contains(fragment3)) {
                    throw new IllegalStateException("Already added!");
                }
                this.mAdded.add(fragment3);
                i6++;
            }
        } else {
            this.mAdded = null;
        }
        if (fragmentManagerState.mBackStack == null) {
            this.mBackStack = null;
            return;
        }
        this.mBackStack = new ArrayList<>(fragmentManagerState.mBackStack.length);
        int i7 = 0;
        while (true) {
            BackStackState[] backStackStateArr = fragmentManagerState.mBackStack;
            if (i7 >= backStackStateArr.length) {
                return;
            }
            BackStackRecord backStackRecordInstantiate = backStackStateArr[i7].instantiate(this);
            if (DEBUG) {
                Log.v("FragmentManager", "restoreAllState: back stack #" + i7 + " (index " + backStackRecordInstantiate.mIndex + "): " + backStackRecordInstantiate);
                e eVar = new e((Writer) new LogWriter(2, "FragmentManager"), false, 1024);
                backStackRecordInstantiate.dump("  ", eVar, false);
                eVar.flush();
            }
            this.mBackStack.add(backStackRecordInstantiate);
            int i8 = backStackRecordInstantiate.mIndex;
            if (i8 >= 0) {
                setBackStackIndex(i8, backStackRecordInstantiate);
            }
            i7++;
        }
    }

    public ArrayList<Fragment> retainNonConfig() {
        ArrayList<Fragment> arrayList = null;
        if (this.mActive != null) {
            for (int i2 = 0; i2 < this.mActive.size(); i2++) {
                Fragment fragment = this.mActive.get(i2);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    Fragment fragment2 = fragment.mTarget;
                    fragment.mTargetIndex = fragment2 != null ? fragment2.mIndex : -1;
                    if (DEBUG) {
                        Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                    }
                }
            }
        }
        return arrayList;
    }

    public Parcelable saveAllState() {
        int[] iArr;
        int size;
        int size2;
        execPendingActions();
        this.mStateSaved = true;
        ArrayList<Fragment> arrayList = this.mActive;
        BackStackState[] backStackStateArr = null;
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        int size3 = this.mActive.size();
        FragmentState[] fragmentStateArr = new FragmentState[size3];
        boolean z2 = false;
        for (int i2 = 0; i2 < size3; i2++) {
            Fragment fragment = this.mActive.get(i2);
            if (fragment != null) {
                if (fragment.mIndex < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i2] = fragmentState;
                if (fragment.mState <= 0 || fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState = fragment.mSavedFragmentState;
                } else {
                    fragmentState.mSavedFragmentState = saveFragmentBasicState(fragment);
                    Fragment fragment2 = fragment.mTarget;
                    if (fragment2 != null) {
                        if (fragment2.mIndex < 0) {
                            throwException(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget));
                        }
                        if (fragmentState.mSavedFragmentState == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fragmentState.mSavedFragmentState, TARGET_STATE_TAG, fragment.mTarget);
                        int i3 = fragment.mTargetRequestCode;
                        if (i3 != 0) {
                            fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, i3);
                        }
                    }
                }
                if (DEBUG) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.mSavedFragmentState);
                }
                z2 = true;
            }
        }
        if (!z2) {
            if (DEBUG) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        ArrayList<Fragment> arrayList2 = this.mAdded;
        if (arrayList2 == null || (size2 = arrayList2.size()) <= 0) {
            iArr = null;
        } else {
            iArr = new int[size2];
            for (int i4 = 0; i4 < size2; i4++) {
                iArr[i4] = this.mAdded.get(i4).mIndex;
                if (iArr[i4] < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + this.mAdded.get(i4) + " has cleared index: " + iArr[i4]));
                }
                if (DEBUG) {
                    Log.v("FragmentManager", "saveAllState: adding fragment #" + i4 + ": " + this.mAdded.get(i4));
                }
            }
        }
        ArrayList<BackStackRecord> arrayList3 = this.mBackStack;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i5 = 0; i5 < size; i5++) {
                backStackStateArr[i5] = new BackStackState(this, this.mBackStack.get(i5));
                if (DEBUG) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i5 + ": " + this.mBackStack.get(i5));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = fragmentStateArr;
        fragmentManagerState.mAdded = iArr;
        fragmentManagerState.mBackStack = backStackStateArr;
        return fragmentManagerState;
    }

    public Bundle saveFragmentBasicState(Fragment fragment) {
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
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
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
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

    public void setBackStackIndex(int i2, BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int size = this.mBackStackIndices.size();
            if (i2 < size) {
                if (DEBUG) {
                    Log.v("FragmentManager", "Setting back stack index " + i2 + " to " + backStackRecord);
                }
                this.mBackStackIndices.set(i2, backStackRecord);
            } else {
                while (size < i2) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList<>();
                    }
                    if (DEBUG) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size++;
                }
                if (DEBUG) {
                    Log.v("FragmentManager", "Adding back stack index " + i2 + " with " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
        }
    }

    public void showFragment(Fragment fragment, int i2, int i3) {
        if (DEBUG) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animator animatorLoadAnimator = loadAnimator(fragment, i2, true, i3);
                if (animatorLoadAnimator != null) {
                    animatorLoadAnimator.setTarget(fragment.mView);
                    animatorLoadAnimator.start();
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    public void startPendingDeferredFragments() {
        if (this.mActive == null) {
            return;
        }
        for (int i2 = 0; i2 < this.mActive.size(); i2++) {
            Fragment fragment = this.mActive.get(i2);
            if (fragment != null) {
                performPendingDeferredStart(fragment);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.mParent;
        if (fragment != null) {
            DebugUtils.buildShortClassTag(fragment, sb);
        } else {
            DebugUtils.buildShortClassTag(this.mActivity, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.app.FragmentManager
    public void popBackStack(final String str, final int i2) {
        enqueueAction(new Runnable() { // from class: android.app.FragmentManagerImpl.3
            @Override // java.lang.Runnable
            public void run() {
                FragmentManagerImpl fragmentManagerImpl = FragmentManagerImpl.this;
                fragmentManagerImpl.popBackStackState(fragmentManagerImpl.mActivity.mHandler, str, -1, i2);
            }
        }, false);
    }

    @Override // android.app.FragmentManager
    public void popBackStack(final int i2, final int i3) {
        if (i2 >= 0) {
            enqueueAction(new Runnable() { // from class: android.app.FragmentManagerImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    FragmentManagerImpl fragmentManagerImpl = FragmentManagerImpl.this;
                    fragmentManagerImpl.popBackStackState(fragmentManagerImpl.mActivity.mHandler, null, i2, i3);
                }
            }, false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    @Override // android.app.FragmentManager
    public boolean popBackStackImmediate(String str, int i2) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, str, -1, i2);
    }

    @Override // android.app.FragmentManager
    public boolean popBackStackImmediate(int i2, int i3) {
        checkStateLoss();
        executePendingTransactions();
        if (i2 >= 0) {
            return popBackStackState(this.mActivity.mHandler, null, i2, i3);
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState, 0, 0, false);
    }

    public void moveToState(int i2, boolean z2) {
        moveToState(i2, 0, 0, z2);
    }

    public void moveToState(int i2, int i3, int i4, boolean z2) {
        Activity activity;
        if (this.mActivity == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z2 || this.mCurState != i2) {
            this.mCurState = i2;
            if (this.mActive != null) {
                boolean zHasRunningLoaders = false;
                for (int i5 = 0; i5 < this.mActive.size(); i5++) {
                    Fragment fragment = this.mActive.get(i5);
                    if (fragment != null) {
                        moveToState(fragment, i2, i3, i4, false);
                        LoaderManagerImpl loaderManagerImpl = fragment.mLoaderManager;
                        if (loaderManagerImpl != null) {
                            zHasRunningLoaders |= loaderManagerImpl.hasRunningLoaders();
                        }
                    }
                }
                if (!zHasRunningLoaders) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && (activity = this.mActivity) != null && this.mCurState == 5) {
                    activity.invalidateOptionsMenu();
                    this.mNeedMenuInvalidate = false;
                }
            }
        }
    }
}
