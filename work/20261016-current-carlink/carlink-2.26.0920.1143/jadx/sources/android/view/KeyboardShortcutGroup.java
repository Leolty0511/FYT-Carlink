package android.view;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyboardShortcutGroup implements Parcelable {
    public static final Parcelable.Creator<KeyboardShortcutGroup> CREATOR = new Parcelable.Creator<KeyboardShortcutGroup>() { // from class: android.view.KeyboardShortcutGroup.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyboardShortcutGroup createFromParcel(Parcel parcel) {
            return new KeyboardShortcutGroup(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyboardShortcutGroup[] newArray(int i2) {
            return new KeyboardShortcutGroup[i2];
        }
    };
    private final List<KeyboardShortcutInfo> mItems;
    private final CharSequence mLabel;
    private boolean mSystemGroup;

    public void addItem(KeyboardShortcutInfo keyboardShortcutInfo) {
        this.mItems.add(keyboardShortcutInfo);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<KeyboardShortcutInfo> getItems() {
        return this.mItems;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public boolean isSystemGroup() {
        return this.mSystemGroup;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeCharSequence(this.mLabel);
        parcel.writeTypedList(this.mItems);
        parcel.writeInt(this.mSystemGroup ? 1 : 0);
    }

    public KeyboardShortcutGroup(CharSequence charSequence, List<KeyboardShortcutInfo> list) {
        this.mLabel = charSequence;
        this.mItems = new ArrayList((Collection) Preconditions.checkNotNull(list));
    }

    public KeyboardShortcutGroup(CharSequence charSequence) {
        this(charSequence, (List<KeyboardShortcutInfo>) Collections.emptyList());
    }

    public KeyboardShortcutGroup(CharSequence charSequence, List<KeyboardShortcutInfo> list, boolean z2) {
        this.mLabel = charSequence;
        this.mItems = new ArrayList((Collection) Preconditions.checkNotNull(list));
        this.mSystemGroup = z2;
    }

    public KeyboardShortcutGroup(CharSequence charSequence, boolean z2) {
        this(charSequence, Collections.emptyList(), z2);
    }

    private KeyboardShortcutGroup(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        this.mItems = arrayList;
        this.mLabel = parcel.readCharSequence();
        parcel.readTypedList(arrayList, KeyboardShortcutInfo.CREATOR);
        this.mSystemGroup = parcel.readInt() == 1;
    }
}
