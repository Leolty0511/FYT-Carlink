package android.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: android.app.BackStackState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int i2) {
            return new BackStackState[i2];
        }
    };
    public final int mBreadCrumbShortTitleRes;
    public final CharSequence mBreadCrumbShortTitleText;
    public final int mBreadCrumbTitleRes;
    public final CharSequence mBreadCrumbTitleText;
    public final int mIndex;
    public final String mName;
    public final int[] mOps;
    public final int mTransition;
    public final int mTransitionStyle;

    public BackStackState(FragmentManagerImpl fragmentManagerImpl, BackStackRecord backStackRecord) {
        int size = 0;
        for (BackStackRecord.Op op = backStackRecord.mHead; op != null; op = op.next) {
            ArrayList<Fragment> arrayList = op.removed;
            if (arrayList != null) {
                size += arrayList.size();
            }
        }
        this.mOps = new int[(backStackRecord.mNumOp * 7) + size];
        if (!backStackRecord.mAddToBackStack) {
            throw new IllegalStateException("Not on back stack");
        }
        int i2 = 0;
        for (BackStackRecord.Op op2 = backStackRecord.mHead; op2 != null; op2 = op2.next) {
            int[] iArr = this.mOps;
            int i3 = i2 + 1;
            iArr[i2] = op2.cmd;
            int i4 = i3 + 1;
            Fragment fragment = op2.fragment;
            iArr[i3] = fragment != null ? fragment.mIndex : -1;
            int i5 = i4 + 1;
            iArr[i4] = op2.enterAnim;
            int i6 = i5 + 1;
            iArr[i5] = op2.exitAnim;
            int i7 = i6 + 1;
            iArr[i6] = op2.popEnterAnim;
            int i8 = i7 + 1;
            iArr[i7] = op2.popExitAnim;
            ArrayList<Fragment> arrayList2 = op2.removed;
            if (arrayList2 != null) {
                int size2 = arrayList2.size();
                int i9 = i8 + 1;
                this.mOps[i8] = size2;
                int i10 = 0;
                while (i10 < size2) {
                    this.mOps[i9] = op2.removed.get(i10).mIndex;
                    i10++;
                    i9++;
                }
                i2 = i9;
            } else {
                iArr[i8] = 0;
                i2 = i8 + 1;
            }
        }
        this.mTransition = backStackRecord.mTransition;
        this.mTransitionStyle = backStackRecord.mTransitionStyle;
        this.mName = backStackRecord.mName;
        this.mIndex = backStackRecord.mIndex;
        this.mBreadCrumbTitleRes = backStackRecord.mBreadCrumbTitleRes;
        this.mBreadCrumbTitleText = backStackRecord.mBreadCrumbTitleText;
        this.mBreadCrumbShortTitleRes = backStackRecord.mBreadCrumbShortTitleRes;
        this.mBreadCrumbShortTitleText = backStackRecord.mBreadCrumbShortTitleText;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BackStackRecord instantiate(FragmentManagerImpl fragmentManagerImpl) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.mOps.length) {
            BackStackRecord.Op op = new BackStackRecord.Op();
            int i4 = i2 + 1;
            op.cmd = this.mOps[i2];
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i3 + " base fragment #" + this.mOps[i4]);
            }
            int i5 = i4 + 1;
            int i6 = this.mOps[i4];
            if (i6 >= 0) {
                op.fragment = fragmentManagerImpl.mActive.get(i6);
            } else {
                op.fragment = null;
            }
            int[] iArr = this.mOps;
            int i7 = i5 + 1;
            op.enterAnim = iArr[i5];
            int i8 = i7 + 1;
            op.exitAnim = iArr[i7];
            int i9 = i8 + 1;
            op.popEnterAnim = iArr[i8];
            int i10 = i9 + 1;
            op.popExitAnim = iArr[i9];
            int i11 = i10 + 1;
            int i12 = iArr[i10];
            if (i12 > 0) {
                op.removed = new ArrayList<>(i12);
                int i13 = 0;
                while (i13 < i12) {
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v("FragmentManager", "Instantiate " + backStackRecord + " set remove fragment #" + this.mOps[i11]);
                    }
                    op.removed.add(fragmentManagerImpl.mActive.get(this.mOps[i11]));
                    i13++;
                    i11++;
                }
            }
            i2 = i11;
            backStackRecord.addOp(op);
            i3++;
        }
        backStackRecord.mTransition = this.mTransition;
        backStackRecord.mTransitionStyle = this.mTransitionStyle;
        backStackRecord.mName = this.mName;
        backStackRecord.mIndex = this.mIndex;
        backStackRecord.mAddToBackStack = true;
        backStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
        backStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
        backStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
        backStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
        backStackRecord.bumpBackStackNesting(1);
        return backStackRecord;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.mOps);
        parcel.writeInt(this.mTransition);
        parcel.writeInt(this.mTransitionStyle);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
    }

    public BackStackState(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mTransitionStyle = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.mBreadCrumbTitleText = creator.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = creator.createFromParcel(parcel);
    }
}
