package android.util;

import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class StateSet {
    public static final int[] NOTHING;
    public static final int VIEW_STATE_ACCELERATED = 64;
    public static final int VIEW_STATE_ACTIVATED = 32;
    public static final int VIEW_STATE_DRAG_CAN_ACCEPT = 256;
    public static final int VIEW_STATE_DRAG_HOVERED = 512;
    public static final int VIEW_STATE_ENABLED = 8;
    public static final int VIEW_STATE_FOCUSED = 4;
    public static final int VIEW_STATE_HOVERED = 128;
    static final int[] VIEW_STATE_IDS;
    public static final int VIEW_STATE_PRESSED = 16;
    public static final int VIEW_STATE_SELECTED = 2;
    private static final int[][] VIEW_STATE_SETS;
    public static final int VIEW_STATE_WINDOW_FOCUSED = 1;
    public static final int[] WILD_CARD;

    static {
        int[] iArr = {16842909, 1, 16842913, 2, 16842908, 4, 16842910, 8, 16842919, 16, 16843518, 32, 16843547, 64, 16843623, 128, 16843624, 256, 16843625, 512};
        VIEW_STATE_IDS = iArr;
        if (iArr.length / 2 != R.styleable.ViewDrawableStates.length) {
            throw new IllegalStateException("VIEW_STATE_IDs array length does not match ViewDrawableStates style array");
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i2 = 0;
        while (true) {
            int[] iArr3 = R.styleable.ViewDrawableStates;
            if (i2 >= iArr3.length) {
                break;
            }
            int i3 = iArr3[i2];
            int i4 = 0;
            while (true) {
                int[] iArr4 = VIEW_STATE_IDS;
                if (i4 < iArr4.length) {
                    if (iArr4[i4] == i3) {
                        int i5 = i2 * 2;
                        iArr2[i5] = i3;
                        iArr2[i5 + 1] = iArr4[i4 + 1];
                    }
                    i4 += 2;
                }
            }
            i2++;
        }
        VIEW_STATE_SETS = new int[1 << (VIEW_STATE_IDS.length / 2)][];
        for (int i6 = 0; i6 < VIEW_STATE_SETS.length; i6++) {
            int[] iArr5 = new int[Integer.bitCount(i6)];
            int i7 = 0;
            for (int i8 = 0; i8 < length; i8 += 2) {
                if ((iArr2[i8 + 1] & i6) != 0) {
                    iArr5[i7] = iArr2[i8];
                    i7++;
                }
            }
            VIEW_STATE_SETS[i6] = iArr5;
        }
        WILD_CARD = new int[0];
        NOTHING = new int[]{0};
    }

    public static boolean containsAttribute(int[][] iArr, int i2) {
        if (iArr != null) {
            for (int[] iArr2 : iArr) {
                if (iArr2 == null) {
                    break;
                }
                for (int i3 : iArr2) {
                    if (i3 == i2 || (-i3) == i2) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static String dump(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 : iArr) {
            switch (i2) {
                case 16842908:
                    sb.append("F ");
                    break;
                case 16842909:
                    sb.append("W ");
                    break;
                case 16842910:
                    sb.append("E ");
                    break;
                case 16842912:
                    sb.append("C ");
                    break;
                case 16842913:
                    sb.append("S ");
                    break;
                case 16842919:
                    sb.append("P ");
                    break;
                case 16843518:
                    sb.append("A ");
                    break;
            }
        }
        return sb.toString();
    }

    public static int[] get(int i2) {
        int[][] iArr = VIEW_STATE_SETS;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        throw new IllegalArgumentException("Invalid state set mask");
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
