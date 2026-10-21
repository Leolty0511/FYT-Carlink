package com.android.server.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.os.FileUtils;
import android.os.UserHandle;
import android.util.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
class WifiApClientStats {
    private static final String ACTION_SOFTAP_CLIENT_CONNECT = "android.net.conn.SOFTAP_CLIENT_CONNECT";
    private static final String CLIENT_BLOCKMODE_BLACKLIST = "0";
    private static final String CLIENT_BLOCKMODE_WHITELIST = "1";
    private static final String EXTRA_HOST_NAME = "hostName";
    private static final String EXTRA_IP_ADDR = "ipAddr";
    private static final String EXTRA_MAC_ADDR = "macAddr";
    private static final String TAG = "WifiApClientStats";
    private static final String patternStr = "^[A-Fa-f0-9]{2}(:[A-Fa-f0-9]{2}){5}$";
    private Context mContext;
    private String mIpAddr;
    private String mMacAddr;
    private String mNewMacList;
    private String mStaName;
    private static boolean DBG = true;
    private static final String AP_BLOCKLIST_FILE = Environment.getDataDirectory() + "/misc/wifi/softapblocklist.conf";
    private static final String AP_WHITELIST_FILE = Environment.getDataDirectory() + "/misc/wifi/hostapd.accept";
    private static final String CLIENT_BLOCKMODE_PREFIX_STR = "#!macaddr_acl=";
    private static final int CLIENT_BLOCKMODE_PREFIX_STR_LEN = CLIENT_BLOCKMODE_PREFIX_STR.length();
    private final int BUFFER_SIZE = 1024;
    private Object mLocker = new Object();
    private Object mWaiter = new Object();
    private HashMap<String, String> mClientInfoCache = new HashMap<>();
    private HashMap<String, String> mBlockedClientInfoCache = new HashMap<>();
    private HashMap<String, String> mWhiteClientInfoCache = new HashMap<>();
    private boolean mBlockedClientChanged = false;
    private boolean mWhiteClientChanged = false;
    private Object mClientBlockedModeLocker = new Object();
    private String mClientBlockedMode = CLIENT_BLOCKMODE_BLACKLIST;
    private WifiApClientStatsThread mWifiApClientStatsThread = new WifiApClientStatsThread();

    WifiApClientStats(Context context) {
        this.mContext = context;
        this.mWifiApClientStatsThread.start();
        IntentFilter filter = new IntentFilter();
        filter.addAction(ACTION_SOFTAP_CLIENT_CONNECT);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.WifiApClientStats.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                WifiApClientStats.this.mStaName = intent.getStringExtra(WifiApClientStats.EXTRA_HOST_NAME);
                WifiApClientStats.this.mMacAddr = intent.getStringExtra(WifiApClientStats.EXTRA_MAC_ADDR);
                WifiApClientStats.this.mIpAddr = intent.getStringExtra(WifiApClientStats.EXTRA_IP_ADDR);
                if (WifiApClientStats.this.mMacAddr != null && WifiApClientStats.this.mIpAddr != null) {
                    WifiApClientStats wifiApClientStats = WifiApClientStats.this;
                    wifiApClientStats.saveClientInfo(wifiApClientStats.mMacAddr, WifiApClientStats.this.mStaName, WifiApClientStats.this.mIpAddr);
                }
            }
        }, filter);
    }

    public void sendDetailInfoAvailableBroadcast() {
        Intent intent = new Intent("android.net.wifi.WIFI_AP_CLIENT_DETAILINFO_AVAILABLE_ACTION");
        intent.addFlags(67108864);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void writeBlockList() {
        if (!this.mBlockedClientChanged) {
            if (DBG) {
                Log.d(TAG, "block list not changed, do not need to save again!");
                return;
            }
            return;
        }
        writeToFile(AP_BLOCKLIST_FILE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFromFile(String fileName) throws IOException {
        BufferedReader reader = null;
        boolean isWhiteList = false;
        try {
            try {
                try {
                    BufferedReader reader2 = new BufferedReader(new FileReader(fileName));
                    for (String line = reader2.readLine(); line != null; line = reader2.readLine()) {
                        if (line.startsWith(CLIENT_BLOCKMODE_PREFIX_STR)) {
                            isWhiteList = true;
                            synchronized (this.mClientBlockedModeLocker) {
                                this.mClientBlockedMode = line.substring(CLIENT_BLOCKMODE_PREFIX_STR_LEN);
                                if (!CLIENT_BLOCKMODE_BLACKLIST.equals(this.mClientBlockedMode) && !CLIENT_BLOCKMODE_WHITELIST.equals(this.mClientBlockedMode)) {
                                    if (DBG) {
                                        Log.d(TAG, "Invalid client block mode: " + line);
                                    }
                                    this.mClientBlockedMode = CLIENT_BLOCKMODE_BLACKLIST;
                                }
                            }
                        }
                        if (!line.startsWith("#")) {
                            String[] tokens = line.split(" ");
                            if (tokens.length != 0) {
                                String info = tokens[0];
                                if (tokens.length > 1) {
                                    info = info + " " + tokens[1].substring(1);
                                }
                                if (isWhiteList) {
                                    synchronized (this.mWhiteClientInfoCache) {
                                        this.mWhiteClientInfoCache.put(info, info);
                                    }
                                } else {
                                    synchronized (this.mBlockedClientInfoCache) {
                                        this.mBlockedClientInfoCache.put(info, info);
                                    }
                                }
                            }
                        }
                    }
                    reader2.close();
                } catch (IOException e) {
                }
            } catch (FileNotFoundException e2) {
                Log.e(TAG, "Could not open " + fileName + ", " + e2);
                if (0 != 0) {
                    reader.close();
                }
            } catch (IOException e3) {
                Log.e(TAG, "Could not read " + fileName + ", " + e3);
                if (0 != 0) {
                    reader.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    reader.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    private void writeWhiteList() {
        if (!this.mWhiteClientChanged) {
            if (DBG) {
                Log.d(TAG, "white list not changed, do not need to save again!");
                return;
            }
            return;
        }
        writeToFile(AP_WHITELIST_FILE);
    }

    private void writeToFile(String fileName) {
        Log.d(TAG, "writeToFile " + fileName);
        File file = new File(fileName);
        if (!file.exists()) {
            Log.d(TAG, "path : " + fileName + ", not exist");
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        BufferedWriter out = null;
        try {
            try {
                try {
                    BufferedWriter out2 = new BufferedWriter(new FileWriter(fileName));
                    if (this.mWhiteClientChanged) {
                        synchronized (this.mClientBlockedModeLocker) {
                            out2.write(CLIENT_BLOCKMODE_PREFIX_STR + this.mClientBlockedMode + "\n");
                        }
                        synchronized (this.mWhiteClientInfoCache) {
                            for (String s : this.mWhiteClientInfoCache.values()) {
                                if (s != null) {
                                    String[] tokens = s.split(" ");
                                    if (tokens.length > 1) {
                                        out2.write(tokens[0] + " #" + tokens[1] + "\n");
                                    } else {
                                        out2.write(s + "\n");
                                    }
                                }
                            }
                        }
                        this.mWhiteClientChanged = false;
                    } else if (this.mBlockedClientChanged) {
                        synchronized (this.mBlockedClientInfoCache) {
                            for (String s2 : this.mBlockedClientInfoCache.values()) {
                                if (s2 != null) {
                                    String[] tokens2 = s2.split(" ");
                                    if (tokens2.length > 1) {
                                        out2.write(tokens2[0] + " #" + tokens2[1] + "\n");
                                    } else {
                                        out2.write(s2 + "\n");
                                    }
                                }
                            }
                        }
                        this.mBlockedClientChanged = false;
                    }
                    out2.close();
                } catch (IOException e2) {
                    Log.e(TAG, "Error writing hotspot configuration" + e2);
                    if (0 != 0) {
                        out.close();
                    }
                    FileUtils.setPermissions(fileName, 432, -1, 1010);
                }
            } catch (IOException e3) {
            }
            try {
                FileUtils.setPermissions(fileName, 432, -1, 1010);
            } catch (Exception e1) {
                Log.e(TAG, "Error change permissions of hotspot configuration" + e1);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    out.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    private class WifiApClientStatsThread extends Thread {
        public WifiApClientStatsThread() {
            super("WifiApClientStatsThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws IOException {
            Log.d(WifiApClientStats.TAG, "WifiApClientStatsThread run");
            WifiApClientStats.this.loadFromFile(WifiApClientStats.AP_BLOCKLIST_FILE);
            WifiApClientStats.this.loadFromFile(WifiApClientStats.AP_WHITELIST_FILE);
        }
    }

    public void start() {
        synchronized (this.mWaiter) {
            this.mWaiter.notifyAll();
        }
        if (DBG) {
            Log.d(TAG, "START NOTIFY");
        }
    }

    public void stop() {
        synchronized (this.mLocker) {
            this.mNewMacList = null;
            this.mClientInfoCache.clear();
        }
        writeBlockList();
        writeWhiteList();
        if (DBG) {
            Log.d(TAG, "STOP");
        }
    }

    public List<String> getStaClientInfoList() {
        List<String> infoList = new ArrayList<>();
        String[] macs = null;
        String str = this.mNewMacList;
        if (str != null) {
            if (str.equals("")) {
                return infoList;
            }
            macs = this.mNewMacList.split(" ");
        }
        try {
            synchronized (this.mLocker) {
                try {
                    if (macs == null) {
                        for (String s : this.mClientInfoCache.values()) {
                            if (s != null) {
                                infoList.add(s);
                            }
                        }
                    } else {
                        for (String mac : macs) {
                            String info = this.mClientInfoCache.get(mac);
                            if (info != null) {
                                infoList.add(info);
                            } else {
                                if (DBG) {
                                    Log.d(TAG, "getStaClientInfoList for " + mac + " is not got yet");
                                }
                                infoList.add(mac);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed getStaClientInfoList : " + e);
        }
        return infoList;
    }

    public void addOrUpdateClientInfoList(String macList) {
        this.mNewMacList = macList;
    }

    public String saveClientInfo(String macAddr, String staName, String ipAddr) {
        Log.d(TAG, "saveClientInfo macAddr= " + macAddr + ", ipAddr=" + ipAddr);
        StringBuffer buf = new StringBuffer();
        buf.append(macAddr);
        buf.append(" ");
        buf.append(ipAddr);
        buf.append(" ");
        if (staName != null) {
            buf.append(staName);
        } else {
            buf.append("*");
        }
        String clientInfo = buf.toString();
        this.mClientInfoCache.put(macAddr, clientInfo);
        sendDetailInfoAvailableBroadcast();
        return clientInfo;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c7 A[LOOP:1: B:42:0x00c1->B:44:0x00c7, LOOP_END] */
    public List<String> getBlockedClientInfoList(String macList) {
        Iterator<String> it;
        List<String> infoList = new ArrayList<>();
        String[] macs = null;
        if (macList != null) {
            if (macList.equals("")) {
                return infoList;
            }
            macs = macList.split(" ");
        }
        try {
            if (macs != null) {
                String[] macstring = null;
                for (String mac : macs) {
                    try {
                        macstring = mac.split(" ");
                        if (!checkMac(macstring[0].trim())) {
                            Log.d(TAG, "getBlockedClientInfoList checkMac fail : " + macstring[0]);
                        } else {
                            String info = this.mBlockedClientInfoCache.get(mac);
                            if (info != null) {
                                infoList.add(info);
                            } else {
                                if (DBG) {
                                    Log.d(TAG, "getBlockedClientInfoList for " + mac + " is not got yet");
                                }
                                infoList.add(mac);
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.e(TAG, "Failed getBlockedClientInfoList : " + e);
                        if (DBG) {
                            Log.d(TAG, "getBlockedClientInfoList :");
                            it = infoList.iterator();
                            while (it.hasNext()) {
                                Log.d(TAG, it.next());
                            }
                        }
                        return infoList;
                    }
                }
            } else {
                for (String s : this.mBlockedClientInfoCache.values()) {
                    if (s != null) {
                        infoList.add(s);
                    }
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        if (DBG) {
            Log.d(TAG, "getBlockedClientInfoList :");
            it = infoList.iterator();
            while (it.hasNext()) {
                Log.d(TAG, it.next());
            }
        }
        return infoList;
    }

    public boolean unBlockClient(String mac) {
        try {
            this.mBlockedClientInfoCache.remove(mac);
        } catch (Exception e) {
            Log.e(TAG, "Failed to unblock client: " + e);
        }
        this.mBlockedClientChanged = true;
        writeBlockList();
        sendDetailInfoAvailableBroadcast();
        return true;
    }

    public boolean blockClient(String mac) {
        try {
            String info = this.mClientInfoCache.get(mac);
            String[] tokens = info.split(" ");
            if (tokens.length > 2) {
                this.mBlockedClientInfoCache.put(mac, mac + " " + tokens[2]);
            } else {
                this.mBlockedClientInfoCache.put(mac, mac);
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to block client: " + e);
        }
        this.mBlockedClientChanged = true;
        writeBlockList();
        sendDetailInfoAvailableBroadcast();
        return true;
    }

    public boolean addClientToWhiteList(String mac, String name, boolean softapStarted) {
        if (mac == null) {
            return false;
        }
        if (!checkMac(mac)) {
            Log.e(TAG, "addClientToWhiteList checkMac false, mac: " + mac);
            return false;
        }
        String info = mac;
        if (name != null) {
            try {
                info = mac + " " + name;
            } catch (Exception e) {
                Log.e(TAG, "Failed addClientToWhiteList : " + e);
            }
        }
        synchronized (this.mWhiteClientInfoCache) {
            this.mWhiteClientInfoCache.put(mac, info);
        }
        this.mWhiteClientChanged = true;
        writeWhiteList();
        sendDetailInfoAvailableBroadcast();
        return true;
    }

    public boolean delClientFromWhiteList(String mac, String name, boolean softapStarted) {
        try {
            synchronized (this.mWhiteClientInfoCache) {
                this.mWhiteClientInfoCache.remove(mac);
            }
            this.mWhiteClientChanged = true;
            writeWhiteList();
        } catch (Exception e) {
            Log.e(TAG, "Failed delClientFromWhiteList : " + e);
        }
        sendDetailInfoAvailableBroadcast();
        return true;
    }

    public boolean setClientWhiteListEnabled(boolean enabled, boolean softapStarted) {
        try {
            synchronized (this.mClientBlockedModeLocker) {
                try {
                    if (enabled) {
                        this.mClientBlockedMode = CLIENT_BLOCKMODE_WHITELIST;
                    } else {
                        this.mClientBlockedMode = CLIENT_BLOCKMODE_BLACKLIST;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.mWhiteClientChanged = true;
            writeWhiteList();
        } catch (Exception e) {
            Log.e(TAG, "Failed setClientWhiteListEnabled : " + e);
        }
        return true;
    }

    private boolean checkMac(String str) {
        if (str == null) {
            Log.e(TAG, "checkMac error: str == null");
            return false;
        }
        return Pattern.matches(patternStr, str);
    }

    public List<String> getClientWhiteList() {
        List<String> infoList = new ArrayList<>();
        try {
            synchronized (this.mWhiteClientInfoCache) {
                for (String s : this.mWhiteClientInfoCache.values()) {
                    if (s != null) {
                        String[] macs = s.split(" ");
                        if (checkMac(macs[0].trim())) {
                            infoList.add(s);
                        } else {
                            Log.d(TAG, "getClientWhiteList checkMac error : " + macs[0]);
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed getClientWhiteList : " + e);
        }
        if (DBG) {
            Log.d(TAG, "getClientWhiteList :");
            for (String info : infoList) {
                Log.d(TAG, info);
            }
        }
        return infoList;
    }

    public List<String> getClientMacWhiteList() {
        List<String> infoList = new ArrayList<>();
        try {
            synchronized (this.mWhiteClientInfoCache) {
                for (String s : this.mWhiteClientInfoCache.values()) {
                    if (s != null) {
                        String[] macs = s.split(" ");
                        if (checkMac(macs[0].trim())) {
                            infoList.add(macs[0].trim());
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed getClientMacWhiteList : " + e);
        }
        return infoList;
    }

    public boolean isWhiteListEnabled() {
        synchronized (this.mClientBlockedModeLocker) {
            if (CLIENT_BLOCKMODE_WHITELIST.equals(this.mClientBlockedMode)) {
                return true;
            }
            return false;
        }
    }
}
