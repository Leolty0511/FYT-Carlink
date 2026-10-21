package com.android.internal.telephony.gsm;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.telephony.SmsCbLocation;
import android.telephony.SmsCbMessage;
import android.util.Log;
import android.util.Pair;
import com.android.internal.R;
import com.android.internal.telephony.GsmAlphabet;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes3.dex */
public class GsmSmsCbMessage {
    private static final char CARRIAGE_RETURN = '\r';
    private static final String[] LANGUAGE_CODES_GROUP_0 = {"de", "en", "it", "fr", "es", "nl", "sv", "da", "pt", "fi", "no", "el", "tr", "hu", "pl", null};
    private static final String[] LANGUAGE_CODES_GROUP_2 = {"cs", "he", "ar", "ru", "is", null, null, null, null, null, null, null, null, null, null, null};
    private static final int PDU_BODY_PAGE_LENGTH = 82;

    private GsmSmsCbMessage() {
    }

    public static SmsCbMessage createSmsCbMessage(Context context, SmsCbHeader smsCbHeader, SmsCbLocation smsCbLocation, byte[][] bArr) {
        if (smsCbHeader.isEtwsPrimaryNotification()) {
            return new SmsCbMessage(1, smsCbHeader.getGeographicalScope(), smsCbHeader.getSerialNumber(), smsCbLocation, smsCbHeader.getServiceCategory(), null, getEtwsPrimaryMessage(context, smsCbHeader.getEtwsInfo().getWarningType()), 3, smsCbHeader.getEtwsInfo(), smsCbHeader.getCmasInfo());
        }
        StringBuilder sb = new StringBuilder();
        String str = null;
        for (byte[] bArr2 : bArr) {
            Pair<String, String> body = parseBody(smsCbHeader, bArr2);
            str = body.first;
            sb.append(body.second);
        }
        return new SmsCbMessage(1, smsCbHeader.getGeographicalScope(), smsCbHeader.getSerialNumber(), smsCbLocation, smsCbHeader.getServiceCategory(), str, sb.toString(), smsCbHeader.isEmergencyMessage() ? 3 : 0, smsCbHeader.getEtwsInfo(), smsCbHeader.getCmasInfo());
    }

    private static String getEtwsPrimaryMessage(Context context, int i2) {
        Resources resources = context.getResources();
        if (i2 == 0) {
            return resources.getString(R.string.etws_primary_default_message_earthquake);
        }
        if (i2 == 1) {
            return resources.getString(R.string.etws_primary_default_message_tsunami);
        }
        if (i2 == 2) {
            return resources.getString(R.string.etws_primary_default_message_earthquake_and_tsunami);
        }
        if (i2 != 3) {
            return i2 != 4 ? "" : resources.getString(R.string.etws_primary_default_message_others);
        }
        return resources.getString(R.string.etws_primary_default_message_test);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0043 A[FALL_THROUGH, PHI: r5
  0x0043: PHI (r5v1 java.lang.String) = (r5v0 java.lang.String), (r5v0 java.lang.String), (r5v3 java.lang.String), (r5v0 java.lang.String) binds: [B:24:0x0040, B:9:0x0019, B:22:0x003b, B:13:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
    private static Pair<String, String> parseBody(SmsCbHeader smsCbHeader, byte[] bArr) {
        String str;
        String str2;
        int dataCodingScheme = smsCbHeader.getDataCodingScheme();
        int i2 = (dataCodingScheme & 240) >> 4;
        if (i2 != 9 && i2 != 14) {
            int i3 = 2;
            boolean z2 = true;
            String str3 = null;
            if (i2 != 15) {
                switch (i2) {
                    case 0:
                        str2 = LANGUAGE_CODES_GROUP_0[dataCodingScheme & 15];
                        str3 = str2;
                        i3 = 1;
                        str = str3;
                        z2 = false;
                        break;
                    case 1:
                        if ((dataCodingScheme & 15) == 1) {
                            str = null;
                            i3 = 3;
                        } else {
                            i3 = 1;
                            str = null;
                        }
                        break;
                    case 2:
                        str2 = LANGUAGE_CODES_GROUP_2[dataCodingScheme & 15];
                        str3 = str2;
                        i3 = 1;
                        str = str3;
                        z2 = false;
                        break;
                    case 4:
                    case 5:
                        int i4 = (dataCodingScheme & 12) >> 2;
                        if (i4 != 1) {
                            if (i4 == 2) {
                                z2 = false;
                                str = null;
                                i3 = 3;
                            }
                            break;
                        } else {
                            str = str3;
                            z2 = false;
                            break;
                        }
                    case 3:
                    default:
                        i3 = 1;
                        str = str3;
                        z2 = false;
                        break;
                    case 6:
                    case 7:
                        break;
                }
            } else {
                if (((dataCodingScheme & 4) >> 2) != 1) {
                    i3 = 1;
                }
                str = str3;
                z2 = false;
            }
            if (!smsCbHeader.isUmtsFormat()) {
                return unpackBody(bArr, i3, 6, bArr.length - 6, z2, str);
            }
            byte b2 = bArr[6];
            if (bArr.length < (b2 * 83) + 7) {
                throw new IllegalArgumentException("Pdu length " + bArr.length + " does not match " + ((int) b2) + " pages");
            }
            StringBuilder sb = new StringBuilder();
            for (int i5 = 0; i5 < b2; i5++) {
                int i6 = (i5 * 83) + 7;
                byte b3 = bArr[i6 + 82];
                if (b3 > 82) {
                    throw new IllegalArgumentException(c.e("Page length ", b3, " exceeds maximum value 82"));
                }
                Pair<String, String> pairUnpackBody = unpackBody(bArr, i3, i6, b3, z2, str);
                str = pairUnpackBody.first;
                sb.append(pairUnpackBody.second);
            }
            return new Pair<>(str, sb.toString());
        }
        throw new IllegalArgumentException(c.d("Unsupported GSM dataCodingScheme ", dataCodingScheme));
    }

    private static Pair<String, String> unpackBody(byte[] bArr, int i2, int i3, int i4, boolean z2, String str) {
        String strGsm7BitPackedToString;
        int i5;
        if (i2 == 1) {
            strGsm7BitPackedToString = GsmAlphabet.gsm7BitPackedToString(bArr, i3, (i4 * 8) / 7);
            if (z2 && strGsm7BitPackedToString != null && strGsm7BitPackedToString.length() > 2) {
                str = strGsm7BitPackedToString.substring(0, 2);
                strGsm7BitPackedToString = strGsm7BitPackedToString.substring(3);
            }
        } else if (i2 != 3) {
            strGsm7BitPackedToString = null;
        } else {
            if (z2 && bArr.length >= (i5 = i3 + 2)) {
                str = GsmAlphabet.gsm7BitPackedToString(bArr, i3, 2);
                i4 -= 2;
                i3 = i5;
            }
            try {
                strGsm7BitPackedToString = new String(bArr, i3, i4 & Configuration.DENSITY_DPI_ANY, "utf-16");
            } catch (UnsupportedEncodingException e2) {
                throw new IllegalArgumentException("Error decoding UTF-16 message", e2);
            }
        }
        if (strGsm7BitPackedToString != null) {
            for (int length = strGsm7BitPackedToString.length() - 1; length >= 0; length--) {
                if (strGsm7BitPackedToString.charAt(length) != '\r') {
                    strGsm7BitPackedToString = strGsm7BitPackedToString.substring(0, length + 1);
                    break;
                }
            }
        } else {
            strGsm7BitPackedToString = "";
        }
        return new Pair<>(str, strGsm7BitPackedToString);
    }

    public static SmsCbMessage createSmsCbMessage(Context context, SmsCbLocation smsCbLocation, byte[][] bArr) {
        return createSmsCbMessage(context, new SmsCbHeader(bArr[0]), smsCbLocation, bArr);
    }

    public static SmsCbMessage createSmsCbMessage(Context context, SmsCbHeader smsCbHeader, SmsCbLocation smsCbLocation, byte[][] bArr, int i2) {
        if (smsCbHeader.isEtwsPrimaryNotification()) {
            return new SmsCbMessage(1, smsCbHeader.getGeographicalScope(), smsCbHeader.getSerialNumber(), smsCbLocation, smsCbHeader.getServiceCategory(), null, "ETWS", 3, smsCbHeader.getEtwsInfo(), smsCbHeader.getCmasInfo(), i2);
        }
        StringBuilder sb = new StringBuilder();
        String str = null;
        for (byte[] bArr2 : bArr) {
            Pair<String, String> body = parseBody(smsCbHeader, bArr2);
            str = body.first;
            sb.append(body.second);
        }
        int i3 = smsCbHeader.isEmergencyMessage() ? 3 : 0;
        Log.d("GsmSmsCbMessage", "create sms cb message with a sub_id");
        return new SmsCbMessage(1, smsCbHeader.getGeographicalScope(), smsCbHeader.getSerialNumber(), smsCbLocation, smsCbHeader.getServiceCategory(), str, sb.toString(), i3, smsCbHeader.getEtwsInfo(), smsCbHeader.getCmasInfo(), i2);
    }
}
