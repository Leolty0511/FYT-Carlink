package android.media;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class VolumeShaper implements AutoCloseable {
    private int mId;
    private final WeakReference<PlayerBase> mWeakPlayerBase;

    public static final class Configuration implements Parcelable {
        public static final Parcelable.Creator<Configuration> CREATOR;
        public static final int INTERPOLATOR_TYPE_CUBIC = 2;
        public static final int INTERPOLATOR_TYPE_CUBIC_MONOTONIC = 3;
        public static final int INTERPOLATOR_TYPE_LINEAR = 1;
        public static final int INTERPOLATOR_TYPE_STEP = 0;
        private static final int MAXIMUM_CURVE_POINTS = 16;
        public static final int OPTION_FLAG_CLOCK_TIME = 2;
        private static final int OPTION_FLAG_PUBLIC_ALL = 3;
        public static final int OPTION_FLAG_VOLUME_IN_DBFS = 1;
        public static final Configuration SCURVE_RAMP;
        public static final Configuration SINE_RAMP;
        static final int TYPE_ID = 0;
        static final int TYPE_SCALE = 1;
        private final double mDurationMs;
        private final int mId;
        private final int mInterpolatorType;
        private final int mOptionFlags;
        private final float[] mTimes;
        private final int mType;
        private final float[] mVolumes;
        public static final Configuration LINEAR_RAMP = new Builder().setInterpolatorType(1).setCurve(new float[]{0.0f, 1.0f}, new float[]{0.0f, 1.0f}).setDuration(1000).build();
        public static final Configuration CUBIC_RAMP = new Builder().setInterpolatorType(2).setCurve(new float[]{0.0f, 1.0f}, new float[]{0.0f, 1.0f}).setDuration(1000).build();

        @Retention(RetentionPolicy.SOURCE)
        public @interface InterpolatorType {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface OptionFlag {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        static {
            float[] fArr = new float[16];
            float[] fArr2 = new float[16];
            float[] fArr3 = new float[16];
            for (int i2 = 0; i2 < 16; i2++) {
                float f2 = i2 / 15.0f;
                fArr[i2] = f2;
                float fSin = (float) Math.sin((((double) f2) * 3.141592653589793d) / 2.0d);
                fArr2[i2] = fSin;
                fArr3[i2] = fSin * fSin;
            }
            SINE_RAMP = new Builder().setInterpolatorType(2).setCurve(fArr, fArr2).setDuration(1000L).build();
            SCURVE_RAMP = new Builder().setInterpolatorType(2).setCurve(fArr, fArr3).setDuration(1000L).build();
            CREATOR = new Parcelable.Creator<Configuration>() { // from class: android.media.VolumeShaper.Configuration.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public Configuration createFromParcel(Parcel parcel) {
                    int i3 = parcel.readInt();
                    int i4 = parcel.readInt();
                    if (i3 == 0) {
                        return new Configuration(i4);
                    }
                    int i5 = parcel.readInt();
                    double d2 = parcel.readDouble();
                    int i6 = parcel.readInt();
                    parcel.readFloat();
                    parcel.readFloat();
                    int i7 = parcel.readInt();
                    float[] fArr4 = new float[i7];
                    float[] fArr5 = new float[i7];
                    for (int i8 = 0; i8 < i7; i8++) {
                        fArr4[i8] = parcel.readFloat();
                        fArr5[i8] = parcel.readFloat();
                    }
                    return new Configuration(i3, i4, i5, d2, i6, fArr4, fArr5);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public Configuration[] newArray(int i3) {
                    return new Configuration[i3];
                }
            };
        }

        private static String checkCurveForErrors(float[] fArr, float[] fArr2, boolean z2) {
            if (fArr == null) {
                return "times array must be non-null";
            }
            if (fArr2 == null) {
                return "volumes array must be non-null";
            }
            if (fArr.length != fArr2.length) {
                return "array length must match";
            }
            if (fArr.length < 2) {
                return "array length must be at least 2";
            }
            if (fArr.length > 16) {
                return "array length must be no larger than 16";
            }
            int i2 = 0;
            if (fArr[0] != 0.0f) {
                return "times must start at 0.f";
            }
            if (fArr[fArr.length - 1] != 1.0f) {
                return "times must end at 1.f";
            }
            for (int i3 = 1; i3 < fArr.length; i3++) {
                if (fArr[i3] <= fArr[i3 - 1]) {
                    return c.d("times not monotonic increasing, check index ", i3);
                }
            }
            if (z2) {
                while (i2 < fArr2.length) {
                    if (fArr2[i2] > 0.0f) {
                        return c.d("volumes for log scale cannot be positive, check index ", i2);
                    }
                    i2++;
                }
                return null;
            }
            while (i2 < fArr2.length) {
                float f2 = fArr2[i2];
                if (f2 < 0.0f || f2 > 1.0f) {
                    return c.d("volumes for linear scale must be between 0.f and 1.f, check index ", i2);
                }
                i2++;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void checkCurveForErrorsAndThrowException(float[] fArr, float[] fArr2, boolean z2, boolean z3) {
            String strCheckCurveForErrors = checkCurveForErrors(fArr, fArr2, z2);
            if (strCheckCurveForErrors != null) {
                if (!z3) {
                    throw new IllegalArgumentException(strCheckCurveForErrors);
                }
                throw new IllegalStateException(strCheckCurveForErrors);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void checkValidVolumeAndThrowException(float f2, boolean z2) {
            if (z2) {
                if (f2 > 0.0f) {
                    throw new IllegalArgumentException("dbfs volume must be 0.f or less");
                }
            } else if (f2 < 0.0f || f2 > 1.0f) {
                throw new IllegalArgumentException("volume must be >= 0.f and <= 1.f");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void clampVolume(float[] fArr, boolean z2) {
            int i2 = 0;
            if (z2) {
                while (i2 < fArr.length) {
                    if (fArr[i2] > 0.0f) {
                        fArr[i2] = 0.0f;
                    }
                    i2++;
                }
                return;
            }
            while (i2 < fArr.length) {
                float f2 = fArr[i2];
                if (f2 < 0.0f) {
                    fArr[i2] = 0.0f;
                } else if (f2 > 1.0f) {
                    fArr[i2] = 1.0f;
                }
                i2++;
            }
        }

        public static int getMaximumCurvePoints() {
            return 16;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Configuration)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            Configuration configuration = (Configuration) obj;
            int i2 = this.mType;
            if (i2 == configuration.mType && this.mId == configuration.mId) {
                return i2 == 0 || (this.mOptionFlags == configuration.mOptionFlags && this.mDurationMs == configuration.mDurationMs && this.mInterpolatorType == configuration.mInterpolatorType && Arrays.equals(this.mTimes, configuration.mTimes) && Arrays.equals(this.mVolumes, configuration.mVolumes));
            }
            return false;
        }

        public int getAllOptionFlags() {
            return this.mOptionFlags;
        }

        public long getDuration() {
            return (long) this.mDurationMs;
        }

        public int getId() {
            return this.mId;
        }

        public int getInterpolatorType() {
            return this.mInterpolatorType;
        }

        public int getOptionFlags() {
            return this.mOptionFlags & 3;
        }

        public float[] getTimes() {
            return this.mTimes;
        }

        public int getType() {
            return this.mType;
        }

        public float[] getVolumes() {
            return this.mVolumes;
        }

        public int hashCode() {
            int i2 = this.mType;
            return i2 == 0 ? Objects.hash(Integer.valueOf(i2), Integer.valueOf(this.mId)) : Objects.hash(Integer.valueOf(i2), Integer.valueOf(this.mId), Integer.valueOf(this.mOptionFlags), Double.valueOf(this.mDurationMs), Integer.valueOf(this.mInterpolatorType), Integer.valueOf(Arrays.hashCode(this.mTimes)), Integer.valueOf(Arrays.hashCode(this.mVolumes)));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("VolumeShaper.Configuration{mType = ");
            sb.append(this.mType);
            sb.append(", mId = ");
            sb.append(this.mId);
            String str = "}";
            if (this.mType != 0) {
                str = ", mOptionFlags = 0x" + Integer.toHexString(this.mOptionFlags).toUpperCase() + ", mDurationMs = " + this.mDurationMs + ", mInterpolatorType = " + this.mInterpolatorType + ", mTimes[] = " + Arrays.toString(this.mTimes) + ", mVolumes[] = " + Arrays.toString(this.mVolumes) + "}";
            }
            sb.append(str);
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mType);
            parcel.writeInt(this.mId);
            if (this.mType == 0) {
                return;
            }
            parcel.writeInt(this.mOptionFlags);
            parcel.writeDouble(this.mDurationMs);
            parcel.writeInt(this.mInterpolatorType);
            parcel.writeFloat(0.0f);
            parcel.writeFloat(0.0f);
            parcel.writeInt(this.mTimes.length);
            int i3 = 0;
            while (true) {
                float[] fArr = this.mTimes;
                if (i3 >= fArr.length) {
                    return;
                }
                parcel.writeFloat(fArr[i3]);
                parcel.writeFloat(this.mVolumes[i3]);
                i3++;
            }
        }

        public Configuration(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException(c.d("negative id ", i2));
            }
            this.mType = 0;
            this.mId = i2;
            this.mInterpolatorType = 0;
            this.mOptionFlags = 0;
            this.mDurationMs = 0.0d;
            this.mTimes = null;
            this.mVolumes = null;
        }

        public static final class Builder {
            private double mDurationMs;
            private int mId;
            private int mInterpolatorType;
            private int mOptionFlags;
            private float[] mTimes;
            private int mType;
            private float[] mVolumes;

            public Builder() {
                this.mType = 1;
                this.mId = -1;
                this.mInterpolatorType = 2;
                this.mOptionFlags = 2;
                this.mDurationMs = 1000.0d;
                this.mTimes = null;
                this.mVolumes = null;
            }

            public Configuration build() {
                Configuration.checkCurveForErrorsAndThrowException(this.mTimes, this.mVolumes, (this.mOptionFlags & 1) != 0, true);
                return new Configuration(this.mType, this.mId, this.mOptionFlags, this.mDurationMs, this.mInterpolatorType, this.mTimes, this.mVolumes);
            }

            public Builder invertVolumes() {
                int i2 = 0;
                Configuration.checkCurveForErrorsAndThrowException(this.mTimes, this.mVolumes, (this.mOptionFlags & 1) != 0, true);
                float f2 = this.mVolumes[0];
                int i3 = 1;
                float f3 = f2;
                while (true) {
                    float[] fArr = this.mVolumes;
                    if (i3 >= fArr.length) {
                        break;
                    }
                    float f4 = fArr[i3];
                    if (f4 < f3) {
                        f3 = f4;
                    } else if (f4 > f2) {
                        f2 = f4;
                    }
                    i3++;
                }
                float f5 = f2 + f3;
                while (true) {
                    float[] fArr2 = this.mVolumes;
                    if (i2 >= fArr2.length) {
                        return this;
                    }
                    fArr2[i2] = f5 - fArr2[i2];
                    i2++;
                }
            }

            public Builder reflectTimes() {
                float[] fArr;
                int i2 = 0;
                Configuration.checkCurveForErrorsAndThrowException(this.mTimes, this.mVolumes, (this.mOptionFlags & 1) != 0, true);
                while (true) {
                    fArr = this.mTimes;
                    if (i2 >= fArr.length / 2) {
                        break;
                    }
                    float f2 = fArr[i2];
                    fArr[i2] = 1.0f - fArr[(fArr.length - 1) - i2];
                    fArr[(fArr.length - 1) - i2] = 1.0f - f2;
                    float[] fArr2 = this.mVolumes;
                    float f3 = fArr2[i2];
                    fArr2[i2] = fArr2[(fArr2.length - 1) - i2];
                    fArr2[(fArr2.length - 1) - i2] = f3;
                    i2++;
                }
                if ((1 & fArr.length) != 0) {
                    fArr[i2] = 1.0f - fArr[i2];
                }
                return this;
            }

            public Builder scaleToEndVolume(float f2) {
                int i2 = 0;
                boolean z2 = (this.mOptionFlags & 1) != 0;
                Configuration.checkCurveForErrorsAndThrowException(this.mTimes, this.mVolumes, z2, true);
                Configuration.checkValidVolumeAndThrowException(f2, z2);
                float[] fArr = this.mVolumes;
                float f3 = fArr[0];
                float f4 = fArr[fArr.length - 1];
                if (f4 != f3) {
                    float f5 = (f2 - f3) / (f4 - f3);
                    while (true) {
                        float[] fArr2 = this.mVolumes;
                        if (i2 >= fArr2.length) {
                            break;
                        }
                        fArr2[i2] = c.a(fArr2[i2], f3, f5, f3);
                        i2++;
                    }
                } else {
                    float f6 = f2 - f3;
                    while (true) {
                        float[] fArr3 = this.mVolumes;
                        if (i2 >= fArr3.length) {
                            break;
                        }
                        fArr3[i2] = (this.mTimes[i2] * f6) + fArr3[i2];
                        i2++;
                    }
                }
                Configuration.clampVolume(this.mVolumes, z2);
                return this;
            }

            public Builder scaleToStartVolume(float f2) {
                int i2 = 0;
                boolean z2 = (this.mOptionFlags & 1) != 0;
                Configuration.checkCurveForErrorsAndThrowException(this.mTimes, this.mVolumes, z2, true);
                Configuration.checkValidVolumeAndThrowException(f2, z2);
                float[] fArr = this.mVolumes;
                float f3 = fArr[0];
                float f4 = fArr[fArr.length - 1];
                if (f4 != f3) {
                    float f5 = (f2 - f4) / (f3 - f4);
                    while (true) {
                        float[] fArr2 = this.mVolumes;
                        if (i2 >= fArr2.length) {
                            break;
                        }
                        fArr2[i2] = c.a(fArr2[i2], f4, f5, f4);
                        i2++;
                    }
                } else {
                    float f6 = f2 - f3;
                    while (true) {
                        float[] fArr3 = this.mVolumes;
                        if (i2 >= fArr3.length) {
                            break;
                        }
                        fArr3[i2] = c.a(1.0f, this.mTimes[i2], f6, fArr3[i2]);
                        i2++;
                    }
                }
                Configuration.clampVolume(this.mVolumes, z2);
                return this;
            }

            public Builder setCurve(float[] fArr, float[] fArr2) {
                Configuration.checkCurveForErrorsAndThrowException(fArr, fArr2, (this.mOptionFlags & 1) != 0, false);
                this.mTimes = (float[]) fArr.clone();
                this.mVolumes = (float[]) fArr2.clone();
                return this;
            }

            public Builder setDuration(long j2) {
                if (j2 > 0) {
                    this.mDurationMs = j2;
                    return this;
                }
                throw new IllegalArgumentException("duration: " + j2 + " not positive");
            }

            public Builder setId(int i2) {
                if (i2 < -1) {
                    throw new IllegalArgumentException(c.d("invalid id: ", i2));
                }
                this.mId = i2;
                return this;
            }

            public Builder setInterpolatorType(int i2) {
                if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
                    throw new IllegalArgumentException(c.d("invalid interpolatorType: ", i2));
                }
                this.mInterpolatorType = i2;
                return this;
            }

            public Builder setOptionFlags(int i2) {
                if ((i2 & (-4)) != 0) {
                    throw new IllegalArgumentException(c.d("invalid bits in flag: ", i2));
                }
                this.mOptionFlags = i2 | (this.mOptionFlags & (-4));
                return this;
            }

            public Builder(Configuration configuration) {
                this.mType = 1;
                this.mId = -1;
                this.mInterpolatorType = 2;
                this.mOptionFlags = 2;
                this.mDurationMs = 1000.0d;
                this.mTimes = null;
                this.mVolumes = null;
                this.mType = configuration.getType();
                this.mId = configuration.getId();
                this.mOptionFlags = configuration.getAllOptionFlags();
                this.mInterpolatorType = configuration.getInterpolatorType();
                this.mDurationMs = configuration.getDuration();
                this.mTimes = (float[]) configuration.getTimes().clone();
                this.mVolumes = (float[]) configuration.getVolumes().clone();
            }
        }

        private Configuration(int i2, int i3, int i4, double d2, int i5, float[] fArr, float[] fArr2) {
            this.mType = i2;
            this.mId = i3;
            this.mOptionFlags = i4;
            this.mDurationMs = d2;
            this.mInterpolatorType = i5;
            this.mTimes = fArr;
            this.mVolumes = fArr2;
        }
    }

    public static final class Operation implements Parcelable {
        private static final int FLAG_CREATE_IF_NEEDED = 16;
        private static final int FLAG_DEFER = 8;
        private static final int FLAG_JOIN = 4;
        private static final int FLAG_NONE = 0;
        private static final int FLAG_PUBLIC_ALL = 3;
        private static final int FLAG_REVERSE = 1;
        private static final int FLAG_TERMINATE = 2;
        private final int mFlags;
        private final int mReplaceId;
        private final float mXOffset;
        public static final Operation PLAY = new Builder().build();
        public static final Operation REVERSE = new Builder().reverse().build();
        public static final Parcelable.Creator<Operation> CREATOR = new Parcelable.Creator<Operation>() { // from class: android.media.VolumeShaper.Operation.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Operation createFromParcel(Parcel parcel) {
                return new Operation(parcel.readInt(), parcel.readInt(), parcel.readFloat());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Operation[] newArray(int i2) {
                return new Operation[i2];
            }
        };

        @Retention(RetentionPolicy.SOURCE)
        public @interface Flag {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Operation)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            Operation operation = (Operation) obj;
            return this.mFlags == operation.mFlags && this.mReplaceId == operation.mReplaceId && Float.compare(this.mXOffset, operation.mXOffset) == 0;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mFlags), Integer.valueOf(this.mReplaceId), Float.valueOf(this.mXOffset));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("VolumeShaper.Operation{mFlags = 0x");
            sb.append(Integer.toHexString(this.mFlags).toUpperCase());
            sb.append(", mReplaceId = ");
            sb.append(this.mReplaceId);
            sb.append(", mXOffset = ");
            return m.i(sb, this.mXOffset, "}");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mFlags);
            parcel.writeInt(this.mReplaceId);
            parcel.writeFloat(this.mXOffset);
        }

        private Operation(int i2, int i3, float f2) {
            this.mFlags = i2;
            this.mReplaceId = i3;
            this.mXOffset = f2;
        }

        public static final class Builder {
            int mFlags;
            int mReplaceId;
            float mXOffset;

            public Builder() {
                this.mFlags = 0;
                this.mReplaceId = -1;
                this.mXOffset = Float.NaN;
            }

            private Builder setFlags(int i2) {
                if ((i2 & (-4)) != 0) {
                    throw new IllegalArgumentException(c.d("flag has unknown bits set: ", i2));
                }
                this.mFlags = i2 | (this.mFlags & (-4));
                return this;
            }

            public Operation build() {
                return new Operation(this.mFlags, this.mReplaceId, this.mXOffset);
            }

            public Builder createIfNeeded() {
                this.mFlags |= 16;
                return this;
            }

            public Builder defer() {
                this.mFlags |= 8;
                return this;
            }

            public Builder replace(int i2, boolean z2) {
                this.mReplaceId = i2;
                if (z2) {
                    this.mFlags |= 4;
                } else {
                    this.mFlags &= -5;
                }
                return this;
            }

            public Builder reverse() {
                this.mFlags ^= 1;
                return this;
            }

            public Builder setXOffset(float f2) {
                if (f2 < -0.0f) {
                    throw new IllegalArgumentException("Negative xOffset not allowed");
                }
                if (f2 > 1.0f) {
                    throw new IllegalArgumentException("xOffset > 1.f not allowed");
                }
                this.mXOffset = f2;
                return this;
            }

            public Builder terminate() {
                this.mFlags |= 2;
                return this;
            }

            public Builder(Operation operation) {
                this.mReplaceId = operation.mReplaceId;
                this.mFlags = operation.mFlags;
                this.mXOffset = operation.mXOffset;
            }
        }
    }

    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: android.media.VolumeShaper.State.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public State createFromParcel(Parcel parcel) {
                return new State(parcel.readFloat(), parcel.readFloat());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public State[] newArray(int i2) {
                return new State[i2];
            }
        };
        private float mVolume;
        private float mXOffset;

        public State(float f2, float f3) {
            this.mVolume = f2;
            this.mXOffset = f3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof State)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            State state = (State) obj;
            return this.mVolume == state.mVolume && this.mXOffset == state.mXOffset;
        }

        public float getVolume() {
            return this.mVolume;
        }

        public float getXOffset() {
            return this.mXOffset;
        }

        public int hashCode() {
            return Objects.hash(Float.valueOf(this.mVolume), Float.valueOf(this.mXOffset));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("VolumeShaper.State{mVolume = ");
            sb.append(this.mVolume);
            sb.append(", mXOffset = ");
            return m.i(sb, this.mXOffset, "}");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeFloat(this.mVolume);
            parcel.writeFloat(this.mXOffset);
        }
    }

    public VolumeShaper(Configuration configuration, PlayerBase playerBase) {
        this.mWeakPlayerBase = new WeakReference<>(playerBase);
        this.mId = applyPlayer(configuration, new Operation.Builder().defer().build());
    }

    private int applyPlayer(Configuration configuration, Operation operation) {
        WeakReference<PlayerBase> weakReference = this.mWeakPlayerBase;
        if (weakReference == null) {
            throw new IllegalStateException("uninitialized shaper");
        }
        PlayerBase playerBase = weakReference.get();
        if (playerBase == null) {
            throw new IllegalStateException("player deallocated");
        }
        int iPlayerApplyVolumeShaper = playerBase.playerApplyVolumeShaper(configuration, operation);
        if (iPlayerApplyVolumeShaper >= 0) {
            return iPlayerApplyVolumeShaper;
        }
        if (iPlayerApplyVolumeShaper == -38) {
            throw new IllegalStateException("player or VolumeShaper deallocated");
        }
        throw new IllegalArgumentException(c.d("invalid configuration or operation: ", iPlayerApplyVolumeShaper));
    }

    private State getStatePlayer(int i2) {
        WeakReference<PlayerBase> weakReference = this.mWeakPlayerBase;
        if (weakReference == null) {
            throw new IllegalStateException("uninitialized shaper");
        }
        PlayerBase playerBase = weakReference.get();
        if (playerBase == null) {
            throw new IllegalStateException("player deallocated");
        }
        State statePlayerGetVolumeShaperState = playerBase.playerGetVolumeShaperState(i2);
        if (statePlayerGetVolumeShaperState != null) {
            return statePlayerGetVolumeShaperState;
        }
        throw new IllegalStateException("shaper cannot be found");
    }

    public void apply(Operation operation) {
        applyPlayer(new Configuration(this.mId), operation);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        try {
            applyPlayer(new Configuration(this.mId), new Operation.Builder().terminate().build());
        } catch (IllegalStateException unused) {
        }
        WeakReference<PlayerBase> weakReference = this.mWeakPlayerBase;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    public void finalize() {
        close();
    }

    public int getId() {
        return this.mId;
    }

    public float getVolume() {
        return getStatePlayer(this.mId).getVolume();
    }

    public void replace(Configuration configuration, Operation operation, boolean z2) {
        this.mId = applyPlayer(configuration, new Operation.Builder(operation).replace(this.mId, z2).build());
    }
}
