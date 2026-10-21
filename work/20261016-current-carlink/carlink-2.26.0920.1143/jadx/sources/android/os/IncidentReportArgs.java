package android.os;

import android.net.wifi.WifiEnterpriseConfig;
import android.util.IntArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class IncidentReportArgs implements Parcelable {
    public static final Parcelable.Creator<IncidentReportArgs> CREATOR = new Parcelable.Creator<IncidentReportArgs>() { // from class: android.os.IncidentReportArgs.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IncidentReportArgs createFromParcel(Parcel parcel) {
            return new IncidentReportArgs(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IncidentReportArgs[] newArray(int i2) {
            return new IncidentReportArgs[i2];
        }
    };
    private boolean mAll;
    private final IntArray mSections = new IntArray();
    private final ArrayList<byte[]> mHeaders = new ArrayList<>();

    public IncidentReportArgs() {
    }

    public static IncidentReportArgs parseSetting(String str) {
        IncidentReportArgs incidentReportArgs = null;
        if (str != null && str.length() != 0) {
            String strTrim = str.trim();
            if (strTrim.length() != 0 && !"disabled".equals(strTrim)) {
                incidentReportArgs = new IncidentReportArgs();
                if ("all".equals(strTrim)) {
                    incidentReportArgs.setAll(true);
                    return incidentReportArgs;
                }
                if ("none".equals(strTrim)) {
                    return incidentReportArgs;
                }
                String[] strArrSplit = strTrim.split(",");
                int length = strArrSplit.length;
                for (int i2 = 0; i2 < length; i2++) {
                    String strTrim2 = strArrSplit[i2].trim();
                    if (strTrim2.length() != 0) {
                        try {
                            int i3 = Integer.parseInt(strTrim2);
                            if (i3 < 1) {
                                StringBuilder sb = new StringBuilder("Malformed setting. Illegal section at index ");
                                sb.append(i2);
                                sb.append(": section='");
                                sb.append(strTrim2);
                                sb.append("' setting='");
                                throw new IllegalArgumentException(android.accessibilityservice.c.n(sb, strTrim, "'"));
                            }
                            incidentReportArgs.addSection(i3);
                        } catch (NumberFormatException unused) {
                            StringBuilder sb2 = new StringBuilder("Malformed setting. Bad integer at section index ");
                            sb2.append(i2);
                            sb2.append(": section='");
                            sb2.append(strTrim2);
                            sb2.append("' setting='");
                            throw new IllegalArgumentException(android.accessibilityservice.c.n(sb2, strTrim, "'"));
                        }
                    }
                }
            }
        }
        return incidentReportArgs;
    }

    public void addHeader(byte[] bArr) {
        this.mHeaders.add(bArr);
    }

    public void addSection(int i2) {
        if (this.mAll) {
            return;
        }
        this.mSections.add(i2);
    }

    public boolean containsSection(int i2) {
        return this.mAll || this.mSections.indexOf(i2) >= 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isAll() {
        return this.mAll;
    }

    public void readFromParcel(Parcel parcel) {
        this.mAll = parcel.readInt() != 0;
        this.mSections.clear();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.mSections.add(parcel.readInt());
        }
        this.mHeaders.clear();
        int i4 = parcel.readInt();
        for (int i5 = 0; i5 < i4; i5++) {
            this.mHeaders.add(parcel.createByteArray());
        }
    }

    public int sectionCount() {
        return this.mSections.size();
    }

    public void setAll(boolean z2) {
        this.mAll = z2;
        if (z2) {
            this.mSections.clear();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Incident(");
        if (this.mAll) {
            sb.append("all");
        } else {
            int size = this.mSections.size();
            if (size > 0) {
                sb.append(this.mSections.get(0));
            }
            for (int i2 = 1; i2 < size; i2++) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sb.append(this.mSections.get(i2));
            }
        }
        sb.append(", ");
        sb.append(this.mHeaders.size());
        sb.append(" headers)");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mAll ? 1 : 0);
        int size = this.mSections.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeInt(this.mSections.get(i3));
        }
        int size2 = this.mHeaders.size();
        parcel.writeInt(size2);
        for (int i4 = 0; i4 < size2; i4++) {
            parcel.writeByteArray(this.mHeaders.get(i4));
        }
    }

    public IncidentReportArgs(Parcel parcel) {
        readFromParcel(parcel);
    }
}
