package android.view;

import android.graphics.drawable.Icon;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyboardShortcutInfo implements Parcelable {
    public static final Parcelable.Creator<KeyboardShortcutInfo> CREATOR = new Parcelable.Creator<KeyboardShortcutInfo>() { // from class: android.view.KeyboardShortcutInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyboardShortcutInfo createFromParcel(Parcel parcel) {
            return new KeyboardShortcutInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyboardShortcutInfo[] newArray(int i2) {
            return new KeyboardShortcutInfo[i2];
        }
    };
    private final char mBaseCharacter;
    private final Icon mIcon;
    private final int mKeycode;
    private final CharSequence mLabel;
    private final int mModifiers;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public char getBaseCharacter() {
        return this.mBaseCharacter;
    }

    public Icon getIcon() {
        return this.mIcon;
    }

    public int getKeycode() {
        return this.mKeycode;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public int getModifiers() {
        return this.mModifiers;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeCharSequence(this.mLabel);
        parcel.writeParcelable(this.mIcon, 0);
        parcel.writeInt(this.mBaseCharacter);
        parcel.writeInt(this.mKeycode);
        parcel.writeInt(this.mModifiers);
    }

    public KeyboardShortcutInfo(CharSequence charSequence, Icon icon, int i2, int i3) {
        this.mLabel = charSequence;
        this.mIcon = icon;
        boolean z2 = false;
        this.mBaseCharacter = (char) 0;
        if (i2 >= 0 && i2 <= KeyEvent.getMaxKeyCode()) {
            z2 = true;
        }
        Preconditions.checkArgument(z2);
        this.mKeycode = i2;
        this.mModifiers = i3;
    }

    public KeyboardShortcutInfo(CharSequence charSequence, int i2, int i3) {
        this(charSequence, null, i2, i3);
    }

    public KeyboardShortcutInfo(CharSequence charSequence, char c, int i2) {
        this.mLabel = charSequence;
        Preconditions.checkArgument(c != 0);
        this.mBaseCharacter = c;
        this.mKeycode = 0;
        this.mModifiers = i2;
        this.mIcon = null;
    }

    private KeyboardShortcutInfo(Parcel parcel) {
        this.mLabel = parcel.readCharSequence();
        this.mIcon = (Icon) parcel.readParcelable(null);
        this.mBaseCharacter = (char) parcel.readInt();
        this.mKeycode = parcel.readInt();
        this.mModifiers = parcel.readInt();
    }
}
