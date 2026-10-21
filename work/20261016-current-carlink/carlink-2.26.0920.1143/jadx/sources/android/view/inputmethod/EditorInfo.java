package android.view.inputmethod;

import android.accessibilityservice.c;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.InputType;
import android.text.TextUtils;
import android.util.Printer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class EditorInfo implements InputType, Parcelable {
    public static final Parcelable.Creator<EditorInfo> CREATOR = new Parcelable.Creator<EditorInfo>() { // from class: android.view.inputmethod.EditorInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EditorInfo createFromParcel(Parcel parcel) {
            EditorInfo editorInfo = new EditorInfo();
            editorInfo.inputType = parcel.readInt();
            editorInfo.imeOptions = parcel.readInt();
            editorInfo.privateImeOptions = parcel.readString();
            Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            editorInfo.actionLabel = creator.createFromParcel(parcel);
            editorInfo.actionId = parcel.readInt();
            editorInfo.initialSelStart = parcel.readInt();
            editorInfo.initialSelEnd = parcel.readInt();
            editorInfo.initialCapsMode = parcel.readInt();
            editorInfo.hintText = creator.createFromParcel(parcel);
            editorInfo.label = creator.createFromParcel(parcel);
            editorInfo.packageName = parcel.readString();
            editorInfo.fieldId = parcel.readInt();
            editorInfo.fieldName = parcel.readString();
            editorInfo.extras = parcel.readBundle();
            LocaleList localeListCreateFromParcel = LocaleList.CREATOR.createFromParcel(parcel);
            if (localeListCreateFromParcel.isEmpty()) {
                localeListCreateFromParcel = null;
            }
            editorInfo.hintLocales = localeListCreateFromParcel;
            editorInfo.contentMimeTypes = parcel.readStringArray();
            return editorInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EditorInfo[] newArray(int i2) {
            return new EditorInfo[i2];
        }
    };
    public static final int IME_ACTION_DONE = 6;
    public static final int IME_ACTION_GO = 2;
    public static final int IME_ACTION_NEXT = 5;
    public static final int IME_ACTION_NONE = 1;
    public static final int IME_ACTION_PREVIOUS = 7;
    public static final int IME_ACTION_SEARCH = 3;
    public static final int IME_ACTION_SEND = 4;
    public static final int IME_ACTION_UNSPECIFIED = 0;
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NAVIGATE_NEXT = 134217728;
    public static final int IME_FLAG_NAVIGATE_PREVIOUS = 67108864;
    public static final int IME_FLAG_NO_ACCESSORY_ACTION = 536870912;
    public static final int IME_FLAG_NO_ENTER_ACTION = 1073741824;
    public static final int IME_FLAG_NO_EXTRACT_UI = 268435456;
    public static final int IME_FLAG_NO_FULLSCREEN = 33554432;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;
    public static final int IME_MASK_ACTION = 255;
    public static final int IME_NULL = 0;
    public Bundle extras;
    public int fieldId;
    public String fieldName;
    public CharSequence hintText;
    public CharSequence label;
    public String packageName;
    public int inputType = 0;
    public int imeOptions = 0;
    public String privateImeOptions = null;
    public CharSequence actionLabel = null;
    public int actionId = 0;
    public int initialSelStart = -1;
    public int initialSelEnd = -1;
    public int initialCapsMode = 0;
    public LocaleList hintLocales = null;
    public String[] contentMimeTypes = null;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        StringBuilder sbU = c.u(str, "inputType=0x");
        c.x(this.inputType, sbU, " imeOptions=0x");
        c.x(this.imeOptions, sbU, " privateImeOptions=");
        sbU.append(this.privateImeOptions);
        printer.println(sbU.toString());
        printer.println(str + "actionLabel=" + ((Object) this.actionLabel) + " actionId=" + this.actionId);
        printer.println(str + "initialSelStart=" + this.initialSelStart + " initialSelEnd=" + this.initialSelEnd + " initialCapsMode=0x" + Integer.toHexString(this.initialCapsMode));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("hintText=");
        sb.append((Object) this.hintText);
        sb.append(" label=");
        sb.append((Object) this.label);
        printer.println(sb.toString());
        printer.println(str + "packageName=" + this.packageName + " fieldId=" + this.fieldId + " fieldName=" + this.fieldName);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("extras=");
        sb2.append(this.extras);
        printer.println(sb2.toString());
        printer.println(str + "hintLocales=" + this.hintLocales);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append("contentMimeTypes=");
        c.B(sb3, Arrays.toString(this.contentMimeTypes), printer);
    }

    public final void makeCompatible(int i2) {
        if (i2 < 11) {
            int i3 = this.inputType;
            int i4 = i3 & 4095;
            if (i4 == 2 || i4 == 18) {
                this.inputType = (i3 & InputType.TYPE_MASK_FLAGS) | 2;
            } else if (i4 == 209) {
                this.inputType = (i3 & InputType.TYPE_MASK_FLAGS) | 33;
            } else {
                if (i4 != 225) {
                    return;
                }
                this.inputType = (i3 & InputType.TYPE_MASK_FLAGS) | 129;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.inputType);
        parcel.writeInt(this.imeOptions);
        parcel.writeString(this.privateImeOptions);
        TextUtils.writeToParcel(this.actionLabel, parcel, i2);
        parcel.writeInt(this.actionId);
        parcel.writeInt(this.initialSelStart);
        parcel.writeInt(this.initialSelEnd);
        parcel.writeInt(this.initialCapsMode);
        TextUtils.writeToParcel(this.hintText, parcel, i2);
        TextUtils.writeToParcel(this.label, parcel, i2);
        parcel.writeString(this.packageName);
        parcel.writeInt(this.fieldId);
        parcel.writeString(this.fieldName);
        parcel.writeBundle(this.extras);
        LocaleList localeList = this.hintLocales;
        if (localeList != null) {
            localeList.writeToParcel(parcel, i2);
        } else {
            LocaleList.getEmptyLocaleList().writeToParcel(parcel, i2);
        }
        parcel.writeStringArray(this.contentMimeTypes);
    }
}
