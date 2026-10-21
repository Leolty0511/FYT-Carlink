package android.util;

import android.hardware.camera2.utils.HashCodeHelpers;
import com.android.internal.util.Preconditions;
import java.lang.Comparable;

/* JADX INFO: loaded from: classes2.dex */
public final class Range<T extends Comparable<? super T>> {
    private final T mLower;
    private final T mUpper;

    public Range(T t2, T t3) {
        this.mLower = (T) Preconditions.checkNotNull(t2, "lower must not be null");
        this.mUpper = (T) Preconditions.checkNotNull(t3, "upper must not be null");
        if (t2.compareTo(t3) > 0) {
            throw new IllegalArgumentException("lower must be less than or equal to upper");
        }
    }

    public static <T extends Comparable<? super T>> Range<T> create(T t2, T t3) {
        return new Range<>(t2, t3);
    }

    public T clamp(T t2) {
        Preconditions.checkNotNull(t2, "value must not be null");
        if (t2.compareTo(this.mLower) < 0) {
            return this.mLower;
        }
        return t2.compareTo(this.mUpper) > 0 ? this.mUpper : t2;
    }

    public boolean contains(T t2) {
        Preconditions.checkNotNull(t2, "value must not be null");
        return (t2.compareTo(this.mLower) >= 0) && (t2.compareTo(this.mUpper) <= 0);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.mLower.equals(range.mLower) && this.mUpper.equals(range.mUpper);
    }

    public Range<T> extend(Range<T> range) {
        Preconditions.checkNotNull(range, "range must not be null");
        int iCompareTo = range.mLower.compareTo(this.mLower);
        int iCompareTo2 = range.mUpper.compareTo(this.mUpper);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return range;
        }
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            return create(iCompareTo >= 0 ? this.mLower : range.mLower, iCompareTo2 <= 0 ? this.mUpper : range.mUpper);
        }
        return this;
    }

    public T getLower() {
        return this.mLower;
    }

    public T getUpper() {
        return this.mUpper;
    }

    public int hashCode() {
        return HashCodeHelpers.hashCodeGeneric(this.mLower, this.mUpper);
    }

    public Range<T> intersect(Range<T> range) {
        Preconditions.checkNotNull(range, "range must not be null");
        int iCompareTo = range.mLower.compareTo(this.mLower);
        int iCompareTo2 = range.mUpper.compareTo(this.mUpper);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            return create(iCompareTo <= 0 ? this.mLower : range.mLower, iCompareTo2 >= 0 ? this.mUpper : range.mUpper);
        }
        return range;
    }

    public String toString() {
        return String.format("[%s, %s]", this.mLower, this.mUpper);
    }

    public boolean contains(Range<T> range) {
        Preconditions.checkNotNull(range, "value must not be null");
        return (range.mLower.compareTo(this.mLower) >= 0) && (range.mUpper.compareTo(this.mUpper) <= 0);
    }

    public Range<T> extend(T t2, T t3) {
        Preconditions.checkNotNull(t2, "lower must not be null");
        Preconditions.checkNotNull(t3, "upper must not be null");
        int iCompareTo = t2.compareTo(this.mLower);
        int iCompareTo2 = t3.compareTo(this.mUpper);
        if (iCompareTo >= 0 && iCompareTo2 <= 0) {
            return this;
        }
        if (iCompareTo >= 0) {
            t2 = this.mLower;
        }
        if (iCompareTo2 <= 0) {
            t3 = this.mUpper;
        }
        return create(t2, t3);
    }

    public Range<T> intersect(T t2, T t3) {
        Preconditions.checkNotNull(t2, "lower must not be null");
        Preconditions.checkNotNull(t3, "upper must not be null");
        int iCompareTo = t2.compareTo(this.mLower);
        int iCompareTo2 = t3.compareTo(this.mUpper);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo <= 0) {
            t2 = this.mLower;
        }
        if (iCompareTo2 >= 0) {
            t3 = this.mUpper;
        }
        return create(t2, t3);
    }

    public Range<T> extend(T t2) {
        Preconditions.checkNotNull(t2, "value must not be null");
        return extend(t2, t2);
    }
}
