package android.location;

import com.android.internal.location.ProviderProperties;

/* JADX INFO: loaded from: classes.dex */
public class LocationProvider {
    public static final int AVAILABLE = 2;
    public static final String BAD_CHARS_REGEX = "[^a-zA-Z0-9]";
    public static final int OUT_OF_SERVICE = 0;
    public static final int TEMPORARILY_UNAVAILABLE = 1;
    private final String mName;
    private final ProviderProperties mProperties;

    public LocationProvider(String str, ProviderProperties providerProperties) {
        if (!str.matches(BAD_CHARS_REGEX)) {
            this.mName = str;
            this.mProperties = providerProperties;
        } else {
            throw new IllegalArgumentException("provider name contains illegal character: " + str);
        }
    }

    public static boolean propertiesMeetCriteria(String str, ProviderProperties providerProperties, Criteria criteria) {
        if (LocationManager.PASSIVE_PROVIDER.equals(str) || providerProperties == null) {
            return false;
        }
        if (criteria.getAccuracy() != 0 && criteria.getAccuracy() < providerProperties.f976i) {
            return false;
        }
        if (criteria.getPowerRequirement() != 0 && criteria.getPowerRequirement() < providerProperties.f975h) {
            return false;
        }
        if (criteria.isAltitudeRequired() && !providerProperties.f972e) {
            return false;
        }
        if (criteria.isSpeedRequired() && !providerProperties.f973f) {
            return false;
        }
        if (!criteria.isBearingRequired() || providerProperties.f974g) {
            return criteria.isCostAllowed() || !providerProperties.f971d;
        }
        return false;
    }

    public int getAccuracy() {
        return this.mProperties.f976i;
    }

    public String getName() {
        return this.mName;
    }

    public int getPowerRequirement() {
        return this.mProperties.f975h;
    }

    public boolean hasMonetaryCost() {
        return this.mProperties.f971d;
    }

    public boolean meetsCriteria(Criteria criteria) {
        return propertiesMeetCriteria(this.mName, this.mProperties, criteria);
    }

    public boolean requiresCell() {
        return this.mProperties.f970c;
    }

    public boolean requiresNetwork() {
        return this.mProperties.f968a;
    }

    public boolean requiresSatellite() {
        return this.mProperties.f969b;
    }

    public boolean supportsAltitude() {
        return this.mProperties.f972e;
    }

    public boolean supportsBearing() {
        return this.mProperties.f974g;
    }

    public boolean supportsSpeed() {
        return this.mProperties.f973f;
    }
}
