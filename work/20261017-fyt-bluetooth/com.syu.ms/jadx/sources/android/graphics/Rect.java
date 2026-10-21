package android.graphics;

import android.net.http.CharArrayBuffers;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.PhoneNumberUtils;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class Rect implements Parcelable {
    public int bottom;
    public int left;
    public int right;
    public int top;
    private static final Pattern FLATTENED_PATTERN = Pattern.compile("(-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+)");
    public static final Parcelable.Creator<Rect> CREATOR = new Parcelable.Creator<Rect>() { // from class: android.graphics.Rect.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Rect createFromParcel(Parcel parcel) {
            Rect rect = new Rect();
            rect.readFromParcel(parcel);
            return rect;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Rect[] newArray(int i2) {
            return new Rect[i2];
        }
    };

    public Rect() {
    }

    public static Rect unflattenFromString(String str) {
        Matcher matcher = FLATTENED_PATTERN.matcher(str);
        if (matcher.matches()) {
            return new Rect(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)), Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)));
        }
        return null;
    }

    public final int centerX() {
        return (this.left + this.right) >> 1;
    }

    public final int centerY() {
        return (this.top + this.bottom) >> 1;
    }

    public boolean contains(int i2, int i3) {
        int i4;
        int i5;
        int i6 = this.left;
        int i7 = this.right;
        return i6 < i7 && (i4 = this.top) < (i5 = this.bottom) && i2 >= i6 && i2 < i7 && i3 >= i4 && i3 < i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Rect.class != obj.getClass()) {
            return false;
        }
        Rect rect = (Rect) obj;
        return this.left == rect.left && this.top == rect.top && this.right == rect.right && this.bottom == rect.bottom;
    }

    public final float exactCenterX() {
        return (this.left + this.right) * 0.5f;
    }

    public final float exactCenterY() {
        return (this.top + this.bottom) * 0.5f;
    }

    public String flattenToString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.left);
        sb.append(CharArrayBuffers.uppercaseAddon);
        sb.append(this.top);
        sb.append(CharArrayBuffers.uppercaseAddon);
        sb.append(this.right);
        sb.append(CharArrayBuffers.uppercaseAddon);
        sb.append(this.bottom);
        return sb.toString();
    }

    public int hashCode() {
        return (((((this.left * 31) + this.top) * 31) + this.right) * 31) + this.bottom;
    }

    public final int height() {
        return this.bottom - this.top;
    }

    public void inset(int i2, int i3) {
        this.left += i2;
        this.top += i3;
        this.right -= i2;
        this.bottom -= i3;
    }

    public boolean intersect(int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9 = this.left;
        if (i9 >= i4 || i2 >= (i6 = this.right) || (i7 = this.top) >= i5 || i3 >= (i8 = this.bottom)) {
            return false;
        }
        if (i9 < i2) {
            this.left = i2;
        }
        if (i7 < i3) {
            this.top = i3;
        }
        if (i6 > i4) {
            this.right = i4;
        }
        if (i8 <= i5) {
            return true;
        }
        this.bottom = i5;
        return true;
    }

    public boolean intersects(int i2, int i3, int i4, int i5) {
        return this.left < i4 && i2 < this.right && this.top < i5 && i3 < this.bottom;
    }

    public final boolean isEmpty() {
        return this.left >= this.right || this.top >= this.bottom;
    }

    public void offset(int i2, int i3) {
        this.left += i2;
        this.top += i3;
        this.right += i2;
        this.bottom += i3;
    }

    public void offsetTo(int i2, int i3) {
        this.right += i2 - this.left;
        this.bottom += i3 - this.top;
        this.left = i2;
        this.top = i3;
    }

    public void printShortString(PrintWriter printWriter) {
        printWriter.print('[');
        printWriter.print(this.left);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(this.top);
        printWriter.print("][");
        printWriter.print(this.right);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(this.bottom);
        printWriter.print(']');
    }

    public void readFromParcel(Parcel parcel) {
        this.left = parcel.readInt();
        this.top = parcel.readInt();
        this.right = parcel.readInt();
        this.bottom = parcel.readInt();
    }

    public void scale(float f2) {
        if (f2 != 1.0f) {
            this.left = (int) ((this.left * f2) + 0.5f);
            this.top = (int) ((this.top * f2) + 0.5f);
            this.right = (int) ((this.right * f2) + 0.5f);
            this.bottom = (int) ((this.bottom * f2) + 0.5f);
        }
    }

    public void set(int i2, int i3, int i4, int i5) {
        this.left = i2;
        this.top = i3;
        this.right = i4;
        this.bottom = i5;
    }

    public void setEmpty() {
        this.bottom = 0;
        this.top = 0;
        this.right = 0;
        this.left = 0;
    }

    public boolean setIntersect(Rect rect, Rect rect2) {
        int i2;
        int i3 = rect.left;
        if (i3 >= rect2.right || (i2 = rect2.left) >= rect.right || rect.top >= rect2.bottom || rect2.top >= rect.bottom) {
            return false;
        }
        this.left = Math.max(i3, i2);
        this.top = Math.max(rect.top, rect2.top);
        this.right = Math.min(rect.right, rect2.right);
        this.bottom = Math.min(rect.bottom, rect2.bottom);
        return true;
    }

    public void sort() {
        int i2 = this.left;
        int i3 = this.right;
        if (i2 > i3) {
            this.left = i3;
            this.right = i2;
        }
        int i4 = this.top;
        int i5 = this.bottom;
        if (i4 > i5) {
            this.top = i5;
            this.bottom = i4;
        }
    }

    public String toShortString() {
        return toShortString(new StringBuilder(32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Rect(");
        sb.append(this.left);
        sb.append(", ");
        sb.append(this.top);
        sb.append(" - ");
        sb.append(this.right);
        sb.append(", ");
        sb.append(this.bottom);
        sb.append(")");
        return sb.toString();
    }

    public void union(int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (i2 >= i4 || i3 >= i5) {
            return;
        }
        int i8 = this.left;
        int i9 = this.right;
        if (i8 >= i9 || (i6 = this.top) >= (i7 = this.bottom)) {
            this.left = i2;
            this.top = i3;
            this.right = i4;
            this.bottom = i5;
            return;
        }
        if (i8 > i2) {
            this.left = i2;
        }
        if (i6 > i3) {
            this.top = i3;
        }
        if (i9 < i4) {
            this.right = i4;
        }
        if (i7 < i5) {
            this.bottom = i5;
        }
    }

    public final int width() {
        return this.right - this.left;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.left);
        parcel.writeInt(this.top);
        parcel.writeInt(this.right);
        parcel.writeInt(this.bottom);
    }

    public Rect(int i2, int i3, int i4, int i5) {
        this.left = i2;
        this.top = i3;
        this.right = i4;
        this.bottom = i5;
    }

    public static boolean intersects(Rect rect, Rect rect2) {
        return rect.left < rect2.right && rect2.left < rect.right && rect.top < rect2.bottom && rect2.top < rect.bottom;
    }

    public boolean contains(int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8 = this.left;
        int i9 = this.right;
        return i8 < i9 && (i6 = this.top) < (i7 = this.bottom) && i8 <= i2 && i6 <= i3 && i9 >= i4 && i7 >= i5;
    }

    public String toShortString(StringBuilder sb) {
        sb.setLength(0);
        sb.append('[');
        sb.append(this.left);
        sb.append(PhoneNumberUtils.PAUSE);
        sb.append(this.top);
        sb.append("][");
        sb.append(this.right);
        sb.append(PhoneNumberUtils.PAUSE);
        sb.append(this.bottom);
        sb.append(']');
        return sb.toString();
    }

    public boolean contains(Rect rect) {
        int i2;
        int i3;
        int i4 = this.left;
        int i5 = this.right;
        return i4 < i5 && (i2 = this.top) < (i3 = this.bottom) && i4 <= rect.left && i2 <= rect.top && i5 >= rect.right && i3 >= rect.bottom;
    }

    public void set(Rect rect) {
        this.left = rect.left;
        this.top = rect.top;
        this.right = rect.right;
        this.bottom = rect.bottom;
    }

    public boolean intersect(Rect rect) {
        return intersect(rect.left, rect.top, rect.right, rect.bottom);
    }

    public Rect(Rect rect) {
        if (rect == null) {
            this.bottom = 0;
            this.right = 0;
            this.top = 0;
            this.left = 0;
            return;
        }
        this.left = rect.left;
        this.top = rect.top;
        this.right = rect.right;
        this.bottom = rect.bottom;
    }

    public void union(Rect rect) {
        union(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void union(int i2, int i3) {
        if (i2 < this.left) {
            this.left = i2;
        } else if (i2 > this.right) {
            this.right = i2;
        }
        if (i3 < this.top) {
            this.top = i3;
        } else if (i3 > this.bottom) {
            this.bottom = i3;
        }
    }
}
