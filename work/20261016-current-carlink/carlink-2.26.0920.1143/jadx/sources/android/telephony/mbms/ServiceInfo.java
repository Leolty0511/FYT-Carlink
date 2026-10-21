package android.telephony.mbms;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceInfo {
    static final int MAP_LIMIT = 1000;
    private final String className;
    private final List<Locale> locales;
    private final Map<Locale, String> names;
    private final String serviceId;
    private final Date sessionEndTime;
    private final Date sessionStartTime;

    public ServiceInfo(Map<Locale, String> map, String str, List<Locale> list, String str2, Date date, Date date2) {
        if (map == null || map.isEmpty() || TextUtils.isEmpty(str) || list == null || list.isEmpty() || TextUtils.isEmpty(str2) || date == null || date2 == null) {
            throw new IllegalArgumentException("Bad ServiceInfo construction");
        }
        if (map.size() > 1000) {
            throw new RuntimeException("bad map length " + map.size());
        }
        if (list.size() > 1000) {
            throw new RuntimeException("bad locales length " + list.size());
        }
        HashMap map2 = new HashMap(map.size());
        this.names = map2;
        map2.putAll(map);
        this.className = str;
        this.locales = new ArrayList(list);
        this.serviceId = str2;
        this.sessionStartTime = (Date) date.clone();
        this.sessionEndTime = (Date) date2.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ServiceInfo)) {
            return false;
        }
        ServiceInfo serviceInfo = (ServiceInfo) obj;
        return Objects.equals(this.names, serviceInfo.names) && Objects.equals(this.className, serviceInfo.className) && Objects.equals(this.locales, serviceInfo.locales) && Objects.equals(this.serviceId, serviceInfo.serviceId) && Objects.equals(this.sessionStartTime, serviceInfo.sessionStartTime) && Objects.equals(this.sessionEndTime, serviceInfo.sessionEndTime);
    }

    public List<Locale> getLocales() {
        return this.locales;
    }

    public CharSequence getNameForLocale(Locale locale) {
        if (this.names.containsKey(locale)) {
            return this.names.get(locale);
        }
        throw new NoSuchElementException("Locale not supported");
    }

    public Set<Locale> getNamedContentLocales() {
        return Collections.unmodifiableSet(this.names.keySet());
    }

    public String getServiceClassName() {
        return this.className;
    }

    public String getServiceId() {
        return this.serviceId;
    }

    public Date getSessionEndTime() {
        return this.sessionEndTime;
    }

    public Date getSessionStartTime() {
        return this.sessionStartTime;
    }

    public int hashCode() {
        return Objects.hash(this.names, this.className, this.locales, this.serviceId, this.sessionStartTime, this.sessionEndTime);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        Set<Locale> setKeySet = this.names.keySet();
        parcel.writeInt(setKeySet.size());
        for (Locale locale : setKeySet) {
            parcel.writeSerializable(locale);
            parcel.writeString(this.names.get(locale));
        }
        parcel.writeString(this.className);
        parcel.writeInt(this.locales.size());
        Iterator<Locale> it = this.locales.iterator();
        while (it.hasNext()) {
            parcel.writeSerializable(it.next());
        }
        parcel.writeString(this.serviceId);
        parcel.writeSerializable(this.sessionStartTime);
        parcel.writeSerializable(this.sessionEndTime);
    }

    public ServiceInfo(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 <= 1000 && i2 >= 0) {
            this.names = new HashMap(i2);
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    break;
                }
                this.names.put((Locale) parcel.readSerializable(), parcel.readString());
                i2 = i3;
            }
            this.className = parcel.readString();
            int i4 = parcel.readInt();
            if (i4 <= 1000 && i4 >= 0) {
                this.locales = new ArrayList(i4);
                while (true) {
                    int i5 = i4 - 1;
                    if (i4 > 0) {
                        this.locales.add((Locale) parcel.readSerializable());
                        i4 = i5;
                    } else {
                        this.serviceId = parcel.readString();
                        this.sessionStartTime = (Date) parcel.readSerializable();
                        this.sessionEndTime = (Date) parcel.readSerializable();
                        return;
                    }
                }
            } else {
                throw new RuntimeException(c.d("bad locale length ", i4));
            }
        } else {
            throw new RuntimeException(c.d("bad map length", i2));
        }
    }
}
