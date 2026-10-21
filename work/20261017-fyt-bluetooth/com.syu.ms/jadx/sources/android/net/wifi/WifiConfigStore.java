package android.net.wifi;

import android.content.Context;
import android.content.Intent;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.NetworkInfo;
import android.net.NetworkUtils;
import android.net.ProxyProperties;
import android.net.RouteInfo;
import android.net.http.CharArrayBuffers;
import android.os.Environment;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.UserHandle;
import android.security.KeyStore;
import android.text.TextUtils;
import android.util.LocalLog;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class WifiConfigStore {
    private static final boolean DBG = true;
    private static final String DNS_KEY = "dns";
    private static final String EOS = "eos";
    private static final String EXCLUSION_LIST_KEY = "exclusionList";
    private static final String GATEWAY_KEY = "gateway";
    private static final String ID_KEY = "id";
    private static final int IPCONFIG_FILE_VERSION = 2;
    private static final String IP_ASSIGNMENT_KEY = "ipAssignment";
    private static final String LINK_ADDRESS_KEY = "linkAddress";
    private static final String PROXY_HOST_KEY = "proxyHost";
    private static final String PROXY_PAC_FILE = "proxyPac";
    private static final String PROXY_PORT_KEY = "proxyPort";
    private static final String PROXY_SETTINGS_KEY = "proxySettings";
    private static final String SUPPLICANT_CONFIG_FILE = "/data/misc/wifi/wpa_supplicant.conf";
    private static final String TAG = "WifiConfigStore";
    private static final boolean VDBG = false;
    private static final String ipConfigFile = Environment.getDataDirectory() + "/misc/wifi/ipconfig.txt";
    private Context mContext;
    private WifiNative mWifiNative;
    private HashMap<Integer, WifiConfiguration> mConfiguredNetworks = new HashMap<>();
    private HashMap<Integer, Integer> mNetworkIds = new HashMap<>();
    private int mLastPriority = -1;
    private final KeyStore mKeyStore = KeyStore.getInstance();
    private final LocalLog mLocalLog = null;
    private final WpaConfigFileObserver mFileObserver = null;

    /* JADX INFO: renamed from: android.net.wifi.WifiConfigStore$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$net$NetworkInfo$DetailedState;
        public static final /* synthetic */ int[] $SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment;
        public static final /* synthetic */ int[] $SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings;

        static {
            int[] iArr = new int[WifiConfiguration.ProxySettings.values().length];
            $SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings = iArr;
            try {
                iArr[WifiConfiguration.ProxySettings.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings[WifiConfiguration.ProxySettings.PAC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings[WifiConfiguration.ProxySettings.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings[WifiConfiguration.ProxySettings.UNASSIGNED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[WifiConfiguration.IpAssignment.values().length];
            $SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment = iArr2;
            try {
                iArr2[WifiConfiguration.IpAssignment.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment[WifiConfiguration.IpAssignment.DHCP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment[WifiConfiguration.IpAssignment.UNASSIGNED.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[NetworkInfo.DetailedState.values().length];
            $SwitchMap$android$net$NetworkInfo$DetailedState = iArr3;
            try {
                iArr3[NetworkInfo.DetailedState.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$android$net$NetworkInfo$DetailedState[NetworkInfo.DetailedState.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class DelayedDiskWrite {
        private static final String TAG = "DelayedDiskWrite";
        private static Handler sDiskWriteHandler;
        private static HandlerThread sDiskWriteHandlerThread;
        private static int sWriteSequence;

        private DelayedDiskWrite() {
        }

        private static void loge(String str) {
            Log.e(TAG, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:114:0x01ab A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:37:0x010f A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:38:0x0111 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:39:0x0113  */
        /* JADX WARN: Code duplicated, block: B:41:0x0116 A[Catch: NullPointerException -> 0x0191, IOException -> 0x01d3, all -> 0x01f7, TryCatch #4 {NullPointerException -> 0x0191, blocks: (B:9:0x002b, B:13:0x003f, B:35:0x0103, B:41:0x0116, B:47:0x0184, B:42:0x011c, B:44:0x012c, B:45:0x014b, B:14:0x0046, B:16:0x0057, B:17:0x006d, B:19:0x0073, B:20:0x0091, B:21:0x0099, B:23:0x009f, B:25:0x00b0, B:27:0x00c9, B:29:0x00cf, B:30:0x00de, B:26:0x00c6, B:31:0x00e2, B:32:0x00ea, B:34:0x00f0), top: B:102:0x002b }] */
        /* JADX WARN: Code duplicated, block: B:42:0x011c A[Catch: NullPointerException -> 0x0191, IOException -> 0x01d3, all -> 0x01f7, TryCatch #4 {NullPointerException -> 0x0191, blocks: (B:9:0x002b, B:13:0x003f, B:35:0x0103, B:41:0x0116, B:47:0x0184, B:42:0x011c, B:44:0x012c, B:45:0x014b, B:14:0x0046, B:16:0x0057, B:17:0x006d, B:19:0x0073, B:20:0x0091, B:21:0x0099, B:23:0x009f, B:25:0x00b0, B:27:0x00c9, B:29:0x00cf, B:30:0x00de, B:26:0x00c6, B:31:0x00e2, B:32:0x00ea, B:34:0x00f0), top: B:102:0x002b }] */
        /* JADX WARN: Code duplicated, block: B:44:0x012c A[Catch: NullPointerException -> 0x0191, IOException -> 0x01d3, all -> 0x01f7, TryCatch #4 {NullPointerException -> 0x0191, blocks: (B:9:0x002b, B:13:0x003f, B:35:0x0103, B:41:0x0116, B:47:0x0184, B:42:0x011c, B:44:0x012c, B:45:0x014b, B:14:0x0046, B:16:0x0057, B:17:0x006d, B:19:0x0073, B:20:0x0091, B:21:0x0099, B:23:0x009f, B:25:0x00b0, B:27:0x00c9, B:29:0x00cf, B:30:0x00de, B:26:0x00c6, B:31:0x00e2, B:32:0x00ea, B:34:0x00f0), top: B:102:0x002b }] */
        /* JADX WARN: Code duplicated, block: B:45:0x014b A[Catch: NullPointerException -> 0x0191, IOException -> 0x01d3, all -> 0x01f7, TryCatch #4 {NullPointerException -> 0x0191, blocks: (B:9:0x002b, B:13:0x003f, B:35:0x0103, B:41:0x0116, B:47:0x0184, B:42:0x011c, B:44:0x012c, B:45:0x014b, B:14:0x0046, B:16:0x0057, B:17:0x006d, B:19:0x0073, B:20:0x0091, B:21:0x0099, B:23:0x009f, B:25:0x00b0, B:27:0x00c9, B:29:0x00cf, B:30:0x00de, B:26:0x00c6, B:31:0x00e2, B:32:0x00ea, B:34:0x00f0), top: B:102:0x002b }] */
        /* JADX WARN: Code duplicated, block: B:47:0x0184 A[Catch: NullPointerException -> 0x0191, IOException -> 0x01d3, all -> 0x01f7, TRY_LEAVE, TryCatch #4 {NullPointerException -> 0x0191, blocks: (B:9:0x002b, B:13:0x003f, B:35:0x0103, B:41:0x0116, B:47:0x0184, B:42:0x011c, B:44:0x012c, B:45:0x014b, B:14:0x0046, B:16:0x0057, B:17:0x006d, B:19:0x0073, B:20:0x0091, B:21:0x0099, B:23:0x009f, B:25:0x00b0, B:27:0x00c9, B:29:0x00cf, B:30:0x00de, B:26:0x00c6, B:31:0x00e2, B:32:0x00ea, B:34:0x00f0), top: B:102:0x002b }] */
        /* JADX WARN: Code duplicated, block: B:84:0x0205 A[Catch: all -> 0x0214, TryCatch #2 {, blocks: (B:82:0x01fe, B:84:0x0205, B:85:0x0212), top: B:98:0x01fe }] */
        /* JADX WARN: Code duplicated, block: B:94:0x01fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:98:0x01fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public static void onWriteCalled(List<WifiConfiguration> list) throws Throwable {
            DataOutputStream dataOutputStream;
            int i2;
            int i3;
            try {
                dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(WifiConfigStore.ipConfigFile)));
                try {
                    try {
                        dataOutputStream.writeInt(2);
                        for (WifiConfiguration wifiConfiguration : list) {
                            try {
                                LinkProperties linkProperties = wifiConfiguration.linkProperties;
                                int i4 = AnonymousClass1.$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment[wifiConfiguration.ipAssignment.ordinal()];
                                boolean z2 = false;
                                if (i4 != 1) {
                                    if (i4 == 2) {
                                        dataOutputStream.writeUTF(WifiConfigStore.IP_ASSIGNMENT_KEY);
                                        dataOutputStream.writeUTF(wifiConfiguration.ipAssignment.toString());
                                    } else if (i4 != 3) {
                                        loge("Ignore invalid ip assignment while writing");
                                    }
                                    i3 = AnonymousClass1.$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings[wifiConfiguration.proxySettings.ordinal()];
                                    if (i3 != 1) {
                                        ProxyProperties httpProxy = linkProperties.getHttpProxy();
                                        String exclusionList = httpProxy.getExclusionList();
                                        dataOutputStream.writeUTF(WifiConfigStore.PROXY_SETTINGS_KEY);
                                        dataOutputStream.writeUTF(wifiConfiguration.proxySettings.toString());
                                        dataOutputStream.writeUTF(WifiConfigStore.PROXY_HOST_KEY);
                                        dataOutputStream.writeUTF(httpProxy.getHost());
                                        dataOutputStream.writeUTF(WifiConfigStore.PROXY_PORT_KEY);
                                        dataOutputStream.writeInt(httpProxy.getPort());
                                        dataOutputStream.writeUTF(WifiConfigStore.EXCLUSION_LIST_KEY);
                                        dataOutputStream.writeUTF(exclusionList);
                                    } else if (i3 != 2) {
                                        if (i3 != 3) {
                                            dataOutputStream.writeUTF(WifiConfigStore.PROXY_SETTINGS_KEY);
                                            dataOutputStream.writeUTF(wifiConfiguration.proxySettings.toString());
                                        } else if (i3 != 4) {
                                            loge("Ignthisore invalid proxy settings while writing");
                                        }
                                        if (z2) {
                                            dataOutputStream.writeUTF("id");
                                            dataOutputStream.writeInt(WifiConfigStore.configKey(wifiConfiguration));
                                        }
                                        dataOutputStream.writeUTF(WifiConfigStore.EOS);
                                    } else {
                                        ProxyProperties httpProxy2 = linkProperties.getHttpProxy();
                                        dataOutputStream.writeUTF(WifiConfigStore.PROXY_SETTINGS_KEY);
                                        dataOutputStream.writeUTF(wifiConfiguration.proxySettings.toString());
                                        dataOutputStream.writeUTF(WifiConfigStore.PROXY_PAC_FILE);
                                        dataOutputStream.writeUTF(httpProxy2.getPacFileUrl());
                                    }
                                    z2 = true;
                                    if (z2) {
                                        dataOutputStream.writeUTF("id");
                                        dataOutputStream.writeInt(WifiConfigStore.configKey(wifiConfiguration));
                                    }
                                    dataOutputStream.writeUTF(WifiConfigStore.EOS);
                                } else {
                                    dataOutputStream.writeUTF(WifiConfigStore.IP_ASSIGNMENT_KEY);
                                    dataOutputStream.writeUTF(wifiConfiguration.ipAssignment.toString());
                                    for (LinkAddress linkAddress : linkProperties.getLinkAddresses()) {
                                        dataOutputStream.writeUTF(WifiConfigStore.LINK_ADDRESS_KEY);
                                        dataOutputStream.writeUTF(linkAddress.getAddress().getHostAddress());
                                        dataOutputStream.writeInt(linkAddress.getNetworkPrefixLength());
                                    }
                                    for (RouteInfo routeInfo : linkProperties.getRoutes()) {
                                        dataOutputStream.writeUTF(WifiConfigStore.GATEWAY_KEY);
                                        LinkAddress destination = routeInfo.getDestination();
                                        if (destination != null) {
                                            dataOutputStream.writeInt(1);
                                            dataOutputStream.writeUTF(destination.getAddress().getHostAddress());
                                            dataOutputStream.writeInt(destination.getNetworkPrefixLength());
                                        } else {
                                            dataOutputStream.writeInt(0);
                                        }
                                        if (routeInfo.getGateway() != null) {
                                            dataOutputStream.writeInt(1);
                                            dataOutputStream.writeUTF(routeInfo.getGateway().getHostAddress());
                                        } else {
                                            dataOutputStream.writeInt(0);
                                        }
                                    }
                                    for (InetAddress inetAddress : linkProperties.getDnses()) {
                                        dataOutputStream.writeUTF(WifiConfigStore.DNS_KEY);
                                        dataOutputStream.writeUTF(inetAddress.getHostAddress());
                                    }
                                }
                                z2 = true;
                                i3 = AnonymousClass1.$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings[wifiConfiguration.proxySettings.ordinal()];
                                if (i3 != 1) {
                                    ProxyProperties httpProxy3 = linkProperties.getHttpProxy();
                                    String exclusionList2 = httpProxy3.getExclusionList();
                                    dataOutputStream.writeUTF(WifiConfigStore.PROXY_SETTINGS_KEY);
                                    dataOutputStream.writeUTF(wifiConfiguration.proxySettings.toString());
                                    dataOutputStream.writeUTF(WifiConfigStore.PROXY_HOST_KEY);
                                    dataOutputStream.writeUTF(httpProxy3.getHost());
                                    dataOutputStream.writeUTF(WifiConfigStore.PROXY_PORT_KEY);
                                    dataOutputStream.writeInt(httpProxy3.getPort());
                                    dataOutputStream.writeUTF(WifiConfigStore.EXCLUSION_LIST_KEY);
                                    dataOutputStream.writeUTF(exclusionList2);
                                } else if (i3 != 2) {
                                    if (i3 != 3) {
                                        dataOutputStream.writeUTF(WifiConfigStore.PROXY_SETTINGS_KEY);
                                        dataOutputStream.writeUTF(wifiConfiguration.proxySettings.toString());
                                    } else if (i3 != 4) {
                                        loge("Ignthisore invalid proxy settings while writing");
                                    }
                                    if (z2) {
                                        dataOutputStream.writeUTF("id");
                                        dataOutputStream.writeInt(WifiConfigStore.configKey(wifiConfiguration));
                                    }
                                    dataOutputStream.writeUTF(WifiConfigStore.EOS);
                                } else {
                                    ProxyProperties httpProxy4 = linkProperties.getHttpProxy();
                                    dataOutputStream.writeUTF(WifiConfigStore.PROXY_SETTINGS_KEY);
                                    dataOutputStream.writeUTF(wifiConfiguration.proxySettings.toString());
                                    dataOutputStream.writeUTF(WifiConfigStore.PROXY_PAC_FILE);
                                    dataOutputStream.writeUTF(httpProxy4.getPacFileUrl());
                                }
                                z2 = true;
                                if (z2) {
                                    dataOutputStream.writeUTF("id");
                                    dataOutputStream.writeInt(WifiConfigStore.configKey(wifiConfiguration));
                                }
                            } catch (NullPointerException e2) {
                                loge("Failure in writing " + wifiConfiguration.linkProperties + e2);
                            }
                            dataOutputStream.writeUTF(WifiConfigStore.EOS);
                        }
                        try {
                            dataOutputStream.close();
                        } catch (Exception unused) {
                        }
                        synchronized (DelayedDiskWrite.class) {
                            int i5 = sWriteSequence - 1;
                            sWriteSequence = i5;
                            if (i5 == 0) {
                                sDiskWriteHandler.getLooper().quit();
                                sDiskWriteHandler = null;
                                sDiskWriteHandlerThread = null;
                            }
                        }
                    } catch (IOException unused2) {
                        loge("Error writing data file");
                        if (dataOutputStream != null) {
                            try {
                                dataOutputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        synchronized (DelayedDiskWrite.class) {
                            int i6 = sWriteSequence - 1;
                            sWriteSequence = i6;
                            if (i6 == 0) {
                                sDiskWriteHandler.getLooper().quit();
                                sDiskWriteHandler = null;
                                sDiskWriteHandlerThread = null;
                            }
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    synchronized (DelayedDiskWrite.class) {
                        i2 = sWriteSequence - 1;
                        sWriteSequence = i2;
                        if (i2 == 0) {
                            sDiskWriteHandler.getLooper().quit();
                            sDiskWriteHandler = null;
                            sDiskWriteHandlerThread = null;
                        }
                    }
                    throw th;
                }
            } catch (IOException unused5) {
                dataOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = null;
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                synchronized (DelayedDiskWrite.class) {
                    i2 = sWriteSequence - 1;
                    sWriteSequence = i2;
                    if (i2 == 0) {
                        sDiskWriteHandler.getLooper().quit();
                        sDiskWriteHandler = null;
                        sDiskWriteHandlerThread = null;
                    }
                    throw th;
                }
            }
        }

        public static void write(final List<WifiConfiguration> list) {
            synchronized (DelayedDiskWrite.class) {
                int i2 = sWriteSequence + 1;
                sWriteSequence = i2;
                if (i2 == 1) {
                    HandlerThread handlerThread = new HandlerThread("WifiConfigThread");
                    sDiskWriteHandlerThread = handlerThread;
                    handlerThread.start();
                    sDiskWriteHandler = new Handler(sDiskWriteHandlerThread.getLooper());
                }
            }
            sDiskWriteHandler.post(new Runnable() { // from class: android.net.wifi.WifiConfigStore.DelayedDiskWrite.1
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    DelayedDiskWrite.onWriteCalled(list);
                }
            });
        }
    }

    public class WpaConfigFileObserver extends FileObserver {
        public WpaConfigFileObserver() {
            super(WifiConfigStore.SUPPLICANT_CONFIG_FILE, 8);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i2, String str) {
            if (i2 == 8) {
                new File(WifiConfigStore.SUPPLICANT_CONFIG_FILE);
            }
        }
    }

    public WifiConfigStore(Context context, WifiNative wifiNative) {
        this.mContext = context;
        this.mWifiNative = wifiNative;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x032b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x0306 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:? A[LOOP:1: B:97:0x02ec->B:122:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:99:0x02f2  */
    private NetworkUpdateResult addOrUpdateNetworkNative(WifiConfiguration wifiConfiguration) {
        boolean z2;
        boolean z3;
        HashMap<String, String> fields;
        Iterator<String> it;
        String next;
        String str;
        int iAddNetwork = wifiConfiguration.networkId;
        boolean z4 = true;
        if (iAddNetwork != -1) {
            z2 = false;
        } else {
            Integer num = this.mNetworkIds.get(Integer.valueOf(configKey(wifiConfiguration)));
            if (num != null) {
                iAddNetwork = num.intValue();
                z2 = false;
            } else {
                iAddNetwork = this.mWifiNative.addNetwork();
                if (iAddNetwork < 0) {
                    loge("Failed to add a network!");
                    return new NetworkUpdateResult(-1);
                }
                z2 = true;
            }
        }
        String str2 = wifiConfiguration.SSID;
        if (str2 == null || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.ssidVarName, str2)) {
            String str3 = wifiConfiguration.BSSID;
            if (str3 == null || this.mWifiNative.setNetworkVariable(iAddNetwork, "bssid", str3)) {
                String strMakeString = makeString(wifiConfiguration.allowedKeyManagement, WifiConfiguration.KeyMgmt.strings);
                if (wifiConfiguration.allowedKeyManagement.cardinality() == 0 || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.KeyMgmt.varName, strMakeString)) {
                    String strMakeString2 = makeString(wifiConfiguration.allowedProtocols, WifiConfiguration.Protocol.strings);
                    if (wifiConfiguration.allowedProtocols.cardinality() == 0 || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.Protocol.varName, strMakeString2)) {
                        String strMakeString3 = makeString(wifiConfiguration.allowedAuthAlgorithms, WifiConfiguration.AuthAlgorithm.strings);
                        if (wifiConfiguration.allowedAuthAlgorithms.cardinality() == 0 || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.AuthAlgorithm.varName, strMakeString3)) {
                            String strMakeString4 = makeString(wifiConfiguration.allowedPairwiseCiphers, WifiConfiguration.PairwiseCipher.strings);
                            if (wifiConfiguration.allowedPairwiseCiphers.cardinality() == 0 || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.PairwiseCipher.varName, strMakeString4)) {
                                String strMakeString5 = makeString(wifiConfiguration.allowedGroupCiphers, WifiConfiguration.GroupCipher.strings);
                                if (wifiConfiguration.allowedGroupCiphers.cardinality() == 0 || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.GroupCipher.varName, strMakeString5)) {
                                    String str4 = wifiConfiguration.preSharedKey;
                                    if (str4 == null || str4.equals("*") || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.pskVarName, wifiConfiguration.preSharedKey)) {
                                        if (wifiConfiguration.wepKeys != null) {
                                            int i2 = 0;
                                            z3 = false;
                                            while (true) {
                                                String[] strArr = wifiConfiguration.wepKeys;
                                                if (i2 < strArr.length) {
                                                    if (strArr[i2] != null && !strArr[i2].equals("*")) {
                                                        if (this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.wepKeyVarNames[i2], wifiConfiguration.wepKeys[i2])) {
                                                            z3 = true;
                                                        } else {
                                                            loge("failed to set wep_key" + i2 + ": " + wifiConfiguration.wepKeys[i2]);
                                                        }
                                                    }
                                                    i2++;
                                                    z3 = z3;
                                                }
                                            }
                                        } else {
                                            z3 = false;
                                        }
                                        if (z3 && !this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.wepTxKeyIdxVarName, Integer.toString(wifiConfiguration.wepTxKeyIndex))) {
                                            loge("failed to set wep_tx_keyidx: " + wifiConfiguration.wepTxKeyIndex);
                                        } else if (this.mWifiNative.setNetworkVariable(iAddNetwork, "priority", Integer.toString(wifiConfiguration.priority))) {
                                            boolean z5 = wifiConfiguration.hiddenSSID;
                                            if (!z5 || this.mWifiNative.setNetworkVariable(iAddNetwork, WifiConfiguration.hiddenSSIDVarName, Integer.toString(z5 ? 1 : 0))) {
                                                WifiEnterpriseConfig wifiEnterpriseConfig = wifiConfiguration.enterpriseConfig;
                                                if (wifiEnterpriseConfig == null || wifiEnterpriseConfig.getEapMethod() == -1) {
                                                    z4 = false;
                                                    break;
                                                }
                                                WifiEnterpriseConfig wifiEnterpriseConfig2 = wifiConfiguration.enterpriseConfig;
                                                if (!wifiEnterpriseConfig2.needsKeyStore()) {
                                                    fields = wifiEnterpriseConfig2.getFields();
                                                    it = fields.keySet().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            z4 = false;
                                                            break;
                                                        }
                                                        next = it.next();
                                                        str = fields.get(next);
                                                        if (!this.mWifiNative.setNetworkVariable(iAddNetwork, next, str)) {
                                                            wifiEnterpriseConfig2.removeKeys(this.mKeyStore);
                                                            loge(wifiConfiguration.SSID + ": failed to set " + next + ": " + str);
                                                            break;
                                                        }
                                                    }
                                                } else if (this.mKeyStore.state() != KeyStore.State.UNLOCKED) {
                                                    loge(wifiConfiguration.SSID + ": key store is locked");
                                                } else {
                                                    try {
                                                        if (wifiEnterpriseConfig2.installKeys(this.mKeyStore, wifiConfiguration.getKeyIdForCredentials(this.mConfiguredNetworks.get(Integer.valueOf(iAddNetwork))))) {
                                                            fields = wifiEnterpriseConfig2.getFields();
                                                            it = fields.keySet().iterator();
                                                            while (true) {
                                                                if (it.hasNext()) {
                                                                    z4 = false;
                                                                    break;
                                                                }
                                                                next = it.next();
                                                                str = fields.get(next);
                                                                if (!this.mWifiNative.setNetworkVariable(iAddNetwork, next, str)) {
                                                                    wifiEnterpriseConfig2.removeKeys(this.mKeyStore);
                                                                    loge(wifiConfiguration.SSID + ": failed to set " + next + ": " + str);
                                                                    break;
                                                                }
                                                            }
                                                        } else {
                                                            loge(wifiConfiguration.SSID + ": failed to install keys");
                                                        }
                                                    } catch (IllegalStateException unused) {
                                                        loge(wifiConfiguration.SSID + " invalid config for key installation");
                                                    }
                                                }
                                            } else {
                                                loge(wifiConfiguration.SSID + ": failed to set hiddenSSID: " + wifiConfiguration.hiddenSSID);
                                            }
                                        } else {
                                            loge(wifiConfiguration.SSID + ": failed to set priority: " + wifiConfiguration.priority);
                                        }
                                    } else {
                                        loge("failed to set psk");
                                    }
                                } else {
                                    loge("failed to set group: " + strMakeString5);
                                }
                            } else {
                                loge("failed to set pairwise: " + strMakeString4);
                            }
                        } else {
                            loge("failed to set auth_alg: " + strMakeString3);
                        }
                    } else {
                        loge("failed to set proto: " + strMakeString2);
                    }
                } else {
                    loge("failed to set key_mgmt: " + strMakeString);
                }
            } else {
                loge("failed to set BSSID: " + wifiConfiguration.BSSID);
            }
        } else {
            loge("failed to set SSID: " + wifiConfiguration.SSID);
        }
        if (z4) {
            if (z2) {
                this.mWifiNative.removeNetwork(iAddNetwork);
                loge("Failed to set a network variable, removed network: " + iAddNetwork);
            }
            return new NetworkUpdateResult(-1);
        }
        WifiConfiguration wifiConfiguration2 = this.mConfiguredNetworks.get(Integer.valueOf(iAddNetwork));
        if (wifiConfiguration2 == null) {
            wifiConfiguration2 = new WifiConfiguration();
            wifiConfiguration2.ipAssignment = WifiConfiguration.IpAssignment.DHCP;
            wifiConfiguration2.proxySettings = WifiConfiguration.ProxySettings.NONE;
            wifiConfiguration2.networkId = iAddNetwork;
        }
        readNetworkVariables(wifiConfiguration2);
        this.mConfiguredNetworks.put(Integer.valueOf(iAddNetwork), wifiConfiguration2);
        this.mNetworkIds.put(Integer.valueOf(configKey(wifiConfiguration2)), Integer.valueOf(iAddNetwork));
        NetworkUpdateResult networkUpdateResultWriteIpAndProxyConfigurationsOnChange = writeIpAndProxyConfigurationsOnChange(wifiConfiguration2, wifiConfiguration);
        networkUpdateResultWriteIpAndProxyConfigurationsOnChange.setIsNewNetwork(z2);
        networkUpdateResultWriteIpAndProxyConfigurationsOnChange.setNetworkId(iAddNetwork);
        return networkUpdateResultWriteIpAndProxyConfigurationsOnChange;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int configKey(WifiConfiguration wifiConfiguration) {
        String str;
        if (wifiConfiguration.allowedKeyManagement.get(1)) {
            str = wifiConfiguration.SSID + WifiConfiguration.KeyMgmt.strings[1];
        } else if (wifiConfiguration.allowedKeyManagement.get(2) || wifiConfiguration.allowedKeyManagement.get(3)) {
            str = wifiConfiguration.SSID + WifiConfiguration.KeyMgmt.strings[2];
        } else if (wifiConfiguration.wepKeys[0] != null) {
            str = wifiConfiguration.SSID + "WEP";
        } else {
            str = wifiConfiguration.SSID + WifiConfiguration.KeyMgmt.strings[0];
        }
        return str.hashCode();
    }

    private String convertToQuotedString(String str) {
        return "\"" + str + "\"";
    }

    private LinkProperties copyIpSettingsFromConfig(WifiConfiguration wifiConfiguration) {
        LinkProperties linkProperties = new LinkProperties();
        linkProperties.setInterfaceName(wifiConfiguration.linkProperties.getInterfaceName());
        Iterator<LinkAddress> it = wifiConfiguration.linkProperties.getLinkAddresses().iterator();
        while (it.hasNext()) {
            linkProperties.addLinkAddress(it.next());
        }
        Iterator<RouteInfo> it2 = wifiConfiguration.linkProperties.getRoutes().iterator();
        while (it2.hasNext()) {
            linkProperties.addRoute(it2.next());
        }
        Iterator<InetAddress> it3 = wifiConfiguration.linkProperties.getDnses().iterator();
        while (it3.hasNext()) {
            linkProperties.addDns(it3.next());
        }
        return linkProperties;
    }

    private void localLog(String str) {
        LocalLog localLog = this.mLocalLog;
        if (localLog != null) {
            localLog.log(str);
        }
    }

    private void log(String str) {
        Log.d(TAG, str);
    }

    private void loge(String str) {
        Log.e(TAG, str);
    }

    private int lookupString(String str, String[] strArr) {
        int length = strArr.length;
        String strReplace = str.replace('-', '_');
        for (int i2 = 0; i2 < length; i2++) {
            if (strReplace.equals(strArr[i2])) {
                return i2;
            }
        }
        loge("Failed to look-up a string: " + strReplace);
        return -1;
    }

    private String makeString(BitSet bitSet, String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        BitSet bitSet2 = bitSet.get(0, strArr.length);
        int iNextSetBit = -1;
        while (true) {
            iNextSetBit = bitSet2.nextSetBit(iNextSetBit + 1);
            if (iNextSetBit == -1) {
                break;
            }
            stringBuffer.append(strArr[iNextSetBit].replace('_', '-'));
            stringBuffer.append(CharArrayBuffers.uppercaseAddon);
        }
        if (bitSet2.cardinality() > 0) {
            stringBuffer.setLength(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    private void markAllNetworksDisabled() {
        markAllNetworksDisabledExcept(-1);
    }

    private void markAllNetworksDisabledExcept(int i2) {
        for (WifiConfiguration wifiConfiguration : this.mConfiguredNetworks.values()) {
            if (wifiConfiguration != null && wifiConfiguration.networkId != i2 && wifiConfiguration.status != 1) {
                wifiConfiguration.status = 1;
                wifiConfiguration.disableReason = 0;
            }
        }
    }

    /* JADX INFO: Infinite loop detected, blocks: 98, insns: 0 */
    /* JADX WARN: Code duplicated, block: B:118:0x020f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void readIpAndProxyConfigurations() throws Throwable {
        DataInputStream dataInputStream;
        char c2;
        LinkAddress linkAddress;
        InetAddress inetAddressNumericToInetAddress;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new BufferedInputStream(new FileInputStream(ipConfigFile)));
            try {
                int i2 = dataInputStream2.readInt();
                if (i2 != 2 && i2 != 1) {
                    loge("Bad version on IP configuration file, ignore read");
                    try {
                        dataInputStream2.close();
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                while (true) {
                    WifiConfiguration.IpAssignment ipAssignment = WifiConfiguration.IpAssignment.DHCP;
                    WifiConfiguration.ProxySettings proxySettings = WifiConfiguration.ProxySettings.NONE;
                    LinkProperties linkProperties = new LinkProperties();
                    WifiConfiguration.ProxySettings proxySettingsValueOf = proxySettings;
                    int i3 = -1;
                    int i4 = -1;
                    String utf = null;
                    String utf2 = null;
                    String utf3 = null;
                    WifiConfiguration.IpAssignment ipAssignmentValueOf = ipAssignment;
                    while (true) {
                        String utf4 = dataInputStream2.readUTF();
                        try {
                            if (utf4.equals("id")) {
                                i3 = dataInputStream2.readInt();
                            } else if (utf4.equals(IP_ASSIGNMENT_KEY)) {
                                ipAssignmentValueOf = WifiConfiguration.IpAssignment.valueOf(dataInputStream2.readUTF());
                            } else if (utf4.equals(LINK_ADDRESS_KEY)) {
                                linkProperties.addLinkAddress(new LinkAddress(NetworkUtils.numericToInetAddress(dataInputStream2.readUTF()), dataInputStream2.readInt()));
                            } else if (utf4.equals(GATEWAY_KEY)) {
                                if (i2 == 1) {
                                    inetAddressNumericToInetAddress = NetworkUtils.numericToInetAddress(dataInputStream2.readUTF());
                                    linkAddress = null;
                                } else {
                                    linkAddress = dataInputStream2.readInt() == 1 ? new LinkAddress(NetworkUtils.numericToInetAddress(dataInputStream2.readUTF()), dataInputStream2.readInt()) : null;
                                    inetAddressNumericToInetAddress = dataInputStream2.readInt() == 1 ? NetworkUtils.numericToInetAddress(dataInputStream2.readUTF()) : null;
                                }
                                linkProperties.addRoute(new RouteInfo(linkAddress, inetAddressNumericToInetAddress));
                            } else if (utf4.equals(DNS_KEY)) {
                                linkProperties.addDns(NetworkUtils.numericToInetAddress(dataInputStream2.readUTF()));
                            } else if (utf4.equals(PROXY_SETTINGS_KEY)) {
                                proxySettingsValueOf = WifiConfiguration.ProxySettings.valueOf(dataInputStream2.readUTF());
                            } else if (utf4.equals(PROXY_HOST_KEY)) {
                                utf = dataInputStream2.readUTF();
                            } else if (utf4.equals(PROXY_PORT_KEY)) {
                                i4 = dataInputStream2.readInt();
                            } else if (utf4.equals(PROXY_PAC_FILE)) {
                                utf3 = dataInputStream2.readUTF();
                            } else if (utf4.equals(EXCLUSION_LIST_KEY)) {
                                utf2 = dataInputStream2.readUTF();
                            } else {
                                if (utf4.equals(EOS)) {
                                    break;
                                }
                                loge("Ignore unknown key " + utf4 + "while reading");
                            }
                        } catch (IllegalArgumentException e2) {
                            loge("Ignore invalid address while reading" + e2);
                        }
                    }
                    if (i3 != -1) {
                        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(this.mNetworkIds.get(Integer.valueOf(i3)));
                        if (wifiConfiguration == null) {
                            loge("configuration found for missing network, ignored");
                            c2 = 2;
                        } else {
                            wifiConfiguration.linkProperties = linkProperties;
                            int i5 = AnonymousClass1.$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment[ipAssignmentValueOf.ordinal()];
                            if (i5 == 1 || i5 == 2) {
                                wifiConfiguration.ipAssignment = ipAssignmentValueOf;
                            } else if (i5 != 3) {
                                loge("Ignore invalid ip assignment while reading");
                            } else {
                                loge("BUG: Found UNASSIGNED IP on file, use DHCP");
                                wifiConfiguration.ipAssignment = WifiConfiguration.IpAssignment.DHCP;
                            }
                            int i6 = AnonymousClass1.$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings[proxySettingsValueOf.ordinal()];
                            if (i6 != 1) {
                                c2 = 2;
                                if (i6 == 2) {
                                    wifiConfiguration.proxySettings = proxySettingsValueOf;
                                    linkProperties.setHttpProxy(new ProxyProperties(utf3));
                                } else if (i6 == 3) {
                                    wifiConfiguration.proxySettings = proxySettingsValueOf;
                                } else if (i6 != 4) {
                                    loge("Ignore invalid proxy settings while reading");
                                } else {
                                    loge("BUG: Found UNASSIGNED proxy on file, use NONE");
                                    wifiConfiguration.proxySettings = WifiConfiguration.ProxySettings.NONE;
                                }
                            } else {
                                c2 = 2;
                                wifiConfiguration.proxySettings = proxySettingsValueOf;
                                linkProperties.setHttpProxy(new ProxyProperties(utf, i4, utf2));
                            }
                        }
                    } else {
                        c2 = 2;
                        log("Missing id while parsing configuration");
                    }
                }
            } catch (EOFException unused2) {
                dataInputStream = dataInputStream2;
                if (dataInputStream == null) {
                    return;
                }
                try {
                    dataInputStream.close();
                } catch (Exception unused3) {
                }
            } catch (IOException e3) {
                e = e3;
                dataInputStream = dataInputStream2;
                try {
                    loge("Error parsing configuration" + e);
                    if (dataInputStream == null) {
                        return;
                    }
                    dataInputStream.close();
                } catch (Throwable th) {
                    th = th;
                    if (dataInputStream != null) {
                        try {
                            dataInputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    dataInputStream.close();
                }
                throw th;
            }
        } catch (EOFException unused5) {
            dataInputStream = null;
        } catch (IOException e4) {
            e = e4;
            dataInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            dataInputStream = null;
        }
    }

    private void readNetworkVariables(WifiConfiguration wifiConfiguration) {
        int i2 = wifiConfiguration.networkId;
        if (i2 < 0) {
            return;
        }
        String networkVariable = this.mWifiNative.getNetworkVariable(i2, WifiConfiguration.ssidVarName);
        if (TextUtils.isEmpty(networkVariable)) {
            wifiConfiguration.SSID = null;
        } else if (networkVariable.charAt(0) != '\"') {
            wifiConfiguration.SSID = "\"" + WifiSsid.createFromHex(networkVariable).toString() + "\"";
        } else {
            wifiConfiguration.SSID = networkVariable;
        }
        String networkVariable2 = this.mWifiNative.getNetworkVariable(i2, "bssid");
        if (TextUtils.isEmpty(networkVariable2)) {
            wifiConfiguration.BSSID = null;
        } else {
            wifiConfiguration.BSSID = networkVariable2;
        }
        String networkVariable3 = this.mWifiNative.getNetworkVariable(i2, "priority");
        wifiConfiguration.priority = -1;
        if (!TextUtils.isEmpty(networkVariable3)) {
            try {
                wifiConfiguration.priority = Integer.parseInt(networkVariable3);
            } catch (NumberFormatException unused) {
            }
        }
        String networkVariable4 = this.mWifiNative.getNetworkVariable(i2, WifiConfiguration.hiddenSSIDVarName);
        wifiConfiguration.hiddenSSID = false;
        if (!TextUtils.isEmpty(networkVariable4)) {
            try {
                wifiConfiguration.hiddenSSID = Integer.parseInt(networkVariable4) != 0;
            } catch (NumberFormatException unused2) {
            }
        }
        String networkVariable5 = this.mWifiNative.getNetworkVariable(i2, WifiConfiguration.wepTxKeyIdxVarName);
        wifiConfiguration.wepTxKeyIndex = -1;
        if (!TextUtils.isEmpty(networkVariable5)) {
            try {
                wifiConfiguration.wepTxKeyIndex = Integer.parseInt(networkVariable5);
            } catch (NumberFormatException unused3) {
            }
        }
        for (int i3 = 0; i3 < 4; i3++) {
            String networkVariable6 = this.mWifiNative.getNetworkVariable(i2, WifiConfiguration.wepKeyVarNames[i3]);
            if (TextUtils.isEmpty(networkVariable6)) {
                wifiConfiguration.wepKeys[i3] = null;
            } else {
                wifiConfiguration.wepKeys[i3] = networkVariable6;
            }
        }
        String networkVariable7 = this.mWifiNative.getNetworkVariable(i2, WifiConfiguration.pskVarName);
        if (TextUtils.isEmpty(networkVariable7)) {
            wifiConfiguration.preSharedKey = null;
        } else {
            wifiConfiguration.preSharedKey = networkVariable7;
        }
        String networkVariable8 = this.mWifiNative.getNetworkVariable(wifiConfiguration.networkId, WifiConfiguration.Protocol.varName);
        if (!TextUtils.isEmpty(networkVariable8)) {
            for (String str : networkVariable8.split(" ")) {
                int iLookupString = lookupString(str, WifiConfiguration.Protocol.strings);
                if (iLookupString >= 0) {
                    wifiConfiguration.allowedProtocols.set(iLookupString);
                }
            }
        }
        String networkVariable9 = this.mWifiNative.getNetworkVariable(wifiConfiguration.networkId, WifiConfiguration.KeyMgmt.varName);
        if (!TextUtils.isEmpty(networkVariable9)) {
            for (String str2 : networkVariable9.split(" ")) {
                int iLookupString2 = lookupString(str2, WifiConfiguration.KeyMgmt.strings);
                if (iLookupString2 >= 0) {
                    wifiConfiguration.allowedKeyManagement.set(iLookupString2);
                }
            }
        }
        String networkVariable10 = this.mWifiNative.getNetworkVariable(wifiConfiguration.networkId, WifiConfiguration.AuthAlgorithm.varName);
        if (!TextUtils.isEmpty(networkVariable10)) {
            for (String str3 : networkVariable10.split(" ")) {
                int iLookupString3 = lookupString(str3, WifiConfiguration.AuthAlgorithm.strings);
                if (iLookupString3 >= 0) {
                    wifiConfiguration.allowedAuthAlgorithms.set(iLookupString3);
                }
            }
        }
        String networkVariable11 = this.mWifiNative.getNetworkVariable(wifiConfiguration.networkId, WifiConfiguration.PairwiseCipher.varName);
        if (!TextUtils.isEmpty(networkVariable11)) {
            for (String str4 : networkVariable11.split(" ")) {
                int iLookupString4 = lookupString(str4, WifiConfiguration.PairwiseCipher.strings);
                if (iLookupString4 >= 0) {
                    wifiConfiguration.allowedPairwiseCiphers.set(iLookupString4);
                }
            }
        }
        String networkVariable12 = this.mWifiNative.getNetworkVariable(wifiConfiguration.networkId, WifiConfiguration.GroupCipher.varName);
        if (!TextUtils.isEmpty(networkVariable12)) {
            for (String str5 : networkVariable12.split(" ")) {
                int iLookupString5 = lookupString(str5, WifiConfiguration.GroupCipher.strings);
                if (iLookupString5 >= 0) {
                    wifiConfiguration.allowedGroupCiphers.set(iLookupString5);
                }
            }
        }
        if (wifiConfiguration.enterpriseConfig == null) {
            wifiConfiguration.enterpriseConfig = new WifiEnterpriseConfig();
        }
        HashMap<String, String> fields = wifiConfiguration.enterpriseConfig.getFields();
        for (String str6 : WifiEnterpriseConfig.getSupplicantKeys()) {
            String networkVariable13 = this.mWifiNative.getNetworkVariable(i2, str6);
            if (TextUtils.isEmpty(networkVariable13)) {
                fields.put(str6, WifiEnterpriseConfig.EMPTY_VALUE);
            } else {
                fields.put(str6, removeDoubleQuotes(networkVariable13));
            }
        }
        if (wifiConfiguration.enterpriseConfig.migrateOldEapTlsNative(this.mWifiNative, i2)) {
            saveConfig();
        }
        wifiConfiguration.enterpriseConfig.migrateCerts(this.mKeyStore);
        wifiConfiguration.enterpriseConfig.initializeSoftwareKeystoreFlag(this.mKeyStore);
    }

    private void removeConfigAndSendBroadcastIfNeeded(int i2) {
        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        if (wifiConfiguration != null) {
            WifiEnterpriseConfig wifiEnterpriseConfig = wifiConfiguration.enterpriseConfig;
            if (wifiEnterpriseConfig != null) {
                wifiEnterpriseConfig.removeKeys(this.mKeyStore);
            }
            this.mConfiguredNetworks.remove(Integer.valueOf(i2));
            this.mNetworkIds.remove(Integer.valueOf(configKey(wifiConfiguration)));
            writeIpAndProxyConfigurations();
            sendConfiguredNetworksChangedBroadcast(wifiConfiguration, 1);
        }
    }

    private String removeDoubleQuotes(String str) {
        int length = str.length();
        if (length <= 1 || str.charAt(0) != '\"') {
            return str;
        }
        int i2 = length - 1;
        return str.charAt(i2) == '\"' ? str.substring(1, i2) : str;
    }

    private void sendConfiguredNetworksChangedBroadcast(WifiConfiguration wifiConfiguration, int i2) {
        Intent intent = new Intent(WifiManager.CONFIGURED_NETWORKS_CHANGED_ACTION);
        intent.addFlags(67108864);
        intent.putExtra(WifiManager.EXTRA_MULTIPLE_NETWORKS_CHANGED, false);
        intent.putExtra(WifiManager.EXTRA_WIFI_CONFIGURATION, wifiConfiguration);
        intent.putExtra(WifiManager.EXTRA_CHANGE_REASON, i2);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void writeIpAndProxyConfigurations() {
        ArrayList arrayList = new ArrayList();
        Iterator<WifiConfiguration> it = this.mConfiguredNetworks.values().iterator();
        while (it.hasNext()) {
            arrayList.add(new WifiConfiguration(it.next()));
        }
        DelayedDiskWrite.write(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    private NetworkUpdateResult writeIpAndProxyConfigurationsOnChange(WifiConfiguration wifiConfiguration, WifiConfiguration wifiConfiguration2) {
        boolean z2;
        LinkProperties linkPropertiesCopyIpSettingsFromConfig;
        int i2 = AnonymousClass1.$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment[wifiConfiguration2.ipAssignment.ordinal()];
        boolean z3 = false;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    loge("Ignore invalid ip assignment during write");
                }
            } else if (wifiConfiguration.ipAssignment != wifiConfiguration2.ipAssignment) {
                z2 = true;
            }
            z2 = false;
        } else {
            Collection<LinkAddress> linkAddresses = wifiConfiguration.linkProperties.getLinkAddresses();
            Collection<LinkAddress> linkAddresses2 = wifiConfiguration2.linkProperties.getLinkAddresses();
            Collection<InetAddress> dnses = wifiConfiguration.linkProperties.getDnses();
            Collection<InetAddress> dnses2 = wifiConfiguration2.linkProperties.getDnses();
            Collection<RouteInfo> routes = wifiConfiguration.linkProperties.getRoutes();
            Collection<RouteInfo> routes2 = wifiConfiguration2.linkProperties.getRoutes();
            boolean z4 = (linkAddresses.size() == linkAddresses2.size() && linkAddresses.containsAll(linkAddresses2)) ? false : true;
            boolean z5 = (dnses.size() == dnses2.size() && dnses.containsAll(dnses2)) ? false : true;
            boolean z6 = (routes.size() == routes2.size() && routes.containsAll(routes2)) ? false : true;
            if (wifiConfiguration.ipAssignment != wifiConfiguration2.ipAssignment || z4 || z5 || z6) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        int i3 = AnonymousClass1.$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings[wifiConfiguration2.proxySettings.ordinal()];
        if (i3 == 1 || i3 == 2) {
            ProxyProperties httpProxy = wifiConfiguration2.linkProperties.getHttpProxy();
            ProxyProperties httpProxy2 = wifiConfiguration.linkProperties.getHttpProxy();
            if (httpProxy != null) {
                z3 = !httpProxy.equals(httpProxy2);
            } else if (httpProxy2 != null) {
                z3 = true;
            }
        } else if (i3 != 3) {
            if (i3 != 4) {
                loge("Ignore invalid proxy configuration during write");
            }
        } else if (wifiConfiguration.proxySettings != wifiConfiguration2.proxySettings) {
            z3 = true;
        }
        if (z2) {
            wifiConfiguration.ipAssignment = wifiConfiguration2.ipAssignment;
            linkPropertiesCopyIpSettingsFromConfig = copyIpSettingsFromConfig(wifiConfiguration2);
            log("IP config changed SSID = " + wifiConfiguration.SSID + " linkProperties: " + linkPropertiesCopyIpSettingsFromConfig.toString());
        } else {
            linkPropertiesCopyIpSettingsFromConfig = copyIpSettingsFromConfig(wifiConfiguration);
        }
        if (z3) {
            wifiConfiguration.proxySettings = wifiConfiguration2.proxySettings;
            linkPropertiesCopyIpSettingsFromConfig.setHttpProxy(wifiConfiguration2.linkProperties.getHttpProxy());
            log("proxy changed SSID = " + wifiConfiguration.SSID);
            if (linkPropertiesCopyIpSettingsFromConfig.getHttpProxy() != null) {
                log(" proxyProperties: " + linkPropertiesCopyIpSettingsFromConfig.getHttpProxy().toString());
            }
        } else {
            linkPropertiesCopyIpSettingsFromConfig.setHttpProxy(wifiConfiguration.linkProperties.getHttpProxy());
        }
        if (z2 || z3) {
            wifiConfiguration.linkProperties = linkPropertiesCopyIpSettingsFromConfig;
            writeIpAndProxyConfigurations();
            sendConfiguredNetworksChangedBroadcast(wifiConfiguration, 2);
        }
        return new NetworkUpdateResult(z2, z3);
    }

    public int addOrUpdateNetwork(WifiConfiguration wifiConfiguration) {
        NetworkUpdateResult networkUpdateResultAddOrUpdateNetworkNative = addOrUpdateNetworkNative(wifiConfiguration);
        if (networkUpdateResultAddOrUpdateNetworkNative.getNetworkId() != -1) {
            sendConfiguredNetworksChangedBroadcast(this.mConfiguredNetworks.get(Integer.valueOf(networkUpdateResultAddOrUpdateNetworkNative.getNetworkId())), networkUpdateResultAddOrUpdateNetworkNative.isNewNetwork ? 0 : 2);
        }
        return networkUpdateResultAddOrUpdateNetworkNative.getNetworkId();
    }

    public void clearLinkProperties(int i2) {
        LinkProperties linkProperties;
        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        if (wifiConfiguration == null || (linkProperties = wifiConfiguration.linkProperties) == null) {
            return;
        }
        ProxyProperties httpProxy = linkProperties.getHttpProxy();
        wifiConfiguration.linkProperties.clear();
        wifiConfiguration.linkProperties.setHttpProxy(httpProxy);
    }

    public void disableAllNetworks() {
        boolean z2 = false;
        for (WifiConfiguration wifiConfiguration : this.mConfiguredNetworks.values()) {
            if (wifiConfiguration != null && wifiConfiguration.status != 1) {
                if (this.mWifiNative.disableNetwork(wifiConfiguration.networkId)) {
                    wifiConfiguration.status = 1;
                    z2 = true;
                } else {
                    loge("Disable network failed on " + wifiConfiguration.networkId);
                }
            }
        }
        if (z2) {
            sendConfiguredNetworksChangedBroadcast();
        }
    }

    public boolean disableNetwork(int i2) {
        return disableNetwork(i2, 0);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println(TAG);
        printWriter.println("mLastPriority " + this.mLastPriority);
        printWriter.println("Configured networks");
        Iterator<WifiConfiguration> it = getConfiguredNetworks().iterator();
        while (it.hasNext()) {
            printWriter.println(it.next());
        }
        printWriter.println();
        if (this.mLocalLog != null) {
            printWriter.println("WifiConfigStore - Log Begin ----");
            this.mLocalLog.dump(fileDescriptor, printWriter, strArr);
            printWriter.println("WifiConfigStore - Log End ----");
        }
    }

    public void enableAllNetworks() {
        boolean z2 = false;
        for (WifiConfiguration wifiConfiguration : this.mConfiguredNetworks.values()) {
            if (wifiConfiguration != null && wifiConfiguration.status == 1) {
                if (this.mWifiNative.enableNetwork(wifiConfiguration.networkId, false)) {
                    wifiConfiguration.status = 2;
                    z2 = true;
                } else {
                    loge("Enable network failed on " + wifiConfiguration.networkId);
                }
            }
        }
        if (z2) {
            this.mWifiNative.saveConfig();
            sendConfiguredNetworksChangedBroadcast();
        }
    }

    public boolean enableNetwork(int i2, boolean z2) {
        WifiConfiguration wifiConfiguration;
        boolean zEnableNetworkWithoutBroadcast = enableNetworkWithoutBroadcast(i2, z2);
        if (z2) {
            sendConfiguredNetworksChangedBroadcast();
        } else {
            synchronized (this.mConfiguredNetworks) {
                wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
            }
            if (wifiConfiguration != null) {
                sendConfiguredNetworksChangedBroadcast(wifiConfiguration, 2);
            }
        }
        return zEnableNetworkWithoutBroadcast;
    }

    public boolean enableNetworkWithoutBroadcast(int i2, boolean z2) {
        boolean zEnableNetwork = this.mWifiNative.enableNetwork(i2, z2);
        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        if (wifiConfiguration != null) {
            wifiConfiguration.status = 2;
        }
        if (z2) {
            markAllNetworksDisabledExcept(i2);
        }
        return zEnableNetwork;
    }

    public boolean forgetNetwork(int i2) {
        if (this.mWifiNative.removeNetwork(i2)) {
            this.mWifiNative.saveConfig();
            removeConfigAndSendBroadcastIfNeeded(i2);
            return true;
        }
        loge("Failed to remove network " + i2);
        return false;
    }

    public String getConfigFile() {
        return ipConfigFile;
    }

    public List<WifiConfiguration> getConfiguredNetworks() {
        ArrayList arrayList = new ArrayList();
        Iterator<WifiConfiguration> it = this.mConfiguredNetworks.values().iterator();
        while (it.hasNext()) {
            arrayList.add(new WifiConfiguration(it.next()));
        }
        return arrayList;
    }

    public LinkProperties getLinkProperties(int i2) {
        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        if (wifiConfiguration != null) {
            return new LinkProperties(wifiConfiguration.linkProperties);
        }
        return null;
    }

    public ProxyProperties getProxyProperties(int i2) {
        LinkProperties linkProperties = getLinkProperties(i2);
        if (linkProperties != null) {
            return new ProxyProperties(linkProperties.getHttpProxy());
        }
        return null;
    }

    public boolean isUsingStaticIp(int i2) {
        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        return wifiConfiguration != null && wifiConfiguration.ipAssignment == WifiConfiguration.IpAssignment.STATIC;
    }

    public void loadAndEnableAllNetworks() throws Throwable {
        log("Loading config and enabling all networks");
        loadConfiguredNetworks();
        enableAllNetworks();
    }

    public void loadConfiguredNetworks() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        String strListNetworks = this.mWifiNative.listNetworks();
        this.mLastPriority = 0;
        this.mConfiguredNetworks.clear();
        this.mNetworkIds.clear();
        if (strListNetworks == null) {
            return;
        }
        String[] strArrSplit = strListNetworks.split("\n");
        for (int i2 = 1; i2 < strArrSplit.length; i2++) {
            String[] strArrSplit2 = strArrSplit[i2].split("\t");
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            try {
                wifiConfiguration.networkId = Integer.parseInt(strArrSplit2[0]);
                if (strArrSplit2.length <= 3) {
                    wifiConfiguration.status = 2;
                } else if (strArrSplit2[3].indexOf("[CURRENT]") != -1) {
                    wifiConfiguration.status = 0;
                } else if (strArrSplit2[3].indexOf("[DISABLED]") != -1) {
                    wifiConfiguration.status = 1;
                } else {
                    wifiConfiguration.status = 2;
                }
                readNetworkVariables(wifiConfiguration);
                int i3 = wifiConfiguration.priority;
                if (i3 > this.mLastPriority) {
                    this.mLastPriority = i3;
                }
                wifiConfiguration.ipAssignment = WifiConfiguration.IpAssignment.DHCP;
                wifiConfiguration.proxySettings = WifiConfiguration.ProxySettings.NONE;
                if (!this.mNetworkIds.containsKey(Integer.valueOf(configKey(wifiConfiguration)))) {
                    this.mConfiguredNetworks.put(Integer.valueOf(wifiConfiguration.networkId), wifiConfiguration);
                    this.mNetworkIds.put(Integer.valueOf(configKey(wifiConfiguration)), Integer.valueOf(wifiConfiguration.networkId));
                }
            } catch (NumberFormatException unused) {
                loge("Failed to read network-id '" + strArrSplit2[0] + "'");
            }
        }
        readIpAndProxyConfigurations();
        sendConfiguredNetworksChangedBroadcast();
        if (this.mNetworkIds.size() == 0) {
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new FileReader(SUPPLICANT_CONFIG_FILE));
                    do {
                        try {
                        } catch (FileNotFoundException unused2) {
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 == null) {
                                return;
                            }
                            bufferedReader2.close();
                        } catch (IOException unused3) {
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 == null) {
                                return;
                            }
                            bufferedReader2.close();
                        } catch (Throwable th2) {
                            th = th2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused4) {
                                }
                            }
                            throw th;
                        }
                    } while (bufferedReader.readLine() != null);
                    bufferedReader.close();
                } catch (IOException unused5) {
                }
            } catch (FileNotFoundException unused6) {
            } catch (IOException unused7) {
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
            }
        }
    }

    public boolean needsUnlockedKeyStore() {
        for (WifiConfiguration wifiConfiguration : this.mConfiguredNetworks.values()) {
            if (wifiConfiguration.allowedKeyManagement.get(2) && wifiConfiguration.allowedKeyManagement.get(3) && wifiConfiguration.enterpriseConfig.needsSoftwareBackedKeyStore()) {
                return true;
            }
        }
        return false;
    }

    public boolean removeNetwork(int i2) {
        boolean zRemoveNetwork = this.mWifiNative.removeNetwork(i2);
        if (zRemoveNetwork) {
            removeConfigAndSendBroadcastIfNeeded(i2);
        }
        return zRemoveNetwork;
    }

    public boolean saveConfig() {
        return this.mWifiNative.saveConfig();
    }

    public NetworkUpdateResult saveNetwork(WifiConfiguration wifiConfiguration) {
        int i2;
        if (wifiConfiguration == null || ((i2 = wifiConfiguration.networkId) == -1 && wifiConfiguration.SSID == null)) {
            return new NetworkUpdateResult(-1);
        }
        boolean z2 = i2 == -1;
        NetworkUpdateResult networkUpdateResultAddOrUpdateNetworkNative = addOrUpdateNetworkNative(wifiConfiguration);
        int networkId = networkUpdateResultAddOrUpdateNetworkNative.getNetworkId();
        if (z2 && networkId != -1) {
            this.mWifiNative.enableNetwork(networkId, false);
            this.mConfiguredNetworks.get(Integer.valueOf(networkId)).status = 2;
        }
        this.mWifiNative.saveConfig();
        sendConfiguredNetworksChangedBroadcast(wifiConfiguration, networkUpdateResultAddOrUpdateNetworkNative.isNewNetwork() ? 0 : 2);
        return networkUpdateResultAddOrUpdateNetworkNative;
    }

    public boolean selectNetwork(int i2) {
        if (i2 == -1) {
            return false;
        }
        int i3 = this.mLastPriority;
        if (i3 == -1 || i3 > 1000000) {
            for (WifiConfiguration wifiConfiguration : this.mConfiguredNetworks.values()) {
                if (wifiConfiguration.networkId != -1) {
                    wifiConfiguration.priority = 0;
                    addOrUpdateNetworkNative(wifiConfiguration);
                }
            }
            this.mLastPriority = 0;
        }
        WifiConfiguration wifiConfiguration2 = new WifiConfiguration();
        wifiConfiguration2.networkId = i2;
        int i4 = this.mLastPriority + 1;
        this.mLastPriority = i4;
        wifiConfiguration2.priority = i4;
        addOrUpdateNetworkNative(wifiConfiguration2);
        this.mWifiNative.saveConfig();
        enableNetworkWithoutBroadcast(i2, true);
        return true;
    }

    public void setLinkProperties(int i2, LinkProperties linkProperties) {
        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        if (wifiConfiguration != null) {
            LinkProperties linkProperties2 = wifiConfiguration.linkProperties;
            if (linkProperties2 != null) {
                linkProperties.setHttpProxy(linkProperties2.getHttpProxy());
            }
            wifiConfiguration.linkProperties = linkProperties;
        }
    }

    public WpsResult startWpsPbc(WpsInfo wpsInfo) {
        WpsResult wpsResult = new WpsResult();
        if (this.mWifiNative.startWpsPbc(wpsInfo.BSSID)) {
            markAllNetworksDisabled();
            wpsResult.status = WpsResult.Status.SUCCESS;
        } else {
            loge("Failed to start WPS push button configuration");
            wpsResult.status = WpsResult.Status.FAILURE;
        }
        return wpsResult;
    }

    public WpsResult startWpsWithPinFromAccessPoint(WpsInfo wpsInfo) {
        WpsResult wpsResult = new WpsResult();
        if (this.mWifiNative.startWpsRegistrar(wpsInfo.BSSID, wpsInfo.pin)) {
            markAllNetworksDisabled();
            wpsResult.status = WpsResult.Status.SUCCESS;
        } else {
            loge("Failed to start WPS pin method configuration");
            wpsResult.status = WpsResult.Status.FAILURE;
        }
        return wpsResult;
    }

    public WpsResult startWpsWithPinFromDevice(WpsInfo wpsInfo) {
        WpsResult wpsResult = new WpsResult();
        String strStartWpsPinDisplay = this.mWifiNative.startWpsPinDisplay(wpsInfo.BSSID);
        wpsResult.pin = strStartWpsPinDisplay;
        if (TextUtils.isEmpty(strStartWpsPinDisplay)) {
            loge("Failed to start WPS pin method configuration");
            wpsResult.status = WpsResult.Status.FAILURE;
        } else {
            markAllNetworksDisabled();
            wpsResult.status = WpsResult.Status.SUCCESS;
        }
        return wpsResult;
    }

    public void updateStatus(int i2, NetworkInfo.DetailedState detailedState) {
        WifiConfiguration wifiConfiguration;
        if (i2 == -1 || (wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2))) == null) {
            return;
        }
        int i3 = AnonymousClass1.$SwitchMap$android$net$NetworkInfo$DetailedState[detailedState.ordinal()];
        if (i3 == 1) {
            wifiConfiguration.status = 0;
        } else if (i3 == 2 && wifiConfiguration.status == 0) {
            wifiConfiguration.status = 2;
        }
    }

    public boolean disableNetwork(int i2, int i3) {
        boolean zDisableNetwork = this.mWifiNative.disableNetwork(i2);
        WifiConfiguration wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        if (wifiConfiguration == null || wifiConfiguration.status == 1) {
            wifiConfiguration = null;
        } else {
            wifiConfiguration.status = 1;
            wifiConfiguration.disableReason = i3;
        }
        if (wifiConfiguration != null) {
            sendConfiguredNetworksChangedBroadcast(wifiConfiguration, 2);
        }
        return zDisableNetwork;
    }

    private void localLog(String str, int i2) {
        WifiConfiguration wifiConfiguration;
        if (this.mLocalLog == null) {
            return;
        }
        synchronized (this.mConfiguredNetworks) {
            wifiConfiguration = this.mConfiguredNetworks.get(Integer.valueOf(i2));
        }
        if (wifiConfiguration != null) {
            this.mLocalLog.log(str + " " + wifiConfiguration.getPrintableSsid());
            return;
        }
        this.mLocalLog.log(str + " " + i2);
    }

    private void sendConfiguredNetworksChangedBroadcast() {
        Intent intent = new Intent(WifiManager.CONFIGURED_NETWORKS_CHANGED_ACTION);
        intent.addFlags(67108864);
        intent.putExtra(WifiManager.EXTRA_MULTIPLE_NETWORKS_CHANGED, true);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }
}
