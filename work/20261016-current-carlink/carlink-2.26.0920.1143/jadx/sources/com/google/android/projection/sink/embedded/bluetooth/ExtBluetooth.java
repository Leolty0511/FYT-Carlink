package com.google.android.projection.sink.embedded.bluetooth;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class ExtBluetooth {
    public static final String BTFILE = "/dev/auto_serial";
    static final int HEAD_LEN = 2;
    static final String TAG = "AHU.ExBT";
    private static char[] hex = "0123456789ABCDEF".toCharArray();
    static final String rec_bt_mac = "DB";
    static final String rec_bt_name = "MM";
    static final String rec_ph_UUID = "UU";
    static final String rec_ph_UUIDe = "UE";
    static final String rec_ph_UUIDs = "US";
    static final String rec_ph_connected = "IB";
    static final String rec_ph_disconed = "IA";
    static final String rec_ph_mac = "JH";
    static final String rec_ph_name = "SA";
    static final String rec_ph_p0 = "P0";
    static final String rec_ph_p1 = "P1";
    static final String rec_ph_p2 = "P2";
    static final String rec_ph_p3 = "P3";
    static final String rec_rf_aa = "ZB";
    static final String rec_rf_aaconed = "AA";
    static final String rec_rf_coned = "SV";
    static final String rec_rf_disconed = "SS";
    static final String rec_rf_rec = "SI";
    static final String rec_ver = "BV";
    static final String send_bt_mac = "AT#VE";
    static final String send_bt_name = "AT#MM";
    static final String send_ph_discon = "AT#CD";
    static final String send_ph_info = "AT#QI";
    static final String send_rf_aa = "AT#ZA";
    static final String send_rf_con = "AT#SP";
    static final String send_rf_discon = "AT#SH";
    static final String send_rf_send = "AT#SG";
    static final String send_ver = "AT#QV";
    FileInputStream input;
    BluetoothExplorer mExplorer;
    Handler mH;
    FileOutputStream output;
    volatile BluetoothDevice btDevice = null;
    String btaddr = "11:22:33:44:55:66";
    int state = 0;
    boolean read_serial = true;
    Pack pack = new Pack();
    final Runnable startRead = new Runnable() { // from class: com.google.android.projection.sink.embedded.bluetooth.ExtBluetooth.1
        @Override // java.lang.Runnable
        public void run() {
            ExtBluetooth.this.writechar(ExtBluetooth.send_ph_info);
        }
    };
    final int BUFF_SIZE = 1024;
    final byte[] rfbuf = new byte[1024];
    int rfbuf_cnt = 0;
    int rfpos = 0;

    public class InputS extends InputStream {
        public InputS() {
        }

        @Override // java.io.InputStream
        public int read() {
            return 0;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            byte[] bArr2 = new byte[i3];
            int i4 = ExtBluetooth.this.read(bArr2, i3);
            for (int i5 = 0; i5 < i4; i5++) {
                bArr[i2 + i5] = bArr2[i5];
            }
            return i4;
        }
    }

    public class OutputS extends OutputStream {
        public OutputS() {
        }

        @Override // java.io.OutputStream
        public void write(int i2) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            ExtBluetooth.this.write(bArr, bArr.length);
        }
    }

    public class Pack {
        public Integer len;
        public Byte type;
        byte[] header = {10, 10};
        byte[] tail = {10, 10};

        @SuppressLint({"UseSparseArrays"})
        SparseArray<Boolean> checkTail = new SparseArray<>();
        SparseArray<Boolean> checkHeader = new SparseArray<>();
        public byte[] data = new byte[512];
        Integer loaded = 0;

        public Pack() {
        }

        public void clear() {
            this.checkHeader.clear();
            this.checkTail.clear();
            this.len = null;
            this.loaded = 0;
            this.type = null;
        }

        public boolean loading(byte b2) {
            boolean zLoading;
            if (this.checkHeader.size() != this.header.length) {
                int size = this.checkHeader.size();
                if ((this.header[size] & 255) == (b2 & 255)) {
                    this.checkHeader.put(size, Boolean.TRUE);
                    return false;
                }
                if (this.checkHeader.size() <= 0) {
                    return false;
                }
                this.checkHeader.clear();
                return loading(b2);
            }
            int size2 = this.checkTail.size();
            if ((this.tail[size2] & 255) == (b2 & 255)) {
                if (this.loaded.intValue() != 0) {
                    this.checkTail.put(size2, Boolean.TRUE);
                    return this.checkTail.size() == this.tail.length;
                }
                this.checkHeader.clear();
                zLoading = loading(b2);
            } else {
                if (this.checkTail.size() == 0) {
                    byte[] bArr = this.data;
                    Integer num = this.loaded;
                    this.loaded = Integer.valueOf(num.intValue() + 1);
                    bArr[num.intValue()] = b2;
                    return false;
                }
                if (this.checkTail.size() <= 0) {
                    return false;
                }
                clear();
                zLoading = loading(b2);
            }
            return zLoading;
        }
    }

    public ExtBluetooth(BluetoothExplorer bluetoothExplorer) {
        this.mH = null;
        this.mExplorer = bluetoothExplorer;
        try {
            this.input = new FileInputStream(BTFILE);
            this.output = new FileOutputStream(BTFILE);
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        }
        startRead();
        Handler handler = new Handler(Looper.getMainLooper());
        this.mH = handler;
        handler.postDelayed(this.startRead, 1000L);
    }

    private void asyncWrite(final String str) {
        new Thread() { // from class: com.google.android.projection.sink.embedded.bluetooth.ExtBluetooth.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                ExtBluetooth.this.writechar(str);
            }
        }.start();
    }

    public static String getHexString(byte[] bArr, int i2) {
        StringBuilder sb = new StringBuilder();
        char[] cArr = {' ', ' '};
        for (int i3 = 0; i3 < i2; i3++) {
            byte b2 = bArr[i3];
            char[] cArr2 = hex;
            cArr[0] = cArr2[(b2 >> 4) & 15];
            cArr[1] = cArr2[b2 & 15];
            sb.append(cArr);
        }
        return sb.toString();
    }

    private void startRead() {
        new Thread() { // from class: com.google.android.projection.sink.embedded.bluetooth.ExtBluetooth.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (true) {
                    ExtBluetooth extBluetooth = ExtBluetooth.this;
                    if (!extBluetooth.read_serial) {
                        return;
                    }
                    byte[] bArr = new byte[128];
                    try {
                        int i2 = extBluetooth.input.read(bArr);
                        if (i2 > 0) {
                            StringBuffer stringBuffer = new StringBuffer();
                            for (int i3 = 0; i3 < i2; i3++) {
                                stringBuffer.append(String.format("%02X ", Byte.valueOf(bArr[i3])));
                            }
                            Log.e(ExtBluetooth.TAG, "----------------->> 00 msg: " + ((Object) stringBuffer));
                            for (int i4 = 0; i4 < i2; i4++) {
                                if (ExtBluetooth.this.pack.loading(bArr[i4])) {
                                    Pack pack = ExtBluetooth.this.pack;
                                    String str = new String(pack.data, 0, pack.loaded.intValue());
                                    Log.e(ExtBluetooth.TAG, "----------------->> msg: " + str);
                                    ExtBluetooth.this.parseBtInfo(str);
                                    ExtBluetooth.this.pack.clear();
                                }
                            }
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int writechar(String str) {
        byte[] bytes = (str + "\n\r").getBytes();
        StringBuilder sb = new StringBuilder(">>>");
        sb.append(str);
        Log.i(TAG, sb.toString());
        try {
            this.output.write(bytes);
            this.output.flush();
            return 0;
        } catch (IOException e2) {
            Log.i(TAG, Log.getStackTraceString(e2));
            return 0;
        }
    }

    public InputStream getInputStream() {
        return new InputS();
    }

    public OutputStream getOutputStream() {
        return new OutputS();
    }

    public BluetoothDevice getRemoteDevice() {
        return BluetoothAdapter.getDefaultAdapter().getRemoteDevice(this.btaddr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean parseBtInfo(String str) {
        if (str == null) {
            return true;
        }
        Log.e(TAG, "getinfo ".concat(str));
        if (str.length() < 2) {
            return false;
        }
        String strSubstring = str.substring(0, 2);
        String strSubstring2 = str.substring(2);
        strSubstring.getClass();
        switch (strSubstring) {
            case "AA":
                if (this.mExplorer != null) {
                    BluetoothDevice remoteDevice = getRemoteDevice();
                    Log.e(TAG, "000 =====>> rec_rf_aaconed   btDevice: " + this.btDevice + " new device: " + remoteDevice);
                    if (!remoteDevice.equals(this.btDevice)) {
                        this.mExplorer.exBtConnected(remoteDevice);
                        Log.e(TAG, " ===========>>>  android auto connected device " + this.btaddr);
                    }
                }
                return true;
            case "JH":
                StringBuilder sb = new StringBuilder(strSubstring2);
                if (strSubstring2.length() == 12) {
                    sb.insert(10, ':');
                    sb.insert(8, ':');
                    sb.insert(6, ':');
                    sb.insert(4, ':');
                    sb.insert(2, ':');
                    this.btaddr = sb.toString();
                    Log.i(TAG, "bt connected device " + this.btaddr);
                }
                return true;
            case "SS":
                Log.e(TAG, "000 =====>> rec_rf_disconed   RDA DEVICE DISCONECTED!!");
                if (this.btDevice != null) {
                    this.mExplorer.removeExBluetoothDevice(this.btDevice);
                }
                this.btDevice = null;
                synchronized (this.rfbuf) {
                    try {
                        this.rfbuf_cnt = 0;
                        this.rfbuf.notify();
                        break;
                    } catch (Exception unused) {
                    }
                    break;
                }
                return true;
            case "ZB":
                synchronized (this.rfbuf) {
                    int length = strSubstring2.length();
                    this.rfbuf_cnt = 0;
                    for (int i2 = 0; i2 < length - 1; i2 += 2) {
                        byte[] bArr = this.rfbuf;
                        int i3 = this.rfbuf_cnt;
                        this.rfbuf_cnt = i3 + 1;
                        bArr[i3] = (byte) ((Character.digit(strSubstring2.charAt(i2), 16) << 4) + Character.digit(strSubstring2.charAt(i2 + 1), 16));
                    }
                    this.rfbuf.notify();
                    break;
                }
                return true;
            default:
                return true;
        }
    }

    public int read(byte[] bArr, int i2) {
        synchronized (this.rfbuf) {
            do {
                int i3 = this.rfbuf_cnt;
                if (i3 != 0) {
                    int i4 = 0;
                    if (i3 > 0) {
                        int iMin = Math.min(i2, i3);
                        System.arraycopy(this.rfbuf, this.rfpos, bArr, 0, iMin);
                        int i5 = this.rfbuf_cnt - iMin;
                        this.rfbuf_cnt = i5;
                        this.rfpos += iMin;
                        if (i5 == 0) {
                            this.rfpos = 0;
                        }
                        i4 = iMin;
                    }
                    return i4;
                }
                try {
                    this.rfbuf.wait();
                } catch (InterruptedException e2) {
                    Log.i(TAG, Log.getStackTraceString(e2));
                }
            } while (this.btDevice != null);
            return -1;
        }
    }

    public void stop() {
        this.read_serial = false;
        try {
            this.input.close();
            this.output.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public int write(byte[] bArr, int i2) {
        String hexString = getHexString(bArr, i2);
        for (int i3 = 0; i3 < hexString.length() / 100; i3++) {
            StringBuilder sb = new StringBuilder(send_rf_aa);
            int i4 = i3 * 100;
            sb.append(hexString.substring(i4, i4 + 100));
            writechar(sb.toString());
        }
        writechar(send_rf_aa + hexString.substring(hexString.length() - (hexString.length() % 100)));
        return 1;
    }
}
