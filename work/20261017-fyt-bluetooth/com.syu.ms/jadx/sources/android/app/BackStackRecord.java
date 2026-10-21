package android.app;

import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import android.util.LogWriter;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import u.e;

/* JADX INFO: loaded from: classes.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, Runnable {
    public static final int OP_ADD = 1;
    public static final int OP_ATTACH = 7;
    public static final int OP_DETACH = 6;
    public static final int OP_HIDE = 4;
    public static final int OP_NULL = 0;
    public static final int OP_REMOVE = 3;
    public static final int OP_REPLACE = 2;
    public static final int OP_SHOW = 5;
    public static final String TAG = "FragmentManager";
    public boolean mAddToBackStack;
    public int mBreadCrumbShortTitleRes;
    public CharSequence mBreadCrumbShortTitleText;
    public int mBreadCrumbTitleRes;
    public CharSequence mBreadCrumbTitleText;
    public boolean mCommitted;
    public int mEnterAnim;
    public int mExitAnim;
    public Op mHead;
    public final FragmentManagerImpl mManager;
    public String mName;
    public int mNumOp;
    public int mPopEnterAnim;
    public int mPopExitAnim;
    public Op mTail;
    public int mTransition;
    public int mTransitionStyle;
    public boolean mAllowAddToBackStack = true;
    public int mIndex = -1;

    public static final class Op {
        public int cmd;
        public int enterAnim;
        public int exitAnim;
        public Fragment fragment;
        public Op next;
        public int popEnterAnim;
        public int popExitAnim;
        public Op prev;
        public ArrayList<Fragment> removed;
    }

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mManager = fragmentManagerImpl;
    }

    private void doAddOp(int i2, Fragment fragment, String str, int i3) {
        fragment.mFragmentManager = this.mManager;
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i2 != 0) {
            int i4 = fragment.mFragmentId;
            if (i4 != 0 && i4 != i2) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i2);
            }
            fragment.mFragmentId = i2;
            fragment.mContainerId = i2;
        }
        Op op = new Op();
        op.cmd = i3;
        op.fragment = fragment;
        addOp(op);
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction add(Fragment fragment, String str) {
        doAddOp(0, fragment, str, 1);
        return this;
    }

    public void addOp(Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        } else {
            Op op2 = this.mTail;
            op.prev = op2;
            op2.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        this.mNumOp++;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction addToBackStack(String str) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.mAddToBackStack = true;
        this.mName = str;
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction attach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 7;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public void bumpBackStackNesting(int i2) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i2);
            }
            for (Op op = this.mHead; op != null; op = op.next) {
                Fragment fragment = op.fragment;
                if (fragment != null) {
                    fragment.mBackStackNesting += i2;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v("FragmentManager", "Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting);
                    }
                }
                ArrayList<Fragment> arrayList = op.removed;
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment2 = op.removed.get(size);
                        fragment2.mBackStackNesting += i2;
                        if (FragmentManagerImpl.DEBUG) {
                            Log.v("FragmentManager", "Bump nesting of " + fragment2 + " to " + fragment2.mBackStackNesting);
                        }
                    }
                }
            }
        }
    }

    @Override // android.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    @Override // android.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    public int commitInternal(boolean z2) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "Commit: " + this);
            e eVar = new e((Writer) new LogWriter(2, "FragmentManager"), false, 1024);
            dump("  ", null, eVar, null);
            eVar.flush();
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex(this);
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z2);
        return this.mIndex;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction detach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 6;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dump(str, printWriter, true);
    }

    @Override // android.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbShortTitle() {
        int i2 = this.mBreadCrumbShortTitleRes;
        return i2 != 0 ? this.mManager.mActivity.getText(i2) : this.mBreadCrumbShortTitleText;
    }

    @Override // android.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override // android.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbTitle() {
        int i2 = this.mBreadCrumbTitleRes;
        return i2 != 0 ? this.mManager.mActivity.getText(i2) : this.mBreadCrumbTitleText;
    }

    @Override // android.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override // android.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    @Override // android.app.FragmentManager.BackStackEntry
    public String getName() {
        return this.mName;
    }

    public int getTransition() {
        return this.mTransition;
    }

    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction hide(Fragment fragment) {
        Op op = new Op();
        op.cmd = 4;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.app.FragmentTransaction
    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    @Override // android.app.FragmentTransaction
    public boolean isEmpty() {
        return this.mNumOp == 0;
    }

    public void popFromBackStack(boolean z2) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "popFromBackStack: " + this);
            e eVar = new e((Writer) new LogWriter(2, "FragmentManager"), false, 1024);
            dump("  ", null, eVar, null);
            eVar.flush();
        }
        bumpBackStackNesting(-1);
        for (Op op = this.mTail; op != null; op = op.prev) {
            switch (op.cmd) {
                case 1:
                    Fragment fragment = op.fragment;
                    fragment.mNextAnim = op.popExitAnim;
                    this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case 2:
                    Fragment fragment2 = op.fragment;
                    if (fragment2 != null) {
                        fragment2.mNextAnim = op.popExitAnim;
                        this.mManager.removeFragment(fragment2, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    }
                    if (op.removed != null) {
                        for (int i2 = 0; i2 < op.removed.size(); i2++) {
                            Fragment fragment3 = op.removed.get(i2);
                            fragment3.mNextAnim = op.popEnterAnim;
                            this.mManager.addFragment(fragment3, false);
                        }
                    }
                    break;
                case 3:
                    Fragment fragment4 = op.fragment;
                    fragment4.mNextAnim = op.popEnterAnim;
                    this.mManager.addFragment(fragment4, false);
                    break;
                case 4:
                    Fragment fragment5 = op.fragment;
                    fragment5.mNextAnim = op.popEnterAnim;
                    this.mManager.showFragment(fragment5, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case 5:
                    Fragment fragment6 = op.fragment;
                    fragment6.mNextAnim = op.popExitAnim;
                    this.mManager.hideFragment(fragment6, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case 6:
                    Fragment fragment7 = op.fragment;
                    fragment7.mNextAnim = op.popEnterAnim;
                    this.mManager.attachFragment(fragment7, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case 7:
                    Fragment fragment8 = op.fragment;
                    fragment8.mNextAnim = op.popExitAnim;
                    this.mManager.detachFragment(fragment8, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
            }
        }
        if (z2) {
            FragmentManagerImpl fragmentManagerImpl = this.mManager;
            fragmentManagerImpl.moveToState(fragmentManagerImpl.mCurState, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle, true);
        }
        int i3 = this.mIndex;
        if (i3 >= 0) {
            this.mManager.freeBackStackIndex(i3);
            this.mIndex = -1;
        }
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction remove(Fragment fragment) {
        Op op = new Op();
        op.cmd = 3;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction replace(int i2, Fragment fragment) {
        return replace(i2, fragment, null);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (this.mAddToBackStack && this.mIndex < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        bumpBackStackNesting(1);
        for (Op op = this.mHead; op != null; op = op.next) {
            switch (op.cmd) {
                case 1:
                    Fragment fragment = op.fragment;
                    fragment.mNextAnim = op.enterAnim;
                    this.mManager.addFragment(fragment, false);
                    break;
                case 2:
                    Fragment fragment2 = op.fragment;
                    if (this.mManager.mAdded != null) {
                        for (int i2 = 0; i2 < this.mManager.mAdded.size(); i2++) {
                            Fragment fragment3 = this.mManager.mAdded.get(i2);
                            if (FragmentManagerImpl.DEBUG) {
                                Log.v("FragmentManager", "OP_REPLACE: adding=" + fragment2 + " old=" + fragment3);
                            }
                            if (fragment2 == null || fragment3.mContainerId == fragment2.mContainerId) {
                                if (fragment3 == fragment2) {
                                    fragment2 = null;
                                    op.fragment = null;
                                } else {
                                    if (op.removed == null) {
                                        op.removed = new ArrayList<>();
                                    }
                                    op.removed.add(fragment3);
                                    fragment3.mNextAnim = op.exitAnim;
                                    if (this.mAddToBackStack) {
                                        fragment3.mBackStackNesting++;
                                        if (FragmentManagerImpl.DEBUG) {
                                            Log.v("FragmentManager", "Bump nesting of " + fragment3 + " to " + fragment3.mBackStackNesting);
                                        }
                                    }
                                    this.mManager.removeFragment(fragment3, this.mTransition, this.mTransitionStyle);
                                }
                            }
                        }
                    }
                    if (fragment2 != null) {
                        fragment2.mNextAnim = op.enterAnim;
                        this.mManager.addFragment(fragment2, false);
                    }
                    break;
                case 3:
                    Fragment fragment4 = op.fragment;
                    fragment4.mNextAnim = op.exitAnim;
                    this.mManager.removeFragment(fragment4, this.mTransition, this.mTransitionStyle);
                    break;
                case 4:
                    Fragment fragment5 = op.fragment;
                    fragment5.mNextAnim = op.exitAnim;
                    this.mManager.hideFragment(fragment5, this.mTransition, this.mTransitionStyle);
                    break;
                case 5:
                    Fragment fragment6 = op.fragment;
                    fragment6.mNextAnim = op.enterAnim;
                    this.mManager.showFragment(fragment6, this.mTransition, this.mTransitionStyle);
                    break;
                case 6:
                    Fragment fragment7 = op.fragment;
                    fragment7.mNextAnim = op.exitAnim;
                    this.mManager.detachFragment(fragment7, this.mTransition, this.mTransitionStyle);
                    break;
                case 7:
                    Fragment fragment8 = op.fragment;
                    fragment8.mNextAnim = op.enterAnim;
                    this.mManager.attachFragment(fragment8, this.mTransition, this.mTransitionStyle);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
            }
        }
        FragmentManagerImpl fragmentManagerImpl = this.mManager;
        fragmentManagerImpl.moveToState(fragmentManagerImpl.mCurState, this.mTransition, this.mTransitionStyle, true);
        if (this.mAddToBackStack) {
            this.mManager.addBackStackState(this);
        }
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(int i2) {
        this.mBreadCrumbShortTitleRes = i2;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(int i2) {
        this.mBreadCrumbTitleRes = i2;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int i2, int i3) {
        return setCustomAnimations(i2, i3, 0, 0);
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setTransition(int i2) {
        this.mTransition = i2;
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setTransitionStyle(int i2) {
        this.mTransitionStyle = i2;
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction show(Fragment fragment) {
        Op op = new Op();
        op.cmd = 5;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction add(int i2, Fragment fragment) {
        doAddOp(i2, fragment, null, 1);
        return this;
    }

    public void dump(String str, PrintWriter printWriter, boolean z2) {
        String str2;
        if (z2) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str3 = str + "    ";
            Op op = this.mHead;
            int i2 = 0;
            while (op != null) {
                switch (op.cmd) {
                    case 0:
                        str2 = WifiEnterpriseConfig.EMPTY_VALUE;
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    default:
                        str2 = "cmd=" + op.cmd;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(op.fragment);
                if (z2) {
                    if (op.enterAnim != 0 || op.exitAnim != 0) {
                        printWriter.print(str3);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.enterAnim));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.exitAnim));
                    }
                    if (op.popEnterAnim != 0 || op.popExitAnim != 0) {
                        printWriter.print(str3);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.popEnterAnim));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.popExitAnim));
                    }
                }
                ArrayList<Fragment> arrayList = op.removed;
                if (arrayList != null && arrayList.size() > 0) {
                    for (int i3 = 0; i3 < op.removed.size(); i3++) {
                        printWriter.print(str3);
                        if (op.removed.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i3 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str3);
                            printWriter.print("  #");
                            printWriter.print(i3);
                            printWriter.print(": ");
                        }
                        printWriter.println(op.removed.get(i3));
                    }
                }
                op = op.next;
                i2++;
            }
        }
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction replace(int i2, Fragment fragment, String str) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        doAddOp(i2, fragment, str, 2);
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int i2, int i3, int i4, int i5) {
        this.mEnterAnim = i2;
        this.mExitAnim = i3;
        this.mPopEnterAnim = i4;
        this.mPopExitAnim = i5;
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction add(int i2, Fragment fragment, String str) {
        doAddOp(i2, fragment, str, 1);
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    @Override // android.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }
}
