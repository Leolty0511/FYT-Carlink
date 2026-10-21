package android.security.keystore;

import android.util.Base64;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SoterUtil {
    public static final String JSON_KEY_PUBLIC = "pub_key";
    private static final int MAX_EXPORTED_KEY_SIZE = 2048;
    private static final String PARAM_NEED_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY = "addcounter";
    private static final String PARAM_NEED_AUTO_ADD_SECMSG_FID_COUNTER_WHEN_SIGN = "secmsg_and_counter_signed_when_sign";
    private static final String PARAM_NEED_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY = "auto_signed_when_get_pubkey_attk";
    private static final String PARAM_NEED_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY = "auto_signed_when_get_pubkey";
    private static final String PARAM_NEED_NEXT_ATTK = "next_attk";
    private static final int RAW_LENGTH_PREFIX = 4;
    public static final String TAG = "Soter.Util";

    private static boolean contains(String str, String[] strArr) {
        if (strArr == null || strArr.length == 0 || isNullOrNil(str)) {
            Log.e(TAG, "hy: param error");
            throw new IllegalArgumentException("param error");
        }
        for (String str2 : strArr) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static String containsPrefix(String str, String[] strArr) {
        if (strArr == null || strArr.length == 0 || isNullOrNil(str)) {
            Log.e(TAG, "hy: param error");
            throw new IllegalArgumentException("param error");
        }
        for (String str2 : strArr) {
            if (!isNullOrNil(str2) && str2.startsWith(str)) {
                return str2;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0059  */
    /* JADX WARN: Code duplicated, block: B:25:0x0062  */
    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    /* JADX WARN: Code duplicated, block: B:27:0x0067  */
    public static SoterRSAKeyGenParameterSpec convertKeyNameToParameterSpec(String str) {
        boolean z2;
        boolean z3;
        String str2;
        boolean z4;
        boolean z5;
        if (isNullOrNil(str)) {
            Log.e(TAG, "hy: null or nil when convert key name to parameter");
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit == null || strArrSplit.length <= 1) {
            Log.w(TAG, "hy: pure alias, no parameter");
            return null;
        }
        if (contains(PARAM_NEED_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY, strArrSplit)) {
            z3 = false;
            z2 = true;
        } else {
            String strContainsPrefix = containsPrefix(PARAM_NEED_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY, strArrSplit);
            if (!isNullOrNil(strContainsPrefix)) {
                String strRetrieveKeyNameFromExpr = retrieveKeyNameFromExpr(strContainsPrefix);
                if (!isNullOrNil(strRetrieveKeyNameFromExpr)) {
                    str2 = strRetrieveKeyNameFromExpr;
                    z2 = false;
                    z3 = true;
                }
                boolean zContains = contains(PARAM_NEED_AUTO_ADD_SECMSG_FID_COUNTER_WHEN_SIGN, strArrSplit);
                if (contains(PARAM_NEED_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY, strArrSplit)) {
                    if (contains(PARAM_NEED_NEXT_ATTK, strArrSplit)) {
                        z4 = true;
                    } else {
                        z5 = false;
                        z4 = true;
                    }
                    SoterRSAKeyGenParameterSpec soterRSAKeyGenParameterSpec = new SoterRSAKeyGenParameterSpec(true, z2, z3, str2, zContains, z4, z5);
                    Log.i(TAG, "hy: spec: " + soterRSAKeyGenParameterSpec.toString());
                    return soterRSAKeyGenParameterSpec;
                }
                z4 = false;
                z5 = z4;
                SoterRSAKeyGenParameterSpec soterRSAKeyGenParameterSpec2 = new SoterRSAKeyGenParameterSpec(true, z2, z3, str2, zContains, z4, z5);
                Log.i(TAG, "hy: spec: " + soterRSAKeyGenParameterSpec2.toString());
                return soterRSAKeyGenParameterSpec2;
            }
            z2 = false;
            z3 = false;
        }
        str2 = "";
        boolean zContains2 = contains(PARAM_NEED_AUTO_ADD_SECMSG_FID_COUNTER_WHEN_SIGN, strArrSplit);
        if (contains(PARAM_NEED_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY, strArrSplit)) {
            if (contains(PARAM_NEED_NEXT_ATTK, strArrSplit)) {
                z4 = true;
            } else {
                z5 = false;
                z4 = true;
            }
            SoterRSAKeyGenParameterSpec soterRSAKeyGenParameterSpec3 = new SoterRSAKeyGenParameterSpec(true, z2, z3, str2, zContains2, z4, z5);
            Log.i(TAG, "hy: spec: " + soterRSAKeyGenParameterSpec3.toString());
            return soterRSAKeyGenParameterSpec3;
        }
        z4 = false;
        z5 = z4;
        SoterRSAKeyGenParameterSpec soterRSAKeyGenParameterSpec4 = new SoterRSAKeyGenParameterSpec(true, z2, z3, str2, zContains2, z4, z5);
        Log.i(TAG, "hy: spec: " + soterRSAKeyGenParameterSpec4.toString());
        return soterRSAKeyGenParameterSpec4;
    }

    public static byte[] getDataFromRaw(byte[] bArr, String str) throws JSONException {
        if (isNullOrNil(str)) {
            Log.e("Soter", "hy: json keyname error");
            return null;
        }
        if (bArr == null) {
            Log.e("Soter", "hy: json origin null");
            return null;
        }
        JSONObject jSONObjectRetriveJsonFromExportedData = retriveJsonFromExportedData(bArr);
        if (jSONObjectRetriveJsonFromExportedData == null || !jSONObjectRetriveJsonFromExportedData.has(str)) {
            return null;
        }
        String string = jSONObjectRetriveJsonFromExportedData.getString(str);
        Log.d("Soter", "base64 encoded public key: " + string);
        String strReplace = string.replace("-----BEGIN PUBLIC KEY-----", "").replace("-----END PUBLIC KEY-----", "").replace("\\n", "");
        Log.d("Soter", "pure base64 encoded public key: " + strReplace);
        return Base64.decode(strReplace, 0);
    }

    public static String getPureKeyAliasFromKeyName(String str) {
        Log.i(TAG, "hy: retrieving pure name from: " + str);
        if (isNullOrNil(str)) {
            Log.e(TAG, "hy: null or nil when get pure key alias");
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit != null && strArrSplit.length > 1) {
            return strArrSplit[0];
        }
        Log.d(TAG, "hy: pure alias");
        return str;
    }

    public static boolean isNullOrNil(String str) {
        return str == null || str.equals("");
    }

    private static String retrieveKeyNameFromExpr(String str) {
        if (isNullOrNil(str)) {
            Log.e(TAG, "hy: expr is null");
            return null;
        }
        int iIndexOf = str.indexOf("(");
        int iIndexOf2 = str.indexOf(")");
        if (iIndexOf >= 0 && iIndexOf2 > iIndexOf) {
            return str.substring(iIndexOf + 1, iIndexOf2);
        }
        Log.e(TAG, "hy: no key name");
        return null;
    }

    private static JSONObject retriveJsonFromExportedData(byte[] bArr) {
        if (bArr == null) {
            Log.e("Soter", "raw data is null");
            return null;
        }
        if (bArr.length < 4) {
            Log.e("Soter", "raw data length smaller than 4");
        }
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        int i2 = toInt(bArr2);
        Log.d("Soter", "parsed raw length: " + i2);
        if (i2 > 2048) {
            return null;
        }
        byte[] bArr3 = new byte[i2];
        if (bArr.length <= i2 + 4) {
            Log.e("Soter", "length not correct 2");
            return null;
        }
        System.arraycopy(bArr, 4, bArr3, 0, i2);
        String str = new String(bArr3);
        Log.d("Soter", "to convert json: ".concat(str));
        try {
            return new JSONObject(str);
        } catch (JSONException unused) {
            Log.e("Soter", "hy: can not convert to json");
            return null;
        }
    }

    public static int toInt(byte[] bArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i2 += (bArr[i3] & 255) << (i3 * 8);
        }
        return i2;
    }
}
