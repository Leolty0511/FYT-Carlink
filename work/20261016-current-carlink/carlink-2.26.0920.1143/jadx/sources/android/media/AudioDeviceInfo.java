package android.media;

import android.os.Build;
import android.util.SparseIntArray;
import java.util.Iterator;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class AudioDeviceInfo {
    private static final SparseIntArray EXT_TO_INT_DEVICE_MAPPING;
    private static final SparseIntArray INT_TO_EXT_DEVICE_MAPPING;
    public static final int TYPE_AUX_LINE = 19;
    public static final int TYPE_BLUETOOTH_A2DP = 8;
    public static final int TYPE_BLUETOOTH_SCO = 7;
    public static final int TYPE_BUILTIN_EARPIECE = 1;
    public static final int TYPE_BUILTIN_MIC = 15;
    public static final int TYPE_BUILTIN_SPEAKER = 2;
    public static final int TYPE_BUS = 21;
    public static final int TYPE_DOCK = 13;
    public static final int TYPE_FM = 14;
    public static final int TYPE_FM_TUNER = 16;
    public static final int TYPE_HDMI = 9;
    public static final int TYPE_HDMI_ARC = 10;
    public static final int TYPE_IP = 20;
    public static final int TYPE_LINE_ANALOG = 5;
    public static final int TYPE_LINE_DIGITAL = 6;
    public static final int TYPE_TELEPHONY = 18;
    public static final int TYPE_TV_TUNER = 17;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_USB_ACCESSORY = 12;
    public static final int TYPE_USB_DEVICE = 11;
    public static final int TYPE_USB_HEADSET = 22;
    public static final int TYPE_WIRED_HEADPHONES = 4;
    public static final int TYPE_WIRED_HEADSET = 3;
    private final AudioDevicePort mPort;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        INT_TO_EXT_DEVICE_MAPPING = sparseIntArray;
        sparseIntArray.put(1, 1);
        sparseIntArray.put(2, 2);
        sparseIntArray.put(4, 3);
        sparseIntArray.put(8, 4);
        sparseIntArray.put(16, 7);
        sparseIntArray.put(32, 7);
        sparseIntArray.put(64, 7);
        sparseIntArray.put(128, 8);
        sparseIntArray.put(256, 8);
        sparseIntArray.put(512, 8);
        sparseIntArray.put(1024, 9);
        sparseIntArray.put(2048, 13);
        sparseIntArray.put(4096, 13);
        sparseIntArray.put(8192, 12);
        sparseIntArray.put(16384, 11);
        sparseIntArray.put(67108864, 22);
        sparseIntArray.put(65536, 18);
        sparseIntArray.put(131072, 5);
        sparseIntArray.put(262144, 10);
        sparseIntArray.put(524288, 6);
        sparseIntArray.put(1048576, 14);
        sparseIntArray.put(2097152, 19);
        sparseIntArray.put(8388608, 20);
        sparseIntArray.put(16777216, 21);
        sparseIntArray.put(-2147483644, 15);
        sparseIntArray.put(-2147483640, 7);
        sparseIntArray.put(-2147483632, 3);
        sparseIntArray.put(-2147483616, 9);
        sparseIntArray.put(-2147483584, 18);
        sparseIntArray.put(-2147483520, 15);
        sparseIntArray.put(-2147483136, 13);
        sparseIntArray.put(-2147482624, 13);
        sparseIntArray.put(-2147481600, 12);
        sparseIntArray.put(-2147479552, 11);
        sparseIntArray.put(AudioSystem.DEVICE_IN_USB_HEADSET, 22);
        sparseIntArray.put(-2147475456, 16);
        sparseIntArray.put(-2147467264, 17);
        sparseIntArray.put(-2147450880, 5);
        sparseIntArray.put(-2147418112, 6);
        sparseIntArray.put(AudioSystem.DEVICE_IN_BLUETOOTH_A2DP, 8);
        sparseIntArray.put(AudioSystem.DEVICE_IN_IP, 20);
        sparseIntArray.put(AudioSystem.DEVICE_IN_BUS, 21);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        EXT_TO_INT_DEVICE_MAPPING = sparseIntArray2;
        sparseIntArray2.put(1, 1);
        sparseIntArray2.put(2, 2);
        sparseIntArray2.put(3, 4);
        sparseIntArray2.put(4, 8);
        sparseIntArray2.put(5, 131072);
        sparseIntArray2.put(6, 524288);
        sparseIntArray2.put(7, 16);
        sparseIntArray2.put(8, 128);
        sparseIntArray2.put(9, 1024);
        sparseIntArray2.put(10, 262144);
        sparseIntArray2.put(11, 16384);
        sparseIntArray2.put(22, 67108864);
        sparseIntArray2.put(12, 8192);
        sparseIntArray2.put(13, 2048);
        sparseIntArray2.put(14, 1048576);
        sparseIntArray2.put(15, -2147483644);
        sparseIntArray2.put(16, -2147475456);
        sparseIntArray2.put(17, -2147467264);
        sparseIntArray2.put(18, 65536);
        sparseIntArray2.put(19, 2097152);
        sparseIntArray2.put(20, 8388608);
        sparseIntArray2.put(21, 16777216);
    }

    public AudioDeviceInfo(AudioDevicePort audioDevicePort) {
        this.mPort = audioDevicePort;
    }

    public static int convertDeviceTypeToInternalDevice(int i2) {
        return EXT_TO_INT_DEVICE_MAPPING.get(i2, 0);
    }

    public static int convertInternalDeviceToDeviceType(int i2) {
        return INT_TO_EXT_DEVICE_MAPPING.get(i2, 0);
    }

    public String getAddress() {
        return this.mPort.address();
    }

    public int[] getChannelCounts() {
        TreeSet treeSet = new TreeSet();
        int i2 = 0;
        for (int i3 : getChannelMasks()) {
            treeSet.add(Integer.valueOf(isSink() ? AudioFormat.channelCountFromOutChannelMask(i3) : AudioFormat.channelCountFromInChannelMask(i3)));
        }
        for (int i4 : getChannelIndexMasks()) {
            treeSet.add(Integer.valueOf(Integer.bitCount(i4)));
        }
        int[] iArr = new int[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            iArr[i2] = ((Integer) it.next()).intValue();
            i2++;
        }
        return iArr;
    }

    public int[] getChannelIndexMasks() {
        return this.mPort.channelIndexMasks();
    }

    public int[] getChannelMasks() {
        return this.mPort.channelMasks();
    }

    public int[] getEncodings() {
        return AudioFormat.filterPublicFormats(this.mPort.formats());
    }

    public int getId() {
        return this.mPort.handle().id();
    }

    public CharSequence getProductName() {
        String strName = this.mPort.name();
        return strName.length() != 0 ? strName : Build.MODEL;
    }

    public int[] getSampleRates() {
        return this.mPort.samplingRates();
    }

    public int getType() {
        return INT_TO_EXT_DEVICE_MAPPING.get(this.mPort.type(), 0);
    }

    public boolean isSink() {
        return this.mPort.role() == 2;
    }

    public boolean isSource() {
        return this.mPort.role() == 1;
    }
}
