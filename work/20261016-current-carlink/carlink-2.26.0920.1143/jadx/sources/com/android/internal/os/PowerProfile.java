package com.android.internal.os;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import com.android.internal.R;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class PowerProfile {
    private static final String ATTR_NAME = "name";
    public static final String POWER_AUDIO = "dsp.audio";
    public static final String POWER_BATTERY_CAPACITY = "battery.capacity";

    @Deprecated
    public static final String POWER_BLUETOOTH_ACTIVE = "bluetooth.active";

    @Deprecated
    public static final String POWER_BLUETOOTH_AT_CMD = "bluetooth.at";
    public static final String POWER_BLUETOOTH_CONTROLLER_IDLE = "bluetooth.controller.idle";
    public static final String POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE = "bluetooth.controller.voltage";
    public static final String POWER_BLUETOOTH_CONTROLLER_RX = "bluetooth.controller.rx";
    public static final String POWER_BLUETOOTH_CONTROLLER_TX = "bluetooth.controller.tx";

    @Deprecated
    public static final String POWER_BLUETOOTH_ON = "bluetooth.on";
    public static final String POWER_CAMERA = "camera.avg";

    @Deprecated
    public static final String POWER_CPU_ACTIVE = "cpu.active";
    public static final String POWER_CPU_AWAKE = "cpu.awake";
    private static final String POWER_CPU_CLUSTER_ACTIVE_PREFIX = "cpu.active.cluster";
    private static final String POWER_CPU_CLUSTER_CORE_COUNT = "cpu.clusters.cores";
    private static final String POWER_CPU_CLUSTER_SPEED_PREFIX = "cpu.speeds.cluster";
    public static final String POWER_CPU_IDLE = "cpu.idle";

    @Deprecated
    public static final String POWER_CPU_SPEEDS = "cpu.speeds";
    public static final String POWER_FLASHLIGHT = "camera.flashlight";
    public static final String POWER_GPS_ON = "gps.on";
    public static final String POWER_MEMORY = "memory.bandwidths";
    public static final String POWER_MODEM_CONTROLLER_IDLE = "modem.controller.idle";
    public static final String POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE = "modem.controller.voltage";
    public static final String POWER_MODEM_CONTROLLER_RX = "modem.controller.rx";
    public static final String POWER_MODEM_CONTROLLER_TX = "modem.controller.tx";
    public static final String POWER_NONE = "none";
    public static final String POWER_RADIO_ACTIVE = "radio.active";
    public static final String POWER_RADIO_ON = "radio.on";
    public static final String POWER_RADIO_SCANNING = "radio.scanning";
    public static final String POWER_SCREEN_FULL = "screen.full";
    public static final String POWER_SCREEN_ON = "screen.on";
    public static final String POWER_VIDEO = "dsp.video";
    public static final String POWER_WIFI_ACTIVE = "wifi.active";
    public static final String POWER_WIFI_BATCHED_SCAN = "wifi.batchedscan";
    public static final String POWER_WIFI_CONTROLLER_IDLE = "wifi.controller.idle";
    public static final String POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE = "wifi.controller.voltage";
    public static final String POWER_WIFI_CONTROLLER_RX = "wifi.controller.rx";
    public static final String POWER_WIFI_CONTROLLER_TX = "wifi.controller.tx";
    public static final String POWER_WIFI_CONTROLLER_TX_LEVELS = "wifi.controller.tx_levels";
    public static final String POWER_WIFI_ON = "wifi.on";
    public static final String POWER_WIFI_SCAN = "wifi.scan";
    private static final String TAG_ARRAY = "array";
    private static final String TAG_ARRAYITEM = "value";
    private static final String TAG_DEVICE = "device";
    private static final String TAG_ITEM = "item";
    private CpuClusterKey[] mCpuClusters;
    static final HashMap<String, Object> sPowerMap = new HashMap<>();
    private static final Object sLock = new Object();

    public static class CpuClusterKey {
        private final int numCpus;
        private final String powerKey;
        private final String timeKey;

        private CpuClusterKey(String str, String str2, int i2) {
            this.timeKey = str;
            this.powerKey = str2;
            this.numCpus = i2;
        }
    }

    public PowerProfile(Context context) {
        synchronized (sLock) {
            if (sPowerMap.size() == 0) {
                readPowerValuesFromXml(context);
            }
            initCpuClusters();
        }
    }

    private void initCpuClusters() {
        Object obj = sPowerMap.get(POWER_CPU_CLUSTER_CORE_COUNT);
        if (obj == null || !(obj instanceof Double[])) {
            this.mCpuClusters = new CpuClusterKey[]{new CpuClusterKey(str, str, 1)};
            String str = POWER_CPU_SPEEDS;
            String str2 = POWER_CPU_ACTIVE;
        } else {
            Double[] dArr = (Double[]) obj;
            this.mCpuClusters = new CpuClusterKey[dArr.length];
            for (int i2 = 0; i2 < dArr.length; i2++) {
                this.mCpuClusters[i2] = new CpuClusterKey(c.d(POWER_CPU_CLUSTER_SPEED_PREFIX, i2), c.d(POWER_CPU_CLUSTER_ACTIVE_PREFIX, i2), (int) Math.round(dArr[i2].doubleValue()));
            }
        }
    }

    private void readPowerValuesFromXml(Context context) {
        int integer;
        Resources resources = context.getResources();
        XmlResourceParser xml = resources.getXml(R.xml.power_profile);
        ArrayList arrayList = new ArrayList();
        try {
            try {
                try {
                    XmlUtils.beginDocument(xml, "device");
                    boolean z2 = false;
                    String attributeValue = null;
                    while (true) {
                        XmlUtils.nextElement(xml);
                        String name = xml.getName();
                        double dDoubleValue = 0.0d;
                        if (name == null) {
                            break;
                        }
                        if (z2 && !name.equals("value")) {
                            sPowerMap.put(attributeValue, arrayList.toArray(new Double[arrayList.size()]));
                            z2 = false;
                        }
                        if (name.equals(TAG_ARRAY)) {
                            arrayList.clear();
                            attributeValue = xml.getAttributeValue(null, "name");
                            z2 = true;
                        } else if (name.equals("item") || name.equals("value")) {
                            String attributeValue2 = !z2 ? xml.getAttributeValue(null, "name") : null;
                            if (xml.next() == 4) {
                                try {
                                    dDoubleValue = Double.valueOf(xml.getText()).doubleValue();
                                } catch (NumberFormatException unused) {
                                }
                                if (name.equals("item")) {
                                    sPowerMap.put(attributeValue2, Double.valueOf(dDoubleValue));
                                } else if (z2) {
                                    arrayList.add(Double.valueOf(dDoubleValue));
                                }
                            }
                        }
                    }
                    if (z2) {
                        sPowerMap.put(attributeValue, arrayList.toArray(new Double[arrayList.size()]));
                    }
                    xml.close();
                    int[] iArr = {R.integer.config_bluetooth_idle_cur_ma, R.integer.config_bluetooth_rx_cur_ma, R.integer.config_bluetooth_tx_cur_ma, R.integer.config_bluetooth_operating_voltage_mv, R.integer.config_wifi_idle_receive_cur_ma, R.integer.config_wifi_active_rx_cur_ma, R.integer.config_wifi_tx_cur_ma, R.integer.config_wifi_operating_voltage_mv};
                    String[] strArr = {POWER_BLUETOOTH_CONTROLLER_IDLE, POWER_BLUETOOTH_CONTROLLER_RX, POWER_BLUETOOTH_CONTROLLER_TX, POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE, POWER_WIFI_CONTROLLER_IDLE, POWER_WIFI_CONTROLLER_RX, POWER_WIFI_CONTROLLER_TX, POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE};
                    for (int i2 = 0; i2 < 8; i2++) {
                        String str = strArr[i2];
                        HashMap<String, Object> map = sPowerMap;
                        if ((!map.containsKey(str) || ((Double) map.get(str)).doubleValue() <= 0.0d) && (integer = resources.getInteger(iArr[i2])) > 0) {
                            map.put(str, Double.valueOf(integer));
                        }
                    }
                } catch (XmlPullParserException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (IOException e3) {
                throw new RuntimeException(e3);
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    public double getAveragePower(String str) {
        return getAveragePowerOrDefault(str, 0.0d);
    }

    public double getAveragePowerForCpu(int i2, int i3) {
        if (i2 < 0) {
            return 0.0d;
        }
        CpuClusterKey[] cpuClusterKeyArr = this.mCpuClusters;
        if (i2 < cpuClusterKeyArr.length) {
            return getAveragePower(cpuClusterKeyArr[i2].powerKey, i3);
        }
        return 0.0d;
    }

    public double getAveragePowerOrDefault(String str, double d2) {
        HashMap<String, Object> map = sPowerMap;
        if (!map.containsKey(str)) {
            return d2;
        }
        Object obj = map.get(str);
        return obj instanceof Double[] ? ((Double[]) obj)[0].doubleValue() : ((Double) map.get(str)).doubleValue();
    }

    public double getBatteryCapacity() {
        return getAveragePower(POWER_BATTERY_CAPACITY);
    }

    public int getNumCoresInCpuCluster(int i2) {
        return this.mCpuClusters[i2].numCpus;
    }

    public int getNumCpuClusters() {
        return this.mCpuClusters.length;
    }

    public int getNumElements(String str) {
        HashMap<String, Object> map = sPowerMap;
        if (!map.containsKey(str)) {
            return 0;
        }
        Object obj = map.get(str);
        if (obj instanceof Double[]) {
            return ((Double[]) obj).length;
        }
        return 1;
    }

    public int getNumSpeedStepsInCpuCluster(int i2) {
        Object obj = sPowerMap.get(this.mCpuClusters[i2].timeKey);
        if (obj == null || !(obj instanceof Double[])) {
            return 1;
        }
        return ((Double[]) obj).length;
    }

    public double getAveragePower(String str, int i2) {
        HashMap<String, Object> map = sPowerMap;
        if (!map.containsKey(str)) {
            return 0.0d;
        }
        Object obj = map.get(str);
        if (!(obj instanceof Double[])) {
            return ((Double) obj).doubleValue();
        }
        Double[] dArr = (Double[]) obj;
        if (dArr.length > i2 && i2 >= 0) {
            return dArr[i2].doubleValue();
        }
        if (i2 < 0 || dArr.length == 0) {
            return 0.0d;
        }
        return dArr[dArr.length - 1].doubleValue();
    }
}
