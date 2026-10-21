package com.google.android.projection.sink.embedded.transport.net;

import android.net.wifi.WifiEnterpriseConfig;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.SystemProperties;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.android.projection.sink.embedded.AndroidAutoHeadunitLog;
import com.google.android.projection.sink.settings.Settings;
import com.google.common.base.Preconditions;
import com.google.common.io.ByteStreams;
import com.google.common.io.Files;
import com.google.common.io.LineProcessor;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes3.dex */
public class WiFiHostInfoLocator {
    private static final String ARP_FILE_PATH = "/proc/net/arp";
    private static final String FAILED_TO_FIND_HOST_BSSID = "Failed to find host BSSID";
    private static final String FAILED_TO_FIND_HOST_IP = "Failed to find host IP";
    private static final int INTERFACE_INDEX = 5;
    private static final int IP_ADDRESS_INDEX = 0;
    private static final int MAC_ADDRESS_INDEX = 3;
    private static final String TAG = AndroidAutoHeadunitLog.getTag("WiFiHostInfoLocator");
    private final File mArpFile;
    private volatile String mHostBssid;

    @VisibleForTesting
    volatile NetworkInterface mHostInterface;

    @VisibleForTesting
    volatile Inet4Address mHostIp;
    private final boolean mIsWifiExternal;
    private final WifiManager mWifiManager;

    public WiFiHostInfoLocator(Settings settings, WifiManager wifiManager) {
        this(false, ARP_FILE_PATH, wifiManager);
    }

    private void findHostInfo() throws Throwable {
        findHostInterfaceAndIp();
        if (this.mIsWifiExternal) {
            WifiInfo connectionInfo = this.mWifiManager.getConnectionInfo();
            if (connectionInfo == null || connectionInfo.getIpAddress() != ByteStreams.newDataInput(this.mHostIp.getAddress()).readInt()) {
                setBssidFromArp();
            } else {
                this.mHostBssid = connectionInfo.getBSSID();
            }
        } else {
            FileInputStream fileInputStream = null;
            try {
                try {
                    String macAddress = "";
                    if (this.mHostInterface != null) {
                        byte[] hardwareAddress = this.mHostInterface.getHardwareAddress();
                        try {
                            macAddress = String.format("%02x:%02x:%02x:%02x:%02x:%02x", Byte.valueOf(hardwareAddress[0]), Byte.valueOf(hardwareAddress[1]), Byte.valueOf(hardwareAddress[2]), Byte.valueOf(hardwareAddress[3]), Byte.valueOf(hardwareAddress[4]), Byte.valueOf(hardwareAddress[5]));
                        } catch (Exception unused) {
                        }
                        Log.e("AHU.NET", "mHostInterface Mac:" + macAddress);
                    }
                    if (macAddress.isEmpty()) {
                        macAddress = this.mWifiManager.getConnectionInfo().getMacAddress();
                        Log.e("AHU.NET", "WifiInfo Mac:" + macAddress);
                    }
                    if ("02:00:00:00:00:00".equals(macAddress)) {
                        FileInputStream fileInputStream2 = new FileInputStream(isPlatform("bengal") ? "/sys/class/net/wlan2/address" : "/sys/class/net/wlan0/address");
                        try {
                            String line = new BufferedReader(new InputStreamReader(fileInputStream2)).readLine();
                            if (line != null && !line.isEmpty()) {
                                macAddress = line;
                            }
                            fileInputStream = fileInputStream2;
                        } catch (SocketException e2) {
                            e = e2;
                            throw new RuntimeException(FAILED_TO_FIND_HOST_BSSID, e);
                        } catch (Exception unused2) {
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e3) {
                                    throw new RuntimeException(e3);
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e4) {
                                    throw new RuntimeException(e4);
                                }
                            }
                            throw th;
                        }
                    }
                    this.mHostBssid = macAddress;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                            throw new RuntimeException(e5);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (SocketException e6) {
                e = e6;
            } catch (Exception unused3) {
            }
        }
        Preconditions.checkNotNull(this.mHostBssid, FAILED_TO_FIND_HOST_BSSID);
    }

    private String getSystemProperty(String str) {
        try {
            int i2 = SystemProperties.PROP_NAME_MAX;
            return (String) SystemProperties.class.getDeclaredMethod("get", String.class, String.class).invoke(SystemProperties.class, str, "");
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    private boolean isPlatform(String str) {
        if (str == null) {
            return false;
        }
        String systemProperty = getSystemProperty("ro.board.platform");
        Log.e("HDL", "board ========>> " + systemProperty);
        return str.equals(systemProperty);
    }

    private <T> T readArp(LineProcessor<T> lineProcessor) {
        try {
            return (T) Files.asCharSource(this.mArpFile, StandardCharsets.US_ASCII).readLines(lineProcessor);
        } catch (IOException unused) {
            Log.e(TAG, "IOException occurred when reading ARP!");
            return null;
        }
    }

    private void setBssidFromArp() {
        this.mHostBssid = (String) readArp(new LineProcessor<String>() { // from class: com.google.android.projection.sink.embedded.transport.net.WiFiHostInfoLocator.1
            String mFoundBssid;

            @Override // com.google.common.io.LineProcessor
            public boolean processLine(String str) {
                String[] strArrSplit = str.split("\\s{2,}");
                if (strArrSplit[5].equals(WiFiHostInfoLocator.this.mHostInterface.getName())) {
                    String str2 = strArrSplit[0];
                    if (str2.substring(str2.lastIndexOf(46) + 1, str2.length()).equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                        this.mFoundBssid = strArrSplit[3];
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.common.io.LineProcessor
            public String getResult() {
                return this.mFoundBssid;
            }
        });
    }

    private void setHostBssid(byte[] bArr) {
        this.mHostBssid = String.format("%02x:%02x:%02x:%02x:%02x:%02x", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3]), Byte.valueOf(bArr[4]), Byte.valueOf(bArr[5]));
    }

    @VisibleForTesting
    public void findHostInterfaceAndIp() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement.getName().contains("wlan")) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                            this.mHostInterface = networkInterfaceNextElement;
                            this.mHostIp = (Inet4Address) inetAddressNextElement;
                            return;
                        }
                    }
                }
            }
            throw new IllegalStateException(FAILED_TO_FIND_HOST_IP);
        } catch (SocketException e2) {
            Log.e(TAG, "findHostInterfaceAndIp", e2);
            throw new RuntimeException(FAILED_TO_FIND_HOST_IP, e2);
        }
    }

    public String getHostBssid() throws Throwable {
        if (this.mHostBssid == null) {
            findHostInfo();
        }
        return this.mHostBssid;
    }

    public String getHostIp() {
        if (this.mHostIp == null) {
            findHostInfo();
        }
        return this.mHostIp.getHostAddress();
    }

    @VisibleForTesting
    public WiFiHostInfoLocator(boolean z2, String str, WifiManager wifiManager) {
        this.mHostInterface = null;
        this.mIsWifiExternal = z2;
        this.mArpFile = z2 ? new File(str) : null;
        this.mWifiManager = wifiManager;
    }
}
