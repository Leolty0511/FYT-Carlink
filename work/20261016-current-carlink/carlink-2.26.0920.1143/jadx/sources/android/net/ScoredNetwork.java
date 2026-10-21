package android.net;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ScoredNetwork implements Parcelable {
    public static final String ATTRIBUTES_KEY_BADGING_CURVE = "android.net.attributes.key.BADGING_CURVE";
    public static final String ATTRIBUTES_KEY_HAS_CAPTIVE_PORTAL = "android.net.attributes.key.HAS_CAPTIVE_PORTAL";
    public static final String ATTRIBUTES_KEY_RANKING_SCORE_OFFSET = "android.net.attributes.key.RANKING_SCORE_OFFSET";
    public static final Parcelable.Creator<ScoredNetwork> CREATOR = new Parcelable.Creator<ScoredNetwork>() { // from class: android.net.ScoredNetwork.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScoredNetwork createFromParcel(Parcel parcel) {
            return new ScoredNetwork(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScoredNetwork[] newArray(int i2) {
            return new ScoredNetwork[i2];
        }
    };
    public final Bundle attributes;
    public final boolean meteredHint;
    public final NetworkKey networkKey;
    public final RssiCurve rssiCurve;

    public int calculateBadge(int i2) {
        Bundle bundle = this.attributes;
        if (bundle == null || !bundle.containsKey(ATTRIBUTES_KEY_BADGING_CURVE)) {
            return 0;
        }
        return ((RssiCurve) this.attributes.getParcelable(ATTRIBUTES_KEY_BADGING_CURVE)).lookupScore(i2);
    }

    public int calculateRankingScore(int i2) {
        if (!hasRankingScore()) {
            throw new UnsupportedOperationException("Either rssiCurve or rankingScoreOffset is required to calculate the ranking score");
        }
        Bundle bundle = this.attributes;
        int i3 = bundle != null ? bundle.getInt(ATTRIBUTES_KEY_RANKING_SCORE_OFFSET, 0) + 0 : 0;
        RssiCurve rssiCurve = this.rssiCurve;
        int iLookupScore = rssiCurve != null ? rssiCurve.lookupScore(i2) << 8 : 0;
        long j2 = ((long) iLookupScore) + ((long) i3);
        int i4 = (int) j2;
        if (j2 == i4) {
            return i4;
        }
        try {
            throw new ArithmeticException();
        } catch (ArithmeticException unused) {
            return iLookupScore < 0 ? Integer.MIN_VALUE : Integer.MAX_VALUE;
        }
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
        ScoredNetwork scoredNetwork = (ScoredNetwork) obj;
        return Objects.equals(this.networkKey, scoredNetwork.networkKey) && Objects.equals(this.rssiCurve, scoredNetwork.rssiCurve) && Objects.equals(Boolean.valueOf(this.meteredHint), Boolean.valueOf(scoredNetwork.meteredHint)) && Objects.equals(this.attributes, scoredNetwork.attributes);
    }

    public boolean hasRankingScore() {
        Bundle bundle;
        return this.rssiCurve != null || ((bundle = this.attributes) != null && bundle.containsKey(ATTRIBUTES_KEY_RANKING_SCORE_OFFSET));
    }

    public int hashCode() {
        return Objects.hash(this.networkKey, this.rssiCurve, Boolean.valueOf(this.meteredHint), this.attributes);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ScoredNetwork{networkKey=" + this.networkKey + ", rssiCurve=" + this.rssiCurve + ", meteredHint=" + this.meteredHint);
        Bundle bundle = this.attributes;
        if (bundle != null && !bundle.isEmpty()) {
            sb.append(", attributes=" + this.attributes);
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.networkKey.writeToParcel(parcel, i2);
        if (this.rssiCurve != null) {
            parcel.writeByte((byte) 1);
            this.rssiCurve.writeToParcel(parcel, i2);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeByte(this.meteredHint ? (byte) 1 : (byte) 0);
        parcel.writeBundle(this.attributes);
    }

    public ScoredNetwork(NetworkKey networkKey, RssiCurve rssiCurve) {
        this(networkKey, rssiCurve, false);
    }

    public ScoredNetwork(NetworkKey networkKey, RssiCurve rssiCurve, boolean z2) {
        this(networkKey, rssiCurve, z2, null);
    }

    public ScoredNetwork(NetworkKey networkKey, RssiCurve rssiCurve, boolean z2, Bundle bundle) {
        this.networkKey = networkKey;
        this.rssiCurve = rssiCurve;
        this.meteredHint = z2;
        this.attributes = bundle;
    }

    private ScoredNetwork(Parcel parcel) {
        this.networkKey = NetworkKey.CREATOR.createFromParcel(parcel);
        if (parcel.readByte() == 1) {
            this.rssiCurve = RssiCurve.CREATOR.createFromParcel(parcel);
        } else {
            this.rssiCurve = null;
        }
        this.meteredHint = parcel.readByte() == 1;
        this.attributes = parcel.readBundle();
    }
}
