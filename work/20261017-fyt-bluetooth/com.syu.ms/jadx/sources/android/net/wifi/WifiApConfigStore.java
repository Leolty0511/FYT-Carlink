package android.net.wifi;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import u.b;
import u.l;
import u.m;

/* JADX INFO: loaded from: classes.dex */
class WifiApConfigStore extends m {
    private static final String AP_CONFIG_FILE = Environment.getDataDirectory() + "/misc/wifi/softap.conf";
    private static final int AP_CONFIG_FILE_VERSION = 1;
    private static final String TAG = "WifiApConfigStore";
    private l mActiveState;
    private Context mContext;
    private l mDefaultState;
    private l mInactiveState;
    private b mReplyChannel;
    private WifiConfiguration mWifiApConfig;

    public class ActiveState extends l {
        public ActiveState() {
        }

        @Override // u.l
        public void enter() {
            new Thread(new Runnable() { // from class: android.net.wifi.WifiApConfigStore.ActiveState.1
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    WifiApConfigStore wifiApConfigStore = WifiApConfigStore.this;
                    wifiApConfigStore.writeApConfiguration(wifiApConfigStore.mWifiApConfig);
                    WifiApConfigStore.this.sendMessage(WifiStateMachine.CMD_SET_AP_CONFIG_COMPLETED);
                }
            }).start();
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_SET_AP_CONFIG /* 131097 */:
                    WifiApConfigStore.this.deferMessage(message);
                    return true;
                case WifiStateMachine.CMD_SET_AP_CONFIG_COMPLETED /* 131098 */:
                    WifiApConfigStore wifiApConfigStore = WifiApConfigStore.this;
                    wifiApConfigStore.transitionTo(wifiApConfigStore.mInactiveState);
                    return true;
                default:
                    return false;
            }
        }
    }

    public class DefaultState extends l {
        public DefaultState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_SET_AP_CONFIG /* 131097 */:
                case WifiStateMachine.CMD_SET_AP_CONFIG_COMPLETED /* 131098 */:
                    Log.e(WifiApConfigStore.TAG, "Unexpected message: " + message);
                    break;
                case WifiStateMachine.CMD_REQUEST_AP_CONFIG /* 131099 */:
                    WifiApConfigStore.this.mReplyChannel.i(message, WifiStateMachine.CMD_RESPONSE_AP_CONFIG, WifiApConfigStore.this.mWifiApConfig);
                    break;
                default:
                    Log.e(WifiApConfigStore.TAG, "Failed to handle " + message);
                    break;
            }
            return true;
        }
    }

    public class InactiveState extends l {
        public InactiveState() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            if (message.what != 131097) {
                return false;
            }
            WifiApConfigStore.this.mWifiApConfig = (WifiConfiguration) message.obj;
            WifiApConfigStore wifiApConfigStore = WifiApConfigStore.this;
            wifiApConfigStore.transitionTo(wifiApConfigStore.mActiveState);
            return true;
        }
    }

    public WifiApConfigStore(Context context, Handler handler) {
        super(TAG, handler.getLooper());
        this.mDefaultState = new DefaultState();
        this.mInactiveState = new InactiveState();
        this.mActiveState = new ActiveState();
        this.mWifiApConfig = null;
        this.mReplyChannel = new b();
        this.mContext = context;
        addState(this.mDefaultState);
        addState(this.mInactiveState, this.mDefaultState);
        addState(this.mActiveState, this.mDefaultState);
        setInitialState(this.mInactiveState);
    }

    public static WifiApConfigStore makeWifiApConfigStore(Context context, Handler handler) {
        WifiApConfigStore wifiApConfigStore = new WifiApConfigStore(context, handler);
        wifiApConfigStore.start();
        return wifiApConfigStore;
    }

    private void setDefaultApConfiguration() {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = this.mContext.getString(17040441);
        wifiConfiguration.allowedKeyManagement.set(4);
        String string = UUID.randomUUID().toString();
        wifiConfiguration.preSharedKey = string.substring(0, 8) + string.substring(9, 13);
        sendMessage(WifiStateMachine.CMD_SET_AP_CONFIG, wifiConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public void writeApConfiguration(WifiConfiguration wifiConfiguration) throws Throwable {
        ?? r1 = 0;
        DataOutputStream dataOutputStream = null;
        try {
            try {
                try {
                    DataOutputStream dataOutputStream2 = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(AP_CONFIG_FILE)));
                    try {
                        dataOutputStream2.writeInt(1);
                        dataOutputStream2.writeUTF(wifiConfiguration.SSID);
                        int authType = wifiConfiguration.getAuthType();
                        dataOutputStream2.writeInt(authType);
                        if (authType != 0) {
                            dataOutputStream2.writeUTF(wifiConfiguration.preSharedKey);
                        }
                        dataOutputStream2.close();
                        r1 = authType;
                    } catch (IOException e2) {
                        e = e2;
                        dataOutputStream = dataOutputStream2;
                        Log.e(TAG, "Error writing hotspot configuration" + e);
                        r1 = dataOutputStream;
                        if (dataOutputStream != null) {
                            dataOutputStream.close();
                            r1 = dataOutputStream;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r1 = dataOutputStream2;
                        if (r1 != 0) {
                            try {
                                r1.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (IOException unused2) {
        }
    }

    public Messenger getMessenger() {
        return new Messenger(getHandler());
    }

    public void loadApConfiguration() throws Throwable {
        DataInputStream dataInputStream;
        Throwable th;
        DataInputStream dataInputStream2 = null;
        try {
            try {
                try {
                    WifiConfiguration wifiConfiguration = new WifiConfiguration();
                    dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(AP_CONFIG_FILE)));
                    try {
                        if (dataInputStream.readInt() != 1) {
                            Log.e(TAG, "Bad version on hotspot configuration file, set defaults");
                            setDefaultApConfiguration();
                            try {
                                dataInputStream.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        wifiConfiguration.SSID = dataInputStream.readUTF();
                        int i2 = dataInputStream.readInt();
                        wifiConfiguration.allowedKeyManagement.set(i2);
                        if (i2 != 0) {
                            wifiConfiguration.preSharedKey = dataInputStream.readUTF();
                        }
                        this.mWifiApConfig = wifiConfiguration;
                        dataInputStream.close();
                    } catch (IOException unused2) {
                        dataInputStream2 = dataInputStream;
                        setDefaultApConfiguration();
                        if (dataInputStream2 == null) {
                        } else {
                            dataInputStream2.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (dataInputStream != null) {
                            try {
                                dataInputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused4) {
                }
            } catch (IOException unused5) {
            }
        } catch (Throwable th3) {
            dataInputStream = dataInputStream2;
            th = th3;
        }
    }
}
