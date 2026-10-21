package com.android.server.wifi.scanner;

/* JADX INFO: loaded from: classes.dex */
public class PresetKnownBandsChannelHelper extends KnownBandsChannelHelper {
    public PresetKnownBandsChannelHelper(int[] channels2G, int[] channels5G, int[] channelsDfs) {
        setBandChannels(channels2G, channels5G, channelsDfs);
    }
}
