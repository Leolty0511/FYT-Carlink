package com.google.android.projection.sink.sensors;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.projection.sink.settings.Settings;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class SimpleObdSensor extends SensorCollectorBase {
    private static final boolean DBG = false;
    private static final float KPH_PER_MPS = 3.6f;
    private static final long OBD_REFRESH_PERIOD_MS = 1000;
    private static final int RESPONSE_TO_01 = 65;
    private static final UUID SELF_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    private static final String TAG = "SimpleObdSensor";
    private final Object mDataLock;
    private final String mDeviceName;
    private final Runnable mDiconnect;
    private final CountDownLatch mDiscoveryLatch;
    private final boolean mEnabled;
    private float mFuelLevel;
    private Handler mHandler;
    private final CountDownLatch mHandlerInitLatch;
    private boolean mHasFuelSensor;
    private boolean mHasRpmSensor;
    private boolean mHasSpeedSensor;
    private final Runnable mInitLink;
    private InputStream mInput;
    private final Thread mObdThread;
    private OutputStream mOutput;
    private final Runnable mRegularUpdate;
    private int mRpm;
    private BluetoothSocket mSocket;
    private int mSpeedKph;

    public SimpleObdSensor(Context context) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.mHandlerInitLatch = countDownLatch;
        this.mDiscoveryLatch = new CountDownLatch(1);
        this.mDataLock = new Object();
        this.mFuelLevel = Float.NaN;
        Thread thread = new Thread("OBD connection") { // from class: com.google.android.projection.sink.sensors.SimpleObdSensor.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Looper.prepare();
                SimpleObdSensor.this.mHandler = new Handler();
                SimpleObdSensor.this.mHandlerInitLatch.countDown();
                Looper.loop();
            }
        };
        this.mObdThread = thread;
        this.mInitLink = new Runnable() { // from class: com.google.android.projection.sink.sensors.SimpleObdSensor.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SimpleObdSensor.this.mSocket.connect();
                    SimpleObdSensor simpleObdSensor = SimpleObdSensor.this;
                    simpleObdSensor.mInput = simpleObdSensor.mSocket.getInputStream();
                    SimpleObdSensor simpleObdSensor2 = SimpleObdSensor.this;
                    simpleObdSensor2.mOutput = simpleObdSensor2.mSocket.getOutputStream();
                    Log.d(SimpleObdSensor.TAG, "Connected to OBD");
                    SimpleObdSensor.sendCommand(SimpleObdSensor.this.mOutput, "AT Z");
                    SimpleObdSensor.readResponse(SimpleObdSensor.this.mInput);
                    SimpleObdSensor.sendCommand(SimpleObdSensor.this.mOutput, "AT E0");
                    SimpleObdSensor.readResponse(SimpleObdSensor.this.mInput);
                    SimpleObdSensor.sendCommand(SimpleObdSensor.this.mOutput, "AT L0");
                    SimpleObdSensor.readResponse(SimpleObdSensor.this.mInput);
                    SimpleObdSensor.sendCommand(SimpleObdSensor.this.mOutput, "AT ST " + Integer.toHexString(50));
                    SimpleObdSensor.readResponse(SimpleObdSensor.this.mInput);
                    SimpleObdSensor.sendCommand(SimpleObdSensor.this.mOutput, "AT SP 0");
                    SimpleObdSensor.readResponse(SimpleObdSensor.this.mInput);
                    synchronized (SimpleObdSensor.this.mDataLock) {
                        SimpleObdSensor simpleObdSensor3 = SimpleObdSensor.this;
                        simpleObdSensor3.mHasSpeedSensor = simpleObdSensor3.querySpeed();
                        SimpleObdSensor simpleObdSensor4 = SimpleObdSensor.this;
                        simpleObdSensor4.mHasRpmSensor = simpleObdSensor4.queryRpm();
                        SimpleObdSensor simpleObdSensor5 = SimpleObdSensor.this;
                        simpleObdSensor5.mHasFuelSensor = simpleObdSensor5.queryFuel();
                        Log.d(SimpleObdSensor.TAG, "Sensor discovery completed");
                        SimpleObdSensor.this.mDiscoveryLatch.countDown();
                    }
                    SimpleObdSensor.this.mHandler.postDelayed(SimpleObdSensor.this.mRegularUpdate, 1000L);
                } catch (IOException e2) {
                    Log.e(SimpleObdSensor.TAG, "Can't connect", e2);
                }
            }
        };
        this.mRegularUpdate = new Runnable() { // from class: com.google.android.projection.sink.sensors.SimpleObdSensor.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    synchronized (SimpleObdSensor.this.mDataLock) {
                        if (SimpleObdSensor.this.mHasSpeedSensor) {
                            SimpleObdSensor.this.querySpeed();
                        }
                        if (SimpleObdSensor.this.mHasRpmSensor) {
                            SimpleObdSensor.this.queryRpm();
                        }
                        if (SimpleObdSensor.this.mHasFuelSensor) {
                            SimpleObdSensor.this.queryFuel();
                        }
                    }
                    SimpleObdSensor.this.mHandler.postDelayed(this, 1000L);
                } catch (IOException e2) {
                    Log.e(SimpleObdSensor.TAG, "Disconnect.", e2);
                }
            }
        };
        this.mDiconnect = new Runnable() { // from class: com.google.android.projection.sink.sensors.SimpleObdSensor.4
            @Override // java.lang.Runnable
            public void run() {
                SimpleObdSensor.this.disconnect();
            }
        };
        Settings settings = new Settings(context);
        boolean zIsObd2Enabled = settings.isObd2Enabled();
        this.mEnabled = zIsObd2Enabled;
        String obd2Device = settings.getObd2Device();
        this.mDeviceName = obd2Device;
        if (!zIsObd2Enabled || TextUtils.isEmpty(obd2Device)) {
            return;
        }
        thread.start();
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
            Log.e(TAG, "Can't start OBD thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnect() {
        InputStream inputStream = this.mInput;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            this.mInput = null;
        }
        OutputStream outputStream = this.mOutput;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused2) {
            }
            this.mOutput = null;
        }
        BluetoothSocket bluetoothSocket = this.mSocket;
        if (bluetoothSocket != null) {
            try {
                bluetoothSocket.close();
            } catch (IOException unused3) {
            }
            this.mSocket = null;
        }
    }

    private static byte[] parseResponse(String str) {
        String strReplaceAll = str.replaceAll(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER, "");
        if (strReplaceAll.contains("DATA") || strReplaceAll.contains("SEARCH") || strReplaceAll.contains("CONNECT")) {
            return null;
        }
        if (strReplaceAll.equals("OK")) {
            return new byte[0];
        }
        int length = strReplaceAll.length();
        if (length % 2 != 0) {
            throw new RuntimeException("protocol error");
        }
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) (Character.digit(strReplaceAll.charAt(i2 + 1), 16) + (Character.digit(strReplaceAll.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean queryFuel() throws IOException {
        sendCommand(this.mOutput, "01 2F");
        byte[] response = parseResponse(readResponse(this.mInput));
        if (response == null || response.length < 3 || response[0] != 65 || response[1] != 47) {
            return false;
        }
        this.mFuelLevel = (response[2] & 255) / 256.0f;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean queryRpm() throws IOException {
        sendCommand(this.mOutput, "01 0C");
        byte[] response = parseResponse(readResponse(this.mInput));
        if (response == null || response.length < 4 || response[0] != 65 || response[1] != 12) {
            return false;
        }
        this.mRpm = (((response[3] & 255) | (response[2] << 8)) & 65535) >> 2;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean querySpeed() throws IOException {
        sendCommand(this.mOutput, "01 0D");
        byte[] response = parseResponse(readResponse(this.mInput));
        if (response == null || response.length < 3 || response[0] != 65 || response[1] != 13) {
            return false;
        }
        this.mSpeedKph = response[2] & 255;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String readResponse(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            char c = (char) ((byte) inputStream.read());
            if (c == '>') {
                String strReplaceAll = sb.toString().trim().replaceAll("\r", "\n");
                return strReplaceAll.substring(strReplaceAll.lastIndexOf(10) + 1);
            }
            sb.append(c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendCommand(OutputStream outputStream, String str) throws IOException {
        outputStream.write((str + "\r").getBytes());
        outputStream.flush();
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void discoverSensorsImpl(Set<Integer> set) {
        this.mSocket = null;
        if (this.mEnabled && !TextUtils.isEmpty(this.mDeviceName)) {
            try {
                this.mSocket = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(this.mDeviceName).createRfcommSocketToServiceRecord(SELF_UUID);
                this.mHandler.post(this.mInitLink);
            } catch (IOException e2) {
                Log.e(TAG, "Can't start bluetooth connection.", e2);
            }
        }
        if (this.mSocket != null) {
            try {
                String str = TAG;
                Log.d(str, "Waiting for sensors discovery...");
                if (!this.mDiscoveryLatch.await(15L, TimeUnit.SECONDS)) {
                    Log.w(str, "Timed out while discovering OBD2 sensors.");
                    return;
                }
                synchronized (this.mDataLock) {
                    if (this.mHasSpeedSensor) {
                        set.add(3);
                    }
                    if (this.mHasRpmSensor) {
                        set.add(4);
                    }
                    if (this.mHasFuelSensor) {
                        set.add(6);
                    }
                }
            } catch (InterruptedException e3) {
                Log.e(TAG, "Can't discover OBD sensors.", e3);
            }
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void registerSensorsImpl() {
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public boolean sendUpdateImpl(SensorSinkWrapper sensorSinkWrapper, int i2) {
        synchronized (this.mDataLock) {
            try {
                if (i2 == 3) {
                    sensorSinkWrapper.reportSpeedData((int) (this.mSpeedKph / KPH_PER_MPS));
                    return true;
                }
                if (i2 == 4) {
                    sensorSinkWrapper.reportRpmData(this.mRpm);
                    return true;
                }
                if (i2 != 6) {
                    throw new RuntimeException();
                }
                float f2 = this.mFuelLevel;
                sensorSinkWrapper.reportFuelData((int) (100.0f * f2), 0, f2 <= 0.2f);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void shutdown() {
        Handler handler;
        if (this.mEnabled && (handler = this.mHandler) != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler.getLooper().quit();
            disconnect();
        }
        super.shutdown();
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void unregisterSensorsImpl() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(this.mDiconnect);
        }
    }
}
