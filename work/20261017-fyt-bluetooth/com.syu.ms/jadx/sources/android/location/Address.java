package android.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.PhoneNumberUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Address implements Parcelable {
    public static final Parcelable.Creator<Address> CREATOR = new Parcelable.Creator<Address>() { // from class: android.location.Address.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Address createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            Address address = new Address(string2.length() > 0 ? new Locale(string, string2) : new Locale(string));
            int i2 = parcel.readInt();
            if (i2 > 0) {
                address.mAddressLines = new HashMap(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    int i4 = parcel.readInt();
                    address.mAddressLines.put(Integer.valueOf(i4), parcel.readString());
                    address.mMaxAddressLineIndex = Math.max(address.mMaxAddressLineIndex, i4);
                }
            } else {
                address.mAddressLines = null;
                address.mMaxAddressLineIndex = -1;
            }
            address.mFeatureName = parcel.readString();
            address.mAdminArea = parcel.readString();
            address.mSubAdminArea = parcel.readString();
            address.mLocality = parcel.readString();
            address.mSubLocality = parcel.readString();
            address.mThoroughfare = parcel.readString();
            address.mSubThoroughfare = parcel.readString();
            address.mPremises = parcel.readString();
            address.mPostalCode = parcel.readString();
            address.mCountryCode = parcel.readString();
            address.mCountryName = parcel.readString();
            address.mHasLatitude = parcel.readInt() != 0;
            if (address.mHasLatitude) {
                address.mLatitude = parcel.readDouble();
            }
            address.mHasLongitude = parcel.readInt() != 0;
            if (address.mHasLongitude) {
                address.mLongitude = parcel.readDouble();
            }
            address.mPhone = parcel.readString();
            address.mUrl = parcel.readString();
            address.mExtras = parcel.readBundle();
            return address;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Address[] newArray(int i2) {
            return new Address[i2];
        }
    };
    private HashMap<Integer, String> mAddressLines;
    private String mAdminArea;
    private String mCountryCode;
    private String mCountryName;
    private String mFeatureName;
    private double mLatitude;
    private Locale mLocale;
    private String mLocality;
    private double mLongitude;
    private String mPhone;
    private String mPostalCode;
    private String mPremises;
    private String mSubAdminArea;
    private String mSubLocality;
    private String mSubThoroughfare;
    private String mThoroughfare;
    private String mUrl;
    private int mMaxAddressLineIndex = -1;
    private boolean mHasLatitude = false;
    private boolean mHasLongitude = false;
    private Bundle mExtras = null;

    public Address(Locale locale) {
        this.mLocale = locale;
    }

    public void clearLatitude() {
        this.mHasLatitude = false;
    }

    public void clearLongitude() {
        this.mHasLongitude = false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        Bundle bundle = this.mExtras;
        if (bundle != null) {
            return bundle.describeContents();
        }
        return 0;
    }

    public String getAddressLine(int i2) {
        if (i2 >= 0) {
            HashMap<Integer, String> map = this.mAddressLines;
            if (map == null) {
                return null;
            }
            return map.get(Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("index = " + i2 + " < 0");
    }

    public String getAdminArea() {
        return this.mAdminArea;
    }

    public String getCountryCode() {
        return this.mCountryCode;
    }

    public String getCountryName() {
        return this.mCountryName;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public String getFeatureName() {
        return this.mFeatureName;
    }

    public double getLatitude() {
        if (this.mHasLatitude) {
            return this.mLatitude;
        }
        throw new IllegalStateException();
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public String getLocality() {
        return this.mLocality;
    }

    public double getLongitude() {
        if (this.mHasLongitude) {
            return this.mLongitude;
        }
        throw new IllegalStateException();
    }

    public int getMaxAddressLineIndex() {
        return this.mMaxAddressLineIndex;
    }

    public String getPhone() {
        return this.mPhone;
    }

    public String getPostalCode() {
        return this.mPostalCode;
    }

    public String getPremises() {
        return this.mPremises;
    }

    public String getSubAdminArea() {
        return this.mSubAdminArea;
    }

    public String getSubLocality() {
        return this.mSubLocality;
    }

    public String getSubThoroughfare() {
        return this.mSubThoroughfare;
    }

    public String getThoroughfare() {
        return this.mThoroughfare;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public boolean hasLatitude() {
        return this.mHasLatitude;
    }

    public boolean hasLongitude() {
        return this.mHasLongitude;
    }

    public void setAddressLine(int i2, String str) {
        if (i2 < 0) {
            throw new IllegalArgumentException("index = " + i2 + " < 0");
        }
        if (this.mAddressLines == null) {
            this.mAddressLines = new HashMap<>();
        }
        this.mAddressLines.put(Integer.valueOf(i2), str);
        if (str != null) {
            this.mMaxAddressLineIndex = Math.max(this.mMaxAddressLineIndex, i2);
            return;
        }
        this.mMaxAddressLineIndex = -1;
        Iterator<Integer> it = this.mAddressLines.keySet().iterator();
        while (it.hasNext()) {
            this.mMaxAddressLineIndex = Math.max(this.mMaxAddressLineIndex, it.next().intValue());
        }
    }

    public void setAdminArea(String str) {
        this.mAdminArea = str;
    }

    public void setCountryCode(String str) {
        this.mCountryCode = str;
    }

    public void setCountryName(String str) {
        this.mCountryName = str;
    }

    public void setExtras(Bundle bundle) {
        this.mExtras = bundle == null ? null : new Bundle(bundle);
    }

    public void setFeatureName(String str) {
        this.mFeatureName = str;
    }

    public void setLatitude(double d2) {
        this.mLatitude = d2;
        this.mHasLatitude = true;
    }

    public void setLocality(String str) {
        this.mLocality = str;
    }

    public void setLongitude(double d2) {
        this.mLongitude = d2;
        this.mHasLongitude = true;
    }

    public void setPhone(String str) {
        this.mPhone = str;
    }

    public void setPostalCode(String str) {
        this.mPostalCode = str;
    }

    public void setPremises(String str) {
        this.mPremises = str;
    }

    public void setSubAdminArea(String str) {
        this.mSubAdminArea = str;
    }

    public void setSubLocality(String str) {
        this.mSubLocality = str;
    }

    public void setSubThoroughfare(String str) {
        this.mSubThoroughfare = str;
    }

    public void setThoroughfare(String str) {
        this.mThoroughfare = str;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address[addressLines=[");
        for (int i2 = 0; i2 <= this.mMaxAddressLineIndex; i2++) {
            if (i2 > 0) {
                sb.append(PhoneNumberUtils.PAUSE);
            }
            sb.append(i2);
            sb.append(':');
            String str = this.mAddressLines.get(Integer.valueOf(i2));
            if (str == null) {
                sb.append("null");
            } else {
                sb.append('\"');
                sb.append(str);
                sb.append('\"');
            }
        }
        sb.append(']');
        sb.append(",feature=");
        sb.append(this.mFeatureName);
        sb.append(",admin=");
        sb.append(this.mAdminArea);
        sb.append(",sub-admin=");
        sb.append(this.mSubAdminArea);
        sb.append(",locality=");
        sb.append(this.mLocality);
        sb.append(",thoroughfare=");
        sb.append(this.mThoroughfare);
        sb.append(",postalCode=");
        sb.append(this.mPostalCode);
        sb.append(",countryCode=");
        sb.append(this.mCountryCode);
        sb.append(",countryName=");
        sb.append(this.mCountryName);
        sb.append(",hasLatitude=");
        sb.append(this.mHasLatitude);
        sb.append(",latitude=");
        sb.append(this.mLatitude);
        sb.append(",hasLongitude=");
        sb.append(this.mHasLongitude);
        sb.append(",longitude=");
        sb.append(this.mLongitude);
        sb.append(",phone=");
        sb.append(this.mPhone);
        sb.append(",url=");
        sb.append(this.mUrl);
        sb.append(",extras=");
        sb.append(this.mExtras);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mLocale.getLanguage());
        parcel.writeString(this.mLocale.getCountry());
        HashMap<Integer, String> map = this.mAddressLines;
        if (map == null) {
            parcel.writeInt(0);
        } else {
            Set<Map.Entry<Integer, String>> setEntrySet = map.entrySet();
            parcel.writeInt(setEntrySet.size());
            for (Map.Entry<Integer, String> entry : setEntrySet) {
                parcel.writeInt(entry.getKey().intValue());
                parcel.writeString(entry.getValue());
            }
        }
        parcel.writeString(this.mFeatureName);
        parcel.writeString(this.mAdminArea);
        parcel.writeString(this.mSubAdminArea);
        parcel.writeString(this.mLocality);
        parcel.writeString(this.mSubLocality);
        parcel.writeString(this.mThoroughfare);
        parcel.writeString(this.mSubThoroughfare);
        parcel.writeString(this.mPremises);
        parcel.writeString(this.mPostalCode);
        parcel.writeString(this.mCountryCode);
        parcel.writeString(this.mCountryName);
        parcel.writeInt(this.mHasLatitude ? 1 : 0);
        if (this.mHasLatitude) {
            parcel.writeDouble(this.mLatitude);
        }
        parcel.writeInt(this.mHasLongitude ? 1 : 0);
        if (this.mHasLongitude) {
            parcel.writeDouble(this.mLongitude);
        }
        parcel.writeString(this.mPhone);
        parcel.writeString(this.mUrl);
        parcel.writeBundle(this.mExtras);
    }
}
