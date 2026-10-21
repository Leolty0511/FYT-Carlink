package android.net.metrics;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class RaEvent implements Parcelable {
    public static final Parcelable.Creator<RaEvent> CREATOR = new Parcelable.Creator<RaEvent>() { // from class: android.net.metrics.RaEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RaEvent createFromParcel(Parcel parcel) {
            return new RaEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RaEvent[] newArray(int i2) {
            return new RaEvent[i2];
        }
    };
    public static final long NO_LIFETIME = -1;
    public final long dnsslLifetime;
    public final long prefixPreferredLifetime;
    public final long prefixValidLifetime;
    public final long rdnssLifetime;
    public final long routeInfoLifetime;
    public final long routerLifetime;

    public static class Builder {
        long routerLifetime = -1;
        long prefixValidLifetime = -1;
        long prefixPreferredLifetime = -1;
        long routeInfoLifetime = -1;
        long rdnssLifetime = -1;
        long dnsslLifetime = -1;

        private long updateLifetime(long j2, long j3) {
            return j2 == -1 ? j3 : Math.min(j2, j3);
        }

        public RaEvent build() {
            return new RaEvent(this.routerLifetime, this.prefixValidLifetime, this.prefixPreferredLifetime, this.routeInfoLifetime, this.rdnssLifetime, this.dnsslLifetime);
        }

        public Builder updateDnsslLifetime(long j2) {
            this.dnsslLifetime = updateLifetime(this.dnsslLifetime, j2);
            return this;
        }

        public Builder updatePrefixPreferredLifetime(long j2) {
            this.prefixPreferredLifetime = updateLifetime(this.prefixPreferredLifetime, j2);
            return this;
        }

        public Builder updatePrefixValidLifetime(long j2) {
            this.prefixValidLifetime = updateLifetime(this.prefixValidLifetime, j2);
            return this;
        }

        public Builder updateRdnssLifetime(long j2) {
            this.rdnssLifetime = updateLifetime(this.rdnssLifetime, j2);
            return this;
        }

        public Builder updateRouteInfoLifetime(long j2) {
            this.routeInfoLifetime = updateLifetime(this.routeInfoLifetime, j2);
            return this;
        }

        public Builder updateRouterLifetime(long j2) {
            this.routerLifetime = updateLifetime(this.routerLifetime, j2);
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "RaEvent(lifetimes: " + String.format("router=%ds, ", Long.valueOf(this.routerLifetime)) + String.format("prefix_valid=%ds, ", Long.valueOf(this.prefixValidLifetime)) + String.format("prefix_preferred=%ds, ", Long.valueOf(this.prefixPreferredLifetime)) + String.format("route_info=%ds, ", Long.valueOf(this.routeInfoLifetime)) + String.format("rdnss=%ds, ", Long.valueOf(this.rdnssLifetime)) + String.format("dnssl=%ds)", Long.valueOf(this.dnsslLifetime));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.routerLifetime);
        parcel.writeLong(this.prefixValidLifetime);
        parcel.writeLong(this.prefixPreferredLifetime);
        parcel.writeLong(this.routeInfoLifetime);
        parcel.writeLong(this.rdnssLifetime);
        parcel.writeLong(this.dnsslLifetime);
    }

    public RaEvent(long j2, long j3, long j4, long j5, long j6, long j7) {
        this.routerLifetime = j2;
        this.prefixValidLifetime = j3;
        this.prefixPreferredLifetime = j4;
        this.routeInfoLifetime = j5;
        this.rdnssLifetime = j6;
        this.dnsslLifetime = j7;
    }

    private RaEvent(Parcel parcel) {
        this.routerLifetime = parcel.readLong();
        this.prefixValidLifetime = parcel.readLong();
        this.prefixPreferredLifetime = parcel.readLong();
        this.routeInfoLifetime = parcel.readLong();
        this.rdnssLifetime = parcel.readLong();
        this.dnsslLifetime = parcel.readLong();
    }
}
