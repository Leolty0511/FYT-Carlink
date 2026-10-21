package com.android.server.net;

import android.net.LinkProperties;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
class DnsServerRepository {
    public static final int NUM_CURRENT_SERVERS = 3;
    public static final int NUM_SERVERS = 12;
    public static final String TAG = "DnsServerRepository";
    private Set<InetAddress> mCurrentServers = new HashSet();
    private ArrayList<DnsServerEntry> mAllServers = new ArrayList<>(12);
    private HashMap<InetAddress, DnsServerEntry> mIndex = new HashMap<>(12);

    private synchronized boolean updateCurrentServers() {
        boolean zAdd;
        long jCurrentTimeMillis = System.currentTimeMillis();
        zAdd = false;
        for (int size = this.mAllServers.size() - 1; size >= 0 && (size >= 12 || this.mAllServers.get(size).expiry < jCurrentTimeMillis); size--) {
            DnsServerEntry dnsServerEntryRemove = this.mAllServers.remove(size);
            this.mIndex.remove(dnsServerEntryRemove.address);
            zAdd |= this.mCurrentServers.remove(dnsServerEntryRemove.address);
        }
        for (DnsServerEntry dnsServerEntry : this.mAllServers) {
            if (this.mCurrentServers.size() >= 3) {
                break;
            }
            zAdd |= this.mCurrentServers.add(dnsServerEntry.address);
        }
        return zAdd;
    }

    private synchronized boolean updateExistingEntry(InetAddress inetAddress, long j2) {
        DnsServerEntry dnsServerEntry = this.mIndex.get(inetAddress);
        if (dnsServerEntry == null) {
            return false;
        }
        dnsServerEntry.expiry = j2;
        return true;
    }

    public synchronized boolean addServers(long j2, String[] strArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = (j2 * 1000) + jCurrentTimeMillis;
        for (String str : strArr) {
            try {
                InetAddress numericAddress = InetAddress.parseNumericAddress(str);
                if (!updateExistingEntry(numericAddress, j3) && j3 > jCurrentTimeMillis) {
                    DnsServerEntry dnsServerEntry = new DnsServerEntry(numericAddress, j3);
                    this.mAllServers.add(dnsServerEntry);
                    this.mIndex.put(numericAddress, dnsServerEntry);
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        Collections.sort(this.mAllServers);
        return updateCurrentServers();
    }

    public synchronized void setDnsServersOn(LinkProperties linkProperties) {
        linkProperties.setDnsServers(this.mCurrentServers);
    }
}
