package android.service.chooser;

import android.app.m;
import android.content.ComponentName;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class ChooserTarget implements Parcelable {
    public static final Parcelable.Creator<ChooserTarget> CREATOR = new Parcelable.Creator<ChooserTarget>() { // from class: android.service.chooser.ChooserTarget.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChooserTarget createFromParcel(Parcel parcel) {
            return new ChooserTarget(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChooserTarget[] newArray(int i2) {
            return new ChooserTarget[i2];
        }
    };
    private static final String TAG = "ChooserTarget";
    private ComponentName mComponentName;
    private Icon mIcon;
    private Bundle mIntentExtras;
    private float mScore;
    private CharSequence mTitle;

    public ChooserTarget(CharSequence charSequence, Icon icon, float f2, ComponentName componentName, Bundle bundle) {
        this.mTitle = charSequence;
        this.mIcon = icon;
        if (f2 > 1.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("Score " + f2 + " out of range; must be between 0.0f and 1.0f");
        }
        this.mScore = f2;
        this.mComponentName = componentName;
        this.mIntentExtras = bundle;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public Icon getIcon() {
        return this.mIcon;
    }

    public Bundle getIntentExtras() {
        return this.mIntentExtras;
    }

    public float getScore() {
        return this.mScore;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChooserTarget{");
        sb.append(this.mComponentName);
        sb.append(", ");
        sb.append(this.mIntentExtras);
        sb.append(", '");
        sb.append((Object) this.mTitle);
        sb.append("', ");
        return m.i(sb, this.mScore, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeCharSequence(this.mTitle);
        if (this.mIcon != null) {
            parcel.writeInt(1);
            this.mIcon.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeFloat(this.mScore);
        ComponentName.writeToParcel(this.mComponentName, parcel);
        parcel.writeBundle(this.mIntentExtras);
    }

    public ChooserTarget(Parcel parcel) {
        this.mTitle = parcel.readCharSequence();
        if (parcel.readInt() != 0) {
            this.mIcon = Icon.CREATOR.createFromParcel(parcel);
        } else {
            this.mIcon = null;
        }
        this.mScore = parcel.readFloat();
        this.mComponentName = ComponentName.readFromParcel(parcel);
        this.mIntentExtras = parcel.readBundle();
    }
}
