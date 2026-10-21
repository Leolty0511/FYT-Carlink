package android.content;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.text.TextUtils;
import android.util.TimeUtils;
import java.util.ArrayList;
import java.util.Arrays;

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
    public static final String EXTRA_TARGET_COMPONENT_NAME = "android.content.extra.TARGET_COMPONENT_NAME";
    public static final String EXTRA_USER_SERIAL_NUMBER = "android.content.extra.USER_SERIAL_NUMBER";
    public static final String MIMETYPE_TEXT_HTML = "text/html";
    public static final String MIMETYPE_TEXT_INTENT = "text/vnd.android.intent";
    public static final String MIMETYPE_TEXT_PLAIN = "text/plain";
    public static final String MIMETYPE_TEXT_URILIST = "text/uri-list";
    private PersistableBundle mExtras;
    final CharSequence mLabel;
    private final ArrayList<String> mMimeTypes;
    private long mTimeStamp;

    public ClipDescription(CharSequence charSequence, String[] strArr) {
        if (strArr == null) {
            throw new NullPointerException("mimeTypes is null");
        }
        this.mLabel = charSequence;
        this.mMimeTypes = new ArrayList<>(Arrays.asList(strArr));
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

    public void addMimeTypes(String[] strArr) {
        for (int i2 = 0; i2 != strArr.length; i2++) {
            String str = strArr[i2];
            if (!this.mMimeTypes.contains(str)) {
                this.mMimeTypes.add(str);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String[] filterMimeTypes(String str) {
        int size = this.mMimeTypes.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            if (compareMimeTypes(this.mMimeTypes.get(i2), str)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.mMimeTypes.get(i2));
            }
        }
        if (arrayList == null) {
            return null;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    public PersistableBundle getExtras() {
        return this.mExtras;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public String getMimeType(int i2) {
        return this.mMimeTypes.get(i2);
    }

    public int getMimeTypeCount() {
        return this.mMimeTypes.size();
    }

    public long getTimestamp() {
        return this.mTimeStamp;
    }

    public boolean hasMimeType(String str) {
        int size = this.mMimeTypes.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (compareMimeTypes(this.mMimeTypes.get(i2), str)) {
                return true;
            }
        }
        return false;
    }

    public void setExtras(PersistableBundle persistableBundle) {
        this.mExtras = new PersistableBundle(persistableBundle);
    }

    public void setTimestamp(long j2) {
        this.mTimeStamp = j2;
    }

    public boolean toShortString(StringBuilder sb) {
        boolean z2 = !toShortStringTypesOnly(sb);
        boolean z3 = false;
        if (this.mLabel != null) {
            if (!z2) {
                sb.append(' ');
            }
            sb.append('\"');
            sb.append(this.mLabel);
            sb.append('\"');
            z2 = false;
        }
        if (this.mExtras != null) {
            if (!z2) {
                sb.append(' ');
            }
            sb.append(this.mExtras.toString());
            z2 = false;
        }
        if (this.mTimeStamp > 0) {
            if (!z2) {
                sb.append(' ');
            }
            sb.append('<');
            sb.append(TimeUtils.logTimeOfDay(this.mTimeStamp));
            sb.append('>');
        } else {
            z3 = z2;
        }
        return !z3;
    }

    public boolean toShortStringTypesOnly(StringBuilder sb) {
        int size = this.mMimeTypes.size();
        boolean z2 = true;
        int i2 = 0;
        while (i2 < size) {
            if (!z2) {
                sb.append(' ');
            }
            sb.append(this.mMimeTypes.get(i2));
            i2++;
            z2 = false;
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
        ArrayList<String> arrayList = this.mMimeTypes;
        if (arrayList == null) {
            throw new NullPointerException("null mime types");
        }
        int size = arrayList.size();
        if (size <= 0) {
            throw new IllegalArgumentException("must have at least 1 mime type");
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mMimeTypes.get(i2) == null) {
                throw new NullPointerException(c.e("mime type at ", i2, " is null"));
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        TextUtils.writeToParcel(this.mLabel, parcel, i2);
        parcel.writeStringList(this.mMimeTypes);
        parcel.writePersistableBundle(this.mExtras);
        parcel.writeLong(this.mTimeStamp);
    }

    public ClipDescription(ClipDescription clipDescription) {
        this.mLabel = clipDescription.mLabel;
        this.mMimeTypes = new ArrayList<>(clipDescription.mMimeTypes);
        this.mTimeStamp = clipDescription.mTimeStamp;
    }

    public ClipDescription(Parcel parcel) {
        this.mLabel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mMimeTypes = parcel.createStringArrayList();
        this.mExtras = parcel.readPersistableBundle();
        this.mTimeStamp = parcel.readLong();
    }
}
