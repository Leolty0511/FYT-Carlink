package com.android.internal.telephony;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.m;
import android.content.res.Resources;
import android.net.wifi.WifiEnterpriseConfig;
import android.provider.Settings;
import android.telephony.Rlog;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.android.internal.R;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class GsmAlphabetEx {
    public static final byte GSM_EXTENDED_ESCAPE = 27;
    private static final String TAG = "GSM";
    public static final int UDH_SEPTET_COST_CONCATENATED_MESSAGE = 6;
    public static final int UDH_SEPTET_COST_LENGTH = 1;
    public static final int UDH_SEPTET_COST_ONE_SHIFT_TABLE = 4;
    public static final int UDH_SEPTET_COST_TWO_SHIFT_TABLES = 7;
    private static String mEncodeType = "0";
    private static final SparseIntArray[] sCharsToGsmTables;
    private static final SparseIntArray[] sCharsToShiftTables;
    private static boolean sDisableCountryEncodingCheck = false;
    private static int[] sEnabledLockingShiftTables;
    private static int[] sEnabledSingleShiftTables;
    private static int sHighestEnabledSingleShiftCode;
    private static final String[] sLanguageShiftTables;
    private static final String[] sLanguageTables;

    public static class LanguagePairCount {
        final int languageCode;
        final int[] septetCounts;
        final int[] unencodableCounts;

        public LanguagePairCount(int i2) {
            this.languageCode = i2;
            int i3 = GsmAlphabetEx.sHighestEnabledSingleShiftCode;
            int i4 = i3 + 1;
            this.septetCounts = new int[i4];
            this.unencodableCounts = new int[i4];
            int i5 = 0;
            for (int i6 = 1; i6 <= i3; i6++) {
                if (GsmAlphabetEx.sEnabledSingleShiftTables[i5] == i6) {
                    i5++;
                } else {
                    this.septetCounts[i6] = -1;
                }
            }
            if (i2 == 1 && i3 >= 1) {
                this.septetCounts[1] = -1;
            } else {
                if (i2 != 3 || i3 < 2) {
                    return;
                }
                this.septetCounts[2] = -1;
            }
        }
    }

    public static class TextEncodingDetails {
        public int codeUnitCount;
        public int codeUnitSize;
        public int codeUnitsRemaining;
        public int languageShiftTable;
        public int languageTable;
        public int msgCount;

        public String toString() {
            StringBuilder sb = new StringBuilder("TextEncodingDetails { msgCount=");
            sb.append(this.msgCount);
            sb.append(", codeUnitCount=");
            sb.append(this.codeUnitCount);
            sb.append(", codeUnitsRemaining=");
            sb.append(this.codeUnitsRemaining);
            sb.append(", codeUnitSize=");
            sb.append(this.codeUnitSize);
            sb.append(", languageTable=");
            sb.append(this.languageTable);
            sb.append(", languageShiftTable=");
            return c.m(sb, this.languageShiftTable, " }");
        }
    }

    static {
        String[] strArr = {"@£$¥èéùìòÇ\nØø\rÅåΔ_ΦΓΛΩΠΨΣΘΞ\uffffÆæßÉ !\"#¤%&'()*+,-./0123456789:;<=>?¡ABCDEFGHIJKLMNOPQRSTUVWXYZÄÖÑÜ§¿abcdefghijklmnopqrstuvwxyzäöñüà", "@£$¥€éùıòÇ\nĞğ\rÅåΔ_ΦΓΛΩΠΨΣΘΞ\uffffŞşßÉ !\"#¤%&'()*+,-./0123456789:;<=>?İABCDEFGHIJKLMNOPQRSTUVWXYZÄÖÑÜ§çabcdefghijklmnopqrstuvwxyzäöñüà", "", "@£$¥êéúíóç\nÔô\rÁáΔ_ªÇÀ∞^\\€Ó|\uffffÂâÊÉ !\"#º%&'()*+,-./0123456789:;<=>?ÍABCDEFGHIJKLMNOPQRSTUVWXYZÃÕÚÜ§~abcdefghijklmnopqrstuvwxyzãõ`üà", "ঁংঃঅআইঈউঊঋ\nঌ \r এঐ  ওঔকখগঘঙচ\uffffছজঝঞ !টঠডঢণত)(থদ,ধ.ন0123456789:; পফ?বভমযর ল   শষসহ়ঽািীুূৃৄ  েৈ  োৌ্ৎabcdefghijklmnopqrstuvwxyzৗড়ঢ়ৰৱ", "ઁંઃઅઆઇઈઉઊઋ\nઌઍ\r એઐઑ ઓઔકખગઘઙચ\uffffછજઝઞ !ટઠડઢણત)(થદ,ધ.ન0123456789:; પફ?બભમયર લળ વશષસહ઼ઽાિીુૂૃૄૅ ેૈૉ ોૌ્ૐabcdefghijklmnopqrstuvwxyzૠૡૢૣ૱", "ँंःअआइईउऊऋ\nऌऍ\rऎएऐऑऒओऔकखगघङच\uffffछजझञ !टठडढणत)(थद,ध.न0123456789:;ऩपफ?बभमयरऱलळऴवशषसह़ऽािीुूृॄॅॆेैॉॊोौ्ॐabcdefghijklmnopqrstuvwxyzॲॻॼॾॿ", " ಂಃಅಆಇಈಉಊಋ\nಌ \rಎಏಐ ಒಓಔಕಖಗಘಙಚ\uffffಛಜಝಞ !ಟಠಡಢಣತ)(ಥದ,ಧ.ನ0123456789:; ಪಫ?ಬಭಮಯರಱಲಳ ವಶಷಸಹ಼ಽಾಿೀುೂೃೄ ೆೇೈ ೊೋೌ್ೕabcdefghijklmnopqrstuvwxyzೖೠೡೢೣ", " ംഃഅആഇഈഉഊഋ\nഌ \rഎഏഐ ഒഓഔകഖഗഘങച\uffffഛജഝഞ !ടഠഡഢണത)(ഥദ,ധ.ന0123456789:; പഫ?ബഭമയരറലളഴവശഷസഹ ഽാിീുൂൃൄ െേൈ ൊോൌ്ൗabcdefghijklmnopqrstuvwxyzൠൡൢൣ൹", "ଁଂଃଅଆଇଈଉଊଋ\nଌ \r ଏଐ  ଓଔକଖଗଘଙଚ\uffffଛଜଝଞ !ଟଠଡଢଣତ)(ଥଦ,ଧ.ନ0123456789:; ପଫ?ବଭମଯର ଲଳ ଵଶଷସହ଼ଽାିୀୁୂୃୄ  େୈ  ୋୌ୍ୖabcdefghijklmnopqrstuvwxyzୗୠୡୢୣ", "ਁਂਃਅਆਇਈਉਊ \n  \r ਏਐ  ਓਔਕਖਗਘਙਚ\uffffਛਜਝਞ !ਟਠਡਢਣਤ)(ਥਦ,ਧ.ਨ0123456789:; ਪਫ?ਬਭਮਯਰ ਲਲ਼ ਵਸ਼ ਸਹ਼ ਾਿੀੁੂ    ੇੈ  ੋੌ੍ੑabcdefghijklmnopqrstuvwxyzੰੱੲੳੴ", " ஂஃஅஆஇஈஉஊ \n  \rஎஏஐ ஒஓஔக   ஙச\uffff ஜ ஞ !ட   ணத)(  , .ந0123456789:;னப ?  மயரறலளழவஶஷஸஹ  ாிீுூ   ெேை ொோௌ்ௐabcdefghijklmnopqrstuvwxyzௗ௰௱௲௹", "ఁంఃఅఆఇఈఉఊఋ\nఌ \rఎఏఐ ఒఓఔకఖగఘఙచ\uffffఛజఝఞ !టఠడఢణత)(థద,ధ.న0123456789:; పఫ?బభమయరఱలళ వశషసహ ఽాిీుూృౄ ెేై ొోౌ్ౕabcdefghijklmnopqrstuvwxyzౖౠౡౢౣ", "اآبٻڀپڦتۂٿ\nٹٽ\rٺټثجځڄڃڅچڇحخد\uffffڌڈډڊ !ڏڍذرڑړ)(ڙز,ږ.ژ0123456789:;ښسش?صضطظعفقکڪګگڳڱلمنںڻڼوۄەہھءیېےٍُِٗٔabcdefghijklmnopqrstuvwxyzّٰٕٖٓ"};
        sLanguageTables = strArr;
        String[] strArr2 = {"          \f         ^                   {}     \\            [~] |                                    €                          ", "          \f         ^                   {}     \\            [~] |      Ğ İ         Ş               ç € ğ ı         ş            ", "         ç\f         ^                   {}     \\            [~] |Á       Í     Ó     Ú           á   €   í     ó     ú          ", "     ê   ç\fÔô Áá  ΦΓ^ΩΠΨΣΘ     Ê        {}     \\            [~] |À       Í     Ó     Ú     ÃÕ    Â   €   í     ó     ú     ãõ  â", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*০১ ২৩৪৫৬৭৮৯য়ৠৡৢ{}ৣ৲৳৴৵\\৶৷৸৹৺       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*।॥ ૦૧૨૩૪૫૬૭૮૯  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*।॥ ०१२३४५६७८९॒॑{}॓॔क़ख़ग़\\ज़ड़ढ़फ़य़ॠॡॢॣ॰ॱ [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*।॥ ೦೧೨೩೪೫೬೭೮೯ೞೱ{}ೲ    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*।॥ ൦൧൨൩൪൫൬൭൮൯൰൱{}൲൳൴൵ൺ\\ൻർൽൾൿ       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*।॥ ୦୧୨୩୪୫୬୭୮୯ଡ଼ଢ଼{}ୟ୰ୱ  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*।॥ ੦੧੨੩੪੫੬੭੮੯ਖ਼ਗ਼{}ਜ਼ੜਫ਼ੵ \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*।॥ ௦௧௨௩௪௫௬௭௮௯௳௴{}௵௶௷௸௺\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*   ౦౧౨౩౪౫౬౭౮౯ౘౙ{}౸౹౺౻౼\\౽౾౿         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          ", "@£$¥¿\"¤%&'\f*+ -/<=>¡^¡_#*\u0600\u0601 ۰۱۲۳۴۵۶۷۸۹،؍{}؎؏ؐؑؒ\\ؓؔ؛؟ـْ٘٫٬ٲٳۍ[~]۔|ABCDEFGHIJKLMNOPQRSTUVWXYZ          €                          "};
        sLanguageShiftTables = strArr2;
        enableCountrySpecificEncodings();
        int length = strArr.length;
        int length2 = strArr2.length;
        if (length != length2) {
            Rlog.e(TAG, "Error: language tables array length " + length + " != shift tables array length " + length2);
        }
        sCharsToGsmTables = new SparseIntArray[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str = sLanguageTables[i2];
            int length3 = str.length();
            if (length3 != 0 && length3 != 128) {
                Rlog.e(TAG, m.f("Error: language tables index ", i2, " length ", length3, " (expected 128 or 0)"));
            }
            SparseIntArray sparseIntArray = new SparseIntArray(length3);
            sCharsToGsmTables[i2] = sparseIntArray;
            for (int i3 = 0; i3 < length3; i3++) {
                sparseIntArray.put(str.charAt(i3), i3);
            }
        }
        sCharsToShiftTables = new SparseIntArray[length];
        for (int i4 = 0; i4 < length2; i4++) {
            String str2 = sLanguageShiftTables[i4];
            int length4 = str2.length();
            if (length4 != 0 && length4 != 128) {
                Rlog.e(TAG, m.f("Error: language shift tables index ", i4, " length ", length4, " (expected 128 or 0)"));
            }
            SparseIntArray sparseIntArray2 = new SparseIntArray(length4);
            sCharsToShiftTables[i4] = sparseIntArray2;
            for (int i5 = 0; i5 < length4; i5++) {
                char cCharAt = str2.charAt(i5);
                if (cCharAt != ' ') {
                    sparseIntArray2.put(cCharAt, i5);
                }
            }
        }
    }

    private GsmAlphabetEx() {
    }

    public static int charToGsm(char c) {
        try {
            return charToGsm(c, false);
        } catch (EncodeException unused) {
            return sCharsToGsmTables[0].get(32, 32);
        }
    }

    public static int charToGsmExtended(char c) {
        int i2 = sCharsToShiftTables[0].get(c, -1);
        return i2 == -1 ? sCharsToGsmTables[0].get(32, 32) : i2;
    }

    private static byte convertAsciiCharToGsm8BitUnpacked(char c) {
        SparseIntArray sparseIntArray = getCharsToGsmTables()[0];
        SparseIntArray sparseIntArray2 = getCharsToShiftTables()[0];
        int i2 = sparseIntArray.get(c, -1);
        if (i2 == -1) {
            if (sparseIntArray2.get(c, -1) != -1) {
                return (byte) 27;
            }
            i2 = sparseIntArray.get(32, 32);
        }
        return (byte) i2;
    }

    public static int countGsmSeptets(char c) {
        try {
            return countGsmSeptets(c, false);
        } catch (EncodeException unused) {
            return 0;
        }
    }

    public static int countGsmSeptetsUsingTables(CharSequence charSequence, boolean z2, int i2, int i3) {
        int length = charSequence.length();
        SparseIntArray sparseIntArray = sCharsToGsmTables[i2];
        SparseIntArray sparseIntArray2 = sCharsToShiftTables[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (cCharAt == 27) {
                Rlog.w(TAG, "countGsmSeptets() string contains Escape character, skipping.");
            } else if (sparseIntArray.get(cCharAt, -1) != -1) {
                i4++;
            } else if (sparseIntArray2.get(cCharAt, -1) != -1) {
                i4 += 2;
            } else {
                if (!z2) {
                    return -1;
                }
                i4++;
            }
        }
        return i4;
    }

    private static void enableCountrySpecificEncodings() {
        Resources system = Resources.getSystem();
        sEnabledSingleShiftTables = system.getIntArray(R.array.config_sms_enabled_single_shift_tables);
        sEnabledLockingShiftTables = system.getIntArray(R.array.config_sms_enabled_locking_shift_tables);
        int[] iArr = sEnabledSingleShiftTables;
        if (iArr.length > 0) {
            sHighestEnabledSingleShiftCode = iArr[iArr.length - 1];
        } else {
            sHighestEnabledSingleShiftCode = 0;
        }
    }

    public static int findGsmSeptetLimitIndex(String str, int i2, int i3, int i4, int i5) {
        int length = str.length();
        SparseIntArray sparseIntArray = sCharsToGsmTables[i4];
        SparseIntArray sparseIntArray2 = sCharsToShiftTables[i5];
        int i6 = 0;
        while (i2 < length) {
            i6 = (sparseIntArray.get(str.charAt(i2), -1) != -1 || sparseIntArray2.get(str.charAt(i2), -1) == -1) ? i6 + 1 : i6 + 2;
            if (i6 > i3) {
                return i2;
            }
            i2++;
        }
        return length;
    }

    public static SparseIntArray[] getCharsToGsmTables() {
        return sCharsToGsmTables;
    }

    public static SparseIntArray[] getCharsToShiftTables() {
        return sCharsToShiftTables;
    }

    public static synchronized int[] getEnabledLockingShiftTables() {
        return sEnabledLockingShiftTables;
    }

    public static synchronized int[] getEnabledSingleShiftTables() {
        return sEnabledSingleShiftTables;
    }

    public static String getEncodeType() {
        try {
            String string = Settings.Global.getString(ActivityThread.currentApplication().getApplicationContext().getContentResolver(), "persist.radio.sms_encode_type");
            if (string != null) {
                mEncodeType = string;
            }
            Rlog.d(TAG, "getEncodeType = " + mEncodeType);
        } catch (Exception e2) {
            Rlog.d(TAG, "getEncodeType  e= " + e2);
        }
        return mEncodeType;
    }

    public static String getGsm7BitString(byte[] bArr, int i2, int i3) {
        if (i3 <= 0) {
            return null;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4] == -1) {
                i3 = i4;
                break;
            }
        }
        Rlog.d(TAG, "getGsm7BitString index=" + i3);
        try {
            return GsmAlphabet.gsm7BitPackedToString(bArr, i2, (i3 * 8) / 7);
        } catch (StringIndexOutOfBoundsException e2) {
            Rlog.e(TAG, "getGsm7BitString/exception is happen here!", e2);
            return null;
        }
    }

    public static String getGsm8BitString(byte[] bArr, int i2, int i3, String str) {
        try {
            return GsmAlphabet.gsm8BitUnpackedToString(bArr, i2, i3, str);
        } catch (StringIndexOutOfBoundsException e2) {
            Rlog.e(TAG, "getGsm8BitString/exception is happen here!", e2);
            return null;
        }
    }

    public static String gsm7BitPackedToString(byte[] bArr, int i2, int i3) {
        return gsm7BitPackedToString(bArr, i2, i3, 0, 0, 0);
    }

    public static String gsm8BitUnpackedToString(byte[] bArr, int i2, int i3) {
        return gsm8BitUnpackedToString(bArr, i2, i3, "");
    }

    public static char gsmExtendedToChar(int i2) {
        if (i2 == 27 || i2 < 0 || i2 >= 128) {
            return ' ';
        }
        char cCharAt = sLanguageShiftTables[0].charAt(i2);
        return cCharAt == ' ' ? sLanguageTables[0].charAt(i2) : cCharAt;
    }

    public static char gsmToChar(int i2) {
        if (i2 < 0 || i2 >= 128) {
            return ' ';
        }
        return sLanguageTables[0].charAt(i2);
    }

    public static byte[] isAsciiStringToGsm8BitUnpackedField(String str) throws EncodeException {
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) >= 128) {
                throw new EncodeException("string is not ascii string");
            }
        }
        return stringToGsm8BitPacked(str);
    }

    public static boolean isGsmSeptets(char c) {
        if (!sDisableCountryEncodingCheck) {
            enableCountrySpecificEncodings();
        }
        Rlog.d("SmsMessage", "GSM-isGsmSeptets, sEnabledLockingShiftTables.length:" + sEnabledLockingShiftTables.length + ", sEnabledSingleShiftTables.length:" + sCharsToShiftTables.length);
        int[] iArr = sEnabledLockingShiftTables;
        if (iArr.length > 0) {
            for (int i2 : iArr) {
                if (sCharsToGsmTables[i2].get(c, -1) != -1) {
                    return true;
                }
            }
        } else if (sCharsToGsmTables[0].get(c, -1) != -1) {
            return true;
        }
        int[] iArr2 = sEnabledSingleShiftTables;
        if (iArr2.length > 0) {
            for (int i3 : iArr2) {
                if (sCharsToGsmTables[i3].get(c, -1) != -1) {
                    return true;
                }
            }
        } else if (sCharsToShiftTables[0].get(c, -1) != -1) {
            return true;
        }
        return false;
    }

    private static void packSmsChar(byte[] bArr, int i2, int i3) {
        int i4 = i2 / 8;
        int i5 = i2 % 8;
        int i6 = i4 + 1;
        bArr[i6] = (byte) (bArr[i6] | (i3 << i5));
        if (i5 > 1) {
            bArr[i6 + 1] = (byte) (i3 >> (8 - i5));
        }
    }

    public static synchronized void setEnabledLockingShiftTables(int[] iArr) {
        sEnabledLockingShiftTables = iArr;
        sDisableCountryEncodingCheck = true;
    }

    public static synchronized void setEnabledSingleShiftTables(int[] iArr) {
        sEnabledSingleShiftTables = iArr;
        sDisableCountryEncodingCheck = true;
        if (iArr.length > 0) {
            sHighestEnabledSingleShiftCode = iArr[iArr.length - 1];
        } else {
            sHighestEnabledSingleShiftCode = 0;
        }
    }

    public static byte[] stringToGsm7BitPacked(String str) {
        return stringToGsm7BitPacked(str, 0, true, 0, 0);
    }

    public static byte[] stringToGsm7BitPackedWithHeader(String str, byte[] bArr) {
        return stringToGsm7BitPackedWithHeader(str, bArr, 0, 0);
    }

    public static byte[] stringToGsm8BitPacked(String str) {
        int iCountGsmSeptetsUsingTables = countGsmSeptetsUsingTables(str, true, 0, 0);
        byte[] bArr = new byte[iCountGsmSeptetsUsingTables];
        stringToGsm8BitUnpackedField(str, bArr, 0, iCountGsmSeptetsUsingTables);
        return bArr;
    }

    public static void stringToGsm8BitUnpackedField(String str, byte[] bArr, int i2, int i3) {
        int i4 = 0;
        SparseIntArray sparseIntArray = sCharsToGsmTables[0];
        SparseIntArray sparseIntArray2 = sCharsToShiftTables[0];
        int length = str.length();
        int i5 = i2;
        while (i4 < length && i5 - i2 < i3) {
            char cCharAt = str.charAt(i4);
            int i6 = sparseIntArray.get(cCharAt, -1);
            if (i6 == -1) {
                i6 = sparseIntArray2.get(cCharAt, -1);
                if (i6 == -1) {
                    i6 = sparseIntArray.get(32, 32);
                } else {
                    int i7 = i5 + 1;
                    if (i7 - i2 >= i3) {
                        break;
                    }
                    bArr[i5] = 27;
                    i5 = i7;
                }
            }
            bArr[i5] = (byte) i6;
            i4++;
            i5++;
        }
        while (i5 - i2 < i3) {
            bArr[i5] = -1;
            i5++;
        }
    }

    public static byte[] stringToGsmAlphaSS(String str) throws EncodeException {
        char c;
        int length = str.length();
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            int iCodePointAt = str.codePointAt(i5);
            if (iCodePointAt > 127) {
                if (!z2) {
                    z2 = true;
                    i3 = iCodePointAt;
                    i4 = i3;
                }
                if (iCodePointAt > i3) {
                    i3 = iCodePointAt;
                }
                if (iCodePointAt < i4) {
                    i4 = iCodePointAt;
                }
            }
        }
        if (length == 0 || !z2) {
            c = 0;
        } else {
            c = 'P';
            if (i3 - i4 <= 128 && length >= 3) {
                if (i4 >= 32768) {
                    c = 'R';
                } else if ((i3 >> 7) == (i4 >> 7)) {
                    c = 'Q';
                }
            }
        }
        if (c == 0) {
            return isAsciiStringToGsm8BitUnpackedField(str);
        }
        switch (c) {
            case 'P':
                byte[] bArrIsAsciiStringToGsm8BitUnpackedField = isAsciiStringToGsm8BitUnpackedField(str);
                bArrIsAsciiStringToGsm8BitUnpackedField[0] = -128;
                return bArrIsAsciiStringToGsm8BitUnpackedField;
            case 'Q':
                byte[] bArr = new byte[length + 3];
                bArr[0] = -127;
                bArr[1] = (byte) length;
                bArr[2] = (byte) (i4 >> 7);
                while (i2 < length) {
                    int iCodePointAt2 = str.codePointAt(i2) & 127;
                    if (str.codePointAt(i2) >= 128) {
                        bArr[i2 + 3] = (byte) (iCodePointAt2 + 128);
                    } else {
                        bArr[i2 + 3] = convertAsciiCharToGsm8BitUnpacked((char) str.codePointAt(i2));
                    }
                    i2++;
                }
                return bArr;
            case 'R':
                byte[] bArr2 = new byte[length + 4];
                bArr2[0] = -126;
                bArr2[1] = (byte) length;
                bArr2[2] = (byte) (i4 >> 8);
                bArr2[3] = (byte) (i4 & 255);
                while (i2 < length) {
                    bArr2[i2 + 4] = (byte) (str.codePointAt(i2) >= 128 ? (str.codePointAt(i2) - i4) + 128 : charToGsm((char) (str.codePointAt(i2) & 127)));
                    i2++;
                }
                return bArr2;
            default:
                return isAsciiStringToGsm8BitUnpackedField(str);
        }
    }

    public static byte[] stringToGsmAlphaSSForDialer(String str) throws IccPBForEncodeException {
        try {
            return stringToGsmAlphaSS(str);
        } catch (EncodeException unused) {
            throw new IccPBForEncodeException();
        }
    }

    public static int countGsmSeptets(char c, boolean z2) throws EncodeException {
        if (sCharsToGsmTables[0].get(c, -1) != -1) {
            return 1;
        }
        if (sCharsToShiftTables[0].get(c, -1) != -1) {
            return 2;
        }
        if (z2) {
            throw new EncodeException(c);
        }
        return 1;
    }

    public static String gsm7BitPackedToString(byte[] bArr, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i5;
        int i8 = i6;
        StringBuilder sb = new StringBuilder(i3);
        if (i7 < 0 || i7 > sLanguageTables.length) {
            Rlog.w(TAG, "unknown language table " + i7 + ", using default");
            i7 = 0;
        }
        if (i8 < 0 || i8 > sLanguageShiftTables.length) {
            Rlog.w(TAG, "unknown single shift table " + i8 + ", using default");
            i8 = 0;
        }
        StringBuilder sbT = c.t("gsm7BitPackedToString, offset:", i2, ", lengthSeptets:", i3, ", numPaddingBits:");
        m.u(sbT, i4, ", languageTable:", i7, ", shiftTable:");
        sbT.append(i8);
        Rlog.d("SmsMessage-GSM", sbT.toString());
        try {
            String[] strArr = sLanguageTables;
            String str = strArr[i7];
            String[] strArr2 = sLanguageShiftTables;
            String str2 = strArr2[i8];
            if (str.isEmpty()) {
                Rlog.w(TAG, "no language table for code " + i7 + ", using default");
                str = strArr[0];
            }
            if (str2.isEmpty()) {
                Rlog.w(TAG, "no single shift table for code " + i8 + ", using default");
                str2 = strArr2[0];
            }
            boolean z2 = false;
            for (int i9 = 0; i9 < i3; i9++) {
                int i10 = (i9 * 7) + i4;
                int i11 = i10 / 8;
                int i12 = i10 % 8;
                int i13 = i11 + i2;
                int i14 = (bArr[i13] >> i12) & 127;
                if (i12 > 1) {
                    i14 = (i14 & (127 >> (i12 - 1))) | ((bArr[i13 + 1] << (8 - i12)) & 127);
                }
                if (z2) {
                    if (i14 == 27) {
                        sb.append(' ');
                    } else {
                        char cCharAt = str2.charAt(i14);
                        if (cCharAt == ' ') {
                            sb.append(str.charAt(i14));
                        } else {
                            sb.append(cCharAt);
                        }
                    }
                    z2 = false;
                } else if (i14 == 27) {
                    z2 = true;
                } else {
                    sb.append(str.charAt(i14));
                }
            }
            return sb.toString();
        } catch (RuntimeException e2) {
            Rlog.e(TAG, "Error GSM 7 bit packed: ", e2);
            return null;
        }
    }

    public static String gsm8BitUnpackedToString(byte[] bArr, int i2, int i3, String str) {
        Charset charsetForName;
        ByteBuffer byteBufferAllocate;
        boolean z2;
        int i4;
        int i5;
        if (TextUtils.isEmpty(str) || str.equalsIgnoreCase("us-ascii") || !Charset.isSupported(str)) {
            charsetForName = null;
            byteBufferAllocate = null;
            z2 = false;
        } else {
            charsetForName = Charset.forName(str);
            byteBufferAllocate = ByteBuffer.allocate(2);
            z2 = true;
        }
        String str2 = sLanguageTables[0];
        String str3 = sLanguageShiftTables[0];
        StringBuilder sb = new StringBuilder(i3);
        int i6 = i2;
        boolean z3 = false;
        while (true) {
            int i7 = i2 + i3;
            if (i6 >= i7 || (i4 = bArr[i6] & 255) == 255) {
                break;
            }
            if (i4 == 27) {
                if (z3) {
                    sb.append(' ');
                } else {
                    z3 = true;
                }
                i6++;
            } else if (z3) {
                char cCharAt = i4 < str3.length() ? str3.charAt(i4) : ' ';
                if (cCharAt != ' ') {
                    sb.append(cCharAt);
                } else if (i4 < str2.length()) {
                    sb.append(str2.charAt(i4));
                } else {
                    sb.append(' ');
                }
            } else if (z2 && i4 >= 128 && (i5 = i6 + 1) < i7) {
                byteBufferAllocate.clear();
                byteBufferAllocate.put(bArr, i6, 2);
                byteBufferAllocate.flip();
                sb.append(charsetForName.decode(byteBufferAllocate).toString());
                i6 = i5;
            } else if (i4 < str2.length()) {
                sb.append(str2.charAt(i4));
            } else {
                sb.append(' ');
            }
            z3 = false;
            i6++;
        }
        return sb.toString();
    }

    public static byte[] stringToGsm7BitPacked(String str, int i2, int i3) {
        return stringToGsm7BitPacked(str, 0, true, i2, i3);
    }

    public static byte[] stringToGsm7BitPackedWithHeader(String str, byte[] bArr, int i2, int i3) throws EncodeException {
        if (bArr == null || bArr.length == 0) {
            return stringToGsm7BitPacked(str, i2, i3);
        }
        byte[] bArrStringToGsm7BitPacked = stringToGsm7BitPacked(str, (((bArr.length + 1) * 8) + 6) / 7, WifiEnterpriseConfig.ENGINE_ENABLE.equals(mEncodeType), i2, i3);
        bArrStringToGsm7BitPacked[1] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArrStringToGsm7BitPacked, 2, bArr.length);
        return bArrStringToGsm7BitPacked;
    }

    public static int charToGsm(char c, boolean z2) throws EncodeException {
        SparseIntArray[] sparseIntArrayArr = sCharsToGsmTables;
        int i2 = sparseIntArrayArr[0].get(c, -1);
        if (i2 != -1) {
            return i2;
        }
        if (sCharsToShiftTables[0].get(c, -1) != -1) {
            return 27;
        }
        if (!z2) {
            return sparseIntArrayArr[0].get(32, 32);
        }
        throw new EncodeException(c);
    }

    public static byte[] stringToGsm7BitPacked(String str, int i2, boolean z2, int i3, int i4) throws EncodeException {
        int length = str.length();
        int iCountGsmSeptetsUsingTables = countGsmSeptetsUsingTables(str, !z2, i3, i4);
        Rlog.i("SmsMessageGSM", "throwException:" + z2 + "; septetCount=" + iCountGsmSeptetsUsingTables);
        if (iCountGsmSeptetsUsingTables == -1) {
            throw new EncodeException("countGsmSeptetsUsingTables(): unencodable char");
        }
        int i5 = iCountGsmSeptetsUsingTables + i2;
        if (i5 <= 255) {
            byte[] bArr = new byte[(((i5 * 7) + 7) / 8) + 1];
            SparseIntArray sparseIntArray = sCharsToGsmTables[i3];
            SparseIntArray sparseIntArray2 = sCharsToShiftTables[i4];
            int i6 = i2 * 7;
            int i7 = 0;
            while (i7 < length && i2 < i5) {
                char cCharAt = str.charAt(i7);
                int i8 = sparseIntArray.get(cCharAt, -1);
                if (i8 == -1) {
                    i8 = sparseIntArray2.get(cCharAt, -1);
                    if (i8 != -1) {
                        packSmsChar(bArr, i6, 27);
                        i6 += 7;
                        i2++;
                    } else if (!z2) {
                        i8 = sparseIntArray.get(32, 32);
                    } else {
                        throw new EncodeException("stringToGsm7BitPacked(): unencodable char");
                    }
                }
                packSmsChar(bArr, i6, i8);
                i2++;
                i7++;
                i6 += 7;
            }
            bArr[0] = (byte) i5;
            return bArr;
        }
        throw new EncodeException("Payload cannot exceed 255 septets");
    }

    public static TextEncodingDetails countGsmSeptets(CharSequence charSequence, boolean z2) {
        int i2;
        int i3;
        int i4;
        if (!sDisableCountryEncodingCheck) {
            enableCountrySpecificEncodings();
        }
        int i5 = 160;
        int i6 = -1;
        int i7 = 0;
        if (sEnabledSingleShiftTables.length + sEnabledLockingShiftTables.length == 0) {
            TextEncodingDetails textEncodingDetails = new TextEncodingDetails();
            int iCountGsmSeptetsUsingTables = countGsmSeptetsUsingTables(charSequence, z2, 0, 0);
            if (iCountGsmSeptetsUsingTables == -1) {
                return null;
            }
            textEncodingDetails.codeUnitSize = 1;
            textEncodingDetails.codeUnitCount = iCountGsmSeptetsUsingTables;
            if (iCountGsmSeptetsUsingTables > 160) {
                int i8 = (iCountGsmSeptetsUsingTables + 152) / 153;
                textEncodingDetails.msgCount = i8;
                textEncodingDetails.codeUnitsRemaining = (i8 * 153) - iCountGsmSeptetsUsingTables;
            } else {
                textEncodingDetails.msgCount = 1;
                textEncodingDetails.codeUnitsRemaining = 160 - iCountGsmSeptetsUsingTables;
            }
            textEncodingDetails.codeUnitSize = 1;
            return textEncodingDetails;
        }
        int i9 = sHighestEnabledSingleShiftCode;
        ArrayList<LanguagePairCount> arrayList = new ArrayList(sEnabledLockingShiftTables.length + 1);
        arrayList.add(new LanguagePairCount(0));
        for (int i10 : sEnabledLockingShiftTables) {
            if (i10 != 0 && !sLanguageTables[i10].isEmpty()) {
                arrayList.add(new LanguagePairCount(i10));
            }
        }
        int length = charSequence.length();
        int i11 = 0;
        while (i11 < length && !arrayList.isEmpty()) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt == 27) {
                Rlog.w(TAG, "countGsmSeptets() string contains Escape character, ignoring!");
            } else {
                for (LanguagePairCount languagePairCount : arrayList) {
                    if (sCharsToGsmTables[languagePairCount.languageCode].get(cCharAt, -1) == -1) {
                        for (int i12 = i7; i12 <= i9; i12++) {
                            if (languagePairCount.septetCounts[i12] != -1) {
                                if (sCharsToShiftTables[i12].get(cCharAt, -1) != -1) {
                                    int[] iArr = languagePairCount.septetCounts;
                                    iArr[i12] = iArr[i12] + 2;
                                } else if (z2) {
                                    int[] iArr2 = languagePairCount.septetCounts;
                                    iArr2[i12] = iArr2[i12] + 1;
                                    int[] iArr3 = languagePairCount.unencodableCounts;
                                    iArr3[i12] = iArr3[i12] + 1;
                                } else {
                                    languagePairCount.septetCounts[i12] = -1;
                                }
                            }
                        }
                    } else {
                        for (int i13 = i7; i13 <= i9; i13++) {
                            int[] iArr4 = languagePairCount.septetCounts;
                            int i14 = iArr4[i13];
                            if (i14 != -1) {
                                iArr4[i13] = i14 + 1;
                            }
                        }
                    }
                    i7 = 0;
                }
            }
            i11++;
            i7 = 0;
        }
        TextEncodingDetails textEncodingDetails2 = new TextEncodingDetails();
        textEncodingDetails2.msgCount = Integer.MAX_VALUE;
        textEncodingDetails2.codeUnitSize = 1;
        int i15 = Integer.MAX_VALUE;
        for (LanguagePairCount languagePairCount2 : arrayList) {
            int i16 = 0;
            while (i16 <= i9) {
                int i17 = languagePairCount2.septetCounts[i16];
                if (i17 != i6) {
                    int i18 = languagePairCount2.languageCode;
                    int i19 = (i18 == 0 || i16 == 0) ? (i18 == 0 && i16 == 0) ? 0 : 5 : 8;
                    if (i17 + i19 > i5) {
                        if (i19 == 0) {
                            i19 = 1;
                        }
                        int i20 = 160 - (i19 + 6);
                        i3 = ((i17 + i20) - 1) / i20;
                        i2 = (i20 * i3) - i17;
                    } else {
                        i2 = (160 - i19) - i17;
                        i3 = 1;
                    }
                    int i21 = languagePairCount2.unencodableCounts[i16];
                    if ((!z2 || i21 <= i15) && ((z2 && i21 < i15) || i3 < (i4 = textEncodingDetails2.msgCount) || (i3 == i4 && i2 > textEncodingDetails2.codeUnitsRemaining))) {
                        textEncodingDetails2.msgCount = i3;
                        textEncodingDetails2.codeUnitCount = i17;
                        textEncodingDetails2.codeUnitsRemaining = i2;
                        textEncodingDetails2.languageTable = i18;
                        textEncodingDetails2.languageShiftTable = i16;
                        i15 = i21;
                    }
                }
                i16++;
                i5 = 160;
                i6 = -1;
            }
        }
        if (textEncodingDetails2.msgCount == Integer.MAX_VALUE) {
            return null;
        }
        return textEncodingDetails2;
    }
}
