package android.content;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public final class ComponentName implements Parcelable, Cloneable, Comparable<ComponentName> {
    public static final Parcelable.Creator<ComponentName> CREATOR = new Parcelable.Creator<ComponentName>() { // from class: android.content.ComponentName.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComponentName createFromParcel(Parcel parcel) {
            return new ComponentName(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComponentName[] newArray(int i2) {
            return new ComponentName[i2];
        }
    };
    private final String mClass;
    private final String mPackage;

    public ComponentName(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("package name is null");
        }
        if (str2 == null) {
            throw new NullPointerException("class name is null");
        }
        this.mPackage = str;
        this.mClass = str2;
    }

    private static void appendShortClassName(StringBuilder sb, String str, String str2) {
        int length;
        int length2;
        if (str2.startsWith(str) && (length2 = str2.length()) > (length = str.length()) && str2.charAt(length) == '.') {
            sb.append((CharSequence) str2, length, length2);
        } else {
            sb.append(str2);
        }
    }

    public static ComponentName createRelative(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("class name cannot be empty");
        }
        if (str2.charAt(0) == '.') {
            str2 = c.D(str, str2);
        }
        return new ComponentName(str, str2);
    }

    private static void printShortClassName(PrintWriter printWriter, String str, String str2) {
        int length;
        int length2;
        if (str2.startsWith(str) && (length2 = str2.length()) > (length = str.length()) && str2.charAt(length) == '.') {
            printWriter.write(str2, length, length2 - length);
        } else {
            printWriter.print(str2);
        }
    }

    public static void printShortString(PrintWriter printWriter, String str, String str2) {
        printWriter.print(str);
        printWriter.print('/');
        printShortClassName(printWriter, str, str2);
    }

    public static ComponentName readFromParcel(Parcel parcel) {
        String string = parcel.readString();
        if (string != null) {
            return new ComponentName(string, parcel);
        }
        return null;
    }

    public static ComponentName unflattenFromString(String str) {
        int i2;
        int iIndexOf = str.indexOf(47);
        if (iIndexOf < 0 || (i2 = iIndexOf + 1) >= str.length()) {
            return null;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(i2);
        if (strSubstring2.length() > 0 && strSubstring2.charAt(0) == '.') {
            strSubstring2 = c.D(strSubstring, strSubstring2);
        }
        return new ComponentName(strSubstring, strSubstring2);
    }

    public void appendShortString(StringBuilder sb) {
        appendShortString(sb, this.mPackage, this.mClass);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            ComponentName componentName = (ComponentName) obj;
            return this.mPackage.equals(componentName.mPackage) && this.mClass.equals(componentName.mClass);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public String flattenToShortString() {
        StringBuilder sb = new StringBuilder(this.mClass.length() + this.mPackage.length());
        appendShortString(sb, this.mPackage, this.mClass);
        return sb.toString();
    }

    public String flattenToString() {
        return this.mPackage + "/" + this.mClass;
    }

    public String getClassName() {
        return this.mClass;
    }

    public String getPackageName() {
        return this.mPackage;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        r0 = r4.mPackage.length();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getShortClassName() {
        /*
            r4 = this;
            java.lang.String r0 = r4.mClass
            java.lang.String r1 = r4.mPackage
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L29
            java.lang.String r0 = r4.mPackage
            int r0 = r0.length()
            java.lang.String r1 = r4.mClass
            int r1 = r1.length()
            if (r1 <= r0) goto L29
            java.lang.String r2 = r4.mClass
            char r2 = r2.charAt(r0)
            r3 = 46
            if (r2 != r3) goto L29
            java.lang.String r2 = r4.mClass
            java.lang.String r0 = r2.substring(r0, r1)
            return r0
        L29:
            java.lang.String r0 = r4.mClass
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.content.ComponentName.getShortClassName():java.lang.String");
    }

    public int hashCode() {
        return this.mClass.hashCode() + this.mPackage.hashCode();
    }

    public String toShortString() {
        StringBuilder sb = new StringBuilder("{");
        sb.append(this.mPackage);
        sb.append("/");
        return c.n(sb, this.mClass, "}");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ComponentInfo{");
        sb.append(this.mPackage);
        sb.append("/");
        return c.n(sb, this.mClass, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPackage);
        parcel.writeString(this.mClass);
    }

    public static void appendShortString(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append('/');
        appendShortClassName(sb, str, str2);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ComponentName m18clone() {
        return new ComponentName(this.mPackage, this.mClass);
    }

    @Override // java.lang.Comparable
    public int compareTo(ComponentName componentName) {
        int iCompareTo = this.mPackage.compareTo(componentName.mPackage);
        return iCompareTo != 0 ? iCompareTo : this.mClass.compareTo(componentName.mClass);
    }

    public static void writeToParcel(ComponentName componentName, Parcel parcel) {
        if (componentName != null) {
            componentName.writeToParcel(parcel, 0);
        } else {
            parcel.writeString(null);
        }
    }

    public ComponentName(Context context, String str) {
        if (str != null) {
            this.mPackage = context.getPackageName();
            this.mClass = str;
            return;
        }
        throw new NullPointerException("class name is null");
    }

    public ComponentName(Context context, Class<?> cls) {
        this.mPackage = context.getPackageName();
        this.mClass = cls.getName();
    }

    public static ComponentName createRelative(Context context, String str) {
        return createRelative(context.getPackageName(), str);
    }

    public ComponentName(Parcel parcel) {
        String string = parcel.readString();
        this.mPackage = string;
        if (string != null) {
            String string2 = parcel.readString();
            this.mClass = string2;
            if (string2 == null) {
                throw new NullPointerException("class name is null");
            }
            return;
        }
        throw new NullPointerException("package name is null");
    }

    private ComponentName(String str, Parcel parcel) {
        this.mPackage = str;
        this.mClass = parcel.readString();
    }
}
