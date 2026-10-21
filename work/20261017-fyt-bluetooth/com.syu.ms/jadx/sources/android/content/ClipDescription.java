package android.content;

import android.net.http.CharArrayBuffers;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ClipDescription implements Parcelable {
    public static final Parcelable.Creator<ClipDescription> CREATOR = new Parcelable.Creator<ClipDescription>() { // from class: android.content.ClipDescription.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClipDescription createFromParcel(Parcel parcel) {
            return new ClipDescription(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClipDescription[] newArray(int i2) {
            return new ClipDescription[i2];
        }
    };
    public static final String MIMETYPE_TEXT_HTML = "text/html";
    public static final String MIMETYPE_TEXT_INTENT = "text/vnd.android.intent";
    public static final String MIMETYPE_TEXT_PLAIN = "text/plain";
    public static final String MIMETYPE_TEXT_URILIST = "text/uri-list";
    public final CharSequence mLabel;
    public final String[] mMimeTypes;

    public ClipDescription(CharSequence charSequence, String[] strArr) {
        Objects.requireNonNull(strArr, "mimeTypes is null");
        this.mLabel = charSequence;
        this.mMimeTypes = strArr;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0034 A[RETURN] */
    public static boolean compareMimeTypes(String str, String str2) {
        int length = str2.length();
        if (length == 3 && str2.equals("*/*")) {
            return true;
        }
        int iIndexOf = str2.indexOf(47);
        if (iIndexOf > 0) {
            if (length == iIndexOf + 2) {
                int i2 = iIndexOf + 1;
                if (str2.charAt(i2) == '*') {
                    if (str2.regionMatches(0, str, 0, i2)) {
                        return true;
                    }
                } else if (str2.equals(str)) {
                    return true;
                }
            } else if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String[] filterMimeTypes(String str) {
        int i2 = 0;
        ArrayList arrayList = null;
        while (true) {
            String[] strArr = this.mMimeTypes;
            if (i2 >= strArr.length) {
                break;
            }
            if (compareMimeTypes(strArr[i2], str)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.mMimeTypes[i2]);
            }
            i2++;
        }
        if (arrayList == null) {
            return null;
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        return strArr2;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public String getMimeType(int i2) {
        return this.mMimeTypes[i2];
    }

    public int getMimeTypeCount() {
        return this.mMimeTypes.length;
    }

    public boolean hasMimeType(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = this.mMimeTypes;
            if (i2 >= strArr.length) {
                return false;
            }
            if (compareMimeTypes(strArr[i2], str)) {
                return true;
            }
            i2++;
        }
    }

    public boolean toShortString(StringBuilder sb) {
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = true;
        while (i2 < this.mMimeTypes.length) {
            if (!z3) {
                sb.append(CharArrayBuffers.uppercaseAddon);
            }
            sb.append(this.mMimeTypes[i2]);
            i2++;
            z3 = false;
        }
        if (this.mLabel != null) {
            if (!z3) {
                sb.append(CharArrayBuffers.uppercaseAddon);
            }
            sb.append('\"');
            sb.append(this.mLabel);
            sb.append('\"');
        } else {
            z2 = z3;
        }
        return !z2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("ClipDescription { ");
        toShortString(sb);
        sb.append(" }");
        return sb.toString();
    }

    public void validate() {
        String[] strArr = this.mMimeTypes;
        Objects.requireNonNull(strArr, "null mime types");
        if (strArr.length <= 0) {
            throw new IllegalArgumentException("must have at least 1 mime type");
        }
        int i2 = 0;
        while (true) {
            String[] strArr2 = this.mMimeTypes;
            if (i2 >= strArr2.length) {
                return;
            }
            if (strArr2[i2] == null) {
                throw new NullPointerException("mime type at " + i2 + " is null");
            }
            i2++;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        TextUtils.writeToParcel(this.mLabel, parcel, i2);
        parcel.writeStringArray(this.mMimeTypes);
    }

    public ClipDescription(ClipDescription clipDescription) {
        this.mLabel = clipDescription.mLabel;
        this.mMimeTypes = clipDescription.mMimeTypes;
    }

    public ClipDescription(Parcel parcel) {
        this.mLabel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mMimeTypes = parcel.createStringArray();
    }
}
