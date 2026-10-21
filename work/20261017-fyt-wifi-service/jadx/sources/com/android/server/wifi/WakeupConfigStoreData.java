package com.android.server.wifi;

import android.util.ArraySet;
import android.util.Log;
import com.android.server.wifi.util.XmlUtil;
import java.io.IOException;
import java.util.Collections;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class WakeupConfigStoreData implements WifiConfigStore.StoreData {
    private static final String TAG = "WakeupConfigStoreData";
    private static final String XML_TAG_FEATURE_STATE_SECTION = "FeatureState";
    private static final String XML_TAG_IS_ACTIVE = "IsActive";
    private static final String XML_TAG_IS_ONBOARDED = "IsOnboarded";
    private static final String XML_TAG_NETWORK_SECTION = "Network";
    private static final String XML_TAG_NOTIFICATIONS_SHOWN = "NotificationsShown";
    private static final String XML_TAG_SECURITY = "Security";
    private static final String XML_TAG_SSID = "SSID";
    private boolean mHasBeenRead = false;
    private final DataSource<Boolean> mIsActiveDataSource;
    private final DataSource<Boolean> mIsOnboardedDataSource;
    private final DataSource<Set<ScanResultMatchInfo>> mNetworkDataSource;
    private final DataSource<Integer> mNotificationsDataSource;

    public interface DataSource<T> {
        T getData();

        void setData(T t);
    }

    public WakeupConfigStoreData(DataSource<Boolean> isActiveDataSource, DataSource<Boolean> isOnboardedDataSource, DataSource<Integer> notificationsDataSource, DataSource<Set<ScanResultMatchInfo>> networkDataSource) {
        this.mIsActiveDataSource = isActiveDataSource;
        this.mIsOnboardedDataSource = isOnboardedDataSource;
        this.mNotificationsDataSource = notificationsDataSource;
        this.mNetworkDataSource = networkDataSource;
    }

    public boolean hasBeenRead() {
        return this.mHasBeenRead;
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public void serializeData(XmlSerializer out) throws XmlPullParserException, IOException {
        writeFeatureState(out);
        for (ScanResultMatchInfo scanResultMatchInfo : this.mNetworkDataSource.getData()) {
            writeNetwork(out, scanResultMatchInfo);
        }
    }

    private void writeFeatureState(XmlSerializer out) throws XmlPullParserException, IOException {
        XmlUtil.writeNextSectionStart(out, XML_TAG_FEATURE_STATE_SECTION);
        XmlUtil.writeNextValue(out, XML_TAG_IS_ACTIVE, this.mIsActiveDataSource.getData());
        XmlUtil.writeNextValue(out, XML_TAG_IS_ONBOARDED, this.mIsOnboardedDataSource.getData());
        XmlUtil.writeNextValue(out, XML_TAG_NOTIFICATIONS_SHOWN, this.mNotificationsDataSource.getData());
        XmlUtil.writeNextSectionEnd(out, XML_TAG_FEATURE_STATE_SECTION);
    }

    private void writeNetwork(XmlSerializer out, ScanResultMatchInfo scanResultMatchInfo) throws XmlPullParserException, IOException {
        XmlUtil.writeNextSectionStart(out, XML_TAG_NETWORK_SECTION);
        XmlUtil.writeNextValue(out, "SSID", scanResultMatchInfo.networkSsid);
        XmlUtil.writeNextValue(out, XML_TAG_SECURITY, Integer.valueOf(scanResultMatchInfo.networkType));
        XmlUtil.writeNextSectionEnd(out, XML_TAG_NETWORK_SECTION);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public void deserializeData(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        if (!this.mHasBeenRead) {
            Log.d(TAG, "WifiWake user data has been read");
            this.mHasBeenRead = true;
        }
        if (in == null) {
            return;
        }
        Set<ScanResultMatchInfo> networks = new ArraySet<>();
        String[] headerName = new String[1];
        while (XmlUtil.gotoNextSectionOrEnd(in, headerName, outerTagDepth)) {
            byte b = 0;
            String str = headerName[0];
            int iHashCode = str.hashCode();
            if (iHashCode != -786828786) {
                if (iHashCode != 1362433883 || !str.equals(XML_TAG_FEATURE_STATE_SECTION)) {
                    b = -1;
                }
            } else if (str.equals(XML_TAG_NETWORK_SECTION)) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                parseFeatureState(in, outerTagDepth + 1);
            } else if (b == 1) {
                networks.add(parseNetwork(in, outerTagDepth + 1));
            }
        }
        this.mNetworkDataSource.setData(networks);
    }

    private void parseFeatureState(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        boolean isActive = false;
        boolean isOnboarded = false;
        int notificationsShown = 0;
        while (!XmlUtil.isNextSectionEnd(in, outerTagDepth)) {
            String[] valueName = new String[1];
            Object value = XmlUtil.readCurrentValue(in, valueName);
            if (valueName[0] == null) {
                throw new XmlPullParserException("Missing value name");
            }
            String str = valueName[0];
            byte b = -1;
            int iHashCode = str.hashCode();
            if (iHashCode != -1725092580) {
                if (iHashCode != -684272400) {
                    if (iHashCode == 898665769 && str.equals(XML_TAG_NOTIFICATIONS_SHOWN)) {
                        b = 2;
                    }
                } else if (str.equals(XML_TAG_IS_ACTIVE)) {
                    b = 0;
                }
            } else if (str.equals(XML_TAG_IS_ONBOARDED)) {
                b = 1;
            }
            if (b != 0) {
                if (b == 1) {
                    isOnboarded = ((Boolean) value).booleanValue();
                } else {
                    if (b != 2) {
                        throw new XmlPullParserException("Unknown value found: " + valueName[0]);
                    }
                    notificationsShown = ((Integer) value).intValue();
                }
            } else {
                isActive = ((Boolean) value).booleanValue();
            }
        }
        this.mIsActiveDataSource.setData(Boolean.valueOf(isActive));
        this.mIsOnboardedDataSource.setData(Boolean.valueOf(isOnboarded));
        this.mNotificationsDataSource.setData(Integer.valueOf(notificationsShown));
    }

    private ScanResultMatchInfo parseNetwork(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        ScanResultMatchInfo scanResultMatchInfo = new ScanResultMatchInfo();
        while (!XmlUtil.isNextSectionEnd(in, outerTagDepth)) {
            String[] valueName = new String[1];
            Object value = XmlUtil.readCurrentValue(in, valueName);
            if (valueName[0] == null) {
                throw new XmlPullParserException("Missing value name");
            }
            String str = valueName[0];
            byte b = -1;
            int iHashCode = str.hashCode();
            if (iHashCode != 2554747) {
                if (iHashCode == 1013767008 && str.equals(XML_TAG_SECURITY)) {
                    b = 1;
                }
            } else if (str.equals("SSID")) {
                b = 0;
            }
            if (b != 0) {
                if (b != 1) {
                    throw new XmlPullParserException("Unknown tag under WakeupConfigStoreData: " + valueName[0]);
                }
                scanResultMatchInfo.networkType = ((Integer) value).intValue();
            } else {
                scanResultMatchInfo.networkSsid = (String) value;
            }
        }
        return scanResultMatchInfo;
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public void resetData() {
        this.mNetworkDataSource.setData(Collections.emptySet());
        this.mIsActiveDataSource.setData(false);
        this.mIsOnboardedDataSource.setData(false);
        this.mNotificationsDataSource.setData(0);
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public boolean hasNewDataToSerialize() {
        return true;
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public String getName() {
        return TAG;
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public int getStoreFileId() {
        return 1;
    }
}
