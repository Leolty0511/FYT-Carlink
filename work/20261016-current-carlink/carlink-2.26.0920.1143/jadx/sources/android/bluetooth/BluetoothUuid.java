package android.bluetooth;

import android.accessibilityservice.c;
import android.os.ParcelUuid;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashSet;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class BluetoothUuid {
    public static final ParcelUuid AdvAudioDist;
    public static final ParcelUuid AudioSink;
    public static final ParcelUuid AudioSource;
    public static final ParcelUuid AvrcpController;
    public static final ParcelUuid AvrcpTarget;
    public static final ParcelUuid BASE_UUID;
    public static final ParcelUuid BNEP;
    public static final ParcelUuid HSP;
    public static final ParcelUuid HSP_AG;
    public static final ParcelUuid Handsfree;
    public static final ParcelUuid Handsfree_AG;
    public static final ParcelUuid Hid;
    public static final ParcelUuid Hogp;
    public static final ParcelUuid MAP;
    public static final ParcelUuid MAS;
    public static final ParcelUuid MNS;
    public static final ParcelUuid NAP;
    public static final ParcelUuid ObexObjectPush;
    public static final ParcelUuid PANU;
    public static final ParcelUuid PBAP_PCE;
    public static final ParcelUuid PBAP_PSE;
    public static final ParcelUuid[] RESERVED_UUIDS;
    public static final ParcelUuid SAP;
    public static final int UUID_BYTES_128_BIT = 16;
    public static final int UUID_BYTES_16_BIT = 2;
    public static final int UUID_BYTES_32_BIT = 4;

    static {
        ParcelUuid parcelUuidFromString = ParcelUuid.fromString("0000110B-0000-1000-8000-00805F9B34FB");
        AudioSink = parcelUuidFromString;
        ParcelUuid parcelUuidFromString2 = ParcelUuid.fromString("0000110A-0000-1000-8000-00805F9B34FB");
        AudioSource = parcelUuidFromString2;
        ParcelUuid parcelUuidFromString3 = ParcelUuid.fromString("0000110D-0000-1000-8000-00805F9B34FB");
        AdvAudioDist = parcelUuidFromString3;
        ParcelUuid parcelUuidFromString4 = ParcelUuid.fromString("00001108-0000-1000-8000-00805F9B34FB");
        HSP = parcelUuidFromString4;
        HSP_AG = ParcelUuid.fromString("00001112-0000-1000-8000-00805F9B34FB");
        ParcelUuid parcelUuidFromString5 = ParcelUuid.fromString("0000111E-0000-1000-8000-00805F9B34FB");
        Handsfree = parcelUuidFromString5;
        Handsfree_AG = ParcelUuid.fromString("0000111F-0000-1000-8000-00805F9B34FB");
        ParcelUuid parcelUuidFromString6 = ParcelUuid.fromString("0000110E-0000-1000-8000-00805F9B34FB");
        AvrcpController = parcelUuidFromString6;
        ParcelUuid parcelUuidFromString7 = ParcelUuid.fromString("0000110C-0000-1000-8000-00805F9B34FB");
        AvrcpTarget = parcelUuidFromString7;
        ParcelUuid parcelUuidFromString8 = ParcelUuid.fromString("00001105-0000-1000-8000-00805f9b34fb");
        ObexObjectPush = parcelUuidFromString8;
        Hid = ParcelUuid.fromString("00001124-0000-1000-8000-00805f9b34fb");
        Hogp = ParcelUuid.fromString("00001812-0000-1000-8000-00805f9b34fb");
        ParcelUuid parcelUuidFromString9 = ParcelUuid.fromString("00001115-0000-1000-8000-00805F9B34FB");
        PANU = parcelUuidFromString9;
        ParcelUuid parcelUuidFromString10 = ParcelUuid.fromString("00001116-0000-1000-8000-00805F9B34FB");
        NAP = parcelUuidFromString10;
        BNEP = ParcelUuid.fromString("0000000f-0000-1000-8000-00805F9B34FB");
        PBAP_PCE = ParcelUuid.fromString("0000112e-0000-1000-8000-00805F9B34FB");
        PBAP_PSE = ParcelUuid.fromString("0000112f-0000-1000-8000-00805F9B34FB");
        ParcelUuid parcelUuidFromString11 = ParcelUuid.fromString("00001134-0000-1000-8000-00805F9B34FB");
        MAP = parcelUuidFromString11;
        ParcelUuid parcelUuidFromString12 = ParcelUuid.fromString("00001133-0000-1000-8000-00805F9B34FB");
        MNS = parcelUuidFromString12;
        ParcelUuid parcelUuidFromString13 = ParcelUuid.fromString("00001132-0000-1000-8000-00805F9B34FB");
        MAS = parcelUuidFromString13;
        ParcelUuid parcelUuidFromString14 = ParcelUuid.fromString("0000112D-0000-1000-8000-00805F9B34FB");
        SAP = parcelUuidFromString14;
        BASE_UUID = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
        RESERVED_UUIDS = new ParcelUuid[]{parcelUuidFromString, parcelUuidFromString2, parcelUuidFromString3, parcelUuidFromString4, parcelUuidFromString5, parcelUuidFromString6, parcelUuidFromString7, parcelUuidFromString8, parcelUuidFromString9, parcelUuidFromString10, parcelUuidFromString11, parcelUuidFromString12, parcelUuidFromString13, parcelUuidFromString14};
    }

    public static boolean containsAllUuids(ParcelUuid[] parcelUuidArr, ParcelUuid[] parcelUuidArr2) {
        if (parcelUuidArr == null && parcelUuidArr2 == null) {
            return true;
        }
        if (parcelUuidArr == null) {
            return parcelUuidArr2.length == 0;
        }
        if (parcelUuidArr2 == null) {
            return true;
        }
        HashSet hashSet = new HashSet(Arrays.asList(parcelUuidArr));
        for (ParcelUuid parcelUuid : parcelUuidArr2) {
            if (!hashSet.contains(parcelUuid)) {
                return false;
            }
        }
        return true;
    }

    public static boolean containsAnyUuid(ParcelUuid[] parcelUuidArr, ParcelUuid[] parcelUuidArr2) {
        if (parcelUuidArr == null && parcelUuidArr2 == null) {
            return true;
        }
        if (parcelUuidArr == null) {
            return parcelUuidArr2.length == 0;
        }
        if (parcelUuidArr2 == null) {
            return parcelUuidArr.length == 0;
        }
        HashSet hashSet = new HashSet(Arrays.asList(parcelUuidArr));
        for (ParcelUuid parcelUuid : parcelUuidArr2) {
            if (hashSet.contains(parcelUuid)) {
                return true;
            }
        }
        return false;
    }

    public static int getServiceIdentifierFromParcelUuid(ParcelUuid parcelUuid) {
        return (int) ((parcelUuid.getUuid().getMostSignificantBits() & 281470681743360L) >>> 32);
    }

    public static boolean is16BitUuid(ParcelUuid parcelUuid) {
        UUID uuid = parcelUuid.getUuid();
        return uuid.getLeastSignificantBits() == BASE_UUID.getUuid().getLeastSignificantBits() && (uuid.getMostSignificantBits() & (-281470681743361L)) == 4096;
    }

    public static boolean is32BitUuid(ParcelUuid parcelUuid) {
        UUID uuid = parcelUuid.getUuid();
        return uuid.getLeastSignificantBits() == BASE_UUID.getUuid().getLeastSignificantBits() && !is16BitUuid(parcelUuid) && (uuid.getMostSignificantBits() & 4294967295L) == 4096;
    }

    public static boolean isAdvAudioDist(ParcelUuid parcelUuid) {
        return parcelUuid.equals(AdvAudioDist);
    }

    public static boolean isAudioSink(ParcelUuid parcelUuid) {
        return parcelUuid.equals(AudioSink);
    }

    public static boolean isAudioSource(ParcelUuid parcelUuid) {
        return parcelUuid.equals(AudioSource);
    }

    public static boolean isAvrcpController(ParcelUuid parcelUuid) {
        return parcelUuid.equals(AvrcpController);
    }

    public static boolean isAvrcpTarget(ParcelUuid parcelUuid) {
        return parcelUuid.equals(AvrcpTarget);
    }

    public static boolean isBnep(ParcelUuid parcelUuid) {
        return parcelUuid.equals(BNEP);
    }

    public static boolean isHandsfree(ParcelUuid parcelUuid) {
        return parcelUuid.equals(Handsfree);
    }

    public static boolean isHeadset(ParcelUuid parcelUuid) {
        return parcelUuid.equals(HSP);
    }

    public static boolean isInputDevice(ParcelUuid parcelUuid) {
        return parcelUuid.equals(Hid);
    }

    public static boolean isMap(ParcelUuid parcelUuid) {
        return parcelUuid.equals(MAP);
    }

    public static boolean isMas(ParcelUuid parcelUuid) {
        return parcelUuid.equals(MAS);
    }

    public static boolean isMns(ParcelUuid parcelUuid) {
        return parcelUuid.equals(MNS);
    }

    public static boolean isNap(ParcelUuid parcelUuid) {
        return parcelUuid.equals(NAP);
    }

    public static boolean isPanu(ParcelUuid parcelUuid) {
        return parcelUuid.equals(PANU);
    }

    public static boolean isSap(ParcelUuid parcelUuid) {
        return parcelUuid.equals(SAP);
    }

    public static boolean isUuidPresent(ParcelUuid[] parcelUuidArr, ParcelUuid parcelUuid) {
        if ((parcelUuidArr == null || parcelUuidArr.length == 0) && parcelUuid == null) {
            return true;
        }
        if (parcelUuidArr == null) {
            return false;
        }
        for (ParcelUuid parcelUuid2 : parcelUuidArr) {
            if (parcelUuid2.equals(parcelUuid)) {
                return true;
            }
        }
        return false;
    }

    public static ParcelUuid parseUuidFrom(byte[] bArr) {
        long j2;
        if (bArr == null) {
            throw new IllegalArgumentException("uuidBytes cannot be null");
        }
        int length = bArr.length;
        if (length != 2 && length != 4 && length != 16) {
            throw new IllegalArgumentException(c.d("uuidBytes length invalid - ", length));
        }
        if (length == 16) {
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            return new ParcelUuid(new UUID(byteBufferOrder.getLong(8), byteBufferOrder.getLong(0)));
        }
        if (length == 2) {
            j2 = ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8));
        } else {
            j2 = ((long) ((bArr[3] & 255) << 24)) + ((long) (bArr[0] & 255)) + ((long) ((bArr[1] & 255) << 8)) + ((long) ((bArr[2] & 255) << 16));
        }
        ParcelUuid parcelUuid = BASE_UUID;
        return new ParcelUuid(new UUID(parcelUuid.getUuid().getMostSignificantBits() + (j2 << 32), parcelUuid.getUuid().getLeastSignificantBits()));
    }

    public static byte[] uuidToBytes(ParcelUuid parcelUuid) {
        if (parcelUuid == null) {
            throw new IllegalArgumentException("uuid cannot be null");
        }
        if (is16BitUuid(parcelUuid)) {
            int serviceIdentifierFromParcelUuid = getServiceIdentifierFromParcelUuid(parcelUuid);
            return new byte[]{(byte) (serviceIdentifierFromParcelUuid & 255), (byte) ((serviceIdentifierFromParcelUuid & 65280) >> 8)};
        }
        if (is32BitUuid(parcelUuid)) {
            int serviceIdentifierFromParcelUuid2 = getServiceIdentifierFromParcelUuid(parcelUuid);
            return new byte[]{(byte) (serviceIdentifierFromParcelUuid2 & 255), (byte) ((65280 & serviceIdentifierFromParcelUuid2) >> 8), (byte) ((16711680 & serviceIdentifierFromParcelUuid2) >> 16), (byte) ((serviceIdentifierFromParcelUuid2 & (-16777216)) >> 24)};
        }
        long mostSignificantBits = parcelUuid.getUuid().getMostSignificantBits();
        long leastSignificantBits = parcelUuid.getUuid().getLeastSignificantBits();
        byte[] bArr = new byte[16];
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putLong(8, mostSignificantBits);
        byteBufferOrder.putLong(0, leastSignificantBits);
        return bArr;
    }
}
