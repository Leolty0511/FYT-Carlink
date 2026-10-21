package com.android.server.wifi.util;

import android.net.wifi.WifiConfiguration;
import android.telephony.ImsiEncryptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.CarrierNetworkConfig;
import com.android.server.wifi.WifiNative;
import com.android.server.wifi.hotspot2.anqp.Constants;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.HashMap;
import javax.annotation.Nonnull;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public class TelephonyUtil {
    public static final String ANONYMOUS_IDENTITY = "anonymous";
    public static final int CARRIER_INVALID_TYPE = -1;
    public static final int CARRIER_MNO_TYPE = 0;
    public static final int CARRIER_MVNO_TYPE = 1;
    public static final String DEFAULT_EAP_PREFIX = "\u0000";
    private static final HashMap<Integer, String> EAP_METHOD_PREFIX = new HashMap<>();
    private static final String IMSI_CIPHER_TRANSFORMATION = "RSA/ECB/OAEPwithSHA-256andMGF1Padding";
    private static final int KC_LEN = 8;
    private static final int SRES_LEN = 4;
    private static final int START_KC_POS = 4;
    private static final int START_SRES_POS = 0;
    public static final String TAG = "TelephonyUtil";
    public static final String THREE_GPP_NAI_REALM_FORMAT = "wlan.mnc%s.mcc%s.3gppnetwork.org";

    static {
        EAP_METHOD_PREFIX.put(5, "0");
        EAP_METHOD_PREFIX.put(4, "1");
        EAP_METHOD_PREFIX.put(6, "6");
    }

    public static Pair<String, String> getSimIdentity(TelephonyManager tm, TelephonyUtil telephonyUtil, WifiConfiguration config, CarrierNetworkConfig carrierNetworkConfig) {
        if (tm == null) {
            Log.e(TAG, "No valid TelephonyManager");
            return null;
        }
        TelephonyManager defaultDataTm = tm.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId());
        if (carrierNetworkConfig == null) {
            Log.e(TAG, "No valid CarrierNetworkConfig");
            return null;
        }
        int subId = SubscriptionManager.getSubId(config.enterpriseConfig.getSimNum())[0];
        String imsi = tm.getSubscriberId(subId);
        String mccMnc = "";
        if (tm.getSimState(config.enterpriseConfig.getSimNum()) == 5) {
            mccMnc = tm.getSimOperator(subId);
        }
        String identity = buildIdentity(getSimMethodForConfig(config), imsi, mccMnc, false);
        if (identity == null) {
            Log.e(TAG, "Failed to build the identity");
            return null;
        }
        try {
            ImsiEncryptionInfo imsiEncryptionInfo = defaultDataTm.getCarrierInfoForImsiEncryption(2);
            if (imsiEncryptionInfo == null) {
                return Pair.create(identity, "");
            }
            String encryptedIdentity = buildEncryptedIdentity(telephonyUtil, identity, imsiEncryptionInfo);
            if (encryptedIdentity == null) {
                Log.e(TAG, "failed to encrypt the identity");
                return null;
            }
            return Pair.create(identity, encryptedIdentity);
        } catch (RuntimeException e) {
            Log.e(TAG, "Failed to get imsi encryption info: " + e.getMessage());
            return null;
        }
    }

    public static String getAnonymousIdentityWith3GppRealm(@Nonnull TelephonyManager tm) {
        String mccMnc;
        if (tm == null) {
            return null;
        }
        TelephonyManager defaultDataTm = tm.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId());
        if (defaultDataTm.getSimState() != 5 || (mccMnc = defaultDataTm.getSimOperator()) == null || mccMnc.isEmpty()) {
            return null;
        }
        String mcc = mccMnc.substring(0, 3);
        String mnc = mccMnc.substring(3);
        if (mnc.length() == 2) {
            mnc = "0" + mnc;
        }
        String realm = String.format(THREE_GPP_NAI_REALM_FORMAT, mnc, mcc);
        return "anonymous@" + realm;
    }

    @VisibleForTesting
    public String encryptDataUsingPublicKey(PublicKey key, byte[] data, int encodingFlag) {
        try {
            Cipher cipher = Cipher.getInstance(IMSI_CIPHER_TRANSFORMATION);
            cipher.init(1, key);
            byte[] encryptedBytes = cipher.doFinal(data);
            return Base64.encodeToString(encryptedBytes, 0, encryptedBytes.length, encodingFlag);
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            Log.e(TAG, "Encryption failed: " + e.getMessage());
            return null;
        }
    }

    private static String buildEncryptedIdentity(TelephonyUtil telephonyUtil, String identity, ImsiEncryptionInfo imsiEncryptionInfo) {
        if (imsiEncryptionInfo == null) {
            Log.e(TAG, "imsiEncryptionInfo is not valid");
            return null;
        }
        if (identity == null) {
            Log.e(TAG, "identity is not valid");
            return null;
        }
        String encryptedIdentity = telephonyUtil.encryptDataUsingPublicKey(imsiEncryptionInfo.getPublicKey(), identity.getBytes(), 2);
        if (encryptedIdentity == null) {
            Log.e(TAG, "Failed to encrypt IMSI");
            return null;
        }
        String encryptedIdentity2 = DEFAULT_EAP_PREFIX + encryptedIdentity;
        if (imsiEncryptionInfo.getKeyIdentifier() != null) {
            return encryptedIdentity2 + "," + imsiEncryptionInfo.getKeyIdentifier();
        }
        return encryptedIdentity2;
    }

    private static String buildIdentity(int eapMethod, String imsi, String mccMnc, boolean isEncrypted) {
        String mcc;
        String mnc;
        if (imsi == null || imsi.isEmpty()) {
            Log.e(TAG, "No IMSI or IMSI is null");
            return null;
        }
        String prefix = isEncrypted ? DEFAULT_EAP_PREFIX : EAP_METHOD_PREFIX.get(Integer.valueOf(eapMethod));
        if (prefix == null) {
            return null;
        }
        if (mccMnc != null && !mccMnc.isEmpty()) {
            mcc = mccMnc.substring(0, 3);
            mnc = mccMnc.substring(3);
            if (mnc.length() == 2) {
                mnc = "0" + mnc;
            }
        } else {
            mcc = imsi.substring(0, 3);
            mnc = imsi.substring(3, 6);
        }
        String naiRealm = String.format(THREE_GPP_NAI_REALM_FORMAT, mnc, mcc);
        return prefix + imsi + "@" + naiRealm;
    }

    private static int getSimMethodForConfig(WifiConfiguration config) {
        if (config == null || config.enterpriseConfig == null) {
            return -1;
        }
        int eapMethod = config.enterpriseConfig.getEapMethod();
        if (eapMethod == 0) {
            int phase2Method = config.enterpriseConfig.getPhase2Method();
            if (phase2Method == 5) {
                eapMethod = 4;
            } else if (phase2Method == 6) {
                eapMethod = 5;
            } else if (phase2Method == 7) {
                eapMethod = 6;
            }
        }
        if (isSimEapMethod(eapMethod)) {
            return eapMethod;
        }
        return -1;
    }

    public static boolean isSimConfig(WifiConfiguration config) {
        return getSimMethodForConfig(config) != -1;
    }

    public static boolean isAnonymousAtRealmIdentity(String identity) {
        if (identity == null) {
            return false;
        }
        return identity.startsWith("anonymous@");
    }

    public static boolean isSimEapMethod(int eapMethod) {
        return eapMethod == 4 || eapMethod == 5 || eapMethod == 6;
    }

    private static int parseHex(char ch) {
        if ('0' <= ch && ch <= '9') {
            return ch - '0';
        }
        if ('a' <= ch && ch <= 'f') {
            return (ch - 'a') + 10;
        }
        if ('A' <= ch && ch <= 'F') {
            return (ch - 'A') + 10;
        }
        throw new NumberFormatException("" + ch + " is not a valid hex digit");
    }

    private static byte[] parseHex(String hex) {
        if (hex == null) {
            return new byte[0];
        }
        if (hex.length() % 2 != 0) {
            throw new NumberFormatException(hex + " is not a valid hex string");
        }
        byte[] result = new byte[(hex.length() / 2) + 1];
        result[0] = (byte) (hex.length() / 2);
        int i = 0;
        int j = 1;
        while (i < hex.length()) {
            int val = (parseHex(hex.charAt(i)) * 16) + parseHex(hex.charAt(i + 1));
            byte b = (byte) (val & Constants.BYTE_MASK);
            result[j] = b;
            i += 2;
            j++;
        }
        return result;
    }

    private static byte[] parseHexWithoutLength(String hex) {
        byte[] tmpRes = parseHex(hex);
        if (tmpRes.length == 0) {
            return tmpRes;
        }
        byte[] result = new byte[tmpRes.length - 1];
        System.arraycopy(tmpRes, 1, result, 0, tmpRes.length - 1);
        return result;
    }

    private static String makeHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }

    private static String makeHex(byte[] bytes, int from, int len) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < len; i++) {
            sb.append(String.format("%02x", Byte.valueOf(bytes[from + i])));
        }
        return sb.toString();
    }

    private static byte[] concatHex(byte[] array1, byte[] array2) {
        int len = array1.length + array2.length;
        byte[] result = new byte[len];
        int index = 0;
        if (array1.length != 0) {
            int index2 = 0;
            for (byte b : array1) {
                result[index2] = b;
                index2++;
            }
            index = index2;
        }
        if (array2.length != 0) {
            for (byte b2 : array2) {
                result[index] = b2;
                index++;
            }
        }
        return result;
    }

    public static String getGsmSimAuthResponse(String[] requestData, TelephonyManager tm) {
        return getGsmAuthResponseWithLength(requestData, tm, 2);
    }

    public static String getGsmSimpleSimAuthResponse(String[] requestData, TelephonyManager tm) {
        return getGsmAuthResponseWithLength(requestData, tm, 1);
    }

    private static String getGsmAuthResponseWithLength(String[] requestData, TelephonyManager tm, int appType) {
        Object obj;
        String str;
        String[] strArr = requestData;
        Object obj2 = null;
        if (tm == null) {
            Log.e(TAG, "No valid TelephonyManager");
            return null;
        }
        TelephonyManager defaultDataTm = tm.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId());
        StringBuilder sb = new StringBuilder();
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            String challenge = strArr[i2];
            if (challenge == null) {
                obj = obj2;
            } else if (challenge.isEmpty()) {
                obj = obj2;
            } else {
                Log.d(TAG, "RAND = " + challenge);
                try {
                    byte[] rand = parseHex(challenge);
                    String base64Challenge = Base64.encodeToString(rand, 2);
                    String tmResponse = defaultDataTm.getIccAuthentication(appType, 128, base64Challenge);
                    Log.v(TAG, "Raw Response - " + tmResponse);
                    if (tmResponse != null && tmResponse.length() > 4) {
                        byte[] result = Base64.decode(tmResponse, i);
                        Log.v(TAG, "Hex Response -" + makeHex(result));
                        int sresLen = result[i];
                        if (sresLen < 0) {
                            str = null;
                        } else {
                            if (sresLen < result.length) {
                                String sres = makeHex(result, 1, sresLen);
                                int kcOffset = sresLen + 1;
                                if (kcOffset >= result.length) {
                                    Log.e(TAG, "malformed response - " + tmResponse);
                                    return null;
                                }
                                int kcLen = result[kcOffset];
                                if (kcLen >= 0 && kcOffset + kcLen <= result.length) {
                                    String kc = makeHex(result, kcOffset + 1, kcLen);
                                    sb.append(":" + kc + ":" + sres);
                                    Log.v(TAG, "kc:" + kc + " sres:" + sres);
                                    obj = null;
                                }
                                Log.e(TAG, "malformed response - " + tmResponse);
                                return null;
                            }
                            str = null;
                        }
                        Log.e(TAG, "malformed response - " + tmResponse);
                        return str;
                    }
                    Log.e(TAG, "bad response - " + tmResponse);
                    return null;
                } catch (NumberFormatException e) {
                    obj = obj2;
                    Log.e(TAG, "malformed challenge");
                }
            }
            i2++;
            i = 0;
            obj2 = obj;
            strArr = requestData;
        }
        return sb.toString();
    }

    public static String getGsmSimAuthResponse(String[] requestData, TelephonyManager tm, int subId) {
        String kc;
        String[] strArr = requestData;
        TelephonyManager telephonyManager = tm;
        String str = null;
        if (telephonyManager == null) {
            Log.e(TAG, "No valid TelephonyManager");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            String challenge = strArr[i2];
            if (challenge == null) {
                kc = str;
            } else if (challenge.isEmpty()) {
                kc = str;
            } else {
                Log.d(TAG, "RAND = " + challenge);
                try {
                    byte[] rand = parseHex(challenge);
                    String base64Challenge = Base64.encodeToString(rand, 2);
                    String tmResponse = telephonyManager.getIccAuthentication(subId, 2, 128, base64Challenge);
                    if (tmResponse == null) {
                        tmResponse = telephonyManager.getIccAuthentication(subId, 1, 128, base64Challenge);
                    }
                    Log.v(TAG, "Raw Response - " + tmResponse);
                    if (tmResponse != null && tmResponse.length() > 4) {
                        byte[] result = Base64.decode(tmResponse, i);
                        Log.v(TAG, "Hex Response -" + makeHex(result));
                        int sresLen = result[i];
                        if (sresLen >= result.length) {
                            Log.e(TAG, "malfomed response - " + tmResponse);
                            return str;
                        }
                        String sres = makeHex(result, 1, sresLen);
                        int kcOffset = sresLen + 1;
                        if (kcOffset >= result.length) {
                            Log.e(TAG, "malfomed response - " + tmResponse);
                            return null;
                        }
                        int kcLen = result[kcOffset];
                        if (kcOffset + kcLen > result.length) {
                            Log.e(TAG, "malfomed response - " + tmResponse);
                            return null;
                        }
                        String kc2 = makeHex(result, kcOffset + 1, kcLen);
                        sb.append(":" + kc2 + ":" + sres);
                        Log.v(TAG, "kc:" + kc2 + " sres:" + sres);
                        kc = null;
                    }
                    Log.e(TAG, "bad response - " + tmResponse);
                    return null;
                } catch (NumberFormatException e) {
                    kc = str;
                    Log.e(TAG, "malformed challenge");
                }
            }
            i2++;
            i = 0;
            telephonyManager = tm;
            str = kc;
            strArr = requestData;
        }
        return sb.toString();
    }

    public static String getGsmSimpleSimNoLengthAuthResponse(String[] requestData, TelephonyManager tm) {
        String str = null;
        if (tm == null) {
            Log.e(TAG, "No valid TelephonyManager");
            return null;
        }
        TelephonyManager defaultDataTm = tm.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId());
        StringBuilder sb = new StringBuilder();
        int length = requestData.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            String challenge = requestData[i2];
            if (challenge != null && !challenge.isEmpty()) {
                Log.d(TAG, "RAND = " + challenge);
                try {
                    byte[] rand = parseHexWithoutLength(challenge);
                    String base64Challenge = Base64.encodeToString(rand, 2);
                    String tmResponse = defaultDataTm.getIccAuthentication(1, 128, base64Challenge);
                    Log.v(TAG, "Raw Response - " + tmResponse);
                    if (tmResponse == null || tmResponse.length() <= 4) {
                        Log.e(TAG, "bad response - " + tmResponse);
                        return null;
                    }
                    byte[] result = Base64.decode(tmResponse, i);
                    if (12 != result.length) {
                        Log.e(TAG, "malformed response - " + tmResponse);
                        return str;
                    }
                    Log.v(TAG, "Hex Response -" + makeHex(result));
                    String sres = makeHex(result, 0, 4);
                    String kc = makeHex(result, 4, 8);
                    sb.append(":" + kc + ":" + sres);
                    Log.v(TAG, "kc:" + kc + " sres:" + sres);
                    str = null;
                } catch (NumberFormatException e) {
                    Log.e(TAG, "malformed challenge");
                }
            }
            i2++;
            i = 0;
        }
        return sb.toString();
    }

    public static class SimAuthRequestData {
        public String[] data;
        public int networkId;
        public int protocol;
        public String ssid;

        public SimAuthRequestData() {
        }

        public SimAuthRequestData(int networkId, int protocol, String ssid, String[] data) {
            this.networkId = networkId;
            this.protocol = protocol;
            this.ssid = ssid;
            this.data = data;
        }
    }

    public static class SimAuthResponseData {
        public String response;
        public String type;

        public SimAuthResponseData(String type, String response) {
            this.type = type;
            this.response = response;
        }
    }

    public static SimAuthResponseData get3GAuthResponse(SimAuthRequestData requestData, TelephonyManager tm) {
        StringBuilder sb = new StringBuilder();
        byte[] rand = null;
        byte[] authn = null;
        String resType = WifiNative.SIM_AUTH_RESP_TYPE_UMTS_AUTH;
        if (requestData.data.length == 2) {
            try {
                rand = parseHex(requestData.data[0]);
                authn = parseHex(requestData.data[1]);
            } catch (NumberFormatException e) {
                Log.e(TAG, "malformed challenge");
            }
        } else {
            Log.e(TAG, "malformed challenge");
        }
        String tmResponse = "";
        if (rand != null && authn != null) {
            String base64Challenge = Base64.encodeToString(concatHex(rand, authn), 2);
            if (tm != null) {
                tmResponse = tm.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId()).getIccAuthentication(2, 129, base64Challenge);
                Log.v(TAG, "Raw Response - " + tmResponse);
            } else {
                Log.e(TAG, "No valid TelephonyManager");
            }
        }
        boolean goodReponse = false;
        if (tmResponse != null && tmResponse.length() > 4) {
            byte[] result = Base64.decode(tmResponse, 0);
            Log.e(TAG, "Hex Response - " + makeHex(result));
            byte tag = result[0];
            if (tag == -37) {
                Log.v(TAG, "successful 3G authentication ");
                int resLen = result[1];
                String res = makeHex(result, 2, resLen);
                int ckLen = result[resLen + 2];
                String ck = makeHex(result, resLen + 3, ckLen);
                int ikLen = result[resLen + ckLen + 3];
                String ik = makeHex(result, resLen + ckLen + 4, ikLen);
                sb.append(":" + ik + ":" + ck + ":" + res);
                Log.v(TAG, "ik:" + ik + "ck:" + ck + " res:" + res);
                goodReponse = true;
            } else if (tag == -36) {
                Log.e(TAG, "synchronisation failure");
                int autsLen = result[1];
                String auts = makeHex(result, 2, autsLen);
                resType = WifiNative.SIM_AUTH_RESP_TYPE_UMTS_AUTS;
                sb.append(":" + auts);
                Log.v(TAG, "auts:" + auts);
                goodReponse = true;
            } else {
                Log.e(TAG, "bad response - unknown tag = " + ((int) tag));
            }
        } else {
            Log.e(TAG, "bad response - " + tmResponse);
        }
        if (goodReponse) {
            String response = sb.toString();
            Log.v(TAG, "Supplicant Response -" + response);
            return new SimAuthResponseData(resType, response);
        }
        return null;
    }

    public static int getCarrierType(TelephonyManager tm) {
        if (tm == null) {
            return -1;
        }
        TelephonyManager defaultDataTm = tm.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId());
        if (defaultDataTm.getSimState() != 5) {
            return -1;
        }
        if (defaultDataTm.getCarrierIdFromSimMccMnc() == defaultDataTm.getSimCarrierId()) {
            return 0;
        }
        return 1;
    }

    public static boolean isSimPresent(@Nonnull SubscriptionManager sm) {
        return sm.getActiveSubscriptionIdList().length > 0;
    }

    public static SimAuthResponseData get3GAuthResponse(SimAuthRequestData requestData, TelephonyManager tm, int subId) {
        StringBuilder sb = new StringBuilder();
        byte[] rand = null;
        byte[] authn = null;
        String resType = WifiNative.SIM_AUTH_RESP_TYPE_UMTS_AUTH;
        if (requestData.data.length == 2) {
            try {
                rand = parseHex(requestData.data[0]);
                authn = parseHex(requestData.data[1]);
            } catch (NumberFormatException e) {
                Log.e(TAG, "malformed challenge");
            }
        } else {
            Log.e(TAG, "malformed challenge");
        }
        String tmResponse = "";
        if (rand != null && authn != null) {
            String base64Challenge = Base64.encodeToString(concatHex(rand, authn), 2);
            if (tm != null) {
                tmResponse = tm.getIccAuthentication(subId, 2, 129, base64Challenge);
                Log.v(TAG, "Raw Response - " + tmResponse);
            } else {
                Log.e(TAG, "No valid TelephonyManager");
            }
        }
        boolean goodReponse = false;
        if (tmResponse != null && tmResponse.length() > 4) {
            byte[] result = Base64.decode(tmResponse, 0);
            Log.e(TAG, "Hex Response - " + makeHex(result));
            byte tag = result[0];
            if (tag == -37) {
                Log.v(TAG, "successful 3G authentication ");
                int resLen = result[1];
                String res = makeHex(result, 2, resLen);
                int ckLen = result[resLen + 2];
                String ck = makeHex(result, resLen + 3, ckLen);
                int ikLen = result[resLen + ckLen + 3];
                String ik = makeHex(result, resLen + ckLen + 4, ikLen);
                sb.append(":" + ik + ":" + ck + ":" + res);
                Log.v(TAG, "ik:" + ik + "ck:" + ck + " res:" + res);
                goodReponse = true;
            } else if (tag == -36) {
                Log.e(TAG, "synchronisation failure");
                int autsLen = result[1];
                String auts = makeHex(result, 2, autsLen);
                resType = WifiNative.SIM_AUTH_RESP_TYPE_UMTS_AUTS;
                sb.append(":" + auts);
                Log.v(TAG, "auts:" + auts);
                goodReponse = true;
            } else {
                Log.e(TAG, "bad response - unknown tag = " + ((int) tag));
            }
        } else {
            Log.e(TAG, "bad response - " + tmResponse);
        }
        if (goodReponse) {
            String response = sb.toString();
            Log.v(TAG, "Supplicant Response -" + response);
            return new SimAuthResponseData(resType, response);
        }
        return null;
    }
}
