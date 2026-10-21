package android.nfc.cardemulation;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class AidGroup implements Parcelable {
    public static final Parcelable.Creator<AidGroup> CREATOR = new Parcelable.Creator<AidGroup>() { // from class: android.nfc.cardemulation.AidGroup.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AidGroup createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList();
            if (i2 > 0) {
                parcel.readStringList(arrayList);
            }
            return new AidGroup(arrayList, string);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AidGroup[] newArray(int i2) {
            return new AidGroup[i2];
        }
    };
    public static final int MAX_NUM_AIDS = 256;
    static final String TAG = "AidGroup";
    final List<String> aids;
    final String category;
    final String description;

    public AidGroup(List<String> list, String str) {
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("No AIDS in AID group.");
        }
        if (list.size() > 256) {
            throw new IllegalArgumentException("Too many AIDs in AID group.");
        }
        for (String str2 : list) {
            if (!CardEmulation.isValidAid(str2)) {
                throw new IllegalArgumentException(c.k("AID ", str2, " is not a valid AID."));
            }
        }
        if (isValidCategory(str)) {
            this.category = str;
        } else {
            this.category = "other";
        }
        this.aids = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.aids.add(it.next().toUpperCase());
        }
        this.description = null;
    }

    public static AidGroup createFromXml(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        boolean z2 = false;
        String attributeValue = null;
        while (eventType != 1 && xmlPullParser.getDepth() >= depth) {
            String name = xmlPullParser.getName();
            if (eventType == 2) {
                if (name.equals("aid")) {
                    if (z2) {
                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
                        if (attributeValue2 != null) {
                            arrayList.add(attributeValue2.toUpperCase());
                        }
                    } else {
                        Log.d(TAG, "Ignoring <aid> tag while not in group");
                    }
                } else if (name.equals("aid-group")) {
                    attributeValue = xmlPullParser.getAttributeValue(null, "category");
                    if (attributeValue == null) {
                        Log.e(TAG, "<aid-group> tag without valid category");
                        return null;
                    }
                    z2 = true;
                } else {
                    Log.d(TAG, "Ignoring unexpected tag: ".concat(name));
                }
            } else if (eventType == 3 && name.equals("aid-group") && z2 && arrayList.size() > 0) {
                return new AidGroup(arrayList, attributeValue);
            }
            eventType = xmlPullParser.next();
        }
        return null;
    }

    public static boolean isValidCategory(String str) {
        return CardEmulation.CATEGORY_PAYMENT.equals(str) || "other".equals(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<String> getAids() {
        return this.aids;
    }

    public String getCategory() {
        return this.category;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(c.n(new StringBuilder("Category: "), this.category, ", AIDs:"));
        Iterator<String> it = this.aids.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(", ");
        }
        return sb.toString();
    }

    public void writeAsXml(XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.startTag(null, "aid-group");
        xmlSerializer.attribute(null, "category", this.category);
        for (String str : this.aids) {
            xmlSerializer.startTag(null, "aid");
            xmlSerializer.attribute(null, "value", str);
            xmlSerializer.endTag(null, "aid");
        }
        xmlSerializer.endTag(null, "aid-group");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.category);
        parcel.writeInt(this.aids.size());
        if (this.aids.size() > 0) {
            parcel.writeStringList(this.aids);
        }
    }

    public AidGroup(String str, String str2) {
        this.aids = new ArrayList();
        this.category = str;
        this.description = str2;
    }
}
