package android.renderscript;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class ScriptIntrinsicBLAS extends ScriptIntrinsic {
    public static final int CONJ_TRANSPOSE = 113;
    public static final int LEFT = 141;
    public static final int LOWER = 122;
    public static final int NON_UNIT = 131;
    public static final int NO_TRANSPOSE = 111;
    public static final int RIGHT = 142;
    private static final int RsBlas_bnnm = 1000;
    private static final int RsBlas_caxpy = 29;
    private static final int RsBlas_ccopy = 28;
    private static final int RsBlas_cdotc_sub = 6;
    private static final int RsBlas_cdotu_sub = 5;
    private static final int RsBlas_cgbmv = 64;
    private static final int RsBlas_cgemm = 125;
    private static final int RsBlas_cgemv = 63;
    private static final int RsBlas_cgerc = 99;
    private static final int RsBlas_cgeru = 98;
    private static final int RsBlas_chbmv = 96;
    private static final int RsBlas_chemm = 137;
    private static final int RsBlas_chemv = 95;
    private static final int RsBlas_cher = 100;
    private static final int RsBlas_cher2 = 102;
    private static final int RsBlas_cher2k = 139;
    private static final int RsBlas_cherk = 138;
    private static final int RsBlas_chpmv = 97;
    private static final int RsBlas_chpr = 101;
    private static final int RsBlas_chpr2 = 103;
    private static final int RsBlas_cscal = 43;
    private static final int RsBlas_csscal = 45;
    private static final int RsBlas_cswap = 27;
    private static final int RsBlas_csymm = 126;
    private static final int RsBlas_csyr2k = 128;
    private static final int RsBlas_csyrk = 127;
    private static final int RsBlas_ctbmv = 66;
    private static final int RsBlas_ctbsv = 69;
    private static final int RsBlas_ctpmv = 67;
    private static final int RsBlas_ctpsv = 70;
    private static final int RsBlas_ctrmm = 129;
    private static final int RsBlas_ctrmv = 65;
    private static final int RsBlas_ctrsm = 130;
    private static final int RsBlas_ctrsv = 68;
    private static final int RsBlas_dasum = 12;
    private static final int RsBlas_daxpy = 26;
    private static final int RsBlas_dcopy = 25;
    private static final int RsBlas_ddot = 4;
    private static final int RsBlas_dgbmv = 56;
    private static final int RsBlas_dgemm = 119;
    private static final int RsBlas_dgemv = 55;
    private static final int RsBlas_dger = 90;
    private static final int RsBlas_dnrm2 = 11;
    private static final int RsBlas_drot = 39;
    private static final int RsBlas_drotg = 37;
    private static final int RsBlas_drotm = 40;
    private static final int RsBlas_drotmg = 38;
    private static final int RsBlas_dsbmv = 88;
    private static final int RsBlas_dscal = 42;
    private static final int RsBlas_dsdot = 2;
    private static final int RsBlas_dspmv = 89;
    private static final int RsBlas_dspr = 92;
    private static final int RsBlas_dspr2 = 94;
    private static final int RsBlas_dswap = 24;
    private static final int RsBlas_dsymm = 120;
    private static final int RsBlas_dsymv = 87;
    private static final int RsBlas_dsyr = 91;
    private static final int RsBlas_dsyr2 = 93;
    private static final int RsBlas_dsyr2k = 122;
    private static final int RsBlas_dsyrk = 121;
    private static final int RsBlas_dtbmv = 58;
    private static final int RsBlas_dtbsv = 61;
    private static final int RsBlas_dtpmv = 59;
    private static final int RsBlas_dtpsv = 62;
    private static final int RsBlas_dtrmm = 123;
    private static final int RsBlas_dtrmv = 57;
    private static final int RsBlas_dtrsm = 124;
    private static final int RsBlas_dtrsv = 60;
    private static final int RsBlas_dzasum = 16;
    private static final int RsBlas_dznrm2 = 15;
    private static final int RsBlas_icamax = 19;
    private static final int RsBlas_idamax = 18;
    private static final int RsBlas_isamax = 17;
    private static final int RsBlas_izamax = 20;
    private static final int RsBlas_sasum = 10;
    private static final int RsBlas_saxpy = 23;
    private static final int RsBlas_scasum = 14;
    private static final int RsBlas_scnrm2 = 13;
    private static final int RsBlas_scopy = 22;
    private static final int RsBlas_sdot = 3;
    private static final int RsBlas_sdsdot = 1;
    private static final int RsBlas_sgbmv = 48;
    private static final int RsBlas_sgemm = 113;
    private static final int RsBlas_sgemv = 47;
    private static final int RsBlas_sger = 82;
    private static final int RsBlas_snrm2 = 9;
    private static final int RsBlas_srot = 35;
    private static final int RsBlas_srotg = 33;
    private static final int RsBlas_srotm = 36;
    private static final int RsBlas_srotmg = 34;
    private static final int RsBlas_ssbmv = 80;
    private static final int RsBlas_sscal = 41;
    private static final int RsBlas_sspmv = 81;
    private static final int RsBlas_sspr = 84;
    private static final int RsBlas_sspr2 = 86;
    private static final int RsBlas_sswap = 21;
    private static final int RsBlas_ssymm = 114;
    private static final int RsBlas_ssymv = 79;
    private static final int RsBlas_ssyr = 83;
    private static final int RsBlas_ssyr2 = 85;
    private static final int RsBlas_ssyr2k = 116;
    private static final int RsBlas_ssyrk = 115;
    private static final int RsBlas_stbmv = 50;
    private static final int RsBlas_stbsv = 53;
    private static final int RsBlas_stpmv = 51;
    private static final int RsBlas_stpsv = 54;
    private static final int RsBlas_strmm = 117;
    private static final int RsBlas_strmv = 49;
    private static final int RsBlas_strsm = 118;
    private static final int RsBlas_strsv = 52;
    private static final int RsBlas_zaxpy = 32;
    private static final int RsBlas_zcopy = 31;
    private static final int RsBlas_zdotc_sub = 8;
    private static final int RsBlas_zdotu_sub = 7;
    private static final int RsBlas_zdscal = 46;
    private static final int RsBlas_zgbmv = 72;
    private static final int RsBlas_zgemm = 131;
    private static final int RsBlas_zgemv = 71;
    private static final int RsBlas_zgerc = 108;
    private static final int RsBlas_zgeru = 107;
    private static final int RsBlas_zhbmv = 105;
    private static final int RsBlas_zhemm = 140;
    private static final int RsBlas_zhemv = 104;
    private static final int RsBlas_zher = 109;
    private static final int RsBlas_zher2 = 111;
    private static final int RsBlas_zher2k = 142;
    private static final int RsBlas_zherk = 141;
    private static final int RsBlas_zhpmv = 106;
    private static final int RsBlas_zhpr = 110;
    private static final int RsBlas_zhpr2 = 112;
    private static final int RsBlas_zscal = 44;
    private static final int RsBlas_zswap = 30;
    private static final int RsBlas_zsymm = 132;
    private static final int RsBlas_zsyr2k = 134;
    private static final int RsBlas_zsyrk = 133;
    private static final int RsBlas_ztbmv = 74;
    private static final int RsBlas_ztbsv = 77;
    private static final int RsBlas_ztpmv = 75;
    private static final int RsBlas_ztpsv = 78;
    private static final int RsBlas_ztrmm = 135;
    private static final int RsBlas_ztrmv = 73;
    private static final int RsBlas_ztrsm = 136;
    private static final int RsBlas_ztrsv = 76;
    public static final int TRANSPOSE = 112;
    public static final int UNIT = 132;
    public static final int UPPER = 121;
    private Allocation mLUT;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Diag {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Side {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Transpose {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Uplo {
    }

    private ScriptIntrinsicBLAS(long j2, RenderScript renderScript) {
        super(j2, renderScript);
    }

    public static ScriptIntrinsicBLAS create(RenderScript renderScript) {
        return new ScriptIntrinsicBLAS(renderScript.nScriptIntrinsicCreate(13, Element.U32(renderScript).getID(renderScript)), renderScript);
    }

    public static void validateConjTranspose(int i2) {
        if (i2 != 111 && i2 != 113) {
            throw new RSRuntimeException("Invalid transpose passed to BLAS");
        }
    }

    public static void validateDiag(int i2) {
        if (i2 != 131 && i2 != 132) {
            throw new RSRuntimeException("Invalid diag passed to BLAS");
        }
    }

    public static void validateGEMV(Element element, int i2, Allocation allocation, Allocation allocation2, int i3, Allocation allocation3, int i4) {
        int i5;
        int i6;
        validateTranspose(i2);
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        if (!a.i(allocation, element) || !a.i(allocation2, element) || !a.i(allocation3, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation2.getType().getY() > 1 || allocation3.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        if (i2 == 111) {
            i6 = ((x2 - 1) * i3) + 1;
            i5 = ((y2 - 1) * i4) + 1;
        } else {
            int i7 = ((y2 - 1) * i3) + 1;
            i5 = ((x2 - 1) * i4) + 1;
            i6 = i7;
        }
        if (allocation2.getType().getX() != i6 || allocation3.getType().getX() != i5) {
            throw new RSRuntimeException("Incorrect vector dimensions for GEMV");
        }
    }

    public static void validateGER(Element element, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        if (!a.i(allocation3, element) || !a.i(allocation, element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation.getType().getY() > 1 || allocation2.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        if (x2 < 1 || y2 < 1) {
            throw new RSRuntimeException("M and N must be 1 or greater for GER");
        }
        if (i2 <= 0 || i3 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        if (allocation.getType().getX() != ((y2 - 1) * i2) + 1) {
            throw new RSRuntimeException("Incorrect vector dimensions for GER");
        }
        if (allocation2.getType().getX() != ((x2 - 1) * i3) + 1) {
            throw new RSRuntimeException("Incorrect vector dimensions for GER");
        }
    }

    public static void validateGERU(Element element, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        if (!a.i(allocation3, element) || !a.i(allocation, element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation.getType().getY() > 1 || allocation2.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        if (i2 <= 0 || i3 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        if (allocation.getType().getX() != ((y2 - 1) * i2) + 1) {
            throw new RSRuntimeException("Incorrect vector dimensions for GERU");
        }
        if (allocation2.getType().getX() != ((x2 - 1) * i3) + 1) {
            throw new RSRuntimeException("Incorrect vector dimensions for GERU");
        }
    }

    public static void validateHEMM(Element element, int i2, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        validateSide(i2);
        if (!allocation.getType().getElement().isCompatible(element) || !a.i(allocation2, element) || !a.i(allocation3, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        int x2 = allocation.getType().getX();
        if (x2 != allocation.getType().getY()) {
            throw new RSRuntimeException("Called HEMM with non-square A");
        }
        if ((i2 == 141 && x2 != allocation2.getType().getY()) || (i2 == 142 && x2 != allocation2.getType().getX())) {
            throw new RSRuntimeException("Called HEMM with invalid B");
        }
        if (allocation2.getType().getX() != allocation3.getType().getX() || allocation2.getType().getY() != allocation3.getType().getY()) {
            throw new RSRuntimeException("Called HEMM with mismatched B and C");
        }
    }

    public static void validateHER2K(Element element, int i2, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        if (!a.i(allocation, element) || !a.i(allocation2, element) || !a.i(allocation3, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        validateConjTranspose(i2);
        int x2 = allocation3.getType().getX();
        if (x2 != allocation3.getType().getY()) {
            throw new RSRuntimeException("Called HER2K with non-square C");
        }
        if (i2 == 111) {
            if (allocation.getType().getY() != x2) {
                throw new RSRuntimeException("Called HER2K with invalid matrices");
            }
        } else if (allocation.getType().getX() != x2) {
            throw new RSRuntimeException("Called HER2K with invalid matrices");
        }
        if (allocation.getType().getX() != allocation2.getType().getX() || allocation.getType().getY() != allocation2.getType().getY()) {
            throw new RSRuntimeException("Called HER2K with invalid A and B matrices");
        }
    }

    public static void validateHERK(Element element, int i2, Allocation allocation, Allocation allocation2) {
        if (!a.i(allocation, element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        validateConjTranspose(i2);
        int x2 = allocation2.getType().getX();
        if (x2 != allocation2.getType().getY()) {
            throw new RSRuntimeException("Called HERK with non-square C");
        }
        if (i2 == 111) {
            if (x2 != allocation.getType().getY()) {
                throw new RSRuntimeException("Called HERK with invalid A");
            }
        } else if (x2 != allocation.getType().getX()) {
            throw new RSRuntimeException("Called HERK with invalid A");
        }
    }

    public static void validateL3(Element element, int i2, int i3, int i4, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        int x2;
        int y2;
        int y3;
        int i5;
        int x3;
        if ((allocation != null && !a.i(allocation, element)) || ((allocation2 != null && !a.i(allocation2, element)) || (allocation3 != null && !a.i(allocation3, element)))) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation3 == null) {
            throw new RSRuntimeException("Allocation C cannot be null");
        }
        int y4 = allocation3.getType().getY();
        int x4 = allocation3.getType().getX();
        int y5 = -1;
        if (i4 != 142) {
            if (allocation == null) {
                x2 = -1;
                y2 = -1;
            } else if (i2 == 112 || i2 == 113) {
                y2 = allocation.getType().getY();
                x2 = allocation.getType().getX();
            } else {
                x2 = allocation.getType().getY();
                y2 = allocation.getType().getX();
            }
            if (allocation2 == null) {
                y3 = -1;
            } else if (i3 == 112 || i3 == 113) {
                y3 = allocation2.getType().getY();
                y5 = y2;
                i5 = x2;
                x3 = allocation2.getType().getX();
            } else {
                y5 = allocation2.getType().getY();
                y3 = allocation2.getType().getX();
            }
            i5 = x2;
            x3 = y5;
            y5 = y2;
        } else {
            if ((allocation == null && allocation2 != null) || (allocation != null && allocation2 == null)) {
                throw new RSRuntimeException("Provided Matrix A without Matrix B, or vice versa");
            }
            if (allocation2 != null) {
                x3 = allocation.getType().getY();
                y3 = allocation.getType().getX();
            } else {
                x3 = -1;
                y3 = -1;
            }
            if (allocation != null) {
                int y6 = allocation2.getType().getY();
                y5 = allocation2.getType().getX();
                i5 = y6;
            } else {
                i5 = -1;
            }
        }
        if (allocation != null && allocation2 != null) {
            if (y5 != x3 || i5 != y4 || y3 != x4) {
                throw new RSRuntimeException("Called BLAS with invalid dimensions");
            }
            return;
        }
        if (allocation != null) {
            if (y4 != x4) {
                throw new RSRuntimeException("Matrix C is not symmetric");
            }
            if (i5 != y4) {
                throw new RSRuntimeException("Called BLAS with invalid dimensions");
            }
            return;
        }
        if (allocation != null && allocation2 != null && y5 != x3) {
            throw new RSRuntimeException("Called BLAS with invalid dimensions");
        }
    }

    public static int validateSPMV(Element element, int i2, Allocation allocation, Allocation allocation2, int i3, Allocation allocation3, int i4) {
        validateUplo(i2);
        if (!allocation.getType().getElement().isCompatible(element) || !a.i(allocation2, element) || !a.i(allocation3, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation2.getType().getY() > 1 || allocation3.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (allocation.getType().getY() > 1) {
            throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
        }
        int iSqrt = (int) Math.sqrt(((double) allocation.getType().getX()) * 2.0d);
        if (allocation.getType().getX() != ((iSqrt + 1) * iSqrt) / 2) {
            throw new RSRuntimeException("Invalid dimension for Ap");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        int i5 = iSqrt - 1;
        if (allocation2.getType().getX() != (i3 * i5) + 1) {
            throw new RSRuntimeException("Incorrect vector dimensions for SPMV");
        }
        if (allocation3.getType().getX() == (i5 * i4) + 1) {
            return iSqrt;
        }
        throw new RSRuntimeException("Incorrect vector dimensions for SPMV");
    }

    public static int validateSPR(Element element, int i2, Allocation allocation, int i3, Allocation allocation2) {
        validateUplo(i2);
        if (!allocation2.getType().getElement().isCompatible(element) || !a.i(allocation, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (allocation2.getType().getY() > 1) {
            throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
        }
        int iSqrt = (int) Math.sqrt(((double) allocation2.getType().getX()) * 2.0d);
        if (allocation2.getType().getX() != ((iSqrt + 1) * iSqrt) / 2) {
            throw new RSRuntimeException("Invalid dimension for Ap");
        }
        if (i3 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        if (allocation.getType().getX() == ((iSqrt - 1) * i3) + 1) {
            return iSqrt;
        }
        throw new RSRuntimeException("Incorrect vector dimensions for SPR");
    }

    public static int validateSPR2(Element element, int i2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        validateUplo(i2);
        if (!allocation3.getType().getElement().isCompatible(element) || !a.i(allocation, element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation.getType().getY() > 1 || allocation2.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (allocation3.getType().getY() > 1) {
            throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
        }
        int iSqrt = (int) Math.sqrt(((double) allocation3.getType().getX()) * 2.0d);
        if (allocation3.getType().getX() != ((iSqrt + 1) * iSqrt) / 2) {
            throw new RSRuntimeException("Invalid dimension for Ap");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        int i5 = iSqrt - 1;
        int i6 = (i3 * i5) + 1;
        int i7 = (i5 * i4) + 1;
        if (allocation.getType().getX() == i6 && allocation2.getType().getX() == i7) {
            return iSqrt;
        }
        throw new RSRuntimeException("Incorrect vector dimensions for SPR2");
    }

    public static int validateSYMV(Element element, int i2, Allocation allocation, Allocation allocation2, Allocation allocation3, int i3, int i4) {
        validateUplo(i2);
        int y2 = allocation.getType().getY();
        if (allocation.getType().getX() != y2) {
            throw new RSRuntimeException("A must be a square matrix for SYMV");
        }
        if (!a.i(allocation, element) || !a.i(allocation2, element) || !a.i(allocation3, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation2.getType().getY() > 1 || allocation3.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        int i5 = y2 - 1;
        if (allocation2.getType().getX() != (i3 * i5) + 1) {
            throw new RSRuntimeException("Incorrect vector dimensions for SYMV");
        }
        if (allocation3.getType().getX() == (i5 * i4) + 1) {
            return y2;
        }
        throw new RSRuntimeException("Incorrect vector dimensions for SYMV");
    }

    public static int validateSYR(Element element, int i2, Allocation allocation, int i3, Allocation allocation2) {
        validateUplo(i2);
        if (!allocation2.getType().getElement().isCompatible(element) || !a.i(allocation, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        int x2 = allocation2.getType().getX();
        if (allocation.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (x2 != allocation2.getType().getY()) {
            throw new RSRuntimeException("A must be a symmetric matrix");
        }
        if (i3 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        if (allocation.getType().getX() == ((x2 - 1) * i3) + 1) {
            return x2;
        }
        throw new RSRuntimeException("Incorrect vector dimensions for SYR");
    }

    public static int validateSYR2(Element element, int i2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        validateUplo(i2);
        if (!allocation3.getType().getElement().isCompatible(element) || !a.i(allocation, element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation.getType().getY() > 1 || allocation2.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        int x2 = allocation3.getType().getX();
        if (x2 != allocation3.getType().getY()) {
            throw new RSRuntimeException("A must be a symmetric matrix");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        int i5 = x2 - 1;
        int i6 = (i3 * i5) + 1;
        int i7 = (i5 * i4) + 1;
        if (allocation.getType().getX() == i6 && allocation2.getType().getX() == i7) {
            return x2;
        }
        throw new RSRuntimeException("Incorrect vector dimensions for SYR");
    }

    public static void validateSYR2K(Element element, int i2, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        validateTranspose(i2);
        if (!allocation.getType().getElement().isCompatible(element) || !a.i(allocation2, element) || !a.i(allocation3, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        int x2 = i2 == 112 ? allocation.getType().getX() : allocation.getType().getY();
        if (allocation3.getType().getX() != x2 || allocation3.getType().getY() != x2) {
            throw new RSRuntimeException("Invalid symmetric matrix in SYR2K");
        }
        if (allocation.getType().getX() != allocation2.getType().getX() || allocation.getType().getY() != allocation2.getType().getY()) {
            throw new RSRuntimeException("Invalid A and B in SYR2K");
        }
    }

    public static void validateSide(int i2) {
        if (i2 != 141 && i2 != 142) {
            throw new RSRuntimeException("Invalid side passed to BLAS");
        }
    }

    public static int validateTPMV(Element element, int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTranspose(i3);
        validateUplo(i2);
        validateDiag(i4);
        if (!allocation.getType().getElement().isCompatible(element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation2.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (allocation.getType().getY() > 1) {
            throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
        }
        int iSqrt = (int) Math.sqrt(((double) allocation.getType().getX()) * 2.0d);
        if (allocation.getType().getX() != ((iSqrt + 1) * iSqrt) / 2) {
            throw new RSRuntimeException("Invalid dimension for Ap");
        }
        if (i5 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        if (allocation2.getType().getX() == ((iSqrt - 1) * i5) + 1) {
            return iSqrt;
        }
        throw new RSRuntimeException("Incorrect vector dimensions for TPMV");
    }

    public static void validateTRMM(Element element, int i2, int i3, Allocation allocation, Allocation allocation2) {
        validateSide(i2);
        validateTranspose(i3);
        if (!allocation.getType().getElement().isCompatible(element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        if (y2 != x2) {
            throw new RSRuntimeException("Called TRMM with a non-symmetric matrix A");
        }
        int y3 = allocation2.getType().getY();
        int x3 = allocation2.getType().getX();
        if (i2 == 141) {
            if (x2 != y3) {
                throw new RSRuntimeException("Called TRMM with invalid matrices");
            }
        } else if (x3 != y2) {
            throw new RSRuntimeException("Called TRMM with invalid matrices");
        }
    }

    public static void validateTRMV(Element element, int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTranspose(i3);
        validateUplo(i2);
        validateDiag(i4);
        int y2 = allocation.getType().getY();
        if (allocation.getType().getX() != y2) {
            throw new RSRuntimeException("A must be a square matrix for TRMV");
        }
        if (!a.i(allocation, element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation2.getType().getY() > 1) {
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        if (i5 <= 0) {
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        if (allocation2.getType().getX() != ((y2 - 1) * i5) + 1) {
            throw new RSRuntimeException("Incorrect vector dimensions for TRMV");
        }
    }

    public static void validateTRSM(Element element, int i2, int i3, Allocation allocation, Allocation allocation2) {
        validateSide(i2);
        validateTranspose(i3);
        if (!allocation.getType().getElement().isCompatible(element) || !a.i(allocation2, element)) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        int x2 = allocation.getType().getX();
        if (x2 != allocation.getType().getY()) {
            throw new RSRuntimeException("Called TRSM with a non-symmetric matrix A");
        }
        int y2 = allocation2.getType().getY();
        int x3 = allocation2.getType().getX();
        if (i2 == 141) {
            if (x2 != y2) {
                throw new RSRuntimeException("Called TRSM with invalid matrix dimensions");
            }
        } else if (x2 != x3) {
            throw new RSRuntimeException("Called TRSM with invalid matrix dimensions");
        }
    }

    public static void validateTranspose(int i2) {
        if (i2 != 111 && i2 != 112 && i2 != 113) {
            throw new RSRuntimeException("Invalid transpose passed to BLAS");
        }
    }

    public static void validateUplo(int i2) {
        if (i2 != 121 && i2 != 122) {
            throw new RSRuntimeException("Invalid uplo passed to BLAS");
        }
    }

    public void BNNM(Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3, int i4, int i5) {
        validateL3(Element.U8(this.mRS), 111, 112, 0, allocation, allocation2, allocation3);
        if (i2 < 0 || i2 > 255) {
            throw new RSRuntimeException("Invalid a_offset passed to BNNM");
        }
        if (i3 < 0 || i3 > 255) {
            throw new RSRuntimeException("Invalid b_offset passed to BNNM");
        }
        int y2 = allocation.getType().getY();
        int y3 = allocation2.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_BNNM(getID(renderScript), y2, y3, x2, allocation.getID(this.mRS), i2, allocation2.getID(this.mRS), i3, allocation3.getID(this.mRS), i4, i5);
    }

    public void CGBMV(int i2, int i3, int i4, Float2 float2, Allocation allocation, Allocation allocation2, int i5, Float2 float3, Allocation allocation3, int i6) {
        validateGEMV(Element.F32_2(this.mRS), i2, allocation, allocation2, i5, allocation3, i6);
        if (i3 < 0 || i4 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 64, i2, 0, 0, 0, 0, y2, x2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), i5, i6, i3, i4);
    }

    public void CGEMM(int i2, int i3, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        int y2;
        int x2;
        validateTranspose(i2);
        validateTranspose(i3);
        validateL3(Element.F32_2(this.mRS), i2, i3, 0, allocation, allocation2, allocation3);
        if (i2 != 111) {
            y2 = allocation.getType().getX();
            x2 = allocation.getType().getY();
        } else {
            y2 = allocation.getType().getY();
            x2 = allocation.getType().getX();
        }
        int i4 = y2;
        int i5 = x2;
        int y3 = i3 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 125, i2, i3, 0, 0, 0, i4, y3, i5, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void CGEMV(int i2, Float2 float2, Allocation allocation, Allocation allocation2, int i3, Float2 float3, Allocation allocation3, int i4) {
        validateGEMV(Element.F32_2(this.mRS), i2, allocation, allocation2, i3, allocation3, i4);
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 63, i2, 0, 0, 0, 0, y2, x2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void CGERC(Float2 float2, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        validateGERU(Element.F32_2(this.mRS), allocation, i2, allocation2, i3, allocation3);
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 99, 0, 0, 0, 0, 0, y2, x2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, allocation3.getID(this.mRS), i2, i3, 0, 0);
    }

    public void CGERU(Float2 float2, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        validateGERU(Element.F32_2(this.mRS), allocation, i2, allocation2, i3, allocation3);
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 98, 0, 0, 0, 0, 0, y2, x2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, allocation3.getID(this.mRS), i2, i3, 0, 0);
    }

    public void CHBMV(int i2, int i3, Float2 float2, Allocation allocation, Allocation allocation2, int i4, Float2 float3, Allocation allocation3, int i5) {
        int iValidateSYR2 = validateSYR2(Element.F32_2(this.mRS), i2, allocation2, i4, allocation3, i5, allocation);
        if (i3 < 0) {
            throw new RSRuntimeException("K must be 0 or greater for HBMV");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 96, 0, 0, 0, i2, 0, 0, iValidateSYR2, i3, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), i4, i5, 0, 0);
    }

    public void CHEMM(int i2, int i3, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        validateUplo(i3);
        validateHEMM(Element.F32_2(this.mRS), i2, allocation, allocation2, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 137, 0, 0, i2, i3, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void CHEMV(int i2, Float2 float2, Allocation allocation, Allocation allocation2, int i3, Float2 float3, Allocation allocation3, int i4) {
        int iValidateSYR2 = validateSYR2(Element.F32_2(this.mRS), i2, allocation2, i3, allocation3, i4, allocation);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 95, 0, 0, 0, i2, 0, 0, iValidateSYR2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void CHER(int i2, float f2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSYR = validateSYR(Element.F32_2(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 100, 0, 0, 0, i2, 0, 0, iValidateSYR, 0, f2, 0.0f, allocation.getID(this.mRS), 0L, 0.0f, 0.0f, allocation2.getID(this.mRS), i3, 0, 0, 0);
    }

    public void CHER2(int i2, Float2 float2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F32_2(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 102, 0, 0, 0, i2, 0, 0, iValidateSYR2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void CHER2K(int i2, int i3, Float2 float2, Allocation allocation, Allocation allocation2, float f2, Allocation allocation3) {
        validateUplo(i2);
        validateHER2K(Element.F32_2(this.mRS), i3, allocation, allocation2, allocation3);
        int x2 = i3 == 111 ? allocation.getType().getX() : allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 139, i3, 0, 0, i2, 0, 0, allocation3.getType().getX(), x2, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), f2, 0.0f, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void CHERK(int i2, int i3, float f2, Allocation allocation, float f3, Allocation allocation2) {
        validateUplo(i2);
        validateHERK(Element.F32_2(this.mRS), i3, allocation, allocation2);
        int y2 = i3 == 113 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 138, i3, 0, 0, i2, 0, 0, allocation2.getType().getX(), y2, f2, 0.0f, allocation.getID(this.mRS), 0L, f3, 0.0f, allocation2.getID(this.mRS), 0, 0, 0, 0);
    }

    public void CHPMV(int i2, Float2 float2, Allocation allocation, Allocation allocation2, int i3, Float2 float3, Allocation allocation3, int i4) {
        int iValidateSPR2 = validateSPR2(Element.F32_2(this.mRS), i2, allocation2, i3, allocation3, i4, allocation);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 97, 0, 0, 0, i2, 0, 0, iValidateSPR2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void CHPR(int i2, float f2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSPR = validateSPR(Element.F32_2(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 101, 0, 0, 0, i2, 0, 0, iValidateSPR, 0, f2, 0.0f, allocation.getID(this.mRS), 0L, 0.0f, 0.0f, allocation2.getID(this.mRS), i3, 0, 0, 0);
    }

    public void CHPR2(int i2, Float2 float2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F32_2(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 103, 0, 0, 0, i2, 0, 0, iValidateSPR2, 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void CSYMM(int i2, int i3, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        validateSide(i2);
        validateUplo(i3);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F32_2(this.mRS), 0, 0, i2, allocation, allocation2, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 126, 0, 0, i2, i3, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void CSYR2K(int i2, int i3, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        validateUplo(i2);
        validateSYR2K(Element.F32_2(this.mRS), i3, allocation, allocation2, allocation3);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 128, i3, 0, 0, i2, 0, 0, allocation3.getType().getX(), y2, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), float3.f146x, float3.f147y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void CSYRK(int i2, int i3, Float2 float2, Allocation allocation, Float2 float3, Allocation allocation2) {
        validateTranspose(i3);
        validateUplo(i2);
        validateL3(Element.F32_2(this.mRS), i3, 0, 0, allocation, null, allocation2);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 127, i3, 0, 0, i2, 0, 0, allocation2.getType().getX(), y2, float2.f146x, float2.f147y, allocation.getID(this.mRS), 0L, float3.f146x, float3.f147y, allocation2.getID(this.mRS), 0, 0, 0, 0);
    }

    public void CTBMV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        if (i5 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F32_2(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 66, i3, 0, 0, i2, i4, 0, y2, i5, 0.0f, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, i6, 0, 0, 0);
    }

    public void CTBSV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        validateTRMV(Element.F32_2(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        if (i5 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 69, i3, 0, 0, i2, i4, 0, y2, i5, 0.0f, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, i6, 0, 0, 0);
    }

    public void CTPMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F32_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 67, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0f, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, i5, 0, 0, 0);
    }

    public void CTPSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F32_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 70, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0f, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, i5, 0, 0, 0);
    }

    public void CTRMM(int i2, int i3, int i4, int i5, Float2 float2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRMM(Element.F32_2(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 129, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, 0, 0, 0, 0);
    }

    public void CTRMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F32_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 65, i3, 0, 0, i2, i4, 0, y2, 0, 0.0f, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, i5, 0, 0, 0);
    }

    public void CTRSM(int i2, int i3, int i4, int i5, Float2 float2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRSM(Element.F32_2(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 130, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, float2.f146x, float2.f147y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, 0, 0, 0, 0);
    }

    public void CTRSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F32_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 68, i3, 0, 0, i2, i4, 0, y2, 0, 0.0f, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0.0f, 0L, i5, 0, 0, 0);
    }

    public void DGBMV(int i2, int i3, int i4, double d2, Allocation allocation, Allocation allocation2, int i5, double d3, Allocation allocation3, int i6) {
        validateGEMV(Element.F64(this.mRS), i2, allocation, allocation2, i5, allocation3, i6);
        if (i3 < 0 || i4 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 56, i2, 0, 0, 0, 0, y2, x2, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), i5, i6, i3, i4);
    }

    public void DGEMM(int i2, int i3, double d2, Allocation allocation, Allocation allocation2, double d3, Allocation allocation3) {
        int y2;
        int x2;
        validateTranspose(i2);
        validateTranspose(i3);
        validateL3(Element.F64(this.mRS), i2, i3, 0, allocation, allocation2, allocation3);
        if (i2 != 111) {
            y2 = allocation.getType().getX();
            x2 = allocation.getType().getY();
        } else {
            y2 = allocation.getType().getY();
            x2 = allocation.getType().getX();
        }
        int i4 = y2;
        int i5 = x2;
        int y3 = i3 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 119, i2, i3, 0, 0, 0, i4, y3, i5, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void DGEMV(int i2, double d2, Allocation allocation, Allocation allocation2, int i3, double d3, Allocation allocation3, int i4) {
        validateGEMV(Element.F64(this.mRS), i2, allocation, allocation2, i3, allocation3, i4);
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 55, i2, 0, 0, 0, 0, y2, x2, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void DGER(double d2, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        validateGER(Element.F64(this.mRS), allocation, i2, allocation2, i3, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 90, 0, 0, 0, 0, 0, y2, x2, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, allocation3.getID(this.mRS), i2, i3, 0, 0);
    }

    public void DSBMV(int i2, int i3, double d2, Allocation allocation, Allocation allocation2, int i4, double d3, Allocation allocation3, int i5) {
        if (i3 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        int iValidateSYMV = validateSYMV(Element.F64(this.mRS), i2, allocation, allocation2, allocation3, i4, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 88, 0, 0, 0, i2, 0, 0, iValidateSYMV, i3, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), i4, i5, 0, 0);
    }

    public void DSPMV(int i2, double d2, Allocation allocation, Allocation allocation2, int i3, double d3, Allocation allocation3, int i4) {
        int iValidateSPMV = validateSPMV(Element.F64(this.mRS), i2, allocation, allocation2, i3, allocation3, i4);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 89, 0, 0, 0, i2, 0, 0, iValidateSPMV, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void DSPR(int i2, double d2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSPR = validateSPR(Element.F64(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 92, 0, 0, 0, i2, 0, 0, iValidateSPR, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i3, 0, 0, 0);
    }

    public void DSPR2(int i2, double d2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F64(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 94, 0, 0, 0, i2, 0, 0, iValidateSPR2, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void DSYMM(int i2, int i3, double d2, Allocation allocation, Allocation allocation2, double d3, Allocation allocation3) {
        validateSide(i2);
        validateUplo(i3);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F64(this.mRS), 0, 0, i2, allocation, allocation2, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 120, 0, 0, i2, i3, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void DSYMV(int i2, double d2, Allocation allocation, Allocation allocation2, int i3, double d3, Allocation allocation3, int i4) {
        int iValidateSYMV = validateSYMV(Element.F64(this.mRS), i2, allocation, allocation2, allocation3, i3, i4);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 87, 0, 0, 0, i2, 0, 0, iValidateSYMV, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void DSYR(int i2, double d2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSYR = validateSYR(Element.F64(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 91, 0, 0, 0, i2, 0, 0, iValidateSYR, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i3, 0, 0, 0);
    }

    public void DSYR2(int i2, double d2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F64(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 93, 0, 0, 0, i2, 0, 0, iValidateSYR2, 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void DSYR2K(int i2, int i3, double d2, Allocation allocation, Allocation allocation2, double d3, Allocation allocation3) {
        validateUplo(i2);
        validateSYR2K(Element.F64(this.mRS), i3, allocation, allocation2, allocation3);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 122, i3, 0, 0, i2, 0, 0, allocation3.getType().getX(), y2, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), d3, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void DSYRK(int i2, int i3, double d2, Allocation allocation, double d3, Allocation allocation2) {
        validateTranspose(i3);
        validateUplo(i2);
        validateL3(Element.F64(this.mRS), i3, 0, 0, allocation, null, allocation2);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 121, i3, 0, 0, i2, 0, 0, allocation2.getType().getX(), y2, d2, allocation.getID(this.mRS), 0L, d3, allocation2.getID(this.mRS), 0, 0, 0, 0);
    }

    public void DTBMV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        if (i5 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F64(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 58, i3, 0, 0, i2, i4, 0, y2, i5, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i6, 0, 0, 0);
    }

    public void DTBSV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        validateTRMV(Element.F64(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        if (i5 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 61, i3, 0, 0, i2, i4, 0, y2, i5, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i6, 0, 0, 0);
    }

    public void DTPMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F64(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 59, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i5, 0, 0, 0);
    }

    public void DTPSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F64(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 62, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i5, 0, 0, 0);
    }

    public void DTRMM(int i2, int i3, int i4, int i5, double d2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRMM(Element.F64(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 123, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, 0, 0, 0, 0);
    }

    public void DTRMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F64(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 57, i3, 0, 0, i2, i4, 0, y2, 0, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i5, 0, 0, 0);
    }

    public void DTRSM(int i2, int i3, int i4, int i5, double d2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRSM(Element.F64(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 124, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, d2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, 0, 0, 0, 0);
    }

    public void DTRSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F64(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 60, i3, 0, 0, i2, i4, 0, y2, 0, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0L, i5, 0, 0, 0);
    }

    public void SGBMV(int i2, int i3, int i4, float f2, Allocation allocation, Allocation allocation2, int i5, float f3, Allocation allocation3, int i6) {
        validateGEMV(Element.F32(this.mRS), i2, allocation, allocation2, i5, allocation3, i6);
        if (i3 < 0 || i4 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 48, i2, 0, 0, 0, 0, y2, x2, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), i5, i6, i3, i4);
    }

    public void SGEMM(int i2, int i3, float f2, Allocation allocation, Allocation allocation2, float f3, Allocation allocation3) {
        int y2;
        int x2;
        validateTranspose(i2);
        validateTranspose(i3);
        validateL3(Element.F32(this.mRS), i2, i3, 0, allocation, allocation2, allocation3);
        if (i2 != 111) {
            y2 = allocation.getType().getX();
            x2 = allocation.getType().getY();
        } else {
            y2 = allocation.getType().getY();
            x2 = allocation.getType().getX();
        }
        int i4 = y2;
        int i5 = x2;
        int y3 = i3 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 113, i2, i3, 0, 0, 0, i4, y3, i5, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void SGEMV(int i2, float f2, Allocation allocation, Allocation allocation2, int i3, float f3, Allocation allocation3, int i4) {
        validateGEMV(Element.F32(this.mRS), i2, allocation, allocation2, i3, allocation3, i4);
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 47, i2, 0, 0, 0, 0, y2, x2, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void SGER(float f2, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        validateGER(Element.F32(this.mRS), allocation, i2, allocation2, i3, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 82, 0, 0, 0, 0, 0, y2, x2, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, allocation3.getID(this.mRS), i2, i3, 0, 0);
    }

    public void SSBMV(int i2, int i3, float f2, Allocation allocation, Allocation allocation2, int i4, float f3, Allocation allocation3, int i5) {
        if (i3 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        int iValidateSYMV = validateSYMV(Element.F32(this.mRS), i2, allocation, allocation2, allocation3, i4, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 80, 0, 0, 0, i2, 0, 0, iValidateSYMV, i3, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), i4, i5, 0, 0);
    }

    public void SSPMV(int i2, float f2, Allocation allocation, Allocation allocation2, int i3, float f3, Allocation allocation3, int i4) {
        int iValidateSPMV = validateSPMV(Element.F32(this.mRS), i2, allocation, allocation2, i3, allocation3, i4);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 81, 0, 0, 0, i2, 0, 0, iValidateSPMV, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void SSPR(int i2, float f2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSPR = validateSPR(Element.F32(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 84, 0, 0, 0, i2, 0, 0, iValidateSPR, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i3, 0, 0, 0);
    }

    public void SSPR2(int i2, float f2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F32(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 86, 0, 0, 0, i2, 0, 0, iValidateSPR2, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void SSYMM(int i2, int i3, float f2, Allocation allocation, Allocation allocation2, float f3, Allocation allocation3) {
        validateSide(i2);
        validateUplo(i3);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F32(this.mRS), 0, 0, i2, allocation, allocation2, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 114, 0, 0, i2, i3, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void SSYMV(int i2, float f2, Allocation allocation, Allocation allocation2, int i3, float f3, Allocation allocation3, int i4) {
        int iValidateSYMV = validateSYMV(Element.F32(this.mRS), i2, allocation, allocation2, allocation3, i3, i4);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 79, 0, 0, 0, i2, 0, 0, iValidateSYMV, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void SSYR(int i2, float f2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSYR = validateSYR(Element.F32(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 83, 0, 0, 0, i2, 0, 0, iValidateSYR, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i3, 0, 0, 0);
    }

    public void SSYR2(int i2, float f2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F32(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 85, 0, 0, 0, i2, 0, 0, iValidateSYR2, 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void SSYR2K(int i2, int i3, float f2, Allocation allocation, Allocation allocation2, float f3, Allocation allocation3) {
        validateUplo(i2);
        validateSYR2K(Element.F32(this.mRS), i3, allocation, allocation2, allocation3);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 116, i3, 0, 0, i2, 0, 0, allocation3.getType().getX(), y2, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), f3, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void SSYRK(int i2, int i3, float f2, Allocation allocation, float f3, Allocation allocation2) {
        validateTranspose(i3);
        validateUplo(i2);
        validateL3(Element.F32(this.mRS), i3, 0, 0, allocation, null, allocation2);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 115, i3, 0, 0, i2, 0, 0, allocation2.getType().getX(), y2, f2, allocation.getID(this.mRS), 0L, f3, allocation2.getID(this.mRS), 0, 0, 0, 0);
    }

    public void STBMV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        if (i5 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F32(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 50, i3, 0, 0, i2, i4, 0, y2, i5, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i6, 0, 0, 0);
    }

    public void STBSV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        validateTRMV(Element.F32(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        if (i5 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 53, i3, 0, 0, i2, i4, 0, y2, i5, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i6, 0, 0, 0);
    }

    public void STPMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F32(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 51, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i5, 0, 0, 0);
    }

    public void STPSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F32(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 54, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i5, 0, 0, 0);
    }

    public void STRMM(int i2, int i3, int i4, int i5, float f2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRMM(Element.F32(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 117, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, 0, 0, 0, 0);
    }

    public void STRMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F32(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 49, i3, 0, 0, i2, i4, 0, y2, 0, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i5, 0, 0, 0);
    }

    public void STRSM(int i2, int i3, int i4, int i5, float f2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRSM(Element.F32(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 118, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, f2, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, 0, 0, 0, 0);
    }

    public void STRSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F32(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 52, i3, 0, 0, i2, i4, 0, y2, 0, 0.0f, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0f, 0L, i5, 0, 0, 0);
    }

    public void ZGBMV(int i2, int i3, int i4, Double2 double2, Allocation allocation, Allocation allocation2, int i5, Double2 double3, Allocation allocation3, int i6) {
        validateGEMV(Element.F64_2(this.mRS), i2, allocation, allocation2, i5, allocation3, i6);
        if (i3 < 0 || i4 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 72, i2, 0, 0, 0, 0, y2, x2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), i5, i6, i3, i4);
    }

    public void ZGEMM(int i2, int i3, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        int y2;
        int x2;
        validateTranspose(i2);
        validateTranspose(i3);
        validateL3(Element.F64_2(this.mRS), i2, i3, 0, allocation, allocation2, allocation3);
        if (i2 != 111) {
            y2 = allocation.getType().getX();
            x2 = allocation.getType().getY();
        } else {
            y2 = allocation.getType().getY();
            x2 = allocation.getType().getX();
        }
        int i4 = y2;
        int i5 = x2;
        int y3 = i3 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 131, i2, i3, 0, 0, 0, i4, y3, i5, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void ZGEMV(int i2, Double2 double2, Allocation allocation, Allocation allocation2, int i3, Double2 double3, Allocation allocation3, int i4) {
        validateGEMV(Element.F64_2(this.mRS), i2, allocation, allocation2, i3, allocation3, i4);
        int y2 = allocation.getType().getY();
        int x2 = allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 71, i2, 0, 0, 0, 0, y2, x2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void ZGERC(Double2 double2, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        validateGERU(Element.F64_2(this.mRS), allocation, i2, allocation2, i3, allocation3);
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 108, 0, 0, 0, 0, 0, y2, x2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, allocation3.getID(this.mRS), i2, i3, 0, 0);
    }

    public void ZGERU(Double2 double2, Allocation allocation, int i2, Allocation allocation2, int i3, Allocation allocation3) {
        validateGERU(Element.F64_2(this.mRS), allocation, i2, allocation2, i3, allocation3);
        int y2 = allocation3.getType().getY();
        int x2 = allocation3.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 107, 0, 0, 0, 0, 0, y2, x2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, allocation3.getID(this.mRS), i2, i3, 0, 0);
    }

    public void ZHBMV(int i2, int i3, Double2 double2, Allocation allocation, Allocation allocation2, int i4, Double2 double3, Allocation allocation3, int i5) {
        int iValidateSYR2 = validateSYR2(Element.F64_2(this.mRS), i2, allocation2, i4, allocation3, i5, allocation);
        if (i3 < 0) {
            throw new RSRuntimeException("K must be 0 or greater for HBMV");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 105, 0, 0, 0, i2, 0, 0, iValidateSYR2, i3, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), i4, i5, 0, 0);
    }

    public void ZHEMM(int i2, int i3, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        validateUplo(i3);
        validateHEMM(Element.F64_2(this.mRS), i2, allocation, allocation2, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 140, 0, 0, i2, i3, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void ZHEMV(int i2, Double2 double2, Allocation allocation, Allocation allocation2, int i3, Double2 double3, Allocation allocation3, int i4) {
        int iValidateSYR2 = validateSYR2(Element.F64_2(this.mRS), i2, allocation2, i3, allocation3, i4, allocation);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 104, 0, 0, 0, i2, 0, 0, iValidateSYR2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void ZHER(int i2, double d2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSYR = validateSYR(Element.F64_2(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 109, 0, 0, 0, i2, 0, 0, iValidateSYR, 0, d2, 0.0d, allocation.getID(this.mRS), 0L, 0.0d, 0.0d, allocation2.getID(this.mRS), i3, 0, 0, 0);
    }

    public void ZHER2(int i2, Double2 double2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F64_2(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 111, 0, 0, 0, i2, 0, 0, iValidateSYR2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void ZHER2K(int i2, int i3, Double2 double2, Allocation allocation, Allocation allocation2, double d2, Allocation allocation3) {
        validateUplo(i2);
        validateHER2K(Element.F64_2(this.mRS), i3, allocation, allocation2, allocation3);
        int x2 = i3 == 111 ? allocation.getType().getX() : allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 142, i3, 0, 0, i2, 0, 0, allocation3.getType().getX(), x2, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), d2, 0.0d, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void ZHERK(int i2, int i3, double d2, Allocation allocation, double d3, Allocation allocation2) {
        validateUplo(i2);
        validateHERK(Element.F64_2(this.mRS), i3, allocation, allocation2);
        int y2 = i3 == 113 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 141, i3, 0, 0, i2, 0, 0, allocation2.getType().getX(), y2, d2, 0.0d, allocation.getID(this.mRS), 0L, d3, 0.0d, allocation2.getID(this.mRS), 0, 0, 0, 0);
    }

    public void ZHPMV(int i2, Double2 double2, Allocation allocation, Allocation allocation2, int i3, Double2 double3, Allocation allocation3, int i4) {
        int iValidateSPR2 = validateSPR2(Element.F64_2(this.mRS), i2, allocation2, i3, allocation3, i4, allocation);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 106, 0, 0, 0, i2, 0, 0, iValidateSPR2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void ZHPR(int i2, double d2, Allocation allocation, int i3, Allocation allocation2) {
        int iValidateSPR = validateSPR(Element.F64_2(this.mRS), i2, allocation, i3, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 110, 0, 0, 0, i2, 0, 0, iValidateSPR, 0, d2, 0.0d, allocation.getID(this.mRS), 0L, 0.0d, 0.0d, allocation2.getID(this.mRS), i3, 0, 0, 0);
    }

    public void ZHPR2(int i2, Double2 double2, Allocation allocation, int i3, Allocation allocation2, int i4, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F64_2(this.mRS), i2, allocation, i3, allocation2, i4, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 112, 0, 0, 0, i2, 0, 0, iValidateSPR2, 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, allocation3.getID(this.mRS), i3, i4, 0, 0);
    }

    public void ZSYMM(int i2, int i3, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        validateSide(i2);
        validateUplo(i3);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F64_2(this.mRS), 0, 0, i2, allocation, allocation2, allocation3);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 132, 0, 0, i2, i3, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void ZSYR2K(int i2, int i3, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        validateUplo(i2);
        validateSYR2K(Element.F64_2(this.mRS), i3, allocation, allocation2, allocation3);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 134, i3, 0, 0, i2, 0, 0, allocation3.getType().getX(), y2, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), double3.f137x, double3.f138y, allocation3.getID(this.mRS), 0, 0, 0, 0);
    }

    public void ZSYRK(int i2, int i3, Double2 double2, Allocation allocation, Double2 double3, Allocation allocation2) {
        validateTranspose(i3);
        validateUplo(i2);
        validateL3(Element.F64_2(this.mRS), i3, 0, 0, allocation, null, allocation2);
        int y2 = i3 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 133, i3, 0, 0, i2, 0, 0, allocation2.getType().getX(), y2, double2.f137x, double2.f138y, allocation.getID(this.mRS), 0L, double3.f137x, double3.f138y, allocation2.getID(this.mRS), 0, 0, 0, 0);
    }

    public void ZTBMV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        if (i5 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F64_2(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 74, i3, 0, 0, i2, i4, 0, y2, i5, 0.0d, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, i6, 0, 0, 0);
    }

    public void ZTBSV(int i2, int i3, int i4, int i5, Allocation allocation, Allocation allocation2, int i6) {
        validateTRMV(Element.F64_2(this.mRS), i2, i3, i4, allocation, allocation2, i6);
        int y2 = allocation.getType().getY();
        if (i5 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 77, i3, 0, 0, i2, i4, 0, y2, i5, 0.0d, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, i6, 0, 0, 0);
    }

    public void ZTPMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F64_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 75, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0d, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, i5, 0, 0, 0);
    }

    public void ZTPSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        int iValidateTPMV = validateTPMV(Element.F64_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 78, i3, 0, 0, i2, i4, 0, iValidateTPMV, 0, 0.0d, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, i5, 0, 0, 0);
    }

    public void ZTRMM(int i2, int i3, int i4, int i5, Double2 double2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRMM(Element.F64_2(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 135, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, 0, 0, 0, 0);
    }

    public void ZTRMV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F64_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 73, i3, 0, 0, i2, i4, 0, y2, 0, 0.0d, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, i5, 0, 0, 0);
    }

    public void ZTRSM(int i2, int i3, int i4, int i5, Double2 double2, Allocation allocation, Allocation allocation2) {
        validateUplo(i3);
        validateDiag(i5);
        validateTRSM(Element.F64_2(this.mRS), i2, i4, allocation, allocation2);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 136, i4, 0, i2, i3, i5, allocation2.getType().getY(), allocation2.getType().getX(), 0, double2.f137x, double2.f138y, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, 0, 0, 0, 0);
    }

    public void ZTRSV(int i2, int i3, int i4, Allocation allocation, Allocation allocation2, int i5) {
        validateTRMV(Element.F64_2(this.mRS), i2, i3, i4, allocation, allocation2, i5);
        int y2 = allocation.getType().getY();
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 76, i3, 0, 0, i2, i4, 0, y2, 0, 0.0d, 0.0d, allocation.getID(this.mRS), allocation2.getID(this.mRS), 0.0d, 0.0d, 0L, i5, 0, 0, 0);
    }
}
