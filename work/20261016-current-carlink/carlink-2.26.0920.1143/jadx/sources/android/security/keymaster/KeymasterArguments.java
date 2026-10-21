package android.security.keymaster;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class KeymasterArguments implements Parcelable {
    public static final Parcelable.Creator<KeymasterArguments> CREATOR;
    public static final long UINT32_MAX_VALUE = 4294967295L;
    private static final long UINT32_RANGE = 4294967296L;
    public static final BigInteger UINT64_MAX_VALUE;
    private static final BigInteger UINT64_RANGE;
    private List<KeymasterArgument> mArguments;

    static {
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(64);
        UINT64_RANGE = bigIntegerShiftLeft;
        UINT64_MAX_VALUE = bigIntegerShiftLeft.subtract(bigInteger);
        CREATOR = new Parcelable.Creator<KeymasterArguments>() { // from class: android.security.keymaster.KeymasterArguments.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeymasterArguments createFromParcel(Parcel parcel) {
                return new KeymasterArguments(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeymasterArguments[] newArray(int i2) {
                return new KeymasterArguments[i2];
            }
        };
    }

    private void addEnumTag(int i2, int i3) {
        this.mArguments.add(new KeymasterIntArgument(i2, i3));
    }

    private void addLongTag(int i2, BigInteger bigInteger) {
        if (bigInteger.signum() != -1 && bigInteger.compareTo(UINT64_MAX_VALUE) <= 0) {
            this.mArguments.add(new KeymasterLongArgument(i2, bigInteger.longValue()));
        } else {
            throw new IllegalArgumentException("Long tag value out of range: " + bigInteger);
        }
    }

    private KeymasterArgument getArgumentByTag(int i2) {
        for (KeymasterArgument keymasterArgument : this.mArguments) {
            if (keymasterArgument.tag == i2) {
                return keymasterArgument;
            }
        }
        return null;
    }

    private int getEnumTagValue(KeymasterArgument keymasterArgument) {
        return ((KeymasterIntArgument) keymasterArgument).value;
    }

    private BigInteger getLongTagValue(KeymasterArgument keymasterArgument) {
        return toUint64(((KeymasterLongArgument) keymasterArgument).value);
    }

    public static BigInteger toUint64(long j2) {
        return j2 >= 0 ? BigInteger.valueOf(j2) : BigInteger.valueOf(j2).add(UINT64_RANGE);
    }

    public void addBoolean(int i2) {
        if (KeymasterDefs.getTagType(i2) != 1879048192) {
            throw new IllegalArgumentException(c.d("Not a boolean tag: ", i2));
        }
        this.mArguments.add(new KeymasterBooleanArgument(i2));
    }

    public void addBytes(int i2, byte[] bArr) {
        if (KeymasterDefs.getTagType(i2) != -1879048192) {
            throw new IllegalArgumentException(c.d("Not a bytes tag: ", i2));
        }
        if (bArr == null) {
            throw new NullPointerException("value == nulll");
        }
        this.mArguments.add(new KeymasterBlobArgument(i2, bArr));
    }

    public void addDate(int i2, Date date) {
        if (KeymasterDefs.getTagType(i2) != 1610612736) {
            throw new IllegalArgumentException(c.d("Not a date tag: ", i2));
        }
        if (date == null) {
            throw new NullPointerException("value == nulll");
        }
        if (date.getTime() >= 0) {
            this.mArguments.add(new KeymasterDateArgument(i2, date));
        } else {
            throw new IllegalArgumentException("Date tag value out of range: " + date);
        }
    }

    public void addDateIfNotNull(int i2, Date date) {
        if (KeymasterDefs.getTagType(i2) != 1610612736) {
            throw new IllegalArgumentException(c.d("Not a date tag: ", i2));
        }
        if (date != null) {
            addDate(i2, date);
        }
    }

    public void addEnum(int i2, int i3) {
        int tagType = KeymasterDefs.getTagType(i2);
        if (tagType != 268435456 && tagType != 536870912) {
            throw new IllegalArgumentException(c.d("Not an enum or repeating enum tag: ", i2));
        }
        addEnumTag(i2, i3);
    }

    public void addEnums(int i2, int... iArr) {
        if (KeymasterDefs.getTagType(i2) != 536870912) {
            throw new IllegalArgumentException(c.d("Not a repeating enum tag: ", i2));
        }
        for (int i3 : iArr) {
            addEnumTag(i2, i3);
        }
    }

    public void addUnsignedInt(int i2, long j2) {
        int tagType = KeymasterDefs.getTagType(i2);
        if (tagType != 805306368 && tagType != 1073741824) {
            throw new IllegalArgumentException(c.d("Not an int or repeating int tag: ", i2));
        }
        if (j2 < 0 || j2 > 4294967295L) {
            throw new IllegalArgumentException(c.f("Int tag value out of range: ", j2));
        }
        this.mArguments.add(new KeymasterIntArgument(i2, (int) j2));
    }

    public void addUnsignedLong(int i2, BigInteger bigInteger) {
        int tagType = KeymasterDefs.getTagType(i2);
        if (tagType != 1342177280 && tagType != -1610612736) {
            throw new IllegalArgumentException(c.d("Not a long or repeating long tag: ", i2));
        }
        addLongTag(i2, bigInteger);
    }

    public boolean containsTag(int i2) {
        return getArgumentByTag(i2) != null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getBoolean(int i2) {
        if (KeymasterDefs.getTagType(i2) == 1879048192) {
            return getArgumentByTag(i2) != null;
        }
        throw new IllegalArgumentException(c.d("Not a boolean tag: ", i2));
    }

    public byte[] getBytes(int i2, byte[] bArr) {
        if (KeymasterDefs.getTagType(i2) != -1879048192) {
            throw new IllegalArgumentException(c.d("Not a bytes tag: ", i2));
        }
        KeymasterArgument argumentByTag = getArgumentByTag(i2);
        return argumentByTag == null ? bArr : ((KeymasterBlobArgument) argumentByTag).blob;
    }

    public Date getDate(int i2, Date date) {
        if (KeymasterDefs.getTagType(i2) != 1610612736) {
            throw new IllegalArgumentException(c.d("Tag is not a date type: ", i2));
        }
        KeymasterArgument argumentByTag = getArgumentByTag(i2);
        if (argumentByTag == null) {
            return date;
        }
        Date date2 = ((KeymasterDateArgument) argumentByTag).date;
        if (date2.getTime() >= 0) {
            return date2;
        }
        throw new IllegalArgumentException(c.d("Tag value too large. Tag: ", i2));
    }

    public int getEnum(int i2, int i3) {
        if (KeymasterDefs.getTagType(i2) != 268435456) {
            throw new IllegalArgumentException(c.d("Not an enum tag: ", i2));
        }
        KeymasterArgument argumentByTag = getArgumentByTag(i2);
        return argumentByTag == null ? i3 : getEnumTagValue(argumentByTag);
    }

    public List<Integer> getEnums(int i2) {
        if (KeymasterDefs.getTagType(i2) != 536870912) {
            throw new IllegalArgumentException(c.d("Not a repeating enum tag: ", i2));
        }
        ArrayList arrayList = new ArrayList();
        for (KeymasterArgument keymasterArgument : this.mArguments) {
            if (keymasterArgument.tag == i2) {
                arrayList.add(Integer.valueOf(getEnumTagValue(keymasterArgument)));
            }
        }
        return arrayList;
    }

    public long getUnsignedInt(int i2, long j2) {
        if (KeymasterDefs.getTagType(i2) != 805306368) {
            throw new IllegalArgumentException(c.d("Not an int tag: ", i2));
        }
        KeymasterArgument argumentByTag = getArgumentByTag(i2);
        return argumentByTag == null ? j2 : ((long) ((KeymasterIntArgument) argumentByTag).value) & 4294967295L;
    }

    public List<BigInteger> getUnsignedLongs(int i2) {
        if (KeymasterDefs.getTagType(i2) != -1610612736) {
            throw new IllegalArgumentException(c.d("Tag is not a repeating long: ", i2));
        }
        ArrayList arrayList = new ArrayList();
        for (KeymasterArgument keymasterArgument : this.mArguments) {
            if (keymasterArgument.tag == i2) {
                arrayList.add(getLongTagValue(keymasterArgument));
            }
        }
        return arrayList;
    }

    public void readFromParcel(Parcel parcel) {
        parcel.readTypedList(this.mArguments, KeymasterArgument.CREATOR);
    }

    public int size() {
        return this.mArguments.size();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.mArguments);
    }

    public KeymasterArguments() {
        this.mArguments = new ArrayList();
    }

    private KeymasterArguments(Parcel parcel) {
        this.mArguments = parcel.createTypedArrayList(KeymasterArgument.CREATOR);
    }
}
