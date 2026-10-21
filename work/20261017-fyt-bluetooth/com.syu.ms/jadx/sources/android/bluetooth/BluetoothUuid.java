package android.bluetooth;

import android.os.ParcelUuid;
import android.os.Trace;
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
    public static final ParcelUuid PBAP_PSE;
    public static final ParcelUuid[] RESERVED_UUIDS;

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
        PBAP_PSE = ParcelUuid.fromString("0000112f-0000-1000-8000-00805F9B34FB");
        ParcelUuid parcelUuidFromString11 = ParcelUuid.fromString("00001134-0000-1000-8000-00805F9B34FB");
        MAP = parcelUuidFromString11;
        ParcelUuid parcelUuidFromString12 = ParcelUuid.fromString("00001133-0000-1000-8000-00805F9B34FB");
        MNS = parcelUuidFromString12;
        ParcelUuid parcelUuidFromString13 = ParcelUuid.fromString("00001132-0000-1000-8000-00805F9B34FB");
        MAS = parcelUuidFromString13;
        BASE_UUID = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
        RESERVED_UUIDS = new ParcelUuid[]{parcelUuidFromString, parcelUuidFromString2, parcelUuidFromString3, parcelUuidFromString4, parcelUuidFromString5, parcelUuidFromString6, parcelUuidFromString7, parcelUuidFromString8, parcelUuidFromString9, parcelUuidFromString10, parcelUuidFromString11, parcelUuidFromString12, parcelUuidFromString13};
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

    public static boolean isShortUuid(ParcelUuid parcelUuid) {
        UUID uuid = parcelUuid.getUuid();
        return uuid.getLeastSignificantBits() == BASE_UUID.getUuid().getLeastSignificantBits() && (uuid.getMostSignificantBits() & (-281470681743361L)) == Trace.TRACE_TAG_APP;
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
}
