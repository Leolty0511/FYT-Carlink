package com.android.server.wifi;

import android.app.AppGlobals;
import android.content.pm.IPackageManager;
import android.os.Binder;
import android.os.ShellCommand;
import android.util.Log;
import com.android.server.wifi.util.ApConfigUtil;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.function.IntPredicate;

/* JADX INFO: loaded from: classes.dex */
public class WifiShellCommand extends ShellCommand {
    private static final String TAG = "WifiShellCommand";
    private final ClientModeImpl mClientModeImpl;
    private final HostapdHal mHostapdHal;
    private final IPackageManager mPM = AppGlobals.getPackageManager();
    private final WifiConfigManager mWifiConfigManager;
    private final WifiCountryCode mWifiCountryCode;
    private final WifiLockManager mWifiLockManager;
    private final WifiNative mWifiNative;
    private final WifiNetworkSuggestionsManager mWifiNetworkSuggestionsManager;
    private final WifiServiceImpl mWifiService;

    WifiShellCommand(WifiInjector wifiInjector, WifiServiceImpl wifiService) {
        this.mClientModeImpl = wifiInjector.getClientModeImpl();
        this.mWifiLockManager = wifiInjector.getWifiLockManager();
        this.mWifiNetworkSuggestionsManager = wifiInjector.getWifiNetworkSuggestionsManager();
        this.mWifiConfigManager = wifiInjector.getWifiConfigManager();
        this.mHostapdHal = wifiInjector.getHostapdHal();
        this.mWifiCountryCode = wifiInjector.getWifiCountryCode();
        this.mWifiNative = wifiInjector.getWifiNative();
        this.mWifiService = wifiService;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        byte b;
        boolean enabled;
        boolean enabled2;
        boolean enabled3;
        boolean approved;
        checkRootPermission();
        PrintWriter pw = getOutPrintWriter();
        String str = cmd != null ? cmd : "";
        try {
            switch (str.hashCode()) {
                case -1972405815:
                    b = !str.equals("network-suggestions-has-user-approved") ? (byte) -1 : (byte) 7;
                    break;
                case -1861126232:
                    if (str.equals("set-ipreach-disconnect")) {
                        b = 0;
                    }
                    break;
                case -1267819290:
                    if (str.equals("get-poll-rssi-interval-msecs")) {
                        b = 3;
                    }
                    break;
                case -1006001187:
                    if (str.equals("force-hi-perf-mode")) {
                        b = 4;
                    }
                    break;
                case -800098597:
                    if (str.equals("get-country-code")) {
                        b = 13;
                    }
                    break;
                case -576342682:
                    if (str.equals("force-country-code")) {
                        b = 12;
                    }
                    break;
                case -505485935:
                    if (str.equals("network-suggestions-set-user-approved")) {
                        b = 6;
                    }
                    break;
                case -29690534:
                    if (str.equals("set-poll-rssi-interval-msecs")) {
                        b = 2;
                    }
                    break;
                case 355024770:
                    if (str.equals("send-link-probe")) {
                        b = 10;
                    }
                    break;
                case 571096281:
                    if (str.equals("network-requests-remove-user-approved-access-points")) {
                        b = 8;
                    }
                    break;
                case 918812649:
                    if (str.equals("clear-deleted-ephemeral-networks")) {
                        b = 9;
                    }
                    break;
                case 1113629745:
                    if (str.equals("force-softap-channel")) {
                        b = 11;
                    }
                    break;
                case 1120712756:
                    if (str.equals("get-ipreach-disconnect")) {
                        b = 1;
                    }
                    break;
                case 1201296781:
                    if (str.equals("force-low-latency-mode")) {
                        b = 5;
                    }
                    break;
                default:
                    break;
            }
            switch (b) {
                case 0:
                    String nextArg = getNextArgRequired();
                    if ("enabled".equals(nextArg)) {
                        enabled = true;
                    } else {
                        boolean enabled4 = "disabled".equals(nextArg);
                        if (enabled4) {
                            enabled = false;
                        } else {
                            pw.println("Invalid argument to 'set-ipreach-disconnect' - must be 'enabled' or 'disabled'");
                            return -1;
                        }
                    }
                    this.mClientModeImpl.setIpReachabilityDisconnectEnabled(enabled);
                    return 0;
                case 1:
                    pw.println("IPREACH_DISCONNECT state is " + this.mClientModeImpl.getIpReachabilityDisconnectEnabled());
                    return 0;
                case 2:
                    try {
                        int newPollIntervalMsecs = Integer.parseInt(getNextArgRequired());
                        if (newPollIntervalMsecs < 1) {
                            pw.println("Invalid argument to 'set-poll-rssi-interval-msecs' - must be a positive integer");
                            return -1;
                        }
                        this.mClientModeImpl.setPollRssiIntervalMsecs(newPollIntervalMsecs);
                        return 0;
                    } catch (NumberFormatException e) {
                        pw.println("Invalid argument to 'set-poll-rssi-interval-msecs' - must be a positive integer");
                        return -1;
                    }
                case 3:
                    pw.println("ClientModeImpl.mPollRssiIntervalMsecs = " + this.mClientModeImpl.getPollRssiIntervalMsecs());
                    return 0;
                case 4:
                    String nextArg2 = getNextArgRequired();
                    if ("enabled".equals(nextArg2)) {
                        enabled2 = true;
                    } else {
                        boolean enabled5 = "disabled".equals(nextArg2);
                        if (enabled5) {
                            enabled2 = false;
                        } else {
                            pw.println("Invalid argument to 'force-hi-perf-mode' - must be 'enabled' or 'disabled'");
                            return -1;
                        }
                    }
                    if (!this.mWifiLockManager.forceHiPerfMode(enabled2)) {
                        pw.println("Command execution failed");
                    }
                    return 0;
                case 5:
                    String nextArg3 = getNextArgRequired();
                    if ("enabled".equals(nextArg3)) {
                        enabled3 = true;
                    } else {
                        boolean enabled6 = "disabled".equals(nextArg3);
                        if (enabled6) {
                            enabled3 = false;
                        } else {
                            pw.println("Invalid argument to 'force-low-latency-mode' - must be 'enabled' or 'disabled'");
                            return -1;
                        }
                    }
                    if (!this.mWifiLockManager.forceLowLatencyMode(enabled3)) {
                        pw.println("Command execution failed");
                    }
                    return 0;
                case 6:
                    String packageName = getNextArgRequired();
                    String nextArg4 = getNextArgRequired();
                    if ("yes".equals(nextArg4)) {
                        approved = true;
                    } else {
                        boolean approved2 = "no".equals(nextArg4);
                        if (approved2) {
                            approved = false;
                        } else {
                            pw.println("Invalid argument to 'network-suggestions-set-user-approved' - must be 'yes' or 'no'");
                            return -1;
                        }
                    }
                    this.mWifiNetworkSuggestionsManager.setHasUserApprovedForApp(approved, packageName);
                    return 0;
                case 7:
                    String packageName2 = getNextArgRequired();
                    boolean hasUserApproved = this.mWifiNetworkSuggestionsManager.hasUserApprovedForApp(packageName2);
                    pw.println(hasUserApproved ? "yes" : "no");
                    return 0;
                case 8:
                    String packageName3 = getNextArgRequired();
                    this.mClientModeImpl.removeNetworkRequestUserApprovedAccessPointsForApp(packageName3);
                    return 0;
                case 9:
                    this.mWifiConfigManager.clearDeletedEphemeralNetworks();
                    return 0;
                case 10:
                    return sendLinkProbe(pw);
                case 11:
                    boolean enabled7 = getNextArgRequiredTrueOrFalse("enabled", "disabled");
                    if (enabled7) {
                        try {
                            int apChannelMHz = Integer.parseInt(getNextArgRequired());
                            int apChannel = ApConfigUtil.convertFrequencyToChannel(apChannelMHz);
                            int band = ApConfigUtil.convertFrequencyToBand(apChannelMHz);
                            Log.d(TAG, "force-softap-channel apChannel is " + apChannel + ", and band is " + band + ", and apChannelMHz is " + apChannelMHz);
                            if (apChannel != -1 && isApChannelMHzValid(apChannelMHz)) {
                                if (band == 1 && !this.mWifiService.is5GhzSupported()) {
                                    pw.println("Invalid argument to 'force-softap-channel enabled' - channel band is not supported by the device");
                                    return -1;
                                }
                                this.mHostapdHal.enableForceSoftApChannel(apChannel, band);
                                return 0;
                            }
                            pw.println("Invalid argument to 'force-softap-channel enabled' - must be a valid WLAN channel");
                            return -1;
                        } catch (NumberFormatException e2) {
                            pw.println("Invalid argument to 'force-softap-channel enabled' - must be a positive integer");
                            return -1;
                        }
                    }
                    this.mHostapdHal.disableForceSoftApChannel();
                    return 0;
                case 12:
                    boolean enabled8 = getNextArgRequiredTrueOrFalse("enabled", "disabled");
                    if (enabled8) {
                        String countryCode = getNextArgRequired();
                        if (countryCode.length() == 2 && countryCode.chars().allMatch(new IntPredicate() { // from class: com.android.server.wifi.-$$Lambda$EniTvdrvvyFy8T1A7W-FZVwpgWI
                            @Override // java.util.function.IntPredicate
                            public final boolean test(int i) {
                                return Character.isLetter(i);
                            }
                        })) {
                            this.mWifiCountryCode.enableForceCountryCode(countryCode);
                            return 0;
                        }
                        pw.println("Invalid argument to 'force-country-code enabled' - must be a two-letter string");
                        return -1;
                    }
                    this.mWifiCountryCode.disableForceCountryCode();
                    return 0;
                case 13:
                    pw.println("Wifi Country Code = " + this.mWifiCountryCode.getCountryCode());
                    return 0;
                default:
                    return handleDefaultCommands(cmd);
            }
        } catch (Exception e3) {
            pw.println("Exception while executing WifiShellCommand: ");
            e3.printStackTrace(pw);
            return -1;
        }
        pw.println("Exception while executing WifiShellCommand: ");
        e3.printStackTrace(pw);
        return -1;
    }

    private boolean getNextArgRequiredTrueOrFalse(String trueString, String falseString) throws IllegalArgumentException {
        String nextArg = getNextArgRequired();
        if (trueString.equals(nextArg)) {
            return true;
        }
        if (falseString.equals(nextArg)) {
            return false;
        }
        throw new IllegalArgumentException("Expected '" + trueString + "' or '" + falseString + "' as next arg but got '" + nextArg + "'");
    }

    private boolean isApChannelMHzValid(int apChannelMHz) {
        int[] allowed2gFreq = this.mWifiNative.getChannelsForBand(1);
        int[] allowed5gFreq = this.mWifiNative.getChannelsForBand(2);
        int[] allowed5gDfsFreq = this.mWifiNative.getChannelsForBand(4);
        if (allowed2gFreq == null) {
            allowed2gFreq = new int[0];
        }
        if (allowed5gFreq == null) {
            allowed5gFreq = new int[0];
        }
        if (allowed5gDfsFreq == null) {
            allowed5gDfsFreq = new int[0];
        }
        return Arrays.binarySearch(allowed2gFreq, apChannelMHz) >= 0 || Arrays.binarySearch(allowed5gFreq, apChannelMHz) >= 0 || Arrays.binarySearch(allowed5gDfsFreq, apChannelMHz) >= 0;
    }

    private int sendLinkProbe(PrintWriter pw) throws InterruptedException {
        final ArrayBlockingQueue<String> queue = new ArrayBlockingQueue<>(1);
        this.mClientModeImpl.probeLink(new WifiNative.SendMgmtFrameCallback() { // from class: com.android.server.wifi.WifiShellCommand.1
            @Override // com.android.server.wifi.WifiNative.SendMgmtFrameCallback
            public void onAck(int elapsedTimeMs) {
                queue.offer("Link probe succeeded after " + elapsedTimeMs + " ms");
            }

            @Override // com.android.server.wifi.WifiNative.SendMgmtFrameCallback
            public void onFailure(int reason) {
                queue.offer("Link probe failed with reason " + reason);
            }
        }, -1);
        String msg = queue.poll(2000L, TimeUnit.MILLISECONDS);
        if (msg == null) {
            pw.println("Link probe timed out");
            return 0;
        }
        pw.println(msg);
        return 0;
    }

    private void checkRootPermission() {
        int uid = Binder.getCallingUid();
        if (uid == 0) {
            return;
        }
        throw new SecurityException("Uid " + uid + " does not have access to wifi commands");
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("Wi-Fi (wifi) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("  set-ipreach-disconnect enabled|disabled");
        pw.println("    Sets whether CMD_IP_REACHABILITY_LOST events should trigger disconnects.");
        pw.println("  get-ipreach-disconnect");
        pw.println("    Gets setting of CMD_IP_REACHABILITY_LOST events triggering disconnects.");
        pw.println("  set-poll-rssi-interval-msecs <int>");
        pw.println("    Sets the interval between RSSI polls to <int> milliseconds.");
        pw.println("  get-poll-rssi-interval-msecs");
        pw.println("    Gets current interval between RSSI polls, in milliseconds.");
        pw.println("  force-hi-perf-mode enabled|disabled");
        pw.println("    Sets whether hi-perf mode is forced or left for normal operation.");
        pw.println("  force-low-latency-mode enabled|disabled");
        pw.println("    Sets whether low latency mode is forced or left for normal operation.");
        pw.println("  network-suggestions-set-user-approved <package name> yes|no");
        pw.println("    Sets whether network suggestions from the app is approved or not.");
        pw.println("  network-suggestions-has-user-approved <package name>");
        pw.println("    Queries whether network suggestions from the app is approved or not.");
        pw.println("  network-requests-remove-user-approved-access-points <package name>");
        pw.println("    Removes all user approved network requests for the app.");
        pw.println("  clear-deleted-ephemeral-networks");
        pw.println("    Clears the deleted ephemeral networks list.");
        pw.println("  send-link-probe");
        pw.println("    Manually triggers a link probe.");
        pw.println("  force-softap-channel enabled <int> | disabled");
        pw.println("    Sets whether softap channel is forced or randomization.");
        pw.println("  force-country-code enabled <two-letter code> | disabled ");
        pw.println("    Sets country code to <two-letter code> or left for normal value");
        pw.println("  get-country-code");
        pw.println("    Gets country code as a two-letter string");
        pw.println();
    }
}
