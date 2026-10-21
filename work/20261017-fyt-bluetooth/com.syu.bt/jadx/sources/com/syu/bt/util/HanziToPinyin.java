package com.syu.bt.util;

import android.text.TextUtils;
import com.github.promeg.pinyinhelper.Pinyin;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.App_Bt;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class HanziToPinyin {
    private static final Collator COLLATOR;
    private static final String FIRST_PINYIN_UNIHAN = "阿";
    private static final String LAST_PINYIN_UNIHAN = "\u9fff";
    public static final byte[][] PINYINS;
    public static final char[] UNIHANS = {38463, 21710, 23433, 32942, 20985, 20843, 25344, 25203, 37030, 21241, 38466, 22868, 20283, 23620, 36793, 28780, 24971, 27715, 20907, 30326, 23788, 22163, 20594, 21442, 20179, 25761, 20874, 23934, 26365, 26366, 23652, 21449, 33414, 36799, 20261, 25220, 36710, 25275, 27784, 27785, 38455, 21507, 20805, 25277, 20986, 27451, 25571, 24027, 20997, 21561, 26110, 36916, 21618, 21254, 20945, 31895, 27718, 23828, 37032, 25619, 21649, 21574, 20025, 24403, 20992, 22042, 25189, 28783, 27664, 22002, 30008, 20993, 29241, 19969, 19999, 19996, 21562, 21438, 32785, 35176, 21544, 22810, 22968, 35830, 22848, 38821, 20799, 21457, 24070, 21274, 39134, 20998, 20016, 35205, 20175, 32017, 20245, 26094, 20357, 29976, 20872, 30347, 25096, 32473, 26681, 21039, 24037, 21246, 20272, 29916, 20054, 20851, 20809, 24402, 20008, 21593, 21704, 21645, 20292, 22831, 33568, 35779, 40658, 25323, 20136, 22135, 21503, 40769, 20079, 33457, 24576, 29375, 24031, 28784, 26127, 21529, 19980, 21152, 25099, 27743, 33405, 38454, 24062, 22357, 20866, 20009, 20965, 23010, 22104, 20891, 21652, 24320, 21002, 24572, 23611, 21308, 32910, 21157, 31354, 25248, 25181, 22840, 33967, 23485, 21281, 20111, 22372, 25193, 22403, 26469, 20848, 21879, 25438, 32907, 21202, 23834, 21013, 20457, 22849, 33391, 25769, 21015, 25294, 21026, 28316, 22230, 40857, 30620, 22108, 23048, 30055, 25249, 32599, 21603, 22920, 22475, 23258, 29284, 29483, 20040, 21573, 38376, 30015, 21674, 23424, 21941, 20060, 27665, 21517, 35884, 25720, 21726, 27626, 21999, 25295, 33097, 22241, 22228, 23404, 30098, 23070, 24641, 33021, 22958, 25288, 23330, 40479, 25423, 22236, 23425, 22942, 20892, 32698, 22900, 22907, 30111, 40641, 37069, 21908, 35764, 22929, 25293, 30469, 20051, 25243, 21624, 21943, 21257, 19989, 22248, 21117, 27669, 23000, 20050, 38027, 21078, 20166, 19971, 25488, 21315, 21595, 24708, 30335, 20146, 29381, 33422, 19992, 21306, 23761, 32570, 22795, 21605, 31331, 23046, 24825, 20154, 25172, 26085, 33592, 21433, 37018, 25404, 22567, 23121, 30628, 25468, 20200, 27618, 19977, 26706, 25531, 38314, 26862, 20711, 26432, 31579, 23665, 20260, 24368, 22882, 30003, 33688, 25938, 21319, 23608, 21454, 20070, 21047, 34928, 38377, 21452, 35841, 21550, 35828, 21430, 24554, 25436, 33487, 29435, 22794, 23385, 21766, 20182, 22268, 22349, 27748, 22834, 24529, 29093, 21076, 22825, 26091, 24086, 21381, 22258, 20599, 20984, 28237, 25512, 21534, 20039, 31349, 27498, 24367, 23587, 21361, 26167, 32705, 25373, 20044, 22805, 34418, 20186, 20065, 28785, 20123, 24515, 26143, 20982, 20241, 21505, 21509, 21066, 22339, 20011, 24697, 22830, 24186, 20539, 19968, 22233, 24212, 21727, 20323, 20248, 25180, 22246, 26352, 26197, 31584, 31612, 24064, 28797, 20802, 21288, 20654, 21017, 36156, 24590, 22679, 25166, 25434, 27838, 24352, 38271, 38263, 20299, 34567, 36126, 20105, 20043, 23769, 24226, 20013, 24030, 26417, 25235, 25341, 19987, 22918, 38585, 23442, 21331, 20082, 23447, 37049, 31199, 38075, 21404, 23562, 26152, 20825, 40899, 40900};
    private static HanziToPinyin sInstance;
    private final boolean mHasChinaCollator;

    static {
        byte[] bArr = new byte[6];
        bArr[0] = 65;
        byte[] bArr2 = new byte[6];
        bArr2[0] = 65;
        bArr2[1] = 73;
        byte[] bArr3 = new byte[6];
        bArr3[0] = 65;
        bArr3[1] = 78;
        byte[] bArr4 = new byte[6];
        bArr4[0] = 65;
        bArr4[1] = 79;
        byte[] bArr5 = new byte[6];
        bArr5[0] = 66;
        bArr5[1] = 65;
        byte[] bArr6 = new byte[6];
        bArr6[0] = 66;
        bArr6[1] = 73;
        byte[] bArr7 = new byte[6];
        bArr7[0] = 66;
        bArr7[1] = 79;
        byte[] bArr8 = new byte[6];
        bArr8[0] = 66;
        bArr8[1] = 85;
        byte[] bArr9 = new byte[6];
        bArr9[0] = 67;
        bArr9[1] = 65;
        byte[] bArr10 = new byte[6];
        bArr10[0] = 67;
        bArr10[1] = 69;
        byte[] bArr11 = new byte[6];
        bArr11[0] = 67;
        bArr11[1] = 73;
        byte[] bArr12 = new byte[6];
        bArr12[0] = 67;
        bArr12[1] = 85;
        byte[] bArr13 = new byte[6];
        bArr13[0] = 68;
        bArr13[1] = 65;
        byte[] bArr14 = new byte[6];
        bArr14[0] = 68;
        bArr14[1] = 69;
        byte[] bArr15 = new byte[6];
        bArr15[0] = 68;
        bArr15[1] = 73;
        byte[] bArr16 = new byte[6];
        bArr16[0] = 68;
        bArr16[1] = 85;
        byte[] bArr17 = new byte[6];
        bArr17[0] = 69;
        byte[] bArr18 = new byte[6];
        bArr18[0] = 69;
        bArr18[1] = 73;
        byte[] bArr19 = new byte[6];
        bArr19[0] = 69;
        bArr19[1] = 78;
        byte[] bArr20 = new byte[6];
        bArr20[0] = 69;
        bArr20[1] = 82;
        byte[] bArr21 = new byte[6];
        bArr21[0] = 70;
        bArr21[1] = 65;
        byte[] bArr22 = new byte[6];
        bArr22[0] = 70;
        bArr22[1] = 79;
        byte[] bArr23 = new byte[6];
        bArr23[0] = 70;
        bArr23[1] = 85;
        byte[] bArr24 = new byte[6];
        bArr24[0] = 71;
        bArr24[1] = 65;
        byte[] bArr25 = new byte[6];
        bArr25[0] = 71;
        bArr25[1] = 69;
        byte[] bArr26 = new byte[6];
        bArr26[0] = 71;
        bArr26[1] = 85;
        byte[] bArr27 = new byte[6];
        bArr27[0] = 72;
        bArr27[1] = 65;
        byte[] bArr28 = new byte[6];
        bArr28[0] = 72;
        bArr28[1] = 69;
        byte[] bArr29 = new byte[6];
        bArr29[0] = 72;
        bArr29[1] = 77;
        byte[] bArr30 = new byte[6];
        bArr30[0] = 72;
        bArr30[1] = 85;
        byte[] bArr31 = new byte[6];
        bArr31[0] = 74;
        bArr31[1] = 73;
        byte[] bArr32 = new byte[6];
        bArr32[0] = 74;
        bArr32[1] = 85;
        byte[] bArr33 = new byte[6];
        bArr33[0] = 75;
        bArr33[1] = 65;
        byte[] bArr34 = new byte[6];
        bArr34[0] = 75;
        bArr34[1] = 69;
        byte[] bArr35 = new byte[6];
        bArr35[0] = 75;
        bArr35[1] = 85;
        byte[] bArr36 = new byte[6];
        bArr36[0] = 76;
        bArr36[1] = 65;
        byte[] bArr37 = new byte[6];
        bArr37[0] = 76;
        bArr37[1] = 69;
        byte[] bArr38 = new byte[6];
        bArr38[0] = 76;
        bArr38[1] = 73;
        byte[] bArr39 = new byte[6];
        bArr39[0] = 76;
        bArr39[1] = 79;
        byte[] bArr40 = new byte[6];
        bArr40[0] = 76;
        bArr40[1] = 85;
        byte[] bArr41 = new byte[6];
        bArr41[0] = 77;
        byte[] bArr42 = new byte[6];
        bArr42[0] = 77;
        bArr42[1] = 65;
        byte[] bArr43 = new byte[6];
        bArr43[0] = 77;
        bArr43[1] = 69;
        byte[] bArr44 = new byte[6];
        bArr44[0] = 77;
        bArr44[1] = 73;
        byte[] bArr45 = new byte[6];
        bArr45[0] = 77;
        bArr45[1] = 79;
        byte[] bArr46 = new byte[6];
        bArr46[0] = 77;
        bArr46[1] = 85;
        byte[] bArr47 = new byte[6];
        bArr47[0] = 78;
        byte[] bArr48 = new byte[6];
        bArr48[0] = 78;
        bArr48[1] = 65;
        byte[] bArr49 = new byte[6];
        bArr49[0] = 78;
        bArr49[1] = 69;
        byte[] bArr50 = new byte[6];
        bArr50[0] = 78;
        bArr50[1] = 73;
        byte[] bArr51 = new byte[6];
        bArr51[0] = 78;
        bArr51[1] = 85;
        byte[] bArr52 = new byte[6];
        bArr52[0] = 79;
        byte[] bArr53 = new byte[6];
        bArr53[0] = 79;
        bArr53[1] = 85;
        byte[] bArr54 = new byte[6];
        bArr54[0] = 80;
        bArr54[1] = 65;
        byte[] bArr55 = new byte[6];
        bArr55[0] = 80;
        bArr55[1] = 73;
        byte[] bArr56 = new byte[6];
        bArr56[0] = 80;
        bArr56[1] = 79;
        byte[] bArr57 = new byte[6];
        bArr57[0] = 80;
        bArr57[1] = 85;
        byte[] bArr58 = new byte[6];
        bArr58[0] = 81;
        bArr58[1] = 73;
        byte[] bArr59 = new byte[6];
        bArr59[0] = 81;
        bArr59[1] = 85;
        byte[] bArr60 = new byte[6];
        bArr60[0] = 82;
        bArr60[1] = 69;
        byte[] bArr61 = new byte[6];
        bArr61[0] = 82;
        bArr61[1] = 73;
        byte[] bArr62 = new byte[6];
        bArr62[0] = 82;
        bArr62[1] = 85;
        byte[] bArr63 = new byte[6];
        bArr63[0] = 83;
        bArr63[1] = 65;
        byte[] bArr64 = new byte[6];
        bArr64[0] = 83;
        bArr64[1] = 69;
        byte[] bArr65 = new byte[6];
        bArr65[0] = 83;
        bArr65[1] = 73;
        byte[] bArr66 = new byte[6];
        bArr66[0] = 83;
        bArr66[1] = 85;
        byte[] bArr67 = new byte[6];
        bArr67[0] = 84;
        bArr67[1] = 65;
        byte[] bArr68 = new byte[6];
        bArr68[0] = 84;
        bArr68[1] = 69;
        byte[] bArr69 = new byte[6];
        bArr69[0] = 84;
        bArr69[1] = 73;
        byte[] bArr70 = new byte[6];
        bArr70[0] = 84;
        bArr70[1] = 85;
        byte[] bArr71 = new byte[6];
        bArr71[0] = 87;
        bArr71[1] = 65;
        byte[] bArr72 = new byte[6];
        bArr72[0] = 87;
        bArr72[1] = 79;
        byte[] bArr73 = new byte[6];
        bArr73[0] = 87;
        bArr73[1] = 85;
        byte[] bArr74 = new byte[6];
        bArr74[0] = 88;
        bArr74[1] = 73;
        byte[] bArr75 = new byte[6];
        bArr75[0] = 88;
        bArr75[1] = 85;
        byte[] bArr76 = new byte[6];
        bArr76[0] = 89;
        bArr76[1] = 65;
        byte[] bArr77 = new byte[6];
        bArr77[0] = 89;
        bArr77[1] = 69;
        byte[] bArr78 = new byte[6];
        bArr78[0] = 89;
        bArr78[1] = 73;
        byte[] bArr79 = new byte[6];
        bArr79[0] = 89;
        bArr79[1] = 79;
        byte[] bArr80 = new byte[6];
        bArr80[0] = 89;
        bArr80[1] = 85;
        byte[] bArr81 = new byte[6];
        bArr81[0] = 90;
        bArr81[1] = 65;
        byte[] bArr82 = new byte[6];
        bArr82[0] = 90;
        bArr82[1] = 69;
        byte[] bArr83 = new byte[6];
        bArr83[0] = 90;
        bArr83[1] = 73;
        byte[] bArr84 = new byte[6];
        bArr84[0] = 90;
        bArr84[1] = 85;
        PINYINS = new byte[][]{bArr, bArr2, bArr3, new byte[]{65, 78, 71, 0, 0, 0}, bArr4, bArr5, new byte[]{66, 65, 73, 0, 0, 0}, new byte[]{66, 65, 78, 0, 0, 0}, new byte[]{66, 65, 78, 71, 0, 0}, new byte[]{66, 65, 79, 0, 0, 0}, new byte[]{66, 69, 73, 0, 0, 0}, new byte[]{66, 69, 78, 0, 0, 0}, new byte[]{66, 69, 78, 71, 0, 0}, bArr6, new byte[]{66, 73, 65, 78, 0, 0}, new byte[]{66, 73, 65, 79, 0, 0}, new byte[]{66, 73, 69, 0, 0, 0}, new byte[]{66, 73, 78, 0, 0, 0}, new byte[]{66, 73, 78, 71, 0, 0}, bArr7, bArr8, bArr9, new byte[]{67, 65, 73, 0, 0, 0}, new byte[]{67, 65, 78, 0, 0, 0}, new byte[]{67, 65, 78, 71, 0, 0}, new byte[]{67, 65, 79, 0, 0, 0}, bArr10, new byte[]{67, 69, 78, 0, 0, 0}, new byte[]{67, 69, 78, 71, 0, 0}, new byte[]{90, 69, 78, 71, 0, 0}, new byte[]{67, 69, 78, 71, 0, 0}, new byte[]{67, 72, 65, 0, 0, 0}, new byte[]{67, 72, 65, 73, 0, 0}, new byte[]{67, 72, 65, 78, 0, 0}, new byte[]{67, 72, 65, 78, 71, 0}, new byte[]{67, 72, 65, 79, 0, 0}, new byte[]{67, 72, 69, 0, 0, 0}, new byte[]{67, 72, 69, 78, 0, 0}, new byte[]{83, 72, 69, 78, 0, 0}, new byte[]{67, 72, 69, 78, 0, 0}, new byte[]{67, 72, 69, 78, 71, 0}, new byte[]{67, 72, 73, 0, 0, 0}, new byte[]{67, 72, 79, 78, 71, 0}, new byte[]{67, 72, 79, 85, 0, 0}, new byte[]{67, 72, 85, 0, 0, 0}, new byte[]{67, 72, 85, 65, 0, 0}, new byte[]{67, 72, 85, 65, 73, 0}, new byte[]{67, 72, 85, 65, 78, 0}, new byte[]{67, 72, 85, 65, 78, 71}, new byte[]{67, 72, 85, 73, 0, 0}, new byte[]{67, 72, 85, 78, 0, 0}, new byte[]{67, 72, 85, 79, 0, 0}, bArr11, new byte[]{67, 79, 78, 71, 0, 0}, new byte[]{67, 79, 85, 0, 0, 0}, bArr12, new byte[]{67, 85, 65, 78, 0, 0}, new byte[]{67, 85, 73, 0, 0, 0}, new byte[]{67, 85, 78, 0, 0, 0}, new byte[]{67, 85, 79, 0, 0, 0}, bArr13, new byte[]{68, 65, 73, 0, 0, 0}, new byte[]{68, 65, 78, 0, 0, 0}, new byte[]{68, 65, 78, 71, 0, 0}, new byte[]{68, 65, 79, 0, 0, 0}, bArr14, new byte[]{68, 69, 78, 0, 0, 0}, new byte[]{68, 69, 78, 71, 0, 0}, bArr15, new byte[]{68, 73, 65, 0, 0, 0}, new byte[]{68, 73, 65, 78, 0, 0}, new byte[]{68, 73, 65, 79, 0, 0}, new byte[]{68, 73, 69, 0, 0, 0}, new byte[]{68, 73, 78, 71, 0, 0}, new byte[]{68, 73, 85, 0, 0, 0}, new byte[]{68, 79, 78, 71, 0, 0}, new byte[]{68, 79, 85, 0, 0, 0}, bArr16, new byte[]{68, 85, 65, 78, 0, 0}, new byte[]{68, 85, 73, 0, 0, 0}, new byte[]{68, 85, 78, 0, 0, 0}, new byte[]{68, 85, 79, 0, 0, 0}, bArr17, bArr18, bArr19, new byte[]{69, 78, 71, 0, 0, 0}, bArr20, bArr21, new byte[]{70, 65, 78, 0, 0, 0}, new byte[]{70, 65, 78, 71, 0, 0}, new byte[]{70, 69, 73, 0, 0, 0}, new byte[]{70, 69, 78, 0, 0, 0}, new byte[]{70, 69, 78, 71, 0, 0}, new byte[]{70, 73, 65, 79, 0, 0}, bArr22, new byte[]{70, 79, 85, 0, 0, 0}, bArr23, bArr24, new byte[]{71, 65, 73, 0, 0, 0}, new byte[]{71, 65, 78, 0, 0, 0}, new byte[]{71, 65, 78, 71, 0, 0}, new byte[]{71, 65, 79, 0, 0, 0}, bArr25, new byte[]{71, 69, 73, 0, 0, 0}, new byte[]{71, 69, 78, 0, 0, 0}, new byte[]{71, 69, 78, 71, 0, 0}, new byte[]{71, 79, 78, 71, 0, 0}, new byte[]{71, 79, 85, 0, 0, 0}, bArr26, new byte[]{71, 85, 65, 0, 0, 0}, new byte[]{71, 85, 65, 73, 0, 0}, new byte[]{71, 85, 65, 78, 0, 0}, new byte[]{71, 85, 65, 78, 71, 0}, new byte[]{71, 85, 73, 0, 0, 0}, new byte[]{71, 85, 78, 0, 0, 0}, new byte[]{71, 85, 79, 0, 0, 0}, bArr27, new byte[]{72, 65, 73, 0, 0, 0}, new byte[]{72, 65, 78, 0, 0, 0}, new byte[]{72, 65, 78, 71, 0, 0}, new byte[]{72, 65, 79, 0, 0, 0}, bArr28, new byte[]{72, 69, 73, 0, 0, 0}, new byte[]{72, 69, 78, 0, 0, 0}, new byte[]{72, 69, 78, 71, 0, 0}, bArr29, new byte[]{72, 79, 78, 71, 0, 0}, new byte[]{72, 79, 85, 0, 0, 0}, bArr30, new byte[]{72, 85, 65, 0, 0, 0}, new byte[]{72, 85, 65, 73, 0, 0}, new byte[]{72, 85, 65, 78, 0, 0}, new byte[]{72, 85, 65, 78, 71, 0}, new byte[]{72, 85, 73, 0, 0, 0}, new byte[]{72, 85, 78, 0, 0, 0}, new byte[]{72, 85, 79, 0, 0, 0}, bArr31, new byte[]{74, 73, 65, 0, 0, 0}, new byte[]{74, 73, 65, 78, 0, 0}, new byte[]{74, 73, 65, 78, 71, 0}, new byte[]{74, 73, 65, 79, 0, 0}, new byte[]{74, 73, 69, 0, 0, 0}, new byte[]{74, 73, 78, 0, 0, 0}, new byte[]{74, 73, 78, 71, 0, 0}, new byte[]{74, 73, 79, 78, 71, 0}, new byte[]{74, 73, 85, 0, 0, 0}, bArr32, new byte[]{74, 85, 65, 78, 0, 0}, new byte[]{74, 85, 69, 0, 0, 0}, new byte[]{74, 85, 78, 0, 0, 0}, bArr33, new byte[]{75, 65, 73, 0, 0, 0}, new byte[]{75, 65, 78, 0, 0, 0}, new byte[]{75, 65, 78, 71, 0, 0}, new byte[]{75, 65, 79, 0, 0, 0}, bArr34, new byte[]{75, 69, 78, 0, 0, 0}, new byte[]{75, 69, 78, 71, 0, 0}, new byte[]{75, 79, 78, 71, 0, 0}, new byte[]{75, 79, 85, 0, 0, 0}, bArr35, new byte[]{75, 85, 65, 0, 0, 0}, new byte[]{75, 85, 65, 73, 0, 0}, new byte[]{75, 85, 65, 78, 0, 0}, new byte[]{75, 85, 65, 78, 71, 0}, new byte[]{75, 85, 73, 0, 0, 0}, new byte[]{75, 85, 78, 0, 0, 0}, new byte[]{75, 85, 79, 0, 0, 0}, bArr36, new byte[]{76, 65, 73, 0, 0, 0}, new byte[]{76, 65, 78, 0, 0, 0}, new byte[]{76, 65, 78, 71, 0, 0}, new byte[]{76, 65, 79, 0, 0, 0}, bArr37, new byte[]{76, 69, 73, 0, 0, 0}, new byte[]{76, 69, 78, 71, 0, 0}, bArr38, new byte[]{76, 73, 65, 0, 0, 0}, new byte[]{76, 73, 65, 78, 0, 0}, new byte[]{76, 73, 65, 78, 71, 0}, new byte[]{76, 73, 65, 79, 0, 0}, new byte[]{76, 73, 69, 0, 0, 0}, new byte[]{76, 73, 78, 0, 0, 0}, new byte[]{76, 73, 78, 71, 0, 0}, new byte[]{76, 73, 85, 0, 0, 0}, bArr39, new byte[]{76, 79, 78, 71, 0, 0}, new byte[]{76, 79, 85, 0, 0, 0}, bArr40, new byte[]{76, 85, 65, 78, 0, 0}, new byte[]{76, 85, 69, 0, 0, 0}, new byte[]{76, 85, 78, 0, 0, 0}, new byte[]{76, 85, 79, 0, 0, 0}, bArr41, bArr42, new byte[]{77, 65, 73, 0, 0, 0}, new byte[]{77, 65, 78, 0, 0, 0}, new byte[]{77, 65, 78, 71, 0, 0}, new byte[]{77, 65, 79, 0, 0, 0}, bArr43, new byte[]{77, 69, 73, 0, 0, 0}, new byte[]{77, 69, 78, 0, 0, 0}, new byte[]{77, 69, 78, 71, 0, 0}, bArr44, new byte[]{77, 73, 65, 78, 0, 0}, new byte[]{77, 73, 65, 79, 0, 0}, new byte[]{77, 73, 69, 0, 0, 0}, new byte[]{77, 73, 78, 0, 0, 0}, new byte[]{77, 73, 78, 71, 0, 0}, new byte[]{77, 73, 85, 0, 0, 0}, bArr45, new byte[]{77, 79, 85, 0, 0, 0}, bArr46, bArr47, bArr48, new byte[]{78, 65, 73, 0, 0, 0}, new byte[]{78, 65, 78, 0, 0, 0}, new byte[]{78, 65, 78, 71, 0, 0}, new byte[]{78, 65, 79, 0, 0, 0}, bArr49, new byte[]{78, 69, 73, 0, 0, 0}, new byte[]{78, 69, 78, 0, 0, 0}, new byte[]{78, 69, 78, 71, 0, 0}, bArr50, new byte[]{78, 73, 65, 78, 0, 0}, new byte[]{78, 73, 65, 78, 71, 0}, new byte[]{78, 73, 65, 79, 0, 0}, new byte[]{78, 73, 69, 0, 0, 0}, new byte[]{78, 73, 78, 0, 0, 0}, new byte[]{78, 73, 78, 71, 0, 0}, new byte[]{78, 73, 85, 0, 0, 0}, new byte[]{78, 79, 78, 71, 0, 0}, new byte[]{78, 79, 85, 0, 0, 0}, bArr51, new byte[]{78, 85, 65, 78, 0, 0}, new byte[]{78, 85, 69, 0, 0, 0}, new byte[]{78, 85, 78, 0, 0, 0}, new byte[]{78, 85, 79, 0, 0, 0}, bArr52, bArr53, bArr54, new byte[]{80, 65, 73, 0, 0, 0}, new byte[]{80, 65, 78, 0, 0, 0}, new byte[]{80, 65, 78, 71, 0, 0}, new byte[]{80, 65, 79, 0, 0, 0}, new byte[]{80, 69, 73, 0, 0, 0}, new byte[]{80, 69, 78, 0, 0, 0}, new byte[]{80, 69, 78, 71, 0, 0}, bArr55, new byte[]{80, 73, 65, 78, 0, 0}, new byte[]{80, 73, 65, 79, 0, 0}, new byte[]{80, 73, 69, 0, 0, 0}, new byte[]{80, 73, 78, 0, 0, 0}, new byte[]{80, 73, 78, 71, 0, 0}, bArr56, new byte[]{80, 79, 85, 0, 0, 0}, bArr57, bArr58, new byte[]{81, 73, 65, 0, 0, 0}, new byte[]{81, 73, 65, 78, 0, 0}, new byte[]{81, 73, 65, 78, 71, 0}, new byte[]{81, 73, 65, 79, 0, 0}, new byte[]{81, 73, 69, 0, 0, 0}, new byte[]{81, 73, 78, 0, 0, 0}, new byte[]{81, 73, 78, 71, 0, 0}, new byte[]{81, 73, 79, 78, 71, 0}, new byte[]{81, 73, 85, 0, 0, 0}, bArr59, new byte[]{81, 85, 65, 78, 0, 0}, new byte[]{81, 85, 69, 0, 0, 0}, new byte[]{81, 85, 78, 0, 0, 0}, new byte[]{82, 65, 78, 0, 0, 0}, new byte[]{82, 65, 78, 71, 0, 0}, new byte[]{82, 65, 79, 0, 0, 0}, bArr60, new byte[]{82, 69, 78, 0, 0, 0}, new byte[]{82, 69, 78, 71, 0, 0}, bArr61, new byte[]{82, 79, 78, 71, 0, 0}, new byte[]{82, 79, 85, 0, 0, 0}, bArr62, new byte[]{82, 85, 65, 0, 0, 0}, new byte[]{82, 85, 65, 78, 0, 0}, new byte[]{82, 85, 73, 0, 0, 0}, new byte[]{82, 85, 78, 0, 0, 0}, new byte[]{82, 85, 79, 0, 0, 0}, bArr63, new byte[]{83, 65, 73, 0, 0, 0}, new byte[]{83, 65, 78, 0, 0, 0}, new byte[]{83, 65, 78, 71, 0, 0}, new byte[]{83, 65, 79, 0, 0, 0}, bArr64, new byte[]{83, 69, 78, 0, 0, 0}, new byte[]{83, 69, 78, 71, 0, 0}, new byte[]{83, 72, 65, 0, 0, 0}, new byte[]{83, 72, 65, 73, 0, 0}, new byte[]{83, 72, 65, 78, 0, 0}, new byte[]{83, 72, 65, 78, 71, 0}, new byte[]{83, 72, 65, 79, 0, 0}, new byte[]{83, 72, 69, 0, 0, 0}, new byte[]{83, 72, 69, 78, 0, 0}, new byte[]{88, 73, 78, 0, 0, 0}, new byte[]{83, 72, 69, 78, 0, 0}, new byte[]{83, 72, 69, 78, 71, 0}, new byte[]{83, 72, 73, 0, 0, 0}, new byte[]{83, 72, 79, 85, 0, 0}, new byte[]{83, 72, 85, 0, 0, 0}, new byte[]{83, 72, 85, 65, 0, 0}, new byte[]{83, 72, 85, 65, 73, 0}, new byte[]{83, 72, 85, 65, 78, 0}, new byte[]{83, 72, 85, 65, 78, 71}, new byte[]{83, 72, 85, 73, 0, 0}, new byte[]{83, 72, 85, 78, 0, 0}, new byte[]{83, 72, 85, 79, 0, 0}, bArr65, new byte[]{83, 79, 78, 71, 0, 0}, new byte[]{83, 79, 85, 0, 0, 0}, bArr66, new byte[]{83, 85, 65, 78, 0, 0}, new byte[]{83, 85, 73, 0, 0, 0}, new byte[]{83, 85, 78, 0, 0, 0}, new byte[]{83, 85, 79, 0, 0, 0}, bArr67, new byte[]{84, 65, 73, 0, 0, 0}, new byte[]{84, 65, 78, 0, 0, 0}, new byte[]{84, 65, 78, 71, 0, 0}, new byte[]{84, 65, 79, 0, 0, 0}, bArr68, new byte[]{84, 69, 78, 71, 0, 0}, bArr69, new byte[]{84, 73, 65, 78, 0, 0}, new byte[]{84, 73, 65, 79, 0, 0}, new byte[]{84, 73, 69, 0, 0, 0}, new byte[]{84, 73, 78, 71, 0, 0}, new byte[]{84, 79, 78, 71, 0, 0}, new byte[]{84, 79, 85, 0, 0, 0}, bArr70, new byte[]{84, 85, 65, 78, 0, 0}, new byte[]{84, 85, 73, 0, 0, 0}, new byte[]{84, 85, 78, 0, 0, 0}, new byte[]{84, 85, 79, 0, 0, 0}, bArr71, new byte[]{87, 65, 73, 0, 0, 0}, new byte[]{87, 65, 78, 0, 0, 0}, new byte[]{87, 65, 78, 71, 0, 0}, new byte[]{87, 69, 73, 0, 0, 0}, new byte[]{87, 69, 78, 0, 0, 0}, new byte[]{87, 69, 78, 71, 0, 0}, bArr72, bArr73, bArr74, new byte[]{88, 73, 65, 0, 0, 0}, new byte[]{88, 73, 65, 78, 0, 0}, new byte[]{88, 73, 65, 78, 71, 0}, new byte[]{88, 73, 65, 79, 0, 0}, new byte[]{88, 73, 69, 0, 0, 0}, new byte[]{88, 73, 78, 0, 0, 0}, new byte[]{88, 73, 78, 71, 0, 0}, new byte[]{88, 73, 79, 78, 71, 0}, new byte[]{88, 73, 85, 0, 0, 0}, bArr75, new byte[]{88, 85, 65, 78, 0, 0}, new byte[]{88, 85, 69, 0, 0, 0}, new byte[]{88, 85, 78, 0, 0, 0}, bArr76, new byte[]{89, 65, 78, 0, 0, 0}, new byte[]{89, 65, 78, 71, 0, 0}, new byte[]{89, 65, 79, 0, 0, 0}, bArr77, bArr78, new byte[]{89, 73, 78, 0, 0, 0}, new byte[]{89, 73, 78, 71, 0, 0}, bArr79, new byte[]{89, 79, 78, 71, 0, 0}, new byte[]{89, 79, 85, 0, 0, 0}, bArr80, new byte[]{89, 85, 65, 78, 0, 0}, new byte[]{89, 85, 69, 0, 0, 0}, new byte[]{89, 85, 78, 0, 0, 0}, new byte[]{74, 85, 78, 0, 0, 0}, new byte[]{89, 85, 78, 0, 0, 0}, bArr81, new byte[]{90, 65, 73, 0, 0, 0}, new byte[]{90, 65, 78, 0, 0, 0}, new byte[]{90, 65, 78, 71, 0, 0}, new byte[]{90, 65, 79, 0, 0, 0}, bArr82, new byte[]{90, 69, 73, 0, 0, 0}, new byte[]{90, 69, 78, 0, 0, 0}, new byte[]{90, 69, 78, 71, 0, 0}, new byte[]{90, 72, 65, 0, 0, 0}, new byte[]{90, 72, 65, 73, 0, 0}, new byte[]{90, 72, 65, 78, 0, 0}, new byte[]{90, 72, 65, 78, 71, 0}, new byte[]{67, 72, 65, 78, 71, 0}, new byte[]{90, 72, 65, 78, 71, 0}, new byte[]{90, 72, 65, 79, 0, 0}, new byte[]{90, 72, 69, 0, 0, 0}, new byte[]{90, 72, 69, 78, 0, 0}, new byte[]{90, 72, 69, 78, 71, 0}, new byte[]{90, 72, 73, 0, 0, 0}, new byte[]{83, 72, 73, 0, 0, 0}, new byte[]{90, 72, 73, 0, 0, 0}, new byte[]{90, 72, 79, 78, 71, 0}, new byte[]{90, 72, 79, 85, 0, 0}, new byte[]{90, 72, 85, 0, 0, 0}, new byte[]{90, 72, 85, 65, 0, 0}, new byte[]{90, 72, 85, 65, 73, 0}, new byte[]{90, 72, 85, 65, 78, 0}, new byte[]{90, 72, 85, 65, 78, 71}, new byte[]{90, 72, 85, 73, 0, 0}, new byte[]{90, 72, 85, 78, 0, 0}, new byte[]{90, 72, 85, 79, 0, 0}, bArr83, new byte[]{90, 79, 78, 71, 0, 0}, new byte[]{90, 79, 85, 0, 0, 0}, bArr84, new byte[]{90, 85, 65, 78, 0, 0}, new byte[]{90, 85, 73, 0, 0, 0}, new byte[]{90, 85, 78, 0, 0, 0}, new byte[]{90, 85, 79, 0, 0, 0}, new byte[6], new byte[]{83, 72, 65, 78, 0, 0}, new byte[6]};
        COLLATOR = Collator.getInstance(Locale.CHINA);
    }

    public static class Token {
        public static final int LATIN = 1;
        public static final int PINYIN = 2;
        public static final String SEPARATOR = " ";
        public static final int UNKNOWN = 3;
        public String source;
        public String target;
        public int type;

        public Token() {
        }

        public Token(int type, String source, String target) {
            this.type = type;
            this.source = source;
            this.target = target;
        }
    }

    protected HanziToPinyin(boolean hasChinaCollator) {
        this.mHasChinaCollator = hasChinaCollator;
    }

    public static HanziToPinyin getInstance() {
        HanziToPinyin hanziToPinyin;
        synchronized (HanziToPinyin.class) {
            if (sInstance != null) {
                hanziToPinyin = sInstance;
            } else {
                Locale[] locale = Collator.getAvailableLocales();
                Locale chinaAddition = new Locale("zh");
                for (int i = 0; i < locale.length; i++) {
                    if (locale[i].equals(Locale.CHINA) || locale[i].equals(chinaAddition)) {
                        sInstance = new HanziToPinyin(true);
                        hanziToPinyin = sInstance;
                    }
                }
                sInstance = new HanziToPinyin(false);
                hanziToPinyin = sInstance;
            }
        }
        return hanziToPinyin;
    }

    private Token getToken(char character, boolean bAddCharacterAfterPinyin) {
        Token token = new Token();
        String letter = Character.toString(character);
        token.source = letter;
        int offset = -1;
        if (character < 256) {
            token.type = 1;
            token.target = letter;
        } else {
            int cmp = COLLATOR.compare(letter, FIRST_PINYIN_UNIHAN);
            if (cmp < 0) {
                token.type = 3;
                token.target = letter;
            } else {
                if (cmp == 0) {
                    token.type = 2;
                    offset = 0;
                } else {
                    cmp = COLLATOR.compare(letter, LAST_PINYIN_UNIHAN);
                    if (cmp > 0) {
                        token.type = 3;
                        token.target = letter;
                    } else if (cmp == 0) {
                        token.type = 2;
                        offset = UNIHANS.length - 1;
                    }
                }
                token.type = 2;
                if (offset < 0) {
                    int begin = 0;
                    int end = UNIHANS.length - 1;
                    while (begin <= end) {
                        offset = (begin + end) / 2;
                        String unihan = Character.toString(UNIHANS[offset]);
                        cmp = COLLATOR.compare(letter, unihan);
                        if (cmp == 0) {
                            break;
                        }
                        if (cmp > 0) {
                            begin = offset + 1;
                        } else {
                            end = offset - 1;
                        }
                    }
                }
                if (cmp < 0) {
                    offset--;
                }
                StringBuilder pinyin = new StringBuilder();
                for (int j = 0; j < PINYINS[offset].length && PINYINS[offset][j] != 0; j++) {
                    pinyin.append((char) PINYINS[offset][j]);
                }
                switch (character) {
                    case 30053:
                        pinyin.setLength(0);
                        pinyin.append("LUE");
                        break;
                    case 34892:
                        pinyin.setLength(0);
                        pinyin.append("HANG");
                        break;
                    case 35843:
                        pinyin.setLength(0);
                        pinyin.append("TIAO");
                        break;
                }
                if (bAddCharacterAfterPinyin) {
                    token.target = String.valueOf(pinyin.toString()) + Token.SEPARATOR + character;
                } else {
                    token.target = String.valueOf(pinyin.toString()) + Token.SEPARATOR;
                }
                if (TextUtils.isEmpty(token.target)) {
                    token.type = 3;
                    token.target = token.source;
                }
            }
        }
        return token;
    }

    public ArrayList<Token> get(String input, boolean bAddCharacterAfterPinyin) {
        ArrayList<Token> tokens = new ArrayList<>();
        if (this.mHasChinaCollator && !TextUtils.isEmpty(input)) {
            int inputLength = input.length();
            StringBuilder sb = new StringBuilder();
            int tokenType = 1;
            for (int i = 0; i < inputLength; i++) {
                char character = input.charAt(i);
                if (character == ' ') {
                    if (sb.length() > 0) {
                        addToken(sb, tokens, tokenType);
                    }
                } else if (character < 256) {
                    if (tokenType != 1 && sb.length() > 0) {
                        addToken(sb, tokens, tokenType);
                    }
                    tokenType = 1;
                    sb.append(character);
                } else {
                    Token t = getToken(character, bAddCharacterAfterPinyin);
                    if (t.type == 2) {
                        if (sb.length() > 0) {
                            addToken(sb, tokens, tokenType);
                        }
                        tokens.add(t);
                        tokenType = 2;
                    } else {
                        if (tokenType != t.type && sb.length() > 0) {
                            addToken(sb, tokens, tokenType);
                        }
                        tokenType = t.type;
                        sb.append(character);
                    }
                }
            }
            if (sb.length() > 0) {
                addToken(sb, tokens, tokenType);
            }
        }
        return tokens;
    }

    private void addToken(StringBuilder sb, ArrayList<Token> tokens, int tokenType) {
        String str = sb.toString();
        tokens.add(new Token(tokenType, str, str));
        sb.setLength(0);
    }

    public static String getSimplePinyin(String pinyin) {
        if (App_Bt.mLocale.contains("zh") || App_Bt.mLocale.contains("en")) {
            String strRet = FinalChip.BSP_PLATFORM_Null;
            if (!TextUtils.isEmpty(pinyin)) {
                String[] strs = pinyin.split(Token.SEPARATOR);
                int iLen = strs.length;
                for (int i = 0; i < iLen; i++) {
                    if (strs[i].endsWith("G")) {
                        strs[i] = strs[i].substring(0, strs[i].length() - 1);
                    }
                    strRet = String.valueOf(String.valueOf(strRet) + strs[i]) + Token.SEPARATOR;
                }
            }
            return strRet;
        }
        return pinyin;
    }

    public static String getPinYin(String input, boolean bHanziAfterEng, boolean bAddCharacterAfterPinyin) {
        if (!App_Bt.mLocale.contains("zh") && !App_Bt.mLocale.contains("en")) {
            return input.toUpperCase();
        }
        ArrayList<Token> tokens = getInstance().get(input, bAddCharacterAfterPinyin);
        StringBuilder sb = new StringBuilder();
        if (tokens != null && tokens.size() > 0) {
            for (Token token : tokens) {
                if (2 == token.type) {
                    if (bHanziAfterEng) {
                        sb.append(FIRST_PINYIN_UNIHAN);
                    }
                    sb.append(token.target);
                } else {
                    sb.append(token.source);
                }
                bHanziAfterEng = false;
            }
        }
        return sb.toString().toUpperCase();
    }

    public static String getHeadPinyin(String input) {
        if (CustomerUtil.isYFConfig()) {
            return Pinyin.toPinyin(input, FinalChip.BSP_PLATFORM_Null);
        }
        if (!App_Bt.mLocale.contains("zh") && !App_Bt.mLocale.contains("en")) {
            return input.toUpperCase();
        }
        ArrayList<Token> tokens = getInstance().get(input, false);
        StringBuilder sb = new StringBuilder();
        if (tokens != null && tokens.size() > 0) {
            for (Token token : tokens) {
                if (2 == token.type) {
                    sb.append(token.target.charAt(0));
                } else {
                    sb.append(token.source);
                }
            }
        }
        return sb.toString().toUpperCase();
    }
}
