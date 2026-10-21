package android.graphics;

import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.PhoneNumberUtils;
import android.util.FloatMath;
import java.io.PrintWriter;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class RectF implements Parcelable {
    public static final Parcelable.Creator<RectF> CREATOR = new Parcelable.Creator<RectF>() { // from class: android.graphics.RectF.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RectF createFromParcel(Parcel parcel) {
            RectF rectF = new RectF();
            rectF.readFromParcel(parcel);
            return rectF;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RectF[] newArray(int i2) {
            return new RectF[i2];
        }
    };
    public float bottom;
    public float left;
    public float right;
    public float top;

    public RectF() {
    }

    public final float centerX() {
        return (this.left + this.right) * 0.5f;
    }

    public final float centerY() {
        return (this.top + this.bottom) * 0.5f;
    }

    public boolean contains(float f2, float f3) {
        float f4 = this.left;
        float f5 = this.right;
        if (f4 < f5) {
            float f6 = this.top;
            float f7 = this.bottom;
            if (f6 < f7 && f2 >= f4 && f2 < f5 && f3 >= f6 && f3 < f7) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RectF rectF = (RectF) obj;
        return this.left == rectF.left && this.top == rectF.top && this.right == rectF.right && this.bottom == rectF.bottom;
    }

    public int hashCode() {
        float f2 = this.left;
        int iFloatToIntBits = (f2 != 0.0f ? Float.floatToIntBits(f2) : 0) * 31;
        float f3 = this.top;
        int iFloatToIntBits2 = (iFloatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
        float f4 = this.right;
        int iFloatToIntBits3 = (iFloatToIntBits2 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31;
        float f5 = this.bottom;
        return iFloatToIntBits3 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0);
    }

    public final float height() {
        return this.bottom - this.top;
    }

    public void inset(float f2, float f3) {
        this.left += f2;
        this.top += f3;
        this.right -= f2;
        this.bottom -= f3;
    }

    public boolean intersect(float f2, float f3, float f4, float f5) {
        float f6 = this.left;
        if (f6 >= f4) {
            return false;
        }
        float f7 = this.right;
        if (f2 >= f7) {
            return false;
        }
        float f8 = this.top;
        if (f8 >= f5) {
            return false;
        }
        float f9 = this.bottom;
        if (f3 >= f9) {
            return false;
        }
        if (f6 < f2) {
            this.left = f2;
        }
        if (f8 < f3) {
            this.top = f3;
        }
        if (f7 > f4) {
            this.right = f4;
        }
        if (f9 <= f5) {
            return true;
        }
        this.bottom = f5;
        return true;
    }

    public boolean intersects(float f2, float f3, float f4, float f5) {
        return this.left < f4 && f2 < this.right && this.top < f5 && f3 < this.bottom;
    }

    public final boolean isEmpty() {
        return this.left >= this.right || this.top >= this.bottom;
    }

    public void offset(float f2, float f3) {
        this.left += f2;
        this.top += f3;
        this.right += f2;
        this.bottom += f3;
    }

    public void offsetTo(float f2, float f3) {
        this.right += f2 - this.left;
        this.bottom += f3 - this.top;
        this.left = f2;
        this.top = f3;
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
        this.left = parcel.readFloat();
        this.top = parcel.readFloat();
        this.right = parcel.readFloat();
        this.bottom = parcel.readFloat();
    }

    public void round(Rect rect) {
        rect.set(d.a(this.left), d.a(this.top), d.a(this.right), d.a(this.bottom));
    }

    public void roundOut(Rect rect) {
        rect.set((int) FloatMath.floor(this.left), (int) FloatMath.floor(this.top), (int) FloatMath.ceil(this.right), (int) FloatMath.ceil(this.bottom));
    }

    public void set(float f2, float f3, float f4, float f5) {
        this.left = f2;
        this.top = f3;
        this.right = f4;
        this.bottom = f5;
    }

    public void setEmpty() {
        this.bottom = 0.0f;
        this.top = 0.0f;
        this.right = 0.0f;
        this.left = 0.0f;
    }

    public boolean setIntersect(RectF rectF, RectF rectF2) {
        float f2 = rectF.left;
        if (f2 >= rectF2.right) {
            return false;
        }
        float f3 = rectF2.left;
        if (f3 >= rectF.right || rectF.top >= rectF2.bottom || rectF2.top >= rectF.bottom) {
            return false;
        }
        this.left = Math.max(f2, f3);
        this.top = Math.max(rectF.top, rectF2.top);
        this.right = Math.min(rectF.right, rectF2.right);
        this.bottom = Math.min(rectF.bottom, rectF2.bottom);
        return true;
    }

    public void sort() {
        float f2 = this.left;
        float f3 = this.right;
        if (f2 > f3) {
            this.left = f3;
            this.right = f2;
        }
        float f4 = this.top;
        float f5 = this.bottom;
        if (f4 > f5) {
            this.top = f5;
            this.bottom = f4;
        }
    }

    public String toShortString() {
        return toShortString(new StringBuilder(32));
    }

    public String toString() {
        return "RectF(" + this.left + ", " + this.top + ", " + this.right + ", " + this.bottom + ")";
    }

    public void union(float f2, float f3, float f4, float f5) {
        if (f2 >= f4 || f3 >= f5) {
            return;
        }
        float f6 = this.left;
        float f7 = this.right;
        if (f6 < f7) {
            float f8 = this.top;
            float f9 = this.bottom;
            if (f8 < f9) {
                if (f6 > f2) {
                    this.left = f2;
                }
                if (f8 > f3) {
                    this.top = f3;
                }
                if (f7 < f4) {
                    this.right = f4;
                }
                if (f9 < f5) {
                    this.bottom = f5;
                    return;
                }
                return;
            }
        }
        this.left = f2;
        this.top = f3;
        this.right = f4;
        this.bottom = f5;
    }

    public final float width() {
        return this.right - this.left;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.left);
        parcel.writeFloat(this.top);
        parcel.writeFloat(this.right);
        parcel.writeFloat(this.bottom);
    }

    public RectF(float f2, float f3, float f4, float f5) {
        this.left = f2;
        this.top = f3;
        this.right = f4;
        this.bottom = f5;
    }

    public static boolean intersects(RectF rectF, RectF rectF2) {
        return rectF.left < rectF2.right && rectF2.left < rectF.right && rectF.top < rectF2.bottom && rectF2.top < rectF.bottom;
    }

    public boolean contains(float f2, float f3, float f4, float f5) {
        float f6 = this.left;
        float f7 = this.right;
        if (f6 < f7) {
            float f8 = this.top;
            float f9 = this.bottom;
            if (f8 < f9 && f6 <= f2 && f8 <= f3 && f7 >= f4 && f9 >= f5) {
                return true;
            }
        }
        return false;
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

    public boolean contains(RectF rectF) {
        float f2 = this.left;
        float f3 = this.right;
        if (f2 < f3) {
            float f4 = this.top;
            float f5 = this.bottom;
            if (f4 < f5 && f2 <= rectF.left && f4 <= rectF.top && f3 >= rectF.right && f5 >= rectF.bottom) {
                return true;
            }
        }
        return false;
    }

    public void set(RectF rectF) {
        this.left = rectF.left;
        this.top = rectF.top;
        this.right = rectF.right;
        this.bottom = rectF.bottom;
    }

    public boolean intersect(RectF rectF) {
        return intersect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public RectF(RectF rectF) {
        if (rectF == null) {
            this.bottom = 0.0f;
            this.right = 0.0f;
            this.top = 0.0f;
            this.left = 0.0f;
            return;
        }
        this.left = rectF.left;
        this.top = rectF.top;
        this.right = rectF.right;
        this.bottom = rectF.bottom;
    }

    public void set(Rect rect) {
        this.left = rect.left;
        this.top = rect.top;
        this.right = rect.right;
        this.bottom = rect.bottom;
    }

    public void union(RectF rectF) {
        union(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public void union(float f2, float f3) {
        if (f2 < this.left) {
            this.left = f2;
        } else if (f2 > this.right) {
            this.right = f2;
        }
        if (f3 < this.top) {
            this.top = f3;
        } else if (f3 > this.bottom) {
            this.bottom = f3;
        }
    }

    public RectF(Rect rect) {
        if (rect == null) {
            this.bottom = 0.0f;
            this.right = 0.0f;
            this.top = 0.0f;
            this.left = 0.0f;
            return;
        }
        this.left = rect.left;
        this.top = rect.top;
        this.right = rect.right;
        this.bottom = rect.bottom;
    }
}
