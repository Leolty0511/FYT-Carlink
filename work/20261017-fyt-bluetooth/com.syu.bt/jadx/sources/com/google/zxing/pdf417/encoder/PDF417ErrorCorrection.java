package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.pdf417.PDF417Common;
import com.lsec.core.ipc.module.main.Dvd;
import com.lsec.core.util.data.AutoKeyEvent;
import com.lsec.core.util.data.FinalCanbus;
import com.lsec.core.util.data.FinalTpms;

/* JADX INFO: loaded from: classes.dex */
final class PDF417ErrorCorrection {
    private static final int[][] EC_COEFFICIENTS = {new int[]{27, 917}, new int[]{AutoKeyEvent.KEYCODE_GUIDE, AutoKeyEvent.KEYCODE_LOUD, 723, 809}, new int[]{237, 308, FinalCanbus.CAR_436_HC_QIJUN, 284, 646, 653, FinalCanbus.CAR_XP_Biaozhi206, FinalCanbus.CAR_BNR_XP1_GM}, new int[]{274, AutoKeyEvent.KEYCODE_TONE_MINUS, 232, 755, 599, AutoKeyEvent.KEYCODE_TIME_SETTING, 801, 132, 295, 116, FinalCanbus.CAR_442_CHEKU_ATS, FinalCanbus.CAR_XP_Biaozhi206, 295, 42, 176, 65}, new int[]{FinalCanbus.CAR_JinYing_XBS_OldB70, AutoKeyEvent.KEYCODE_PICK_OR_MEDIA_PREV, 922, AutoKeyEvent.KEYCODE_NAVI_SWITCH, 176, AutoKeyEvent.KEYCODE_TAXI_MENU, 640, 321, AutoKeyEvent.KEYCODE_THIRD, 742, 677, 742, 687, 284, 193, AutoKeyEvent.KEYCODE_TV, 273, 494, 263, 147, 593, 800, AutoKeyEvent.KEYCODE_FONT_SCALE, 320, 803, 133, 231, FinalCanbus.CAR_XBS_XP1_ZhongTaiT600, 685, 330, 63, FinalCanbus.CAR_XBS_XP1_ACCORD9}, new int[]{AutoKeyEvent.KEYCODE_REAR_VIEW, FinalCanbus.CAR_RZC_FuMeiLai, 6, 93, 862, 771, 453, 106, 610, 287, 107, 505, 733, 877, FinalCanbus.CAR_AY1_ATS_SRX, 612, 723, 476, 462, 172, FinalCanbus.CAR_WC2_TianLai03_07, 609, 858, 822, AutoKeyEvent.KEYCODE_BAND_FM, FinalCanbus.CAR_SBD_WC1_ForeginVersionRuiFengS5, 511, 400, 672, 762, 283, 184, FinalCanbus.CAR_440, 35, AutoKeyEvent.KEYCODE_VIDEO, 31, 460, 594, 225, AutoKeyEvent.KEYCODE_CARUSB, AutoKeyEvent.KEYCODE_TV, FinalCanbus.CAR_WC2_RENAULT_KaBin, 605, 158, 651, 201, 488, 502, 648, 733, 717, 83, FinalCanbus.CAR_RZC_XP1_QiRuiAiRuiZe5, 97, 280, 771, 840, 629, 4, FinalCanbus.CAR_AY1_ATS_SRX, 843, 623, 264, AutoKeyEvent.KEYCODE_BAND_FM}, new int[]{AutoKeyEvent.KEYCODE_CARSETTING, 310, 864, AutoKeyEvent.KEYCODE_2UI_ENTER, 858, AutoKeyEvent.KEYCODE_TAXI_CHECKING, 296, FinalCanbus.CAR_BNR_XP1_GM, 53, 779, 897, FinalCanbus.CAR_444, 400, 925, 749, FinalCanbus.CAR_WC_Haval_Coupe, 822, 93, 217, 208, PDF417Common.MAX_CODEWORDS_IN_BARCODE, 244, AutoKeyEvent.KEYCODE_TAXI_VERY_SATISFIED, 620, 246, 148, 447, 631, 292, 908, 490, 704, AutoKeyEvent.KEYCODE_AV1, 258, 457, 907, 594, 723, 674, 292, 272, 96, 684, FinalCanbus.CAR_432_HC_B200, 686, 606, 860, AutoKeyEvent.KEYCODE_BRIGHTNESS_UP, 193, 219, 129, 186, 236, 287, 192, 775, 278, 173, 40, FinalCanbus.CAR_BNR_XP1_GM, 712, 463, 646, 776, 171, 491, 297, 763, 156, 732, 95, 270, 447, 90, 507, 48, 228, 821, 808, 898, 784, 663, 627, FinalCanbus.CAR_XP1_FIESTA09, FinalCanbus.CAR_JYKJ_XP_BEIQISHENGBAOX55, 262, FinalCanbus.CAR_XP1_FocusKeepDVD, 602, 754, 336, 89, 614, 87, FinalCanbus.CAR_432_HC_B200, 670, 616, 157, FinalCanbus.CAR_XP1_ZiYouGuang, 242, 726, FinalTpms.U_CNT_MAX, 269, FinalCanbus.CAR_SBD_WC1_ReservedCdBenTengX80, 898, 845, 454, FinalCanbus.CAR_XP1_14SanlinSeries, 130, 814, AutoKeyEvent.KEYCODE_HANG_OR_MEDIA_PREV, 804, 34, 211, 330, AutoKeyEvent.KEYCODE_REAR_VIEW, 297, 827, 865, 37, AutoKeyEvent.KEYCODE_TV, 834, 315, AutoKeyEvent.KEYCODE_2UI_LEFT, 86, 801, 4, 108, AutoKeyEvent.KEYCODE_REAR_VIEW}, new int[]{AutoKeyEvent.KEYCODE_TIME_SETTING, 894, 75, 766, 882, 857, 74, 204, 82, AutoKeyEvent.KEYCODE_TAXI_MENU, 708, 250, 905, 786, 138, 720, 858, 194, 311, 913, 275, 190, FinalCanbus.CAR_SBD_WC1_ReservedCdBenTengX80, 850, FinalCanbus.CAR_438_BNR_DaZhong_L, 733, 194, 280, 201, 280, 828, 757, 710, 814, 919, 89, 68, AutoKeyEvent.KEYCODE_BRIGHTNESS_UP, 11, 204, 796, 605, AutoKeyEvent.KEYCODE_RIGHT_VIEW, 913, 801, 700, 799, 137, FinalCanbus.CAR_439_XBS_XTL16C4, FinalCanbus.CAR_XBS_XP1_AnKeSela_Cx4_Atenza, 592, 668, FinalCanbus.CAR_HAOZHENG_XP1_PorscheCayenne, 859, FinalCanbus.CAR_RZC_XP1_15FengFan, 694, 325, 240, 216, 257, 284, AutoKeyEvent.KEYCODE_2UI_DOWN, 209, 884, 315, 70, 329, 793, 490, 274, 877, 162, 749, 812, 684, 461, 334, FinalCanbus.CAR_SBD_WC1_ForeginVersionRuiFengS5, 849, AutoKeyEvent.KEYCODE_CARSETTING, 307, 291, 803, 712, 19, FinalCanbus.CAR_WeiChi_XP1_BenZSmart, FinalCanbus.CAR_DC_WC1_DianDongChe, 908, 103, 511, 51, 8, AutoKeyEvent.KEYCODE_TV, 225, 289, 470, 637, 731, 66, 255, 917, 269, 463, 830, 730, FinalCanbus.CAR_433_CYT_SBL, 848, AutoKeyEvent.KEYCODE_TAXI_DISSATISFIED, 136, AutoKeyEvent.KEYCODE_FRONT_VIEW, 906, 90, 2, 290, 743, 199, 655, 903, 329, 49, 802, AutoKeyEvent.KEYCODE_TAXI_CHECKING, FinalCanbus.CAR_XP_QiYaK5, AutoKeyEvent.KEYCODE_PICK_OR_MEDIA_NEXT, 188, 462, 10, 134, 628, 320, 479, 130, 739, 71, 263, Dvd.IDS_POP, FinalCanbus.CAR_XP1_ZiYouGuang, 601, 192, 605, 142, 673, 687, 234, 722, FinalCanbus.CAR_DJ_ZHONGTAIDAMAIX5, 177, 752, 607, 640, 455, 193, 689, 707, 805, 641, 48, 60, 732, 621, 895, AutoKeyEvent.KEYCODE_BAND_AM, 261, 852, 655, 309, 697, 755, 756, 60, 231, 773, FinalCanbus.CAR_434_BG_FIAT, FinalCanbus.CAR_WC2_AngKeSaiLa, 726, AutoKeyEvent.KEYCODE_VOICE, 503, 118, 49, 795, 32, 144, 500, 238, 836, FinalCanbus.CAR_WC_16_QiYaKX5, 280, AutoKeyEvent.KEYCODE_REPEAT, 319, 9, 647, AutoKeyEvent.KEYCODE_2UI_LEFT, 73, 914, 342, 126, 32, 681, 331, 792, 620, 60, 609, FinalCanbus.CAR_441, 180, 791, 893, 754, 605, FinalCanbus.CAR_JYKJ_XP_ZHONGTAIDAMAIX5, 228, 749, 760, 213, 54, 297, 134, 54, 834, 299, 922, 191, 910, AutoKeyEvent.KEYCODE_MODE, 609, 829, 189, 20, 167, 29, 872, 449, 83, 402, 41, 656, 505, AutoKeyEvent.KEYCODE_2CUSTER_DOWN, 481, 173, FinalCanbus.CAR_RZC_XP1_QiRuiAiRuiZe5, 251, 688, 95, 497, AutoKeyEvent.KEYCODE_POWER, 642, AutoKeyEvent.KEYCODE_BAND_FM, 307, 159, 924, AutoKeyEvent.KEYCODE_STANDBY, 648, 55, 497, 10}, new int[]{FinalCanbus.CAR_WC2_RENAULT_KaBin, 77, FinalCanbus.CAR_RZC_XP1_ZiYouGuang, 504, 35, 599, FinalCanbus.CAR_XP_Biaozhi206, 207, FinalCanbus.CAR_HeChi_RuiHu5, AutoKeyEvent.KEYCODE_HANG_OR_MEDIA_NEXT, 118, 498, 285, FinalCanbus.CAR_XP1_FocusKeepDVD, 350, 492, 197, 265, 920, 155, 914, 299, 229, 643, 294, 871, 306, 88, 87, 193, FinalCanbus.CAR_WC2_RENAULT_KaBin, 781, 846, 75, 327, AutoKeyEvent.KEYCODE_DVR, FinalCanbus.CAR_435_HC_MEGANE, AutoKeyEvent.KEYCODE_BAND_FM, 203, 666, 249, 346, 781, 621, 640, 268, 794, AutoKeyEvent.KEYCODE_CARRADIO, AutoKeyEvent.KEYCODE_REAR_VIEW, 781, FinalCanbus.CAR_DJ_KeepHostZhongHuaV3, FinalCanbus.CAR_XBS_XP1_ZhongTaiT600, 644, 102, 476, 499, 290, 632, AutoKeyEvent.KEYCODE_EQ, 37, 858, 916, AutoKeyEvent.KEYCODE_2UI_ROLL_LEFT, 41, 542, 289, 122, 272, FinalCanbus.CAR_JYKJ_XP_ZHONGTAIDAMAIX5, 800, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, 290, 204, 681, FinalCanbus.CAR_DaoJun_XINPU_ChuanQiGs4, 855, 85, 99, 62, 482, 180, 20, 297, 451, 593, 913, 142, 808, 684, 287, AutoKeyEvent.KEYCODE_THIRD, AutoKeyEvent.KEYCODE_TONE_PLUS, 76, 653, 899, 729, AutoKeyEvent.KEYCODE_RANDOM, 744, FinalCanbus.CAR_XBS_XP1_ZhongTaiT600, AutoKeyEvent.KEYCODE_RADIO, 192, AutoKeyEvent.KEYCODE_AV1, 258, 240, AutoKeyEvent.KEYCODE_MUSIC, 794, FinalCanbus.CAR_WC2_GUOCHAN, 768, 848, 51, 610, FinalCanbus.CAR_DJ_ZHONGTAIDAMAIX5, 168, 190, 826, 328, 596, 786, 303, AutoKeyEvent.KEYCODE_BRIGHTNESS_DOWN, FinalCanbus.CAR_AY1_ATS_SRX, FinalCanbus.CAR_WC_Haval_Coupe, 641, 156, 237, 151, FinalCanbus.CAR_DJ_XP1_TOYOTA_12Crown, AutoKeyEvent.KEYCODE_BAND, 207, 676, 710, 89, 168, 304, 402, 40, 708, AutoKeyEvent.KEYCODE_PICK_OR_MEDIA_PREV, 162, 864, 229, 65, 861, 841, 512, 164, 477, 221, 92, FinalCanbus.CAR_WeiChi_XP1_BenZSmart, 785, 288, FinalCanbus.CAR_WC2_MaiRuiBao16, 850, 836, 827, 736, 707, 94, 8, 494, 114, AutoKeyEvent.KEYCODE_CARSETTING, 2, 499, 851, AutoKeyEvent.KEYCODE_BAND_FM, 152, 729, 771, 95, 248, FinalCanbus.CAR_JinYing_XBS_OldB70, AutoKeyEvent.KEYCODE_2CUSTER_UP, 323, 856, 797, 289, 51, 684, 466, AutoKeyEvent.KEYCODE_LAST_STATE, 820, 669, 45, 902, 452, 167, 342, 244, 173, 35, 463, 651, 51, 699, 591, 452, AutoKeyEvent.KEYCODE_2CUSTER_UP, 37, 124, 298, 332, AutoKeyEvent.KEYCODE_2UI_ROLL_LEFT, 43, FinalCanbus.CAR_XFY_SHUPING_K3, 119, 662, 777, 475, 850, 764, FinalCanbus.CAR_RZC_XP1_MaiRuiBao16, AutoKeyEvent.KEYCODE_2CUSTER_UP, 911, 283, 711, 472, FinalCanbus.CAR_WC2_ToYoTa_10_Crown, 245, 288, 594, FinalCanbus.CAR_WC_16_QiYaKX5, 511, 327, 589, 777, 699, 688, 43, FinalCanbus.CAR_DJ_KeepHostZhongHuaV3, 842, FinalCanbus.CAR_JYKJ_XP_ZHONGTAIDAMAIX5, 721, AutoKeyEvent.KEYCODE_CARSETTING, AutoKeyEvent.KEYCODE_FILE_VIEW, 644, 714, AutoKeyEvent.KEYCODE_PANORAMA, 62, 145, 873, 663, 713, 159, 672, 729, 624, 59, 193, FinalCanbus.CAR_CYT_YaGe7, 158, 209, AutoKeyEvent.KEYCODE_SCAN, AutoKeyEvent.KEYCODE_SEEKUP, 343, 693, 109, 608, AutoKeyEvent.KEYCODE_SCAN, FinalCanbus.CAR_AY1_JeepZiYouGuang, 181, 772, 677, 310, 248, FinalCanbus.CAR_HAOZHENG_XP1_PorscheCayenne, 708, FinalCanbus.CAR_XBS_XP1_ACCORD9, AutoKeyEvent.KEYCODE_2CUSTER_DOWN, 870, 617, 841, 632, 860, 289, AutoKeyEvent.KEYCODE_THIRD, 35, 777, 618, AutoKeyEvent.KEYCODE_TAXI_MENU, FinalCanbus.CAR_XP_KeLeiAo, 833, 77, 597, 346, 269, 757, 632, 695, 751, 331, 247, 184, 45, 787, 680, 18, 66, FinalCanbus.CAR_DaoJun_XINPU_ChuanQiGs4, FinalCanbus.CAR_CYT_DaZhongZiDongKongTiao, 54, 492, 228, 613, 830, 922, FinalCanbus.CAR_437_BNR_DaZhong_GaoErFu, AutoKeyEvent.KEYCODE_VIDEO, 644, 905, 789, FinalCanbus.CAR_WC2_ToYoTa_10_Crown, 305, FinalCanbus.CAR_441, 207, 300, 892, 827, 141, AutoKeyEvent.KEYCODE_IPOD, FinalCanbus.CAR_AY1_ATS_SRX, 662, AutoKeyEvent.KEYCODE_RADIO, 56, 252, 341, 242, 797, 838, 837, 720, 224, 307, 631, 61, 87, AutoKeyEvent.KEYCODE_FILE_VIEW, 310, 756, 665, FinalCanbus.CAR_BNR_XP1_VScreen_Camry2013, 808, 851, 309, 473, 795, FinalCanbus.CAR_XP1_FIESTA09, 31, 647, 915, 459, 806, 590, 731, FinalCanbus.CAR_XFY_ShuPing_Honda_GuanDao, 216, AutoKeyEvent.KEYCODE_2UI_UP, 249, 321, 881, 699, AutoKeyEvent.KEYCODE_CARUSB, 673, 782, 210, 815, 905, 303, 843, 922, 281, 73, 469, 791, 660, 162, 498, 308, 155, FinalCanbus.CAR_RZC_FuMeiLai, 907, 817, 187, 62, 16, FinalCanbus.CAR_XFY_ShuPing_Honda_GuanDao, AutoKeyEvent.KEYCODE_CARUSB, 336, 286, FinalCanbus.CAR_437_BNR_DaZhong_GaoErFu, FinalCanbus.CAR_SBD_WC1_ReservedCdBenTengX80, 273, 610, 296, 183, 923, 116, 667, 751, FinalCanbus.CAR_HAOZHENG_XP1_PorscheCayenne, 62, FinalCanbus.CAR_WC2_16TuSheng, 691, FinalCanbus.CAR_BNR_XP1_GM, 687, 842, 37, FinalCanbus.CAR_WC2_MaiRuiBao16, 720, 742, 330, 5, 39, 923, 311, FinalCanbus.CAR_XP_KeLeiAo, 242, 749, 321, 54, 669, 316, 342, 299, AutoKeyEvent.KEYCODE_CARRADIO, 105, 667, 488, 640, 672, AutoKeyEvent.KEYCODE_PHONE_VOICE, AutoKeyEvent.KEYCODE_RIGHT_VIEW, 316, 486, 721, 610, 46, 656, 447, 171, 616, 464, 190, AutoKeyEvent.KEYCODE_BAND, 297, 321, 762, 752, AutoKeyEvent.KEYCODE_LAST_STATE, 175, 134, 14, FinalCanbus.CAR_AY1_ATS_SRX, FinalCanbus.CAR_433_CYT_SBL, 717, 45, 111, 20, 596, 284, 736, 138, 646, FinalCanbus.CAR_WC2_LandRover, 877, 669, 141, 919, 45, 780, FinalCanbus.CAR_DaoJun_XINPU_ChuanQiGs4, 164, 332, 899, 165, 726, FinalTpms.U_CNT_MAX, 325, 498, 655, FinalCanbus.CAR_WC2_MaiRuiBao16, 752, 768, 223, 849, 647, 63, 310, 863, 251, FinalCanbus.CAR_WC2_16TuSheng, 304, 282, 738, 675, FinalCanbus.CAR_XBS_XP1_ACCORD9, FinalCanbus.CAR_XBS_XP1_16QIYA_K5, 244, 31, 121, 303, 263}};

    private PDF417ErrorCorrection() {
    }

    static int getErrorCorrectionCodewordCount(int errorCorrectionLevel) {
        if (errorCorrectionLevel < 0 || errorCorrectionLevel > 8) {
            throw new IllegalArgumentException("Error correction level must be between 0 and 8!");
        }
        return 1 << (errorCorrectionLevel + 1);
    }

    static int getRecommendedMinimumErrorCorrectionLevel(int n) throws WriterException {
        if (n <= 0) {
            throw new IllegalArgumentException("n must be > 0");
        }
        if (n <= 40) {
            return 2;
        }
        if (n <= 160) {
            return 3;
        }
        if (n <= 320) {
            return 4;
        }
        if (n <= 863) {
            return 5;
        }
        throw new WriterException("No recommendation possible");
    }

    static String generateErrorCorrection(CharSequence dataCodewords, int errorCorrectionLevel) {
        int k = getErrorCorrectionCodewordCount(errorCorrectionLevel);
        char[] e = new char[k];
        int sld = dataCodewords.length();
        for (int i = 0; i < sld; i++) {
            int t1 = (dataCodewords.charAt(i) + e[e.length - 1]) % PDF417Common.NUMBER_OF_CODEWORDS;
            for (int j = k - 1; j >= 1; j--) {
                int t2 = (EC_COEFFICIENTS[errorCorrectionLevel][j] * t1) % PDF417Common.NUMBER_OF_CODEWORDS;
                int t3 = 929 - t2;
                e[j] = (char) ((e[j - 1] + t3) % PDF417Common.NUMBER_OF_CODEWORDS);
            }
            int t4 = (EC_COEFFICIENTS[errorCorrectionLevel][0] * t1) % PDF417Common.NUMBER_OF_CODEWORDS;
            int t5 = 929 - t4;
            e[0] = (char) (t5 % PDF417Common.NUMBER_OF_CODEWORDS);
        }
        StringBuilder sb = new StringBuilder(k);
        for (int j2 = k - 1; j2 >= 0; j2--) {
            if (e[j2] != 0) {
                e[j2] = (char) (929 - e[j2]);
            }
            sb.append(e[j2]);
        }
        return sb.toString();
    }
}
