package android.security.net.config;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.storage.StorageManager;
import android.util.ArraySet;
import android.util.Base64;
import android.util.Pair;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class XmlConfigSource implements ConfigSource {
    private static final int CONFIG_BASE = 0;
    private static final int CONFIG_DEBUG = 2;
    private static final int CONFIG_DOMAIN = 1;
    private Context mContext;
    private final boolean mDebugBuild;
    private NetworkSecurityConfig mDefaultConfig;
    private Set<Pair<Domain, NetworkSecurityConfig>> mDomainMap;
    private boolean mInitialized;
    private final Object mLock;
    private final int mResourceId;
    private final int mTargetSandboxVesrsion;
    private final int mTargetSdkVersion;

    public XmlConfigSource(Context context, int i2) {
        this(context, i2, false);
    }

    private void addDebugAnchorsIfNeeded(NetworkSecurityConfig.Builder builder, NetworkSecurityConfig.Builder builder2) {
        if (builder != null && builder.hasCertificatesEntryRefs() && builder2.hasCertificatesEntryRefs()) {
            builder2.addCertificatesEntryRefs(builder.getCertificatesEntryRefs());
        }
    }

    private void ensureInitialized() {
        synchronized (this.mLock) {
            if (this.mInitialized) {
                return;
            }
            try {
                XmlResourceParser xml = this.mContext.getResources().getXml(this.mResourceId);
                try {
                    parseNetworkSecurityConfig(xml);
                    this.mContext = null;
                    this.mInitialized = true;
                    if (xml != null) {
                        xml.close();
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (xml != null) {
                            try {
                                xml.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Resources.NotFoundException | ParserException | IOException | XmlPullParserException e2) {
                throw new RuntimeException("Failed to parse XML configuration from " + this.mContext.getResources().getResourceEntryName(this.mResourceId), e2);
            }
        }
    }

    private static final String getConfigString(int i2) {
        if (i2 == 0) {
            return "base-config";
        }
        if (i2 == 1) {
            return "domain-config";
        }
        if (i2 == 2) {
            return "debug-overrides";
        }
        throw new IllegalArgumentException(c.d("Unknown config type: ", i2));
    }

    private CertificatesEntryRef parseCertificatesEntry(XmlResourceParser xmlResourceParser, boolean z2) throws ParserException {
        CertificateSource userCertificateSource;
        boolean attributeBooleanValue = xmlResourceParser.getAttributeBooleanValue(null, "overridePins", z2);
        int attributeResourceValue = xmlResourceParser.getAttributeResourceValue(null, "src", -1);
        String attributeValue = xmlResourceParser.getAttributeValue(null, "src");
        if (attributeValue == null) {
            throw new ParserException(xmlResourceParser, "certificates element missing src attribute");
        }
        if (attributeResourceValue != -1) {
            userCertificateSource = new ResourceCertificateSource(attributeResourceValue, this.mContext);
        } else if (StorageManager.UUID_SYSTEM.equals(attributeValue)) {
            userCertificateSource = SystemCertificateSource.getInstance();
        } else {
            if (!"user".equals(attributeValue)) {
                throw new ParserException(xmlResourceParser, "Unknown certificates src. Should be one of system|user|@resourceVal");
            }
            userCertificateSource = UserCertificateSource.getInstance();
        }
        XmlUtils.skipCurrentTag(xmlResourceParser);
        return new CertificatesEntryRef(userCertificateSource, attributeBooleanValue);
    }

    private List<Pair<NetworkSecurityConfig.Builder, Set<Domain>>> parseConfigEntry(XmlResourceParser xmlResourceParser, Set<String> set, NetworkSecurityConfig.Builder builder, int i2) throws ParserException {
        ArrayList arrayList = new ArrayList();
        NetworkSecurityConfig.Builder builder2 = new NetworkSecurityConfig.Builder();
        builder2.setParent(builder);
        ArraySet arraySet = new ArraySet();
        boolean z2 = false;
        boolean z3 = i2 == 2;
        xmlResourceParser.getName();
        int depth = xmlResourceParser.getDepth();
        arrayList.add(new Pair(builder2, arraySet));
        for (int i3 = 0; i3 < xmlResourceParser.getAttributeCount(); i3++) {
            String attributeName = xmlResourceParser.getAttributeName(i3);
            if ("hstsEnforced".equals(attributeName)) {
                builder2.setHstsEnforced(xmlResourceParser.getAttributeBooleanValue(i3, false));
            } else if ("cleartextTrafficPermitted".equals(attributeName)) {
                builder2.setCleartextTrafficPermitted(xmlResourceParser.getAttributeBooleanValue(i3, true));
            }
        }
        boolean z4 = false;
        while (XmlUtils.nextElementWithin(xmlResourceParser, depth)) {
            String name = xmlResourceParser.getName();
            if ("domain".equals(name)) {
                if (i2 != 1) {
                    throw new ParserException(xmlResourceParser, "domain element not allowed in " + getConfigString(i2));
                }
                arraySet.add(parseDomain(xmlResourceParser, set));
            } else if ("trust-anchors".equals(name)) {
                if (z2) {
                    throw new ParserException(xmlResourceParser, "Multiple trust-anchor elements not allowed");
                }
                builder2.addCertificatesEntryRefs(parseTrustAnchors(xmlResourceParser, z3));
                z2 = true;
            } else if ("pin-set".equals(name)) {
                if (i2 != 1) {
                    throw new ParserException(xmlResourceParser, "pin-set element not allowed in " + getConfigString(i2));
                }
                if (z4) {
                    throw new ParserException(xmlResourceParser, "Multiple pin-set elements not allowed");
                }
                builder2.setPinSet(parsePinSet(xmlResourceParser));
                z4 = true;
            } else if (!"domain-config".equals(name)) {
                XmlUtils.skipCurrentTag(xmlResourceParser);
            } else {
                if (i2 != 1) {
                    throw new ParserException(xmlResourceParser, "Nested domain-config not allowed in " + getConfigString(i2));
                }
                arrayList.addAll(parseConfigEntry(xmlResourceParser, set, builder2, i2));
            }
        }
        if (i2 == 1 && arraySet.isEmpty()) {
            throw new ParserException(xmlResourceParser, "No domain elements in domain-config");
        }
        return arrayList;
    }

    private NetworkSecurityConfig.Builder parseDebugOverridesResource() {
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(resources.getResourceEntryName(this.mResourceId) + "_debug", "xml", resources.getResourcePackageName(this.mResourceId));
        if (identifier == 0) {
            return null;
        }
        XmlResourceParser xml = resources.getXml(identifier);
        try {
            XmlUtils.beginDocument(xml, "network-security-config");
            int depth = xml.getDepth();
            NetworkSecurityConfig.Builder builder = null;
            boolean z2 = false;
            while (XmlUtils.nextElementWithin(xml, depth)) {
                if (!"debug-overrides".equals(xml.getName())) {
                    XmlUtils.skipCurrentTag(xml);
                } else {
                    if (z2) {
                        throw new ParserException(xml, "Only one debug-overrides allowed");
                    }
                    if (this.mDebugBuild) {
                        builder = parseConfigEntry(xml, null, null, 2).get(0).first;
                    } else {
                        XmlUtils.skipCurrentTag(xml);
                    }
                    z2 = true;
                }
            }
            xml.close();
            return builder;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private Domain parseDomain(XmlResourceParser xmlResourceParser, Set<String> set) throws ParserException {
        boolean attributeBooleanValue = xmlResourceParser.getAttributeBooleanValue(null, "includeSubdomains", false);
        if (xmlResourceParser.next() != 4) {
            throw new ParserException(xmlResourceParser, "Domain name missing");
        }
        String lowerCase = xmlResourceParser.getText().trim().toLowerCase(Locale.US);
        if (xmlResourceParser.next() != 3) {
            throw new ParserException(xmlResourceParser, "domain contains additional elements");
        }
        if (set.add(lowerCase)) {
            return new Domain(lowerCase, attributeBooleanValue);
        }
        throw new ParserException(xmlResourceParser, c.D(lowerCase, " has already been specified"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void parseNetworkSecurityConfig(XmlResourceParser xmlResourceParser) throws XmlPullParserException, ParserException, IOException {
        ArraySet arraySet = new ArraySet();
        ArrayList<Pair> arrayList = new ArrayList();
        XmlUtils.beginDocument(xmlResourceParser, "network-security-config");
        int depth = xmlResourceParser.getDepth();
        NetworkSecurityConfig.Builder debugOverridesResource = null;
        NetworkSecurityConfig.Builder builder = null;
        boolean z2 = false;
        boolean z3 = false;
        while (XmlUtils.nextElementWithin(xmlResourceParser, depth)) {
            if ("base-config".equals(xmlResourceParser.getName())) {
                if (z2) {
                    throw new ParserException(xmlResourceParser, "Only one base-config allowed");
                }
                builder = parseConfigEntry(xmlResourceParser, arraySet, null, 0).get(0).first;
                z2 = true;
            } else if ("domain-config".equals(xmlResourceParser.getName())) {
                arrayList.addAll(parseConfigEntry(xmlResourceParser, arraySet, builder, 1));
            } else if (!"debug-overrides".equals(xmlResourceParser.getName())) {
                XmlUtils.skipCurrentTag(xmlResourceParser);
            } else {
                if (z3) {
                    throw new ParserException(xmlResourceParser, "Only one debug-overrides allowed");
                }
                if (this.mDebugBuild) {
                    debugOverridesResource = parseConfigEntry(xmlResourceParser, null, null, 2).get(0).first;
                } else {
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
                z3 = true;
            }
        }
        if (this.mDebugBuild && debugOverridesResource == null) {
            debugOverridesResource = parseDebugOverridesResource();
        }
        NetworkSecurityConfig.Builder defaultBuilder = NetworkSecurityConfig.getDefaultBuilder(this.mTargetSdkVersion, this.mTargetSandboxVesrsion);
        addDebugAnchorsIfNeeded(debugOverridesResource, defaultBuilder);
        if (builder != null) {
            builder.setParent(defaultBuilder);
            addDebugAnchorsIfNeeded(debugOverridesResource, builder);
        } else {
            builder = defaultBuilder;
        }
        ArraySet arraySet2 = new ArraySet();
        for (Pair pair : arrayList) {
            NetworkSecurityConfig.Builder builder2 = (NetworkSecurityConfig.Builder) pair.first;
            Set set = (Set) pair.second;
            if (builder2.getParent() == null) {
                builder2.setParent(builder);
            }
            addDebugAnchorsIfNeeded(debugOverridesResource, builder2);
            NetworkSecurityConfig networkSecurityConfigBuild = builder2.build();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                arraySet2.add(new Pair((Domain) it.next(), networkSecurityConfigBuild));
            }
        }
        this.mDefaultConfig = builder.build();
        this.mDomainMap = arraySet2;
    }

    private Pin parsePin(XmlResourceParser xmlResourceParser) throws ParserException {
        String attributeValue = xmlResourceParser.getAttributeValue(null, "digest");
        if (!Pin.isSupportedDigestAlgorithm(attributeValue)) {
            throw new ParserException(xmlResourceParser, c.j("Unsupported pin digest algorithm: ", attributeValue));
        }
        if (xmlResourceParser.next() != 4) {
            throw new ParserException(xmlResourceParser, "Missing pin digest");
        }
        try {
            byte[] bArrDecode = Base64.decode(xmlResourceParser.getText().trim(), 0);
            int digestLength = Pin.getDigestLength(attributeValue);
            if (bArrDecode.length == digestLength) {
                if (xmlResourceParser.next() == 3) {
                    return new Pin(attributeValue, bArrDecode);
                }
                throw new ParserException(xmlResourceParser, "pin contains additional elements");
            }
            throw new ParserException(xmlResourceParser, "digest length " + bArrDecode.length + " does not match expected length for " + attributeValue + " of " + digestLength);
        } catch (IllegalArgumentException e2) {
            throw new ParserException(xmlResourceParser, "Invalid pin digest", e2);
        }
    }

    private PinSet parsePinSet(XmlResourceParser xmlResourceParser) throws ParserException {
        long time;
        String attributeValue = xmlResourceParser.getAttributeValue(null, "expiration");
        if (attributeValue != null) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                simpleDateFormat.setLenient(false);
                Date date = simpleDateFormat.parse(attributeValue);
                if (date == null) {
                    throw new ParserException(xmlResourceParser, "Invalid expiration date in pin-set");
                }
                time = date.getTime();
            } catch (ParseException e2) {
                throw new ParserException(xmlResourceParser, "Invalid expiration date in pin-set", e2);
            }
        } else {
            time = Long.MAX_VALUE;
        }
        int depth = xmlResourceParser.getDepth();
        ArraySet arraySet = new ArraySet();
        while (XmlUtils.nextElementWithin(xmlResourceParser, depth)) {
            if (xmlResourceParser.getName().equals("pin")) {
                arraySet.add(parsePin(xmlResourceParser));
            } else {
                XmlUtils.skipCurrentTag(xmlResourceParser);
            }
        }
        return new PinSet(arraySet, time);
    }

    private Collection<CertificatesEntryRef> parseTrustAnchors(XmlResourceParser xmlResourceParser, boolean z2) {
        int depth = xmlResourceParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (XmlUtils.nextElementWithin(xmlResourceParser, depth)) {
            if (xmlResourceParser.getName().equals("certificates")) {
                arrayList.add(parseCertificatesEntry(xmlResourceParser, z2));
            } else {
                XmlUtils.skipCurrentTag(xmlResourceParser);
            }
        }
        return arrayList;
    }

    @Override // android.security.net.config.ConfigSource
    public NetworkSecurityConfig getDefaultConfig() {
        ensureInitialized();
        return this.mDefaultConfig;
    }

    @Override // android.security.net.config.ConfigSource
    public Set<Pair<Domain, NetworkSecurityConfig>> getPerDomainConfigs() {
        ensureInitialized();
        return this.mDomainMap;
    }

    public XmlConfigSource(Context context, int i2, boolean z2) {
        this(context, i2, z2, 10000);
    }

    public XmlConfigSource(Context context, int i2, boolean z2, int i3) {
        this(context, i2, z2, i3, 1);
    }

    public XmlConfigSource(Context context, int i2, boolean z2, int i3, int i4) {
        this.mLock = new Object();
        this.mResourceId = i2;
        this.mContext = context;
        this.mDebugBuild = z2;
        this.mTargetSdkVersion = i3;
        this.mTargetSandboxVesrsion = i4;
    }

    public static class ParserException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        public ParserException(XmlPullParser xmlPullParser, String str, Throwable th) {
            StringBuilder sbU = c.u(str, " at: ");
            sbU.append(xmlPullParser.getPositionDescription());
            super(sbU.toString(), th);
        }

        public ParserException(XmlPullParser xmlPullParser, String str) {
            this(xmlPullParser, str, null);
        }
    }
}
