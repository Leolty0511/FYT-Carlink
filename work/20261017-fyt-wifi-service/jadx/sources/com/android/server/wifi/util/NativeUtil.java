package com.android.server.wifi.util;

import android.text.TextUtils;
import com.android.server.wifi.ByteBufferReader;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import libcore.util.HexEncoding;

/* JADX INFO: loaded from: classes.dex */
public class NativeUtil {
    public static final byte[] ANY_MAC_BYTES = {0, 0, 0, 0, 0, 0};
    private static final String ANY_MAC_STR = "any";
    private static final int MAC_LENGTH = 6;
    private static final int MAC_OUI_LENGTH = 3;
    private static final int MAC_STR_LENGTH = 17;
    private static final int SSID_BYTES_MAX_LEN = 32;

    public static ArrayList<Byte> stringToByteArrayList(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null string");
        }
        CharsetEncoder encoder = StandardCharsets.UTF_8.newEncoder();
        try {
            ByteBuffer encoded = encoder.encode(CharBuffer.wrap(str));
            byte[] byteArray = new byte[encoded.remaining()];
            encoded.get(byteArray);
            return byteArrayToArrayList(byteArray);
        } catch (CharacterCodingException cce) {
            throw new IllegalArgumentException("cannot be utf-8 encoded", cce);
        }
    }

    public static ArrayList<Byte> stringToByteArrayListForSsid(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null string");
        }
        ArrayList<Byte> byteArrayList = new ArrayList<>();
        for (byte b : str.getBytes(StandardCharsets.UTF_8)) {
            byteArrayList.add(new Byte(b));
        }
        return byteArrayList;
    }

    public static ArrayList<Byte> gbkStringToByteArrayList(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null string");
        }
        try {
            byte[] byteArray = str.getBytes(Charset.forName("GBK"));
            return byteArrayToArrayList(byteArray);
        } catch (Exception cce) {
            throw new IllegalArgumentException("cannot be gbk encoded", cce);
        }
    }

    public static String stringFromByteArrayList(ArrayList<Byte> byteArrayList) {
        if (byteArrayList == null) {
            throw new IllegalArgumentException("null byte array list");
        }
        byte[] byteArray = new byte[byteArrayList.size()];
        int i = 0;
        for (Byte b : byteArrayList) {
            byteArray[i] = b.byteValue();
            i++;
        }
        return new String(byteArray, StandardCharsets.UTF_8);
    }

    public static byte[] stringToByteArray(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null string");
        }
        return str.getBytes(StandardCharsets.UTF_8);
    }

    public static String stringFromByteArray(byte[] byteArray) {
        if (byteArray == null) {
            throw new IllegalArgumentException("null byte array");
        }
        return new String(byteArray);
    }

    public static byte[] macAddressToByteArray(String macStr) {
        if (TextUtils.isEmpty(macStr) || "any".equals(macStr)) {
            return ANY_MAC_BYTES;
        }
        String cleanMac = macStr.replace(":", "");
        if (cleanMac.length() != 12) {
            throw new IllegalArgumentException("invalid mac string length: " + cleanMac);
        }
        return HexEncoding.decode(cleanMac.toCharArray(), false);
    }

    public static String macAddressFromByteArray(byte[] macArray) {
        if (macArray == null) {
            throw new IllegalArgumentException("null mac bytes");
        }
        if (macArray.length != 6) {
            throw new IllegalArgumentException("invalid macArray length: " + macArray.length);
        }
        StringBuilder sb = new StringBuilder(17);
        for (int i = 0; i < macArray.length; i++) {
            if (i != 0) {
                sb.append(":");
            }
            sb.append(new String(HexEncoding.encode(macArray, i, 1)));
        }
        return sb.toString().toLowerCase();
    }

    public static byte[] macAddressOuiToByteArray(String macStr) {
        if (macStr == null) {
            throw new IllegalArgumentException("null mac string");
        }
        String cleanMac = macStr.replace(":", "");
        if (cleanMac.length() != 6) {
            throw new IllegalArgumentException("invalid mac oui string length: " + cleanMac);
        }
        return HexEncoding.decode(cleanMac.toCharArray(), false);
    }

    public static Long macAddressToLong(byte[] macArray) {
        if (macArray == null) {
            throw new IllegalArgumentException("null mac bytes");
        }
        if (macArray.length != 6) {
            throw new IllegalArgumentException("invalid macArray length: " + macArray.length);
        }
        try {
            return Long.valueOf(ByteBufferReader.readInteger(ByteBuffer.wrap(macArray), ByteOrder.BIG_ENDIAN, macArray.length));
        } catch (IllegalArgumentException | BufferUnderflowException e) {
            throw new IllegalArgumentException("invalid macArray");
        }
    }

    public static String removeEnclosingQuotes(String quotedStr) {
        int length = quotedStr.length();
        if (length >= 2 && quotedStr.charAt(0) == '\"' && quotedStr.charAt(length - 1) == '\"') {
            return quotedStr.substring(1, length - 1);
        }
        return quotedStr;
    }

    public static String addEnclosingQuotes(String str) {
        return "\"" + str + "\"";
    }

    public static ArrayList<Byte> hexOrQuotedStringToBytes(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null string");
        }
        int length = str.length();
        if (length > 1 && str.charAt(0) == '\"' && str.charAt(length - 1) == '\"') {
            String str2 = str.substring(1, str.length() - 1);
            ArrayList<Byte> ssidBytes = stringToByteArrayList(str2);
            if (ssidBytes.size() > 32) {
                return gbkStringToByteArrayList(str2);
            }
            return ssidBytes;
        }
        return byteArrayToArrayList(hexStringToByteArray(str));
    }

    public static String bytesToHexOrQuotedString(ArrayList<Byte> bytes) {
        if (bytes == null) {
            throw new IllegalArgumentException("null ssid bytes");
        }
        byte[] byteArray = byteArrayFromArrayList(bytes);
        if (!bytes.contains((byte) 0)) {
            CharsetDecoder decoder = StandardCharsets.UTF_8.newDecoder();
            try {
                CharBuffer decoded = decoder.decode(ByteBuffer.wrap(byteArray));
                return "\"" + decoded.toString() + "\"";
            } catch (CharacterCodingException e) {
            }
        }
        return hexStringFromByteArray(byteArray);
    }

    public static ArrayList<Byte> decodeSsid(String ssidStr) {
        ArrayList<Byte> ssidBytes = hexOrQuotedStringToBytes(ssidStr);
        if (ssidBytes.size() > 32) {
            throw new IllegalArgumentException("ssid bytes size out of range: " + ssidBytes.size());
        }
        return ssidBytes;
    }

    public static String encodeSsid(ArrayList<Byte> ssidBytes) {
        if (ssidBytes.size() > 32) {
            throw new IllegalArgumentException("ssid bytes size out of range: " + ssidBytes.size());
        }
        return bytesToHexOrQuotedString(ssidBytes);
    }

    public static ArrayList<Byte> byteArrayToArrayList(byte[] bytes) {
        ArrayList<Byte> byteList = new ArrayList<>();
        for (byte b : bytes) {
            Byte b2 = Byte.valueOf(b);
            byteList.add(b2);
        }
        return byteList;
    }

    public static byte[] byteArrayFromArrayList(ArrayList<Byte> bytes) {
        byte[] byteArray = new byte[bytes.size()];
        int i = 0;
        for (Byte b : bytes) {
            byteArray[i] = b.byteValue();
            i++;
        }
        return byteArray;
    }

    public static byte[] hexStringToByteArray(String hexStr) {
        if (hexStr == null) {
            throw new IllegalArgumentException("null hex string");
        }
        return HexEncoding.decode(hexStr.toCharArray(), false);
    }

    public static String hexStringFromByteArray(byte[] bytes) {
        if (bytes == null) {
            throw new IllegalArgumentException("null hex bytes");
        }
        return new String(HexEncoding.encode(bytes)).toLowerCase();
    }

    public static String wpsDevTypeStringFromByteArray(byte[] devType) {
        int x = ((devType[0] & 255) << 8) | (devType[1] & 255);
        String y = new String(HexEncoding.encode(Arrays.copyOfRange(devType, 2, 6)));
        int z = ((devType[6] & 255) << 8) | (devType[7] & 255);
        return String.format("%d-%s-%d", Integer.valueOf(x), y, Integer.valueOf(z));
    }
}
