package android.net.wifi.hotspot2.omadm;

import android.accessibilityservice.c;
import android.app.m;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.net.wifi.hotspot2.pps.Credential;
import android.net.wifi.hotspot2.pps.HomeSp;
import android.net.wifi.hotspot2.pps.Policy;
import android.net.wifi.hotspot2.pps.UpdateParameter;
import android.provider.CalendarContract;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public final class PpsMoParser {
    private static final String NODE_AAA_SERVER_TRUST_ROOT = "AAAServerTrustRoot";
    private static final String NODE_ABLE_TO_SHARE = "AbleToShare";
    private static final String NODE_CERTIFICATE_TYPE = "CertificateType";
    private static final String NODE_CERT_SHA256_FINGERPRINT = "CertSHA256Fingerprint";
    private static final String NODE_CERT_URL = "CertURL";
    private static final String NODE_CHECK_AAA_SERVER_CERT_STATUS = "CheckAAAServerCertStatus";
    private static final String NODE_COUNTRY = "Country";
    private static final String NODE_CREATION_DATE = "CreationDate";
    private static final String NODE_CREDENTIAL = "Credential";
    private static final String NODE_CREDENTIAL_PRIORITY = "CredentialPriority";
    private static final String NODE_DATA_LIMIT = "DataLimit";
    private static final String NODE_DIGITAL_CERTIFICATE = "DigitalCertificate";
    private static final String NODE_DOWNLINK_BANDWIDTH = "DLBandwidth";
    private static final String NODE_EAP_METHOD = "EAPMethod";
    private static final String NODE_EAP_TYPE = "EAPType";
    private static final String NODE_EXPIRATION_DATE = "ExpirationDate";
    private static final String NODE_EXTENSION = "Extension";
    private static final String NODE_FQDN = "FQDN";
    private static final String NODE_FQDN_MATCH = "FQDN_Match";
    private static final String NODE_FRIENDLY_NAME = "FriendlyName";
    private static final String NODE_HESSID = "HESSID";
    private static final String NODE_HOMESP = "HomeSP";
    private static final String NODE_HOME_OI = "HomeOI";
    private static final String NODE_HOME_OI_LIST = "HomeOIList";
    private static final String NODE_HOME_OI_REQUIRED = "HomeOIRequired";
    private static final String NODE_ICON_URL = "IconURL";
    private static final String NODE_INNER_EAP_TYPE = "InnerEAPType";
    private static final String NODE_INNER_METHOD = "InnerMethod";
    private static final String NODE_INNER_VENDOR_ID = "InnerVendorID";
    private static final String NODE_INNER_VENDOR_TYPE = "InnerVendorType";
    private static final String NODE_IP_PROTOCOL = "IPProtocol";
    private static final String NODE_MACHINE_MANAGED = "MachineManaged";
    private static final String NODE_MAXIMUM_BSS_LOAD_VALUE = "MaximumBSSLoadValue";
    private static final String NODE_MIN_BACKHAUL_THRESHOLD = "MinBackhaulThreshold";
    private static final String NODE_NETWORK_ID = "NetworkID";
    private static final String NODE_NETWORK_TYPE = "NetworkType";
    private static final String NODE_OTHER = "Other";
    private static final String NODE_OTHER_HOME_PARTNERS = "OtherHomePartners";
    private static final String NODE_PASSWORD = "Password";
    private static final String NODE_PER_PROVIDER_SUBSCRIPTION = "PerProviderSubscription";
    private static final String NODE_POLICY = "Policy";
    private static final String NODE_POLICY_UPDATE = "PolicyUpdate";
    private static final String NODE_PORT_NUMBER = "PortNumber";
    private static final String NODE_PREFERRED_ROAMING_PARTNER_LIST = "PreferredRoamingPartnerList";
    private static final String NODE_PRIORITY = "Priority";
    private static final String NODE_REALM = "Realm";
    private static final String NODE_REQUIRED_PROTO_PORT_TUPLE = "RequiredProtoPortTuple";
    private static final String NODE_RESTRICTION = "Restriction";
    private static final String NODE_ROAMING_CONSORTIUM_OI = "RoamingConsortiumOI";
    private static final String NODE_SIM = "SIM";
    private static final String NODE_SIM_IMSI = "IMSI";
    private static final String NODE_SOFT_TOKEN_APP = "SoftTokenApp";
    private static final String NODE_SP_EXCLUSION_LIST = "SPExclusionList";
    private static final String NODE_SSID = "SSID";
    private static final String NODE_START_DATE = "StartDate";
    private static final String NODE_SUBSCRIPTION_PARAMETER = "SubscriptionParameter";
    private static final String NODE_SUBSCRIPTION_UPDATE = "SubscriptionUpdate";
    private static final String NODE_TIME_LIMIT = "TimeLimit";
    private static final String NODE_TRUST_ROOT = "TrustRoot";
    private static final String NODE_TYPE_OF_SUBSCRIPTION = "TypeOfSubscription";
    private static final String NODE_UPDATE_IDENTIFIER = "UpdateIdentifier";
    private static final String NODE_UPDATE_INTERVAL = "UpdateInterval";
    private static final String NODE_UPDATE_METHOD = "UpdateMethod";
    private static final String NODE_UPLINK_BANDWIDTH = "ULBandwidth";
    private static final String NODE_URI = "URI";
    private static final String NODE_USAGE_LIMITS = "UsageLimits";
    private static final String NODE_USAGE_TIME_PERIOD = "UsageTimePeriod";
    private static final String NODE_USERNAME = "Username";
    private static final String NODE_USERNAME_PASSWORD = "UsernamePassword";
    private static final String NODE_VENDOR_ID = "VendorId";
    private static final String NODE_VENDOR_TYPE = "VendorType";
    private static final String PPS_MO_URN = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0";
    private static final String TAG = "PpsMoParser";
    private static final String TAG_DDF_NAME = "DDFName";
    private static final String TAG_MANAGEMENT_TREE = "MgmtTree";
    private static final String TAG_NODE = "Node";
    private static final String TAG_NODE_NAME = "NodeName";
    private static final String TAG_RT_PROPERTIES = "RTProperties";
    private static final String TAG_TYPE = "Type";
    private static final String TAG_VALUE = "Value";
    private static final String TAG_VER_DTD = "VerDTD";

    public static class InternalNode extends PPSNode {
        private final List<PPSNode> mChildren;

        public InternalNode(String str, List<PPSNode> list) {
            super(str);
            this.mChildren = list;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public List<PPSNode> getChildren() {
            return this.mChildren;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public String getValue() {
            return null;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public boolean isLeaf() {
            return false;
        }
    }

    public static class LeafNode extends PPSNode {
        private final String mValue;

        public LeafNode(String str, String str2) {
            super(str);
            this.mValue = str2;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public List<PPSNode> getChildren() {
            return null;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public String getValue() {
            return this.mValue;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public boolean isLeaf() {
            return true;
        }
    }

    public static abstract class PPSNode {
        private final String mName;

        public PPSNode(String str) {
            this.mName = str;
        }

        public abstract List<PPSNode> getChildren();

        public String getName() {
            return this.mName;
        }

        public abstract String getValue();

        public abstract boolean isLeaf();
    }

    public static class ParsingException extends Exception {
        public ParsingException(String str) {
            super(str);
        }
    }

    private static PPSNode buildPpsNode(XMLNode xMLNode) throws ParsingException {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        String text = null;
        String text2 = null;
        for (XMLNode xMLNode2 : xMLNode.getChildren()) {
            String tag = xMLNode2.getTag();
            if (TextUtils.equals(tag, TAG_NODE_NAME)) {
                if (text != null) {
                    throw new ParsingException("Duplicate NodeName node");
                }
                text = xMLNode2.getText();
            } else if (TextUtils.equals(tag, TAG_NODE)) {
                PPSNode pPSNodeBuildPpsNode = buildPpsNode(xMLNode2);
                if (hashSet.contains(pPSNodeBuildPpsNode.getName())) {
                    throw new ParsingException("Duplicate node: " + pPSNodeBuildPpsNode.getName());
                }
                hashSet.add(pPSNodeBuildPpsNode.getName());
                arrayList.add(pPSNodeBuildPpsNode);
            } else {
                if (!TextUtils.equals(tag, TAG_VALUE)) {
                    throw new ParsingException(c.j("Unknown tag: ", tag));
                }
                if (text2 != null) {
                    throw new ParsingException("Duplicate Value node");
                }
                text2 = xMLNode2.getText();
            }
        }
        if (text == null) {
            throw new ParsingException("Invalid node: missing NodeName");
        }
        if (text2 == null && arrayList.size() == 0) {
            throw new ParsingException(c.k("Invalid node: ", text, " missing both value and children"));
        }
        if (text2 == null || arrayList.size() <= 0) {
            return text2 != null ? new LeafNode(text, text2) : new InternalNode(text, arrayList);
        }
        throw new ParsingException(c.k("Invalid node: ", text, " contained both value and children"));
    }

    private static long[] convertFromLongList(List<Long> list) {
        Long[] lArr = (Long[]) list.toArray(new Long[list.size()]);
        long[] jArr = new long[lArr.length];
        for (int i2 = 0; i2 < lArr.length; i2++) {
            jArr[i2] = lArr[i2].longValue();
        }
        return jArr;
    }

    private static String getPpsNodeValue(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            return pPSNode.getValue();
        }
        throw new ParsingException("Cannot get value from a non-leaf node: " + pPSNode.getName());
    }

    private static Map<String, byte[]> parseAAAServerTrustRootList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for AAAServerTrustRoot");
        }
        HashMap map = new HashMap();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<String, byte[]> trustRoot = parseTrustRoot(it.next());
            map.put(trustRoot.first, trustRoot.second);
        }
        return map;
    }

    private static Credential.CertificateCredential parseCertificateCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for DigitalCertificate");
        }
        Credential.CertificateCredential certificateCredential = new Credential.CertificateCredential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (name.equals(NODE_CERTIFICATE_TYPE)) {
                certificateCredential.setCertType(getPpsNodeValue(pPSNode2));
            } else {
                if (!name.equals(NODE_CERT_SHA256_FINGERPRINT)) {
                    throw new ParsingException("Unknown node under DigitalCertificate: " + pPSNode2.getName());
                }
                certificateCredential.setCertSha256Fingerprint(parseHexString(getPpsNodeValue(pPSNode2)));
            }
        }
        return certificateCredential;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:52:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0096 A[SYNTHETIC] */
    private static Credential parseCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeSP");
        }
        Credential credential = new Credential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            byte b2 = -1;
            switch (name) {
                case "ExpirationDate":
                    b2 = 0;
                case "DigitalCertificate":
                    b2 = 1;
                case "SIM":
                    b2 = 2;
                case "Realm":
                    b2 = 3;
                case "UsernamePassword":
                    b2 = 4;
                case "CheckAAAServerCertStatus":
                    b2 = 5;
                case "CreationDate":
                    b2 = 6;
                default:
                    switch (b2) {
                        case 0:
                            credential.setExpirationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                            break;
                        case 1:
                            credential.setCertCredential(parseCertificateCredential(pPSNode2));
                            break;
                        case 2:
                            credential.setSimCredential(parseSimCredential(pPSNode2));
                            break;
                        case 3:
                            credential.setRealm(getPpsNodeValue(pPSNode2));
                            break;
                        case 4:
                            credential.setUserCredential(parseUserCredential(pPSNode2));
                            break;
                        case 5:
                            credential.setCheckAaaServerCertStatus(Boolean.parseBoolean(getPpsNodeValue(pPSNode2)));
                            break;
                        case 6:
                            credential.setCreationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                            break;
                        default:
                            throw new ParsingException("Unknown node under Credential: " + pPSNode2.getName());
                    }
            }
        }
        return credential;
    }

    private static long parseDate(String str) throws ParsingException {
        try {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").parse(str).getTime();
        } catch (ParseException unused) {
            throw new ParsingException(c.j("Badly formatted time: ", str));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:48:0x007c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0094 A[SYNTHETIC] */
    private static void parseEAPMethod(PPSNode pPSNode, Credential.UserCredential userCredential) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for EAPMethod");
        }
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            name.hashCode();
            byte b2 = -1;
            switch (name) {
                case "VendorId":
                    b2 = 0;
                case "InnerEAPType":
                    b2 = 1;
                case "VendorType":
                    b2 = 2;
                case "EAPType":
                    b2 = 3;
                case "InnerVendorType":
                    b2 = 4;
                case "InnerMethod":
                    b2 = 5;
                case "InnerVendorID":
                    b2 = 6;
                default:
                    switch (b2) {
                        case 0:
                        case 1:
                        case 2:
                        case 4:
                        case 6:
                            m.x(new StringBuilder("Ignore unsupported EAP method parameter: "), pPSNode2.getName(), TAG);
                            break;
                        case 3:
                            userCredential.setEapType(parseInteger(getPpsNodeValue(pPSNode2)));
                            break;
                        case 5:
                            userCredential.setNonEapInnerMethod(getPpsNodeValue(pPSNode2));
                            break;
                        default:
                            throw new ParsingException("Unknown node under EAPMethod: " + pPSNode2.getName());
                    }
            }
        }
    }

    private static byte[] parseHexString(String str) throws ParsingException {
        if ((str.length() & 1) == 1) {
            throw new ParsingException("Odd length hex string: " + str.length());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            try {
                bArr[i2] = (byte) Integer.parseInt(str.substring(i3, i3 + 2), 16);
            } catch (NumberFormatException unused) {
                throw new ParsingException("Invalid hex string: ".concat(str));
            }
        }
        return bArr;
    }

    private static Pair<Long, Boolean> parseHomeOIInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeOI instance");
        }
        Long lValueOf = null;
        Boolean boolValueOf = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (name.equals(NODE_HOME_OI)) {
                try {
                    lValueOf = Long.valueOf(getPpsNodeValue(pPSNode2), 16);
                } catch (NumberFormatException unused) {
                    throw new ParsingException("Invalid HomeOI: " + getPpsNodeValue(pPSNode2));
                }
            } else {
                if (!name.equals(NODE_HOME_OI_REQUIRED)) {
                    throw new ParsingException("Unknown node under NetworkID instance: " + pPSNode2.getName());
                }
                boolValueOf = Boolean.valueOf(getPpsNodeValue(pPSNode2));
            }
        }
        if (lValueOf == null) {
            throw new ParsingException("HomeOI instance missing OI field");
        }
        if (boolValueOf != null) {
            return new Pair<>(lValueOf, boolValueOf);
        }
        throw new ParsingException("HomeOI instance missing required field");
    }

    private static Pair<List<Long>, List<Long>> parseHomeOIList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeOIList");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<Long, Boolean> homeOIInstance = parseHomeOIInstance(it.next());
            if (homeOIInstance.second.booleanValue()) {
                arrayList.add(homeOIInstance.first);
            } else {
                arrayList2.add(homeOIInstance.first);
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:52:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0096 A[SYNTHETIC] */
    private static HomeSp parseHomeSP(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeSP");
        }
        HomeSp homeSp = new HomeSp();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            byte b2 = -1;
            switch (name) {
                case "HomeOIList":
                    b2 = 0;
                case "IconURL":
                    b2 = 1;
                case "NetworkID":
                    b2 = 2;
                case "FQDN":
                    b2 = 3;
                case "RoamingConsortiumOI":
                    b2 = 4;
                case "FriendlyName":
                    b2 = 5;
                case "OtherHomePartners":
                    b2 = 6;
                default:
                    switch (b2) {
                        case 0:
                            Pair<List<Long>, List<Long>> homeOIList = parseHomeOIList(pPSNode2);
                            homeSp.setMatchAllOis(convertFromLongList(homeOIList.first));
                            homeSp.setMatchAnyOis(convertFromLongList(homeOIList.second));
                            break;
                        case 1:
                            homeSp.setIconUrl(getPpsNodeValue(pPSNode2));
                            break;
                        case 2:
                            homeSp.setHomeNetworkIds(parseNetworkIds(pPSNode2));
                            break;
                        case 3:
                            homeSp.setFqdn(getPpsNodeValue(pPSNode2));
                            break;
                        case 4:
                            homeSp.setRoamingConsortiumOis(parseRoamingConsortiumOI(getPpsNodeValue(pPSNode2)));
                            break;
                        case 5:
                            homeSp.setFriendlyName(getPpsNodeValue(pPSNode2));
                            break;
                        case 6:
                            homeSp.setOtherHomePartners(parseOtherHomePartners(pPSNode2));
                            break;
                        default:
                            throw new ParsingException("Unknown node under HomeSP: " + pPSNode2.getName());
                    }
            }
        }
        return homeSp;
    }

    private static int parseInteger(String str) throws ParsingException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new ParsingException(c.j("Invalid integer value: ", str));
        }
    }

    private static long parseLong(String str, int i2) throws ParsingException {
        try {
            return Long.parseLong(str, i2);
        } catch (NumberFormatException unused) {
            throw new ParsingException(c.j("Invalid long integer value: ", str));
        }
    }

    private static void parseMinBackhaulThreshold(PPSNode pPSNode, Policy policy) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for MinBackhaulThreshold");
        }
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            parseMinBackhaulThresholdInstance(it.next(), policy);
        }
    }

    private static void parseMinBackhaulThresholdInstance(PPSNode pPSNode, Policy policy) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for MinBackhaulThreshold instance");
        }
        long j2 = Long.MIN_VALUE;
        String ppsNodeValue = null;
        long j3 = Long.MIN_VALUE;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            switch (name) {
                case "NetworkType":
                    ppsNodeValue = getPpsNodeValue(pPSNode2);
                    break;
                case "ULBandwidth":
                    j3 = parseLong(getPpsNodeValue(pPSNode2), 10);
                    break;
                case "DLBandwidth":
                    j2 = parseLong(getPpsNodeValue(pPSNode2), 10);
                    break;
                default:
                    throw new ParsingException("Unknown node under MinBackhaulThreshold instance " + pPSNode2.getName());
            }
        }
        if (ppsNodeValue == null) {
            throw new ParsingException("Missing NetworkType field");
        }
        if (TextUtils.equals(ppsNodeValue, CalendarContract.CalendarCache.TIMEZONE_TYPE_HOME)) {
            policy.setMinHomeDownlinkBandwidth(j2);
            policy.setMinHomeUplinkBandwidth(j3);
        } else {
            if (!TextUtils.equals(ppsNodeValue, "roaming")) {
                throw new ParsingException("Invalid network type: ".concat(ppsNodeValue));
            }
            policy.setMinRoamingDownlinkBandwidth(j2);
            policy.setMinRoamingUplinkBandwidth(j3);
        }
    }

    public static PasspointConfiguration parseMoText(String str) {
        try {
            XMLNode xMLNode = new XMLParser().parse(str);
            if (xMLNode == null) {
                return null;
            }
            if (xMLNode.getTag() != TAG_MANAGEMENT_TREE) {
                Log.e(TAG, "Root is not a MgmtTree");
                return null;
            }
            PasspointConfiguration ppsNode = null;
            String text = null;
            for (XMLNode xMLNode2 : xMLNode.getChildren()) {
                String tag = xMLNode2.getTag();
                tag.getClass();
                if (tag.equals(TAG_VER_DTD)) {
                    if (text != null) {
                        Log.e(TAG, "Duplicate VerDTD element");
                        return null;
                    }
                    text = xMLNode2.getText();
                } else {
                    if (!tag.equals(TAG_NODE)) {
                        Log.e(TAG, "Unknown node: " + xMLNode2.getTag());
                        return null;
                    }
                    if (ppsNode != null) {
                        Log.e(TAG, "Unexpected multiple Node element under MgmtTree");
                        return null;
                    }
                    try {
                        ppsNode = parsePpsNode(xMLNode2);
                    } catch (ParsingException e2) {
                        Log.e(TAG, e2.getMessage());
                        return null;
                    }
                }
            }
            return ppsNode;
        } catch (IOException | SAXException unused) {
            return null;
        }
    }

    private static Pair<String, Long> parseNetworkIdInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for NetworkID instance");
        }
        String ppsNodeValue = null;
        Long lValueOf = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (name.equals(NODE_SSID)) {
                ppsNodeValue = getPpsNodeValue(pPSNode2);
            } else {
                if (!name.equals(NODE_HESSID)) {
                    throw new ParsingException("Unknown node under NetworkID instance: " + pPSNode2.getName());
                }
                lValueOf = Long.valueOf(parseLong(getPpsNodeValue(pPSNode2), 16));
            }
        }
        if (ppsNodeValue != null) {
            return new Pair<>(ppsNodeValue, lValueOf);
        }
        throw new ParsingException("NetworkID instance missing SSID");
    }

    private static Map<String, Long> parseNetworkIds(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for NetworkID");
        }
        HashMap map = new HashMap();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<String, Long> networkIdInstance = parseNetworkIdInstance(it.next());
            map.put(networkIdInstance.first, networkIdInstance.second);
        }
        return map;
    }

    private static String parseOtherHomePartnerInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for OtherHomePartner instance");
        }
        String ppsNodeValue = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (!name.equals(NODE_FQDN)) {
                throw new ParsingException("Unknown node under OtherHomePartner instance: " + pPSNode2.getName());
            }
            ppsNodeValue = getPpsNodeValue(pPSNode2);
        }
        if (ppsNodeValue != null) {
            return ppsNodeValue;
        }
        throw new ParsingException("OtherHomePartner instance missing FQDN field");
    }

    private static String[] parseOtherHomePartners(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for OtherHomePartners");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(parseOtherHomePartnerInstance(it.next()));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x009c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x008b A[SYNTHETIC] */
    private static Policy parsePolicy(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for Policy");
        }
        Policy policy = new Policy();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            byte b2 = -1;
            switch (name) {
                case "PolicyUpdate":
                    b2 = 0;
                case "MinBackhaulThreshold":
                    b2 = 1;
                case "MaximumBSSLoadValue":
                    b2 = 2;
                case "SPExclusionList":
                    b2 = 3;
                case "RequiredProtoPortTuple":
                    b2 = 4;
                case "PreferredRoamingPartnerList":
                    b2 = 5;
                default:
                    switch (b2) {
                        case 0:
                            policy.setPolicyUpdate(parseUpdateParameter(pPSNode2));
                            break;
                        case 1:
                            parseMinBackhaulThreshold(pPSNode2, policy);
                            break;
                        case 2:
                            policy.setMaximumBssLoadValue(parseInteger(getPpsNodeValue(pPSNode2)));
                            break;
                        case 3:
                            policy.setExcludedSsidList(parseSpExclusionList(pPSNode2));
                            break;
                        case 4:
                            policy.setRequiredProtoPortMap(parseRequiredProtoPortTuple(pPSNode2));
                            break;
                        case 5:
                            policy.setPreferredRoamingPartnerList(parsePreferredRoamingPartnerList(pPSNode2));
                            break;
                        default:
                            throw new ParsingException("Unknown node under Policy: " + pPSNode2.getName());
                    }
            }
        }
        return policy;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:57:0x008a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00a2 A[SYNTHETIC] */
    private static PasspointConfiguration parsePpsInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for PPS instance");
        }
        PasspointConfiguration passpointConfiguration = new PasspointConfiguration();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            byte b2 = -1;
            switch (name) {
                case "HomeSP":
                    b2 = 0;
                case "Policy":
                    b2 = 1;
                case "SubscriptionParameter":
                    b2 = 2;
                case "SubscriptionUpdate":
                    b2 = 3;
                case "AAAServerTrustRoot":
                    b2 = 4;
                case "Credential":
                    b2 = 5;
                case "Extension":
                    b2 = 6;
                case "CredentialPriority":
                    b2 = 7;
                default:
                    switch (b2) {
                        case 0:
                            passpointConfiguration.setHomeSp(parseHomeSP(pPSNode2));
                            break;
                        case 1:
                            passpointConfiguration.setPolicy(parsePolicy(pPSNode2));
                            break;
                        case 2:
                            parseSubscriptionParameter(pPSNode2, passpointConfiguration);
                            break;
                        case 3:
                            passpointConfiguration.setSubscriptionUpdate(parseUpdateParameter(pPSNode2));
                            break;
                        case 4:
                            passpointConfiguration.setTrustRootCertList(parseAAAServerTrustRootList(pPSNode2));
                            break;
                        case 5:
                            passpointConfiguration.setCredential(parseCredential(pPSNode2));
                            break;
                        case 6:
                            Log.d(TAG, "Ignore Extension node for vendor specific information");
                            break;
                        case 7:
                            passpointConfiguration.setCredentialPriority(parseInteger(getPpsNodeValue(pPSNode2)));
                            break;
                        default:
                            throw new ParsingException("Unknown node: " + pPSNode2.getName());
                    }
            }
        }
        return passpointConfiguration;
    }

    private static PasspointConfiguration parsePpsNode(XMLNode xMLNode) throws ParsingException {
        PasspointConfiguration ppsInstance = null;
        String text = null;
        int integer = Integer.MIN_VALUE;
        for (XMLNode xMLNode2 : xMLNode.getChildren()) {
            String tag = xMLNode2.getTag();
            tag.getClass();
            tag.hashCode();
            switch (tag) {
                case "RTProperties":
                    String urn = parseUrn(xMLNode2);
                    if (!TextUtils.equals(urn, PPS_MO_URN)) {
                        throw new ParsingException(c.j("Unknown URN: ", urn));
                    }
                    break;
                    break;
                case "Node":
                    PPSNode pPSNodeBuildPpsNode = buildPpsNode(xMLNode2);
                    if (!TextUtils.equals(pPSNodeBuildPpsNode.getName(), NODE_UPDATE_IDENTIFIER)) {
                        if (ppsInstance != null) {
                            throw new ParsingException("Multiple PPS instance");
                        }
                        ppsInstance = parsePpsInstance(pPSNodeBuildPpsNode);
                        break;
                    } else {
                        if (integer != Integer.MIN_VALUE) {
                            throw new ParsingException("Multiple node for UpdateIdentifier");
                        }
                        integer = parseInteger(getPpsNodeValue(pPSNodeBuildPpsNode));
                        break;
                    }
                    break;
                case "NodeName":
                    if (text != null) {
                        throw new ParsingException("Duplicate NodeName: " + xMLNode2.getText());
                    }
                    text = xMLNode2.getText();
                    if (!TextUtils.equals(text, NODE_PER_PROVIDER_SUBSCRIPTION)) {
                        throw new ParsingException(c.j("Unexpected NodeName: ", text));
                    }
                    break;
                    break;
                default:
                    throw new ParsingException("Unknown tag under PPS node: " + xMLNode2.getTag());
            }
        }
        if (ppsInstance != null && integer != Integer.MIN_VALUE) {
            ppsInstance.setUpdateIdentifier(integer);
        }
        return ppsInstance;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:32:0x009a  */
    /* JADX WARN: Code duplicated, block: B:43:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x00c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x006d A[SYNTHETIC] */
    private static Policy.RoamingPartner parsePreferredRoamingPartner(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for PreferredRoamingPartner instance");
        }
        Policy.RoamingPartner roamingPartner = new Policy.RoamingPartner();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            byte b2 = -1;
            switch (name) {
                case "Country":
                    b2 = 0;
                case "Priority":
                    b2 = 1;
                case "FQDN_Match":
                    b2 = 2;
                default:
                    switch (b2) {
                        case 0:
                            roamingPartner.setCountries(getPpsNodeValue(pPSNode2));
                            break;
                        case 1:
                            roamingPartner.setPriority(parseInteger(getPpsNodeValue(pPSNode2)));
                            break;
                        case 2:
                            String ppsNodeValue = getPpsNodeValue(pPSNode2);
                            String[] strArrSplit = ppsNodeValue.split(",");
                            if (strArrSplit.length == 2) {
                                throw new ParsingException("Invalid FQDN_Match: ".concat(ppsNodeValue));
                            }
                            roamingPartner.setFqdn(strArrSplit[0]);
                            if (!TextUtils.equals(strArrSplit[1], "exactMatch")) {
                                if (TextUtils.equals(strArrSplit[1], "includeSubdomains")) {
                                    throw new ParsingException("Invalid FQDN_Match: ".concat(ppsNodeValue));
                                }
                                roamingPartner.setFqdnExactMatch(false);
                            } else {
                                roamingPartner.setFqdnExactMatch(true);
                            }
                            break;
                            break;
                        default:
                            throw new ParsingException("Unknown node under PreferredRoamingPartnerList instance " + pPSNode2.getName());
                    }
            }
        }
        return roamingPartner;
    }

    private static List<Policy.RoamingPartner> parsePreferredRoamingPartnerList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for PreferredRoamingPartnerList");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(parsePreferredRoamingPartner(it.next()));
        }
        return arrayList;
    }

    private static Pair<Integer, String> parseProtoPortTuple(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for RequiredProtoPortTuple instance");
        }
        String ppsNodeValue = null;
        int integer = Integer.MIN_VALUE;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (name.equals(NODE_IP_PROTOCOL)) {
                integer = parseInteger(getPpsNodeValue(pPSNode2));
            } else {
                if (!name.equals(NODE_PORT_NUMBER)) {
                    throw new ParsingException("Unknown node under RequiredProtoPortTuple instance" + pPSNode2.getName());
                }
                ppsNodeValue = getPpsNodeValue(pPSNode2);
            }
        }
        if (integer == Integer.MIN_VALUE) {
            throw new ParsingException("Missing IPProtocol field");
        }
        if (ppsNodeValue != null) {
            return Pair.create(Integer.valueOf(integer), ppsNodeValue);
        }
        throw new ParsingException("Missing PortNumber field");
    }

    private static Map<Integer, String> parseRequiredProtoPortTuple(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for RequiredProtoPortTuple");
        }
        HashMap map = new HashMap();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<Integer, String> protoPortTuple = parseProtoPortTuple(it.next());
            map.put(protoPortTuple.first, protoPortTuple.second);
        }
        return map;
    }

    private static long[] parseRoamingConsortiumOI(String str) {
        String[] strArrSplit = str.split(",");
        long[] jArr = new long[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            jArr[i2] = parseLong(strArrSplit[i2], 16);
        }
        return jArr;
    }

    private static Credential.SimCredential parseSimCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SIM");
        }
        Credential.SimCredential simCredential = new Credential.SimCredential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (name.equals(NODE_EAP_TYPE)) {
                simCredential.setEapType(parseInteger(getPpsNodeValue(pPSNode2)));
            } else {
                if (!name.equals("IMSI")) {
                    throw new ParsingException("Unknown node under SIM: " + pPSNode2.getName());
                }
                simCredential.setImsi(getPpsNodeValue(pPSNode2));
            }
        }
        return simCredential;
    }

    private static String parseSpExclusionInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SPExclusion instance");
        }
        String ppsNodeValue = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (!name.equals(NODE_SSID)) {
                throw new ParsingException("Unknown node under SPExclusion instance");
            }
            ppsNodeValue = getPpsNodeValue(pPSNode2);
        }
        return ppsNodeValue;
    }

    private static String[] parseSpExclusionList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SPExclusionList");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(parseSpExclusionInstance(it.next()));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:37:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x007c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0070 A[SYNTHETIC] */
    private static void parseSubscriptionParameter(PPSNode pPSNode, PasspointConfiguration passpointConfiguration) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SubscriptionParameter");
        }
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            byte b2 = -1;
            switch (name) {
                case "UsageLimits":
                    b2 = 0;
                case "ExpirationDate":
                    b2 = 1;
                case "TypeOfSubscription":
                    b2 = 2;
                case "CreationDate":
                    b2 = 3;
                default:
                    switch (b2) {
                        case 0:
                            parseUsageLimits(pPSNode2, passpointConfiguration);
                            break;
                        case 1:
                            passpointConfiguration.setSubscriptionExpirationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                            break;
                        case 2:
                            passpointConfiguration.setSubscriptionType(getPpsNodeValue(pPSNode2));
                            break;
                        case 3:
                            passpointConfiguration.setSubscriptionCreationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                            break;
                        default:
                            throw new ParsingException("Unknown node under SubscriptionParameter" + pPSNode2.getName());
                    }
            }
        }
    }

    private static Pair<String, byte[]> parseTrustRoot(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for TrustRoot");
        }
        String ppsNodeValue = null;
        byte[] hexString = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (name.equals(NODE_CERT_URL)) {
                ppsNodeValue = getPpsNodeValue(pPSNode2);
            } else {
                if (!name.equals(NODE_CERT_SHA256_FINGERPRINT)) {
                    throw new ParsingException("Unknown node under TrustRoot: " + pPSNode2.getName());
                }
                hexString = parseHexString(getPpsNodeValue(pPSNode2));
            }
        }
        return Pair.create(ppsNodeValue, hexString);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:52:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0099 A[SYNTHETIC] */
    private static UpdateParameter parseUpdateParameter(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for Update Parameters");
        }
        UpdateParameter updateParameter = new UpdateParameter();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            name.hashCode();
            byte b2 = -1;
            switch (name) {
                case "UpdateMethod":
                    b2 = 0;
                case "TrustRoot":
                    b2 = 1;
                case "URI":
                    b2 = 2;
                case "Other":
                    b2 = 3;
                case "Restriction":
                    b2 = 4;
                case "UpdateInterval":
                    b2 = 5;
                case "UsernamePassword":
                    b2 = 6;
                default:
                    switch (b2) {
                        case 0:
                            updateParameter.setUpdateMethod(getPpsNodeValue(pPSNode2));
                            break;
                        case 1:
                            Pair<String, byte[]> trustRoot = parseTrustRoot(pPSNode2);
                            updateParameter.setTrustRootCertUrl(trustRoot.first);
                            updateParameter.setTrustRootCertSha256Fingerprint(trustRoot.second);
                            break;
                        case 2:
                            updateParameter.setServerUri(getPpsNodeValue(pPSNode2));
                            break;
                        case 3:
                            m.x(new StringBuilder("Ignore unsupported paramter: "), pPSNode2.getName(), TAG);
                            break;
                        case 4:
                            updateParameter.setRestriction(getPpsNodeValue(pPSNode2));
                            break;
                        case 5:
                            updateParameter.setUpdateIntervalInMinutes(parseLong(getPpsNodeValue(pPSNode2), 10));
                            break;
                        case 6:
                            Pair<String, String> updateUserCredential = parseUpdateUserCredential(pPSNode2);
                            updateParameter.setUsername(updateUserCredential.first);
                            updateParameter.setBase64EncodedPassword(updateUserCredential.second);
                            break;
                        default:
                            throw new ParsingException("Unknown node under Update Parameters: " + pPSNode2.getName());
                    }
            }
        }
        return updateParameter;
    }

    private static Pair<String, String> parseUpdateUserCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for UsernamePassword");
        }
        String ppsNodeValue = null;
        String ppsNodeValue2 = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            if (name.equals(NODE_USERNAME)) {
                ppsNodeValue = getPpsNodeValue(pPSNode2);
            } else {
                if (!name.equals(NODE_PASSWORD)) {
                    throw new ParsingException("Unknown node under UsernamePassword: " + pPSNode2.getName());
                }
                ppsNodeValue2 = getPpsNodeValue(pPSNode2);
            }
        }
        return Pair.create(ppsNodeValue, ppsNodeValue2);
    }

    private static String parseUrn(XMLNode xMLNode) throws ParsingException {
        if (xMLNode.getChildren().size() != 1) {
            throw new ParsingException("Expect RTPProperties node to only have one child");
        }
        XMLNode xMLNode2 = xMLNode.getChildren().get(0);
        if (xMLNode2.getChildren().size() != 1) {
            throw new ParsingException("Expect Type node to only have one child");
        }
        if (!TextUtils.equals(xMLNode2.getTag(), TAG_TYPE)) {
            throw new ParsingException("Unexpected tag for Type: " + xMLNode2.getTag());
        }
        XMLNode xMLNode3 = xMLNode2.getChildren().get(0);
        if (!xMLNode3.getChildren().isEmpty()) {
            throw new ParsingException("Expect DDFName node to have no child");
        }
        if (TextUtils.equals(xMLNode3.getTag(), TAG_DDF_NAME)) {
            return xMLNode3.getText();
        }
        throw new ParsingException("Unexpected tag for DDFName: " + xMLNode3.getTag());
    }

    private static void parseUsageLimits(PPSNode pPSNode, PasspointConfiguration passpointConfiguration) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for UsageLimits");
        }
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            switch (name) {
                case "StartDate":
                    passpointConfiguration.setUsageLimitStartTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                    break;
                case "UsageTimePeriod":
                    passpointConfiguration.setUsageLimitUsageTimePeriodInMinutes(parseLong(getPpsNodeValue(pPSNode2), 10));
                    break;
                case "DataLimit":
                    passpointConfiguration.setUsageLimitDataLimit(parseLong(getPpsNodeValue(pPSNode2), 10));
                    break;
                case "TimeLimit":
                    passpointConfiguration.setUsageLimitTimeLimitInMinutes(parseLong(getPpsNodeValue(pPSNode2), 10));
                    break;
                default:
                    throw new ParsingException("Unknown node under UsageLimits" + pPSNode2.getName());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x008b A[SYNTHETIC] */
    private static Credential.UserCredential parseUserCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for UsernamePassword");
        }
        Credential.UserCredential userCredential = new Credential.UserCredential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            name.getClass();
            byte b2 = -1;
            switch (name) {
                case "Username":
                    b2 = 0;
                case "AbleToShare":
                    b2 = 1;
                case "MachineManaged":
                    b2 = 2;
                case "Password":
                    b2 = 3;
                case "SoftTokenApp":
                    b2 = 4;
                case "EAPMethod":
                    b2 = 5;
                default:
                    switch (b2) {
                        case 0:
                            userCredential.setUsername(getPpsNodeValue(pPSNode2));
                            break;
                        case 1:
                            userCredential.setAbleToShare(Boolean.parseBoolean(getPpsNodeValue(pPSNode2)));
                            break;
                        case 2:
                            userCredential.setMachineManaged(Boolean.parseBoolean(getPpsNodeValue(pPSNode2)));
                            break;
                        case 3:
                            userCredential.setPassword(getPpsNodeValue(pPSNode2));
                            break;
                        case 4:
                            userCredential.setSoftTokenApp(getPpsNodeValue(pPSNode2));
                            break;
                        case 5:
                            parseEAPMethod(pPSNode2, userCredential);
                            break;
                        default:
                            throw new ParsingException("Unknown node under UsernamPassword: " + pPSNode2.getName());
                    }
            }
        }
        return userCredential;
    }
}
