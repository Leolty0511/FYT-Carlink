package android.util;

import android.R;

/* JADX INFO: loaded from: classes.dex */
public class StateSet {
    public static final int[] WILD_CARD = new int[0];
    public static final int[] NOTHING = {0};

    public static String dump(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 : iArr) {
            if (i2 == 16842913) {
                sb.append("S ");
            } else if (i2 != 16842919) {
                switch (i2) {
                    case R.attr.state_focused /* 16842908 */:
                        sb.append("F ");
                        break;
                    case R.attr.state_window_focused /* 16842909 */:
                        sb.append("W ");
                        break;
                    case R.attr.state_enabled /* 16842910 */:
                        sb.append("E ");
                        break;
                }
            } else {
                sb.append("P ");
            }
        }
        return sb.toString();
    }

    public static boolean isWildCard(int[] iArr) {
        return iArr.length == 0 || iArr[0] == 0;
    }

    public static boolean stateSetMatches(int[] iArr, int[] iArr2) {
        boolean z2;
        boolean z3;
        if (iArr2 == null) {
            return iArr == null || isWildCard(iArr);
        }
        int length = iArr2.length;
        for (int i2 : iArr) {
            if (i2 == 0) {
                return true;
            }
            if (i2 > 0) {
                z2 = true;
            } else {
                i2 = -i2;
                z2 = false;
            }
            int i3 = 0;
            while (true) {
                if (i3 < length) {
                    int i4 = iArr2[i3];
                    if (i4 != 0) {
                        if (i4 == i2) {
                            if (!z2) {
                                return false;
                            }
                            z3 = true;
                            break;
                        }
                        i3++;
                    } else if (z2) {
                        return false;
                    }
                }
                z3 = false;
                break;
            }
            if (z2 && !z3) {
                return false;
            }
        }
        return true;
    }

    public static int[] trimStateSet(int[] iArr, int i2) {
        if (iArr.length == i2) {
            return iArr;
        }
        int[] iArr2 = new int[i2];
        System.arraycopy(iArr, 0, iArr2, 0, i2);
        return iArr2;
    }

    public static boolean stateSetMatches(int[] iArr, int i2) {
        int i3;
        int length = iArr.length;
        for (int i4 = 0; i4 < length && (i3 = iArr[i4]) != 0; i4++) {
            if (i3 > 0) {
                if (i2 != i3) {
                    return false;
                }
            } else if (i2 == (-i3)) {
                return false;
            }
        }
        return true;
    }
}
