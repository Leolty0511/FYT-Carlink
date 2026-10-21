package com.android.server.wifi.hotspot2;

import android.net.wifi.hotspot2.PasspointConfiguration;
import android.text.TextUtils;
import com.android.internal.util.XmlUtils;
import com.android.server.wifi.SIMAccessor;
import com.android.server.wifi.WifiConfigStore;
import com.android.server.wifi.WifiKeyStore;
import com.android.server.wifi.util.XmlUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class PasspointConfigUserStoreData implements WifiConfigStore.StoreData {
    private static final String XML_TAG_CA_CERTIFICATE_ALIAS = "CaCertificateAlias";
    private static final String XML_TAG_CA_CERTIFICATE_ALIASES = "CaCertificateAliases";
    private static final String XML_TAG_CLIENT_CERTIFICATE_ALIAS = "ClientCertificateAlias";
    private static final String XML_TAG_CLIENT_PRIVATE_KEY_ALIAS = "ClientPrivateKeyAlias";
    private static final String XML_TAG_CREATOR_UID = "CreatorUID";
    private static final String XML_TAG_HAS_EVER_CONNECTED = "HasEverConnected";
    private static final String XML_TAG_PACKAGE_NAME = "PackageName";
    private static final String XML_TAG_PROVIDER_ID = "ProviderID";
    private static final String XML_TAG_REMEDIATION_CA_CERTIFICATE_ALIAS = "RemediationCaCertificateAlias";
    private static final String XML_TAG_SECTION_HEADER_PASSPOINT_CONFIGURATION = "Configuration";
    private static final String XML_TAG_SECTION_HEADER_PASSPOINT_CONFIG_DATA = "PasspointConfigData";
    private static final String XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER = "Provider";
    private static final String XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER_LIST = "ProviderList";
    private final DataSource mDataSource;
    private final WifiKeyStore mKeyStore;
    private final SIMAccessor mSimAccessor;

    public interface DataSource {
        List<PasspointProvider> getProviders();

        void setProviders(List<PasspointProvider> list);
    }

    PasspointConfigUserStoreData(WifiKeyStore keyStore, SIMAccessor simAccessor, DataSource dataSource) {
        this.mKeyStore = keyStore;
        this.mSimAccessor = simAccessor;
        this.mDataSource = dataSource;
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public void serializeData(XmlSerializer out) throws XmlPullParserException, IOException {
        serializeUserData(out);
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public void deserializeData(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        if (in == null) {
            return;
        }
        deserializeUserData(in, outerTagDepth);
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public void resetData() {
        this.mDataSource.setProviders(new ArrayList());
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public boolean hasNewDataToSerialize() {
        return true;
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public String getName() {
        return XML_TAG_SECTION_HEADER_PASSPOINT_CONFIG_DATA;
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public int getStoreFileId() {
        return 1;
    }

    private void serializeUserData(XmlSerializer out) throws XmlPullParserException, IOException {
        serializeProviderList(out, this.mDataSource.getProviders());
    }

    private void serializeProviderList(XmlSerializer out, List<PasspointProvider> providerList) throws XmlPullParserException, IOException {
        if (providerList == null) {
            return;
        }
        XmlUtil.writeNextSectionStart(out, XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER_LIST);
        for (PasspointProvider provider : providerList) {
            if (!provider.isEphemeral()) {
                serializeProvider(out, provider);
            }
        }
        XmlUtil.writeNextSectionEnd(out, XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER_LIST);
    }

    private void serializeProvider(XmlSerializer out, PasspointProvider provider) throws XmlPullParserException, IOException {
        XmlUtil.writeNextSectionStart(out, XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER);
        XmlUtil.writeNextValue(out, XML_TAG_PROVIDER_ID, Long.valueOf(provider.getProviderId()));
        XmlUtil.writeNextValue(out, XML_TAG_CREATOR_UID, Integer.valueOf(provider.getCreatorUid()));
        if (provider.getPackageName() != null) {
            XmlUtil.writeNextValue(out, XML_TAG_PACKAGE_NAME, provider.getPackageName());
        }
        XmlUtil.writeNextValue(out, XML_TAG_CA_CERTIFICATE_ALIASES, provider.getCaCertificateAliases());
        XmlUtil.writeNextValue(out, XML_TAG_CLIENT_CERTIFICATE_ALIAS, provider.getClientCertificateAlias());
        XmlUtil.writeNextValue(out, XML_TAG_CLIENT_PRIVATE_KEY_ALIAS, provider.getClientPrivateKeyAlias());
        XmlUtil.writeNextValue(out, "HasEverConnected", Boolean.valueOf(provider.getHasEverConnected()));
        if (provider.getConfig() != null) {
            XmlUtil.writeNextSectionStart(out, XML_TAG_SECTION_HEADER_PASSPOINT_CONFIGURATION);
            PasspointXmlUtils.serializePasspointConfiguration(out, provider.getConfig());
            XmlUtil.writeNextSectionEnd(out, XML_TAG_SECTION_HEADER_PASSPOINT_CONFIGURATION);
        }
        XmlUtil.writeNextValue(out, XML_TAG_REMEDIATION_CA_CERTIFICATE_ALIAS, provider.getRemediationCaCertificateAlias());
        XmlUtil.writeNextSectionEnd(out, XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER);
    }

    private void deserializeUserData(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        String[] headerName = new String[1];
        while (XmlUtil.gotoNextSectionOrEnd(in, headerName, outerTagDepth)) {
            String str = headerName[0];
            byte b = -1;
            if (str.hashCode() == -254992817 && str.equals(XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER_LIST)) {
                b = 0;
            }
            if (b != 0) {
                throw new XmlPullParserException("Unknown Passpoint user store data " + headerName[0]);
            }
            this.mDataSource.setProviders(deserializeProviderList(in, outerTagDepth + 1));
        }
    }

    private List<PasspointProvider> deserializeProviderList(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        List<PasspointProvider> providerList = new ArrayList<>();
        while (XmlUtil.gotoNextSectionWithNameOrEnd(in, XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER, outerTagDepth)) {
            providerList.add(deserializeProvider(in, outerTagDepth + 1));
        }
        return providerList;
    }

    private PasspointProvider deserializeProvider(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        long providerId = Long.MIN_VALUE;
        List<String> caCertificateAliases = null;
        String caCertificateAlias = null;
        String clientCertificateAlias = null;
        String clientPrivateKeyAlias = null;
        String remediationCaCertificateAlias = null;
        String packageName = null;
        boolean hasEverConnected = false;
        int creatorUid = Integer.MIN_VALUE;
        PasspointConfiguration config = null;
        while (XmlUtils.nextElementWithin(in, outerTagDepth)) {
            if (in.getAttributeValue(null, "name") != null) {
                String[] name = new String[1];
                Object value = XmlUtil.readCurrentValue(in, name);
                switch (name[0]) {
                    case "ProviderID":
                        providerId = ((Long) value).longValue();
                        break;
                    case "CreatorUID":
                        creatorUid = ((Integer) value).intValue();
                        break;
                    case "PackageName":
                        packageName = (String) value;
                        break;
                    case "CaCertificateAliases":
                        caCertificateAliases = (List) value;
                        break;
                    case "CaCertificateAlias":
                        caCertificateAlias = (String) value;
                        break;
                    case "ClientCertificateAlias":
                        clientCertificateAlias = (String) value;
                        break;
                    case "ClientPrivateKeyAlias":
                        clientPrivateKeyAlias = (String) value;
                        break;
                    case "RemediationCaCertificateAlias":
                        remediationCaCertificateAlias = (String) value;
                        break;
                    case "HasEverConnected":
                        hasEverConnected = ((Boolean) value).booleanValue();
                        break;
                }
            } else {
                if (!TextUtils.equals(in.getName(), XML_TAG_SECTION_HEADER_PASSPOINT_CONFIGURATION)) {
                    throw new XmlPullParserException("Unexpected section under Provider: " + in.getName());
                }
                config = PasspointXmlUtils.deserializePasspointConfiguration(in, outerTagDepth + 1);
            }
        }
        if (providerId == Long.MIN_VALUE) {
            throw new XmlPullParserException("Missing provider ID");
        }
        if (caCertificateAliases != null && caCertificateAlias != null) {
            throw new XmlPullParserException("Should not have valid entry for caCertificateAliases and caCertificateAlias at the same time");
        }
        if (caCertificateAlias != null) {
            caCertificateAliases = Arrays.asList(caCertificateAlias);
        }
        if (config == null) {
            throw new XmlPullParserException("Missing Passpoint configuration");
        }
        return new PasspointProvider(config, this.mKeyStore, this.mSimAccessor, providerId, creatorUid, packageName, caCertificateAliases, clientCertificateAlias, clientPrivateKeyAlias, remediationCaCertificateAlias, hasEverConnected, false);
    }
}
