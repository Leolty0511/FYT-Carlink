package android.net.wifi;

/* JADX INFO: loaded from: classes.dex */
class NetworkUpdateResult {
    public boolean ipChanged;
    public boolean isNewNetwork;
    public int netId;
    public boolean proxyChanged;

    public NetworkUpdateResult(int i2) {
        this.isNewNetwork = false;
        this.netId = i2;
        this.ipChanged = false;
        this.proxyChanged = false;
    }

    public int getNetworkId() {
        return this.netId;
    }

    public boolean hasIpChanged() {
        return this.ipChanged;
    }

    public boolean hasProxyChanged() {
        return this.proxyChanged;
    }

    public boolean isNewNetwork() {
        return this.isNewNetwork;
    }

    public void setIpChanged(boolean z2) {
        this.ipChanged = z2;
    }

    public void setIsNewNetwork(boolean z2) {
        this.isNewNetwork = z2;
    }

    public void setNetworkId(int i2) {
        this.netId = i2;
    }

    public void setProxyChanged(boolean z2) {
        this.proxyChanged = z2;
    }

    public NetworkUpdateResult(boolean z2, boolean z3) {
        this.isNewNetwork = false;
        this.netId = -1;
        this.ipChanged = z2;
        this.proxyChanged = z3;
    }
}
