package com.android.internal.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class IconMenuView$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<IconMenuView$SavedState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1311a;

    public static class a implements Parcelable.Creator<IconMenuView$SavedState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public IconMenuView$SavedState createFromParcel(Parcel parcel) {
            return new IconMenuView$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public IconMenuView$SavedState[] newArray(int i2) {
            return new IconMenuView$SavedState[i2];
        }
    }

    public /* synthetic */ IconMenuView$SavedState(Parcel parcel, b bVar) {
        this(parcel);
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f1311a);
    }

    public IconMenuView$SavedState(Parcel parcel) {
        super(parcel);
        this.f1311a = parcel.readInt();
    }
}
