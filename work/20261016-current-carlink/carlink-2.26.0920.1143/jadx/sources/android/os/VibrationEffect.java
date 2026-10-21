package android.os;

import android.app.m;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class VibrationEffect implements Parcelable {
    public static final Parcelable.Creator<VibrationEffect> CREATOR = new Parcelable.Creator<VibrationEffect>() { // from class: android.os.VibrationEffect.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VibrationEffect createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == 1) {
                return new OneShot(parcel);
            }
            if (i2 == 2) {
                return new Waveform(parcel);
            }
            if (i2 == 3) {
                return new Prebaked(parcel);
            }
            throw new IllegalStateException("Unexpected vibration event type token in parcel.");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VibrationEffect[] newArray(int i2) {
            return new VibrationEffect[i2];
        }
    };
    public static final int DEFAULT_AMPLITUDE = -1;
    public static final int EFFECT_CLICK = 0;
    public static final int EFFECT_DOUBLE_CLICK = 1;
    public static final int EFFECT_TICK = 2;
    private static final int PARCEL_TOKEN_EFFECT = 3;
    private static final int PARCEL_TOKEN_ONE_SHOT = 1;
    private static final int PARCEL_TOKEN_WAVEFORM = 2;

    public static class OneShot extends VibrationEffect {
        public static final Parcelable.Creator<OneShot> CREATOR = new Parcelable.Creator<OneShot>() { // from class: android.os.VibrationEffect.OneShot.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OneShot createFromParcel(Parcel parcel) {
                parcel.readInt();
                return new OneShot(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OneShot[] newArray(int i2) {
                return new OneShot[i2];
            }
        };
        private int mAmplitude;
        private long mTiming;

        public OneShot(Parcel parcel) {
            this(parcel.readLong(), parcel.readInt());
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OneShot)) {
                return false;
            }
            OneShot oneShot = (OneShot) obj;
            return oneShot.mTiming == this.mTiming && oneShot.mAmplitude == this.mAmplitude;
        }

        public int getAmplitude() {
            return this.mAmplitude;
        }

        public long getTiming() {
            return this.mTiming;
        }

        public int hashCode() {
            return this.mAmplitude * 37;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("OneShot{mTiming=");
            sb.append(this.mTiming);
            sb.append(", mAmplitude=");
            return android.accessibilityservice.c.m(sb, this.mAmplitude, "}");
        }

        @Override // android.os.VibrationEffect
        public void validate() {
            int i2 = this.mAmplitude;
            if (i2 < -1 || i2 == 0 || i2 > 255) {
                throw new IllegalArgumentException(android.accessibilityservice.c.m(new StringBuilder("amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="), this.mAmplitude, ")"));
            }
            if (this.mTiming <= 0) {
                throw new IllegalArgumentException(m.k(new StringBuilder("timing must be positive (timing="), this.mTiming, ")"));
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(1);
            parcel.writeLong(this.mTiming);
            parcel.writeInt(this.mAmplitude);
        }

        public OneShot(long j2, int i2) {
            this.mTiming = j2;
            this.mAmplitude = i2;
        }
    }

    public static class Prebaked extends VibrationEffect {
        public static final Parcelable.Creator<Prebaked> CREATOR = new Parcelable.Creator<Prebaked>() { // from class: android.os.VibrationEffect.Prebaked.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Prebaked createFromParcel(Parcel parcel) {
                parcel.readInt();
                return new Prebaked(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Prebaked[] newArray(int i2) {
                return new Prebaked[i2];
            }
        };
        private int mEffectId;
        private boolean mFallback;

        public Prebaked(Parcel parcel) {
            this(parcel.readInt(), parcel.readByte() != 0);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Prebaked)) {
                return false;
            }
            Prebaked prebaked = (Prebaked) obj;
            return this.mEffectId == prebaked.mEffectId && this.mFallback == prebaked.mFallback;
        }

        public int getId() {
            return this.mEffectId;
        }

        public int hashCode() {
            return this.mEffectId;
        }

        public boolean shouldFallback() {
            return this.mFallback;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Prebaked{mEffectId=");
            sb.append(this.mEffectId);
            sb.append(", mFallback=");
            return android.accessibilityservice.c.o(sb, this.mFallback, "}");
        }

        @Override // android.os.VibrationEffect
        public void validate() {
            int i2 = this.mEffectId;
            if (i2 != 0 && i2 != 1 && i2 != 2) {
                throw new IllegalArgumentException(android.accessibilityservice.c.m(new StringBuilder("Unknown prebaked effect type (value="), this.mEffectId, ")"));
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(3);
            parcel.writeInt(this.mEffectId);
            parcel.writeByte(this.mFallback ? (byte) 1 : (byte) 0);
        }

        public Prebaked(int i2, boolean z2) {
            this.mEffectId = i2;
            this.mFallback = z2;
        }
    }

    public static class Waveform extends VibrationEffect {
        public static final Parcelable.Creator<Waveform> CREATOR = new Parcelable.Creator<Waveform>() { // from class: android.os.VibrationEffect.Waveform.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Waveform createFromParcel(Parcel parcel) {
                parcel.readInt();
                return new Waveform(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Waveform[] newArray(int i2) {
                return new Waveform[i2];
            }
        };
        private int[] mAmplitudes;
        private int mRepeat;
        private long[] mTimings;

        public Waveform(Parcel parcel) {
            this(parcel.createLongArray(), parcel.createIntArray(), parcel.readInt());
        }

        private static boolean hasNonZeroEntry(long[] jArr) {
            for (long j2 : jArr) {
                if (j2 != 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Waveform)) {
                return false;
            }
            Waveform waveform = (Waveform) obj;
            return Arrays.equals(this.mTimings, waveform.mTimings) && Arrays.equals(this.mAmplitudes, waveform.mAmplitudes) && this.mRepeat == waveform.mRepeat;
        }

        public int[] getAmplitudes() {
            return this.mAmplitudes;
        }

        public int getRepeatIndex() {
            return this.mRepeat;
        }

        public long[] getTimings() {
            return this.mTimings;
        }

        public int hashCode() {
            Arrays.hashCode(this.mTimings);
            Arrays.hashCode(this.mAmplitudes);
            return this.mRepeat * 37;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Waveform{mTimings=");
            sb.append(Arrays.toString(this.mTimings));
            sb.append(", mAmplitudes=");
            sb.append(Arrays.toString(this.mAmplitudes));
            sb.append(", mRepeat=");
            return android.accessibilityservice.c.m(sb, this.mRepeat, "}");
        }

        @Override // android.os.VibrationEffect
        public void validate() {
            long[] jArr = this.mTimings;
            if (jArr.length != this.mAmplitudes.length) {
                StringBuilder sb = new StringBuilder("timing and amplitude arrays must be of equal length (timings.length=");
                sb.append(this.mTimings.length);
                sb.append(", amplitudes.length=");
                throw new IllegalArgumentException(android.accessibilityservice.c.m(sb, this.mAmplitudes.length, ")"));
            }
            if (!hasNonZeroEntry(jArr)) {
                throw new IllegalArgumentException("at least one timing must be non-zero (timings=" + Arrays.toString(this.mTimings) + ")");
            }
            for (long j2 : this.mTimings) {
                if (j2 < 0) {
                    throw new IllegalArgumentException("timings must all be >= 0 (timings=" + Arrays.toString(this.mTimings) + ")");
                }
            }
            for (int i2 : this.mAmplitudes) {
                if (i2 < -1 || i2 > 255) {
                    throw new IllegalArgumentException("amplitudes must all be DEFAULT_AMPLITUDE or between 0 and 255 (amplitudes=" + Arrays.toString(this.mAmplitudes) + ")");
                }
            }
            int i3 = this.mRepeat;
            if (i3 < -1 || i3 >= this.mTimings.length) {
                StringBuilder sb2 = new StringBuilder("repeat index must be within the bounds of the timings array (timings.length=");
                sb2.append(this.mTimings.length);
                sb2.append(", index=");
                throw new IllegalArgumentException(android.accessibilityservice.c.m(sb2, this.mRepeat, ")"));
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(2);
            parcel.writeLongArray(this.mTimings);
            parcel.writeIntArray(this.mAmplitudes);
            parcel.writeInt(this.mRepeat);
        }

        public Waveform(long[] jArr, int[] iArr, int i2) {
            long[] jArr2 = new long[jArr.length];
            this.mTimings = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            int[] iArr2 = new int[iArr.length];
            this.mAmplitudes = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.mRepeat = i2;
        }
    }

    public static VibrationEffect createOneShot(long j2, int i2) {
        OneShot oneShot = new OneShot(j2, i2);
        oneShot.validate();
        return oneShot;
    }

    public static VibrationEffect createWaveform(long[] jArr, int i2) {
        int[] iArr = new int[jArr.length];
        for (int i3 = 0; i3 < jArr.length / 2; i3++) {
            iArr[(i3 * 2) + 1] = -1;
        }
        return createWaveform(jArr, iArr, i2);
    }

    public static VibrationEffect get(int i2) {
        return get(i2, true);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public abstract void validate();

    public static VibrationEffect get(int i2, boolean z2) {
        Prebaked prebaked = new Prebaked(i2, z2);
        prebaked.validate();
        return prebaked;
    }

    public static VibrationEffect createWaveform(long[] jArr, int[] iArr, int i2) {
        Waveform waveform = new Waveform(jArr, iArr, i2);
        waveform.validate();
        return waveform;
    }
}
