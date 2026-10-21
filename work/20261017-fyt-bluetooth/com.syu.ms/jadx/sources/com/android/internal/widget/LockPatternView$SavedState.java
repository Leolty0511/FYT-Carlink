package com.android.internal.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class LockPatternView$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<LockPatternView$SavedState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1480e;

    public static class a implements Parcelable.Creator<LockPatternView$SavedState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockPatternView$SavedState createFromParcel(Parcel parcel) {
            return new LockPatternView$SavedState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public LockPatternView$SavedState[] newArray(int i2) {
            return new LockPatternView$SavedState[i2];
        }
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f1476a);
        parcel.writeInt(this.f1477b);
        parcel.writeValue(Boolean.valueOf(this.f1478c));
        parcel.writeValue(Boolean.valueOf(this.f1479d));
        parcel.writeValue(Boolean.valueOf(this.f1480e));
    }

    public LockPatternView$SavedState(Parcel parcel) {
        super(parcel);
        this.f1476a = parcel.readString();
        this.f1477b = parcel.readInt();
        this.f1478c = ((Boolean) parcel.readValue(null)).booleanValue();
        this.f1479d = ((Boolean) parcel.readValue(null)).booleanValue();
        this.f1480e = ((Boolean) parcel.readValue(null)).booleanValue();
    }
}
