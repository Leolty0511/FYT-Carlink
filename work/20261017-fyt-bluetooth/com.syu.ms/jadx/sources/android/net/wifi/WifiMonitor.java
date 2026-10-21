package android.net.wifi;

import android.app.Instrumentation;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pProvDiscEvent;
import android.net.wifi.p2p.WifiP2pService;
import android.net.wifi.p2p.nsd.WifiP2pServiceResponse;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import u.m;

/* JADX INFO: loaded from: classes.dex */
public class WifiMonitor {
    public static final int AP_STA_CONNECTED_EVENT = 147498;
    private static final String AP_STA_CONNECTED_STR = "AP-STA-CONNECTED";
    public static final int AP_STA_DISCONNECTED_EVENT = 147497;
    private static final String AP_STA_DISCONNECTED_STR = "AP-STA-DISCONNECTED";
    public static final int ASSOCIATION_REJECTION_EVENT = 147499;
    private static final int ASSOC_REJECT = 9;
    private static final String ASSOC_REJECT_STR = "ASSOC-REJECT";
    public static final int AUTHENTICATION_FAILURE_EVENT = 147463;
    private static final int BASE = 147456;
    private static final int CONFIG_AUTH_FAILURE = 18;
    private static final int CONFIG_MULTIPLE_PBC_DETECTED = 12;
    private static final int CONNECTED = 1;
    private static final String CONNECTED_STR = "CONNECTED";
    private static final boolean DBG = false;
    private static final int DISCONNECTED = 2;
    private static final String DISCONNECTED_STR = "DISCONNECTED";
    public static final int DRIVER_HUNG_EVENT = 147468;
    private static final int DRIVER_STATE = 7;
    private static final String DRIVER_STATE_STR = "DRIVER-STATE";
    private static final String EAP_AUTH_FAILURE_STR = "EAP authentication failed";
    private static final int EAP_FAILURE = 8;
    private static final String EAP_FAILURE_STR = "EAP-FAILURE";
    private static final int EVENT_PREFIX_LEN_STR = 11;
    private static final String EVENT_PREFIX_STR = "CTRL-EVENT-";
    private static final String HOST_AP_EVENT_PREFIX_STR = "AP";
    private static final int LINK_SPEED = 5;
    private static final String LINK_SPEED_STR = "LINK-SPEED";
    private static final int MAX_RECV_ERRORS = 10;
    private static final String MONITOR_SOCKET_CLOSED_STR = "connection closed";
    public static final int NETWORK_CONNECTION_EVENT = 147459;
    public static final int NETWORK_DISCONNECTION_EVENT = 147460;
    public static final int P2P_DEVICE_FOUND_EVENT = 147477;
    private static final String P2P_DEVICE_FOUND_STR = "P2P-DEVICE-FOUND";
    public static final int P2P_DEVICE_LOST_EVENT = 147478;
    private static final String P2P_DEVICE_LOST_STR = "P2P-DEVICE-LOST";
    private static final String P2P_EVENT_PREFIX_STR = "P2P";
    public static final int P2P_FIND_STOPPED_EVENT = 147493;
    private static final String P2P_FIND_STOPPED_STR = "P2P-FIND-STOPPED";
    public static final int P2P_GO_NEGOTIATION_FAILURE_EVENT = 147482;
    public static final int P2P_GO_NEGOTIATION_REQUEST_EVENT = 147479;
    public static final int P2P_GO_NEGOTIATION_SUCCESS_EVENT = 147481;
    private static final String P2P_GO_NEG_FAILURE_STR = "P2P-GO-NEG-FAILURE";
    private static final String P2P_GO_NEG_REQUEST_STR = "P2P-GO-NEG-REQUEST";
    private static final String P2P_GO_NEG_SUCCESS_STR = "P2P-GO-NEG-SUCCESS";
    public static final int P2P_GROUP_FORMATION_FAILURE_EVENT = 147484;
    private static final String P2P_GROUP_FORMATION_FAILURE_STR = "P2P-GROUP-FORMATION-FAILURE";
    public static final int P2P_GROUP_FORMATION_SUCCESS_EVENT = 147483;
    private static final String P2P_GROUP_FORMATION_SUCCESS_STR = "P2P-GROUP-FORMATION-SUCCESS";
    public static final int P2P_GROUP_REMOVED_EVENT = 147486;
    private static final String P2P_GROUP_REMOVED_STR = "P2P-GROUP-REMOVED";
    public static final int P2P_GROUP_STARTED_EVENT = 147485;
    private static final String P2P_GROUP_STARTED_STR = "P2P-GROUP-STARTED";
    public static final int P2P_INVITATION_RECEIVED_EVENT = 147487;
    private static final String P2P_INVITATION_RECEIVED_STR = "P2P-INVITATION-RECEIVED";
    public static final int P2P_INVITATION_RESULT_EVENT = 147488;
    private static final String P2P_INVITATION_RESULT_STR = "P2P-INVITATION-RESULT";
    public static final int P2P_PROV_DISC_ENTER_PIN_EVENT = 147491;
    private static final String P2P_PROV_DISC_ENTER_PIN_STR = "P2P-PROV-DISC-ENTER-PIN";
    public static final int P2P_PROV_DISC_FAILURE_EVENT = 147495;
    private static final String P2P_PROV_DISC_FAILURE_STR = "P2P-PROV-DISC-FAILURE";
    public static final int P2P_PROV_DISC_PBC_REQ_EVENT = 147489;
    private static final String P2P_PROV_DISC_PBC_REQ_STR = "P2P-PROV-DISC-PBC-REQ";
    public static final int P2P_PROV_DISC_PBC_RSP_EVENT = 147490;
    private static final String P2P_PROV_DISC_PBC_RSP_STR = "P2P-PROV-DISC-PBC-RESP";
    public static final int P2P_PROV_DISC_SHOW_PIN_EVENT = 147492;
    private static final String P2P_PROV_DISC_SHOW_PIN_STR = "P2P-PROV-DISC-SHOW-PIN";
    public static final int P2P_SERV_DISC_RESP_EVENT = 147494;
    private static final String P2P_SERV_DISC_RESP_STR = "P2P-SERV-DISC-RESP";
    private static final String PASSWORD_MAY_BE_INCORRECT_STR = "pre-shared key may be incorrect";
    private static final int REASON_TKIP_ONLY_PROHIBITED = 1;
    private static final int REASON_WEP_PROHIBITED = 2;
    private static final int SCAN_RESULTS = 4;
    public static final int SCAN_RESULTS_EVENT = 147461;
    private static final String SCAN_RESULTS_STR = "SCAN-RESULTS";
    private static final int STATE_CHANGE = 3;
    private static final String STATE_CHANGE_STR = "STATE-CHANGE";
    public static final int SUPPLICANT_STATE_CHANGE_EVENT = 147462;
    public static final int SUP_CONNECTION_EVENT = 147457;
    public static final int SUP_DISCONNECTION_EVENT = 147458;
    private static final String TAG = "WifiMonitor";
    private static final int TERMINATING = 6;
    private static final String TERMINATING_STR = "TERMINATING";
    private static final int UNKNOWN = 10;
    private static final String WPA_EVENT_PREFIX_STR = "WPA:";
    private static final String WPA_RECV_ERROR_STR = "recv error";
    public static final int WPS_FAIL_EVENT = 147465;
    private static final String WPS_FAIL_PATTERN = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?";
    private static final String WPS_FAIL_STR = "WPS-FAIL";
    public static final int WPS_OVERLAP_EVENT = 147466;
    private static final String WPS_OVERLAP_STR = "WPS-OVERLAP-DETECTED";
    public static final int WPS_SUCCESS_EVENT = 147464;
    private static final String WPS_SUCCESS_STR = "WPS-SUCCESS";
    public static final int WPS_TIMEOUT_EVENT = 147467;
    private static final String WPS_TIMEOUT_STR = "WPS-TIMEOUT";
    private static Pattern mConnectedEventPattern = Pattern.compile("((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) ");
    private final String mInterfaceName;
    private boolean mMonitoring;
    private final WifiNative mWifiNative;
    private final m mWifiStateMachine;

    public static class MonitorThread extends Thread {
        private int mRecvErrors;
        private m mStateMachine;
        private final WifiMonitorSingleton mWifiMonitorSingleton;
        private final WifiNative mWifiNative;

        public MonitorThread(WifiNative wifiNative, WifiMonitorSingleton wifiMonitorSingleton) {
            super(WifiMonitor.TAG);
            this.mRecvErrors = 0;
            this.mStateMachine = null;
            this.mWifiNative = wifiNative;
            this.mWifiMonitorSingleton = wifiMonitorSingleton;
        }

        private boolean dispatchEvent(String str) {
            int i2;
            if (!str.startsWith(WifiMonitor.EVENT_PREFIX_STR)) {
                if (str.startsWith(WifiMonitor.WPA_EVENT_PREFIX_STR) && str.indexOf(WifiMonitor.PASSWORD_MAY_BE_INCORRECT_STR) > 0) {
                    this.mStateMachine.sendMessage(WifiMonitor.AUTHENTICATION_FAILURE_EVENT);
                } else if (str.startsWith(WifiMonitor.WPS_SUCCESS_STR)) {
                    this.mStateMachine.sendMessage(WifiMonitor.WPS_SUCCESS_EVENT);
                } else if (str.startsWith(WifiMonitor.WPS_FAIL_STR)) {
                    handleWpsFailEvent(str);
                } else if (str.startsWith(WifiMonitor.WPS_OVERLAP_STR)) {
                    this.mStateMachine.sendMessage(WifiMonitor.WPS_OVERLAP_EVENT);
                } else if (str.startsWith(WifiMonitor.WPS_TIMEOUT_STR)) {
                    this.mStateMachine.sendMessage(WifiMonitor.WPS_TIMEOUT_EVENT);
                } else if (str.startsWith(WifiMonitor.P2P_EVENT_PREFIX_STR)) {
                    handleP2pEvents(str);
                } else if (str.startsWith(WifiMonitor.HOST_AP_EVENT_PREFIX_STR)) {
                    handleHostApEvents(str);
                }
                return false;
            }
            String strSubstring = str.substring(WifiMonitor.EVENT_PREFIX_LEN_STR);
            int iIndexOf = strSubstring.indexOf(32);
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(0, iIndexOf);
            }
            if (strSubstring.length() == 0) {
                return false;
            }
            if (strSubstring.equals(WifiMonitor.CONNECTED_STR)) {
                i2 = 1;
            } else if (strSubstring.equals(WifiMonitor.DISCONNECTED_STR)) {
                i2 = 2;
            } else if (strSubstring.equals(WifiMonitor.STATE_CHANGE_STR)) {
                i2 = 3;
            } else if (strSubstring.equals(WifiMonitor.SCAN_RESULTS_STR)) {
                i2 = 4;
            } else if (strSubstring.equals(WifiMonitor.LINK_SPEED_STR)) {
                i2 = 5;
            } else if (strSubstring.equals(WifiMonitor.TERMINATING_STR)) {
                i2 = 6;
            } else if (strSubstring.equals(WifiMonitor.DRIVER_STATE_STR)) {
                i2 = 7;
            } else if (strSubstring.equals(WifiMonitor.EAP_FAILURE_STR)) {
                i2 = 8;
            } else {
                i2 = strSubstring.equals(WifiMonitor.ASSOC_REJECT_STR) ? 9 : 10;
            }
            if (i2 == 7 || i2 == 5) {
                str = str.split(" ")[1];
            } else if (i2 == 3 || i2 == 8) {
                int iIndexOf2 = str.indexOf(" ");
                if (iIndexOf2 != -1) {
                    str = str.substring(iIndexOf2 + 1);
                }
            } else {
                int iIndexOf3 = str.indexOf(" - ");
                if (iIndexOf3 != -1) {
                    str = str.substring(iIndexOf3 + 3);
                }
            }
            if (i2 == 3) {
                handleSupplicantStateChange(str);
            } else if (i2 == 7) {
                handleDriverEvent(str);
            } else {
                if (i2 == 6) {
                    if (str.startsWith(WifiMonitor.WPA_RECV_ERROR_STR)) {
                        int i3 = this.mRecvErrors + 1;
                        this.mRecvErrors = i3;
                        if (i3 <= 10) {
                            return false;
                        }
                    }
                    this.mStateMachine.sendMessage(WifiMonitor.SUP_DISCONNECTION_EVENT);
                    return true;
                }
                if (i2 == 8) {
                    if (str.startsWith(WifiMonitor.EAP_AUTH_FAILURE_STR)) {
                        this.mStateMachine.sendMessage(WifiMonitor.AUTHENTICATION_FAILURE_EVENT);
                    }
                } else if (i2 == 9) {
                    this.mStateMachine.sendMessage(WifiMonitor.ASSOCIATION_REJECTION_EVENT);
                } else {
                    handleEvent(i2, str);
                }
            }
            this.mRecvErrors = 0;
            return false;
        }

        private void handleDriverEvent(String str) {
            if (str != null && str.equals("HANGED")) {
                this.mStateMachine.sendMessage(WifiMonitor.DRIVER_HUNG_EVENT);
            }
        }

        private void handleHostApEvents(String str) {
            String[] strArrSplit = str.split(" ");
            if (strArrSplit[0].equals(WifiMonitor.AP_STA_CONNECTED_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.AP_STA_CONNECTED_EVENT, new WifiP2pDevice(str));
            } else if (strArrSplit[0].equals(WifiMonitor.AP_STA_DISCONNECTED_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.AP_STA_DISCONNECTED_EVENT, new WifiP2pDevice(str));
            }
        }

        private void handleNetworkStateChange(NetworkInfo.DetailedState detailedState, String str) {
            String str2;
            if (detailedState == NetworkInfo.DetailedState.CONNECTED) {
                Matcher matcher = WifiMonitor.mConnectedEventPattern.matcher(str);
                int i2 = -1;
                if (matcher.find()) {
                    String strGroup = matcher.group(1);
                    try {
                        i2 = Integer.parseInt(matcher.group(2));
                    } catch (NumberFormatException unused) {
                    }
                    str2 = strGroup;
                } else {
                    str2 = null;
                }
                notifyNetworkStateChange(detailedState, str2, i2);
            }
        }

        private void handleP2pEvents(String str) {
            if (str.startsWith(WifiMonitor.P2P_DEVICE_FOUND_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_DEVICE_FOUND_EVENT, new WifiP2pDevice(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_DEVICE_LOST_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_DEVICE_LOST_EVENT, new WifiP2pDevice(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_FIND_STOPPED_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_FIND_STOPPED_EVENT);
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_GO_NEG_REQUEST_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_GO_NEGOTIATION_REQUEST_EVENT, new WifiP2pConfig(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_GO_NEG_SUCCESS_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT);
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_GO_NEG_FAILURE_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_GO_NEGOTIATION_FAILURE_EVENT, p2pError(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_GROUP_FORMATION_SUCCESS_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_GROUP_FORMATION_SUCCESS_EVENT);
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_GROUP_FORMATION_FAILURE_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT, p2pError(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_GROUP_STARTED_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_GROUP_STARTED_EVENT, new WifiP2pGroup(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_GROUP_REMOVED_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_GROUP_REMOVED_EVENT, new WifiP2pGroup(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_INVITATION_RECEIVED_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_INVITATION_RECEIVED_EVENT, new WifiP2pGroup(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_INVITATION_RESULT_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_INVITATION_RESULT_EVENT, p2pError(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_PROV_DISC_PBC_REQ_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_PROV_DISC_PBC_REQ_EVENT, new WifiP2pProvDiscEvent(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_PROV_DISC_PBC_RSP_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_PROV_DISC_PBC_RSP_EVENT, new WifiP2pProvDiscEvent(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_PROV_DISC_ENTER_PIN_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT, new WifiP2pProvDiscEvent(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_PROV_DISC_SHOW_PIN_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT, new WifiP2pProvDiscEvent(str));
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_PROV_DISC_FAILURE_STR)) {
                this.mStateMachine.sendMessage(WifiMonitor.P2P_PROV_DISC_FAILURE_EVENT);
                return;
            }
            if (str.startsWith(WifiMonitor.P2P_SERV_DISC_RESP_STR)) {
                List<WifiP2pServiceResponse> listNewInstance = WifiP2pServiceResponse.newInstance(str);
                if (listNewInstance != null) {
                    this.mStateMachine.sendMessage(WifiMonitor.P2P_SERV_DISC_RESP_EVENT, listNewInstance);
                    return;
                }
                Log.e(WifiMonitor.TAG, "Null service resp " + str);
            }
        }

        private void handleSupplicantStateChange(String str) {
            int iLastIndexOf = str.lastIndexOf("SSID=");
            String str2 = null;
            WifiSsid wifiSsidCreateFromAsciiEncoded = iLastIndexOf != -1 ? WifiSsid.createFromAsciiEncoded(str.substring(iLastIndexOf + 5)) : null;
            int i2 = -1;
            int i3 = -1;
            for (String str3 : str.split(" ")) {
                String[] strArrSplit = str3.split("=");
                if (strArrSplit.length == 2) {
                    if (strArrSplit[0].equals("BSSID")) {
                        str2 = strArrSplit[1];
                    } else {
                        try {
                            int i4 = Integer.parseInt(strArrSplit[1]);
                            if (strArrSplit[0].equals(Instrumentation.REPORT_KEY_IDENTIFIER)) {
                                i3 = i4;
                            } else if (strArrSplit[0].equals("state")) {
                                i2 = i4;
                            }
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
            }
            if (i2 == -1) {
                return;
            }
            SupplicantState supplicantState = SupplicantState.INVALID;
            for (SupplicantState supplicantState2 : SupplicantState.values()) {
                if (supplicantState2.ordinal() == i2) {
                    supplicantState = supplicantState2;
                    break;
                }
            }
            if (supplicantState == SupplicantState.INVALID) {
                Log.w(WifiMonitor.TAG, "Invalid supplicant state: " + i2);
            }
            notifySupplicantStateChange(i3, wifiSsidCreateFromAsciiEncoded, str2, supplicantState);
        }

        private void handleWpsFailEvent(String str) {
            Matcher matcher = Pattern.compile(WifiMonitor.WPS_FAIL_PATTERN).matcher(str);
            if (matcher.find()) {
                String strGroup = matcher.group(1);
                String strGroup2 = matcher.group(2);
                if (strGroup2 != null) {
                    int i2 = Integer.parseInt(strGroup2);
                    if (i2 == 1) {
                        m mVar = this.mStateMachine;
                        mVar.sendMessage(mVar.obtainMessage(WifiMonitor.WPS_FAIL_EVENT, 5, 0));
                        return;
                    } else if (i2 == 2) {
                        m mVar2 = this.mStateMachine;
                        mVar2.sendMessage(mVar2.obtainMessage(WifiMonitor.WPS_FAIL_EVENT, 4, 0));
                        return;
                    }
                }
                if (strGroup != null) {
                    int i3 = Integer.parseInt(strGroup);
                    if (i3 == 12) {
                        m mVar3 = this.mStateMachine;
                        mVar3.sendMessage(mVar3.obtainMessage(WifiMonitor.WPS_FAIL_EVENT, 3, 0));
                        return;
                    } else if (i3 == 18) {
                        m mVar4 = this.mStateMachine;
                        mVar4.sendMessage(mVar4.obtainMessage(WifiMonitor.WPS_FAIL_EVENT, 6, 0));
                        return;
                    }
                }
            }
            m mVar5 = this.mStateMachine;
            mVar5.sendMessage(mVar5.obtainMessage(WifiMonitor.WPS_FAIL_EVENT, 0, 0));
        }

        private WifiP2pService.P2pStatus p2pError(String str) {
            WifiP2pService.P2pStatus p2pStatus = WifiP2pService.P2pStatus.UNKNOWN;
            String[] strArrSplit = str.split(" ");
            if (strArrSplit.length < 2) {
                return p2pStatus;
            }
            String[] strArrSplit2 = strArrSplit[1].split("=");
            if (strArrSplit2.length != 2) {
                return p2pStatus;
            }
            if (strArrSplit2[1].equals("FREQ_CONFLICT")) {
                return WifiP2pService.P2pStatus.NO_COMMON_CHANNEL;
            }
            try {
                return WifiP2pService.P2pStatus.valueOf(Integer.parseInt(strArrSplit2[1]));
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
                return p2pStatus;
            }
        }

        public void handleEvent(int i2, String str) {
            if (i2 == 1) {
                handleNetworkStateChange(NetworkInfo.DetailedState.CONNECTED, str);
            } else if (i2 == 2) {
                handleNetworkStateChange(NetworkInfo.DetailedState.DISCONNECTED, str);
            } else {
                if (i2 != 4) {
                    return;
                }
                this.mStateMachine.sendMessage(WifiMonitor.SCAN_RESULTS_EVENT);
            }
        }

        public void notifyNetworkStateChange(NetworkInfo.DetailedState detailedState, String str, int i2) {
            if (detailedState == NetworkInfo.DetailedState.CONNECTED) {
                this.mStateMachine.sendMessage(this.mStateMachine.obtainMessage(WifiMonitor.NETWORK_CONNECTION_EVENT, i2, 0, str));
            } else {
                this.mStateMachine.sendMessage(this.mStateMachine.obtainMessage(WifiMonitor.NETWORK_DISCONNECTION_EVENT, i2, 0, str));
            }
        }

        public void notifySupplicantStateChange(int i2, WifiSsid wifiSsid, String str, SupplicantState supplicantState) {
            m mVar = this.mStateMachine;
            mVar.sendMessage(mVar.obtainMessage(WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT, new StateChangeResult(i2, wifiSsid, str, supplicantState)));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                String strWaitForEvent = this.mWifiNative.waitForEvent();
                WifiMonitor monitor = null;
                this.mStateMachine = null;
                if (strWaitForEvent.startsWith("IFNAME=")) {
                    int iIndexOf = strWaitForEvent.indexOf(32);
                    if (iIndexOf != -1) {
                        String strSubstring = strWaitForEvent.substring(7, iIndexOf);
                        WifiMonitor monitor2 = this.mWifiMonitorSingleton.getMonitor(strSubstring);
                        monitor = (monitor2 == null && strSubstring.startsWith("p2p-")) ? this.mWifiMonitorSingleton.getMonitor("p2p0") : monitor2;
                        strWaitForEvent = strWaitForEvent.substring(iIndexOf + 1);
                    }
                } else {
                    monitor = this.mWifiMonitorSingleton.getMonitor("p2p0");
                }
                if (monitor != null) {
                    if (monitor.mMonitoring) {
                        this.mStateMachine = monitor.mWifiStateMachine;
                    } else {
                        continue;
                    }
                }
                if (this.mStateMachine == null) {
                    Iterator it = this.mWifiMonitorSingleton.mIfaceMap.entrySet().iterator();
                    boolean z2 = false;
                    while (it.hasNext()) {
                        this.mStateMachine = ((WifiMonitor) ((Map.Entry) it.next()).getValue()).mWifiStateMachine;
                        if (dispatchEvent(strWaitForEvent)) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        this.mWifiMonitorSingleton.mConnected = false;
                        return;
                    }
                } else if (dispatchEvent(strWaitForEvent)) {
                    return;
                }
            }
        }
    }

    public WifiMonitor(m mVar, WifiNative wifiNative) {
        this.mWifiNative = wifiNative;
        String str = wifiNative.mInterfaceName;
        this.mInterfaceName = str;
        this.mWifiStateMachine = mVar;
        this.mMonitoring = false;
        WifiMonitorSingleton.getMonitor().registerInterfaceMonitor(str, this);
    }

    public void killSupplicant(boolean z2) {
        WifiMonitorSingleton.getMonitor().killSupplicant(z2);
    }

    public void startMonitoring() {
        WifiMonitorSingleton.getMonitor().startMonitoring(this.mInterfaceName);
    }

    public void stopMonitoring() {
        WifiMonitorSingleton.getMonitor().stopMonitoring(this.mInterfaceName);
    }

    public void stopSupplicant() {
        WifiMonitorSingleton.getMonitor().stopSupplicant();
    }

    public static class WifiMonitorSingleton {
        private static Object sSingletonLock = new Object();
        private static WifiMonitorSingleton sWifiMonitorSingleton;
        private WifiNative mWifiNative;
        private HashMap<String, WifiMonitor> mIfaceMap = new HashMap<>();
        private boolean mConnected = false;

        private WifiMonitorSingleton() {
        }

        public static WifiMonitorSingleton getMonitor() {
            synchronized (sSingletonLock) {
                if (sWifiMonitorSingleton == null) {
                    sWifiMonitorSingleton = new WifiMonitorSingleton();
                }
            }
            return sWifiMonitorSingleton;
        }

        public synchronized void killSupplicant(boolean z2) {
            WifiNative.killSupplicant(z2);
            this.mWifiNative.closeSupplicantConnection();
            this.mConnected = false;
            Iterator<Map.Entry<String, WifiMonitor>> it = this.mIfaceMap.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().mMonitoring = false;
            }
        }

        public synchronized void registerInterfaceMonitor(String str, WifiMonitor wifiMonitor) {
            this.mIfaceMap.put(str, wifiMonitor);
            if (this.mWifiNative == null) {
                this.mWifiNative = wifiMonitor.mWifiNative;
            }
        }

        public synchronized void startMonitoring(String str) {
            WifiMonitor wifiMonitor = this.mIfaceMap.get(str);
            if (wifiMonitor == null) {
                Log.e(WifiMonitor.TAG, "startMonitor called with unknown iface=" + str);
                return;
            }
            Log.d(WifiMonitor.TAG, "startMonitoring(" + str + ") with mConnected = " + this.mConnected);
            if (this.mConnected) {
                wifiMonitor.mMonitoring = true;
                wifiMonitor.mWifiStateMachine.sendMessage(WifiMonitor.SUP_CONNECTION_EVENT);
            } else {
                int i2 = 0;
                while (!this.mWifiNative.connectToSupplicant()) {
                    int i3 = i2 + 1;
                    if (i2 < 5) {
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException unused) {
                        }
                        i2 = i3;
                    } else {
                        this.mIfaceMap.remove(str);
                        wifiMonitor.mWifiStateMachine.sendMessage(WifiMonitor.SUP_DISCONNECTION_EVENT);
                        Log.e(WifiMonitor.TAG, "startMonitoring(" + str + ") failed!");
                    }
                }
                wifiMonitor.mMonitoring = true;
                wifiMonitor.mWifiStateMachine.sendMessage(WifiMonitor.SUP_CONNECTION_EVENT);
                new MonitorThread(this.mWifiNative, this).start();
                this.mConnected = true;
            }
        }

        public synchronized void stopMonitoring(String str) {
            WifiMonitor wifiMonitor = this.mIfaceMap.get(str);
            wifiMonitor.mMonitoring = false;
            wifiMonitor.mWifiStateMachine.sendMessage(WifiMonitor.SUP_DISCONNECTION_EVENT);
        }

        public synchronized void stopSupplicant() {
            this.mWifiNative.stopSupplicant();
        }

        public synchronized void unregisterInterfaceMonitor(String str) {
            this.mIfaceMap.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized WifiMonitor getMonitor(String str) {
            return this.mIfaceMap.get(str);
        }
    }
}
