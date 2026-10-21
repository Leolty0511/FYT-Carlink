.class public final Landroid/renderscript/ScriptIntrinsicBLAS;
.super Landroid/renderscript/ScriptIntrinsic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptIntrinsicBLAS$Side;,
        Landroid/renderscript/ScriptIntrinsicBLAS$Diag;,
        Landroid/renderscript/ScriptIntrinsicBLAS$Uplo;,
        Landroid/renderscript/ScriptIntrinsicBLAS$Transpose;
    }
.end annotation


# static fields
.field public static final CONJ_TRANSPOSE:I = 0x71

.field public static final LEFT:I = 0x8d

.field public static final LOWER:I = 0x7a

.field public static final NON_UNIT:I = 0x83

.field public static final NO_TRANSPOSE:I = 0x6f

.field public static final RIGHT:I = 0x8e

.field private static final RsBlas_bnnm:I = 0x3e8

.field private static final RsBlas_caxpy:I = 0x1d

.field private static final RsBlas_ccopy:I = 0x1c

.field private static final RsBlas_cdotc_sub:I = 0x6

.field private static final RsBlas_cdotu_sub:I = 0x5

.field private static final RsBlas_cgbmv:I = 0x40

.field private static final RsBlas_cgemm:I = 0x7d

.field private static final RsBlas_cgemv:I = 0x3f

.field private static final RsBlas_cgerc:I = 0x63

.field private static final RsBlas_cgeru:I = 0x62

.field private static final RsBlas_chbmv:I = 0x60

.field private static final RsBlas_chemm:I = 0x89

.field private static final RsBlas_chemv:I = 0x5f

.field private static final RsBlas_cher:I = 0x64

.field private static final RsBlas_cher2:I = 0x66

.field private static final RsBlas_cher2k:I = 0x8b

.field private static final RsBlas_cherk:I = 0x8a

.field private static final RsBlas_chpmv:I = 0x61

.field private static final RsBlas_chpr:I = 0x65

.field private static final RsBlas_chpr2:I = 0x67

.field private static final RsBlas_cscal:I = 0x2b

.field private static final RsBlas_csscal:I = 0x2d

.field private static final RsBlas_cswap:I = 0x1b

.field private static final RsBlas_csymm:I = 0x7e

.field private static final RsBlas_csyr2k:I = 0x80

.field private static final RsBlas_csyrk:I = 0x7f

.field private static final RsBlas_ctbmv:I = 0x42

.field private static final RsBlas_ctbsv:I = 0x45

.field private static final RsBlas_ctpmv:I = 0x43

.field private static final RsBlas_ctpsv:I = 0x46

.field private static final RsBlas_ctrmm:I = 0x81

.field private static final RsBlas_ctrmv:I = 0x41

.field private static final RsBlas_ctrsm:I = 0x82

.field private static final RsBlas_ctrsv:I = 0x44

.field private static final RsBlas_dasum:I = 0xc

.field private static final RsBlas_daxpy:I = 0x1a

.field private static final RsBlas_dcopy:I = 0x19

.field private static final RsBlas_ddot:I = 0x4

.field private static final RsBlas_dgbmv:I = 0x38

.field private static final RsBlas_dgemm:I = 0x77

.field private static final RsBlas_dgemv:I = 0x37

.field private static final RsBlas_dger:I = 0x5a

.field private static final RsBlas_dnrm2:I = 0xb

.field private static final RsBlas_drot:I = 0x27

.field private static final RsBlas_drotg:I = 0x25

.field private static final RsBlas_drotm:I = 0x28

.field private static final RsBlas_drotmg:I = 0x26

.field private static final RsBlas_dsbmv:I = 0x58

.field private static final RsBlas_dscal:I = 0x2a

.field private static final RsBlas_dsdot:I = 0x2

.field private static final RsBlas_dspmv:I = 0x59

.field private static final RsBlas_dspr:I = 0x5c

.field private static final RsBlas_dspr2:I = 0x5e

.field private static final RsBlas_dswap:I = 0x18

.field private static final RsBlas_dsymm:I = 0x78

.field private static final RsBlas_dsymv:I = 0x57

.field private static final RsBlas_dsyr:I = 0x5b

.field private static final RsBlas_dsyr2:I = 0x5d

.field private static final RsBlas_dsyr2k:I = 0x7a

.field private static final RsBlas_dsyrk:I = 0x79

.field private static final RsBlas_dtbmv:I = 0x3a

.field private static final RsBlas_dtbsv:I = 0x3d

.field private static final RsBlas_dtpmv:I = 0x3b

.field private static final RsBlas_dtpsv:I = 0x3e

.field private static final RsBlas_dtrmm:I = 0x7b

.field private static final RsBlas_dtrmv:I = 0x39

.field private static final RsBlas_dtrsm:I = 0x7c

.field private static final RsBlas_dtrsv:I = 0x3c

.field private static final RsBlas_dzasum:I = 0x10

.field private static final RsBlas_dznrm2:I = 0xf

.field private static final RsBlas_icamax:I = 0x13

.field private static final RsBlas_idamax:I = 0x12

.field private static final RsBlas_isamax:I = 0x11

.field private static final RsBlas_izamax:I = 0x14

.field private static final RsBlas_sasum:I = 0xa

.field private static final RsBlas_saxpy:I = 0x17

.field private static final RsBlas_scasum:I = 0xe

.field private static final RsBlas_scnrm2:I = 0xd

.field private static final RsBlas_scopy:I = 0x16

.field private static final RsBlas_sdot:I = 0x3

.field private static final RsBlas_sdsdot:I = 0x1

.field private static final RsBlas_sgbmv:I = 0x30

.field private static final RsBlas_sgemm:I = 0x71

.field private static final RsBlas_sgemv:I = 0x2f

.field private static final RsBlas_sger:I = 0x52

.field private static final RsBlas_snrm2:I = 0x9

.field private static final RsBlas_srot:I = 0x23

.field private static final RsBlas_srotg:I = 0x21

.field private static final RsBlas_srotm:I = 0x24

.field private static final RsBlas_srotmg:I = 0x22

.field private static final RsBlas_ssbmv:I = 0x50

.field private static final RsBlas_sscal:I = 0x29

.field private static final RsBlas_sspmv:I = 0x51

.field private static final RsBlas_sspr:I = 0x54

.field private static final RsBlas_sspr2:I = 0x56

.field private static final RsBlas_sswap:I = 0x15

.field private static final RsBlas_ssymm:I = 0x72

.field private static final RsBlas_ssymv:I = 0x4f

.field private static final RsBlas_ssyr:I = 0x53

.field private static final RsBlas_ssyr2:I = 0x55

.field private static final RsBlas_ssyr2k:I = 0x74

.field private static final RsBlas_ssyrk:I = 0x73

.field private static final RsBlas_stbmv:I = 0x32

.field private static final RsBlas_stbsv:I = 0x35

.field private static final RsBlas_stpmv:I = 0x33

.field private static final RsBlas_stpsv:I = 0x36

.field private static final RsBlas_strmm:I = 0x75

.field private static final RsBlas_strmv:I = 0x31

.field private static final RsBlas_strsm:I = 0x76

.field private static final RsBlas_strsv:I = 0x34

.field private static final RsBlas_zaxpy:I = 0x20

.field private static final RsBlas_zcopy:I = 0x1f

.field private static final RsBlas_zdotc_sub:I = 0x8

.field private static final RsBlas_zdotu_sub:I = 0x7

.field private static final RsBlas_zdscal:I = 0x2e

.field private static final RsBlas_zgbmv:I = 0x48

.field private static final RsBlas_zgemm:I = 0x83

.field private static final RsBlas_zgemv:I = 0x47

.field private static final RsBlas_zgerc:I = 0x6c

.field private static final RsBlas_zgeru:I = 0x6b

.field private static final RsBlas_zhbmv:I = 0x69

.field private static final RsBlas_zhemm:I = 0x8c

.field private static final RsBlas_zhemv:I = 0x68

.field private static final RsBlas_zher:I = 0x6d

.field private static final RsBlas_zher2:I = 0x6f

.field private static final RsBlas_zher2k:I = 0x8e

.field private static final RsBlas_zherk:I = 0x8d

.field private static final RsBlas_zhpmv:I = 0x6a

.field private static final RsBlas_zhpr:I = 0x6e

.field private static final RsBlas_zhpr2:I = 0x70

.field private static final RsBlas_zscal:I = 0x2c

.field private static final RsBlas_zswap:I = 0x1e

.field private static final RsBlas_zsymm:I = 0x84

.field private static final RsBlas_zsyr2k:I = 0x86

.field private static final RsBlas_zsyrk:I = 0x85

.field private static final RsBlas_ztbmv:I = 0x4a

.field private static final RsBlas_ztbsv:I = 0x4d

.field private static final RsBlas_ztpmv:I = 0x4b

.field private static final RsBlas_ztpsv:I = 0x4e

.field private static final RsBlas_ztrmm:I = 0x87

.field private static final RsBlas_ztrmv:I = 0x49

.field private static final RsBlas_ztrsm:I = 0x88

.field private static final RsBlas_ztrsv:I = 0x4c

.field public static final TRANSPOSE:I = 0x70

.field public static final UNIT:I = 0x84

.field public static final UPPER:I = 0x79


# instance fields
.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicBLAS;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/16 v2, 0xd

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v1}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBLAS;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBLAS;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 18
    .line 19
    .line 20
    return-object v2
.end method

.method public static validateConjTranspose(I)V
    .locals 1

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x71

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Invalid transpose passed to BLAS"

    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static validateDiag(I)V
    .locals 1

    const/16 v0, 0x83

    if-eq p0, v0, :cond_1

    const/16 v0, 0x84

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Invalid diag passed to BLAS"

    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_4

    .line 25
    .line 26
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    invoke-static {p5, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/4 p2, 0x1

    .line 47
    if-gt p0, p2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-gt p0, p2, :cond_3

    .line 58
    .line 59
    if-lez p4, :cond_2

    .line 60
    .line 61
    if-lez p6, :cond_2

    .line 62
    .line 63
    const/16 p0, 0x6f

    .line 64
    .line 65
    if-ne p1, p0, :cond_0

    .line 66
    .line 67
    sub-int/2addr v1, p2

    .line 68
    mul-int/2addr v1, p4

    .line 69
    add-int/2addr v1, p2

    .line 70
    sub-int/2addr v0, p2

    .line 71
    mul-int/2addr v0, p6

    .line 72
    add-int/2addr v0, p2

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    sub-int/2addr v0, p2

    .line 75
    mul-int/2addr v0, p4

    .line 76
    add-int/lit8 p0, v0, 0x1

    .line 77
    .line 78
    sub-int/2addr v1, p2

    .line 79
    mul-int/2addr v1, p6

    .line 80
    add-int/lit8 v0, v1, 0x1

    .line 81
    .line 82
    move v1, p0

    .line 83
    :goto_0
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-ne p0, v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-ne p0, v0, :cond_1

    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 105
    .line 106
    const-string p1, "Incorrect vector dimensions for GEMV"

    .line 107
    .line 108
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 113
    .line 114
    const-string p1, "Vector increments must be greater than 0"

    .line 115
    .line 116
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 121
    .line 122
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 123
    .line 124
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 129
    .line 130
    const-string p1, "Called BLAS with wrong Element type"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public static validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p5, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-static {p1, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/4 v0, 0x1

    .line 28
    if-gt p0, v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-gt p0, v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    invoke-virtual {p5}, Landroid/renderscript/Type;->getX()I

    .line 53
    .line 54
    .line 55
    move-result p5

    .line 56
    if-lt p5, v0, :cond_3

    .line 57
    .line 58
    if-lt p0, v0, :cond_3

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    if-lez p4, :cond_2

    .line 63
    .line 64
    sub-int/2addr p0, v0

    .line 65
    mul-int/2addr p0, p2

    .line 66
    add-int/2addr p0, v0

    .line 67
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const-string p2, "Incorrect vector dimensions for GER"

    .line 76
    .line 77
    if-ne p1, p0, :cond_1

    .line 78
    .line 79
    sub-int/2addr p5, v0

    .line 80
    mul-int/2addr p5, p4

    .line 81
    add-int/2addr p5, v0

    .line 82
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-ne p0, p5, :cond_0

    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 94
    .line 95
    invoke-direct {p0, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 100
    .line 101
    invoke-direct {p0, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 106
    .line 107
    const-string p1, "Vector increments must be greater than 0"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 114
    .line 115
    const-string p1, "M and N must be 1 or greater for GER"

    .line 116
    .line 117
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 122
    .line 123
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 130
    .line 131
    const-string p1, "Called BLAS with wrong Element type"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public static validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p5, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-static {p1, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/4 v0, 0x1

    .line 28
    if-gt p0, v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-gt p0, v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    invoke-virtual {p5}, Landroid/renderscript/Type;->getX()I

    .line 53
    .line 54
    .line 55
    move-result p5

    .line 56
    if-lez p2, :cond_2

    .line 57
    .line 58
    if-lez p4, :cond_2

    .line 59
    .line 60
    sub-int/2addr p0, v0

    .line 61
    mul-int/2addr p0, p2

    .line 62
    add-int/2addr p0, v0

    .line 63
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const-string p2, "Incorrect vector dimensions for GERU"

    .line 72
    .line 73
    if-ne p1, p0, :cond_1

    .line 74
    .line 75
    sub-int/2addr p5, v0

    .line 76
    mul-int/2addr p5, p4

    .line 77
    add-int/2addr p5, v0

    .line 78
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-ne p0, p5, :cond_0

    .line 87
    .line 88
    return-void

    .line 89
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 90
    .line 91
    invoke-direct {p0, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 96
    .line 97
    invoke-direct {p0, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 102
    .line 103
    const-string p1, "Vector increments must be greater than 0"

    .line 104
    .line 105
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 110
    .line 111
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 112
    .line 113
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 118
    .line 119
    const-string p1, "Called BLAS with wrong Element type"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public static validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-ne p0, p2, :cond_4

    .line 47
    .line 48
    const/16 p2, 0x8d

    .line 49
    .line 50
    if-ne p1, p2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-ne p0, p2, :cond_1

    .line 61
    .line 62
    :cond_0
    const/16 p2, 0x8e

    .line 63
    .line 64
    if-ne p1, p2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-ne p0, p1, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 78
    .line 79
    const-string p1, "Called HEMM with invalid B"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-ne p0, p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p0, p1, :cond_3

    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 123
    .line 124
    const-string p1, "Called HEMM with mismatched B and C"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 131
    .line 132
    const-string p1, "Called HEMM with non-square A"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 139
    .line 140
    const-string p1, "Called BLAS with wrong Element type"

    .line 141
    .line 142
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method

.method public static validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_5

    .line 18
    .line 19
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    invoke-virtual {p4}, Landroid/renderscript/Type;->getY()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-ne p0, p4, :cond_4

    .line 39
    .line 40
    const/16 p4, 0x6f

    .line 41
    .line 42
    const-string v0, "Called HER2K with invalid matrices"

    .line 43
    .line 44
    if-ne p1, p4, :cond_1

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ne p1, p0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne p1, p0, :cond_3

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-ne p0, p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ne p0, p1, :cond_2

    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 111
    .line 112
    const-string p1, "Called HER2K with invalid A and B matrices"

    .line 113
    .line 114
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 119
    .line 120
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 125
    .line 126
    const-string p1, "Called HER2K with non-square C"

    .line 127
    .line 128
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 133
    .line 134
    const-string p1, "Called BLAS with wrong Element type"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public static validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_4

    .line 12
    .line 13
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3}, Landroid/renderscript/Type;->getY()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-ne p0, p3, :cond_3

    .line 33
    .line 34
    const/16 p3, 0x6f

    .line 35
    .line 36
    const-string v0, "Called HERK with invalid A"

    .line 37
    .line 38
    if-ne p1, p3, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p0, p1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 52
    .line 53
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p0, p1, :cond_2

    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 69
    .line 70
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 75
    .line 76
    const-string p1, "Called HERK with non-square C"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 83
    .line 84
    const-string p1, "Called BLAS with wrong Element type"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public static validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 4

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :cond_0
    if-eqz p5, :cond_1

    .line 10
    .line 11
    invoke-static {p5, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_1
    if-eqz p6, :cond_3

    .line 18
    .line 19
    invoke-static {p6, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 27
    .line 28
    const-string p1, "Called BLAS with wrong Element type"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_3
    :goto_0
    if-eqz p6, :cond_17

    .line 35
    .line 36
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 45
    .line 46
    .line 47
    move-result-object p6

    .line 48
    invoke-virtual {p6}, Landroid/renderscript/Type;->getX()I

    .line 49
    .line 50
    .line 51
    move-result p6

    .line 52
    const/16 v0, 0x8e

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    if-ne p3, v0, :cond_9

    .line 56
    .line 57
    if-nez p4, :cond_4

    .line 58
    .line 59
    if-nez p5, :cond_5

    .line 60
    .line 61
    :cond_4
    if-eqz p4, :cond_6

    .line 62
    .line 63
    if-eqz p5, :cond_5

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 67
    .line 68
    const-string p1, "Provided Matrix A without Matrix B, or vice versa"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    .line 75
    .line 76
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    goto :goto_2

    .line 93
    :cond_7
    move p1, v1

    .line 94
    move p2, p1

    .line 95
    :goto_2
    if-eqz p4, :cond_8

    .line 96
    .line 97
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p3}, Landroid/renderscript/Type;->getY()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p3}, Landroid/renderscript/Type;->getX()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    move v3, v1

    .line 114
    move v1, p3

    .line 115
    move p3, v3

    .line 116
    goto/16 :goto_7

    .line 117
    .line 118
    :cond_8
    move p3, v1

    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :cond_9
    const/16 p3, 0x71

    .line 122
    .line 123
    const/16 v0, 0x70

    .line 124
    .line 125
    if-eqz p4, :cond_c

    .line 126
    .line 127
    if-eq p1, v0, :cond_b

    .line 128
    .line 129
    if-ne p1, p3, :cond_a

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_a
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    goto :goto_4

    .line 149
    :cond_b
    :goto_3
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    goto :goto_4

    .line 166
    :cond_c
    move p1, v1

    .line 167
    move v2, p1

    .line 168
    :goto_4
    if-eqz p5, :cond_f

    .line 169
    .line 170
    if-eq p2, v0, :cond_e

    .line 171
    .line 172
    if-ne p2, p3, :cond_d

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_d
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    goto :goto_6

    .line 192
    :cond_e
    :goto_5
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    invoke-virtual {p3}, Landroid/renderscript/Type;->getX()I

    .line 205
    .line 206
    .line 207
    move-result p3

    .line 208
    move v1, v2

    .line 209
    move v3, p3

    .line 210
    move p3, p1

    .line 211
    move p1, v3

    .line 212
    goto :goto_7

    .line 213
    :cond_f
    move p2, v1

    .line 214
    :goto_6
    move p3, p1

    .line 215
    move p1, v1

    .line 216
    move v1, v2

    .line 217
    :goto_7
    const-string v0, "Called BLAS with invalid dimensions"

    .line 218
    .line 219
    if-eqz p4, :cond_11

    .line 220
    .line 221
    if-eqz p5, :cond_11

    .line 222
    .line 223
    if-ne v1, p1, :cond_10

    .line 224
    .line 225
    if-ne p3, p0, :cond_10

    .line 226
    .line 227
    if-ne p2, p6, :cond_10

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_10
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 231
    .line 232
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_11
    if-eqz p4, :cond_14

    .line 237
    .line 238
    if-ne p0, p6, :cond_13

    .line 239
    .line 240
    if-ne p3, p0, :cond_12

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_12
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 244
    .line 245
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :cond_13
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 250
    .line 251
    const-string p1, "Matrix C is not symmetric"

    .line 252
    .line 253
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p0

    .line 257
    :cond_14
    if-eqz p4, :cond_16

    .line 258
    .line 259
    if-eqz p5, :cond_16

    .line 260
    .line 261
    if-ne v1, p1, :cond_15

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_15
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 265
    .line 266
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p0

    .line 270
    :cond_16
    :goto_8
    return-void

    .line 271
    :cond_17
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 272
    .line 273
    const-string p1, "Allocation C cannot be null"

    .line 274
    .line 275
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0
.end method

.method public static validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    invoke-static {p5, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_6

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 p1, 0x1

    .line 39
    if-gt p0, p1, :cond_5

    .line 40
    .line 41
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-gt p0, p1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-gt p0, p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    int-to-double v0, p0

    .line 70
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 71
    .line 72
    mul-double/2addr v0, v2

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    double-to-int p0, v0

    .line 78
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    add-int/lit8 v0, p0, 0x1

    .line 87
    .line 88
    mul-int/2addr v0, p0

    .line 89
    div-int/lit8 v0, v0, 0x2

    .line 90
    .line 91
    if-ne p2, v0, :cond_3

    .line 92
    .line 93
    if-lez p4, :cond_2

    .line 94
    .line 95
    if-lez p6, :cond_2

    .line 96
    .line 97
    add-int/lit8 p2, p0, -0x1

    .line 98
    .line 99
    mul-int/2addr p4, p2

    .line 100
    add-int/2addr p4, p1

    .line 101
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p3}, Landroid/renderscript/Type;->getX()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    const-string v0, "Incorrect vector dimensions for SPMV"

    .line 110
    .line 111
    if-ne p3, p4, :cond_1

    .line 112
    .line 113
    mul-int/2addr p2, p6

    .line 114
    add-int/2addr p2, p1

    .line 115
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-ne p1, p2, :cond_0

    .line 124
    .line 125
    return p0

    .line 126
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 127
    .line 128
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 133
    .line 134
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 139
    .line 140
    const-string p1, "Vector increments must be greater than 0"

    .line 141
    .line 142
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 147
    .line 148
    const-string p1, "Invalid dimension for Ap"

    .line 149
    .line 150
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 155
    .line 156
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 157
    .line 158
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 163
    .line 164
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 165
    .line 166
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :cond_6
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 171
    .line 172
    const-string p1, "Called BLAS with wrong Element type"

    .line 173
    .line 174
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0
.end method

.method public static validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_5

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const/4 p1, 0x1

    .line 33
    if-gt p0, p1, :cond_4

    .line 34
    .line 35
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-gt p0, p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    int-to-double v0, p0

    .line 54
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 55
    .line 56
    mul-double/2addr v0, v2

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    double-to-int p0, v0

    .line 62
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-virtual {p4}, Landroid/renderscript/Type;->getX()I

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    add-int/lit8 v0, p0, 0x1

    .line 71
    .line 72
    mul-int/2addr v0, p0

    .line 73
    div-int/lit8 v0, v0, 0x2

    .line 74
    .line 75
    if-ne p4, v0, :cond_2

    .line 76
    .line 77
    if-lez p3, :cond_1

    .line 78
    .line 79
    add-int/lit8 p4, p0, -0x1

    .line 80
    .line 81
    mul-int/2addr p4, p3

    .line 82
    add-int/2addr p4, p1

    .line 83
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, p4, :cond_0

    .line 92
    .line 93
    return p0

    .line 94
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 95
    .line 96
    const-string p1, "Incorrect vector dimensions for SPR"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 103
    .line 104
    const-string p1, "Vector increments must be greater than 0"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 111
    .line 112
    const-string p1, "Invalid dimension for Ap"

    .line 113
    .line 114
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 119
    .line 120
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 121
    .line 122
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 127
    .line 128
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 129
    .line 130
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 135
    .line 136
    const-string p1, "Called BLAS with wrong Element type"

    .line 137
    .line 138
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public static validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 p1, 0x1

    .line 39
    if-gt p0, p1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-gt p0, p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-gt p0, p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    int-to-double v0, p0

    .line 70
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 71
    .line 72
    mul-double/2addr v0, v2

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    double-to-int p0, v0

    .line 78
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 79
    .line 80
    .line 81
    move-result-object p6

    .line 82
    invoke-virtual {p6}, Landroid/renderscript/Type;->getX()I

    .line 83
    .line 84
    .line 85
    move-result p6

    .line 86
    add-int/lit8 v0, p0, 0x1

    .line 87
    .line 88
    mul-int/2addr v0, p0

    .line 89
    div-int/lit8 v0, v0, 0x2

    .line 90
    .line 91
    if-ne p6, v0, :cond_2

    .line 92
    .line 93
    if-lez p3, :cond_1

    .line 94
    .line 95
    if-lez p5, :cond_1

    .line 96
    .line 97
    add-int/lit8 p6, p0, -0x1

    .line 98
    .line 99
    mul-int/2addr p3, p6

    .line 100
    add-int/2addr p3, p1

    .line 101
    mul-int/2addr p6, p5

    .line 102
    add-int/2addr p6, p1

    .line 103
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-ne p1, p3, :cond_0

    .line 112
    .line 113
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, p6, :cond_0

    .line 122
    .line 123
    return p0

    .line 124
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 125
    .line 126
    const-string p1, "Incorrect vector dimensions for SPR2"

    .line 127
    .line 128
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 133
    .line 134
    const-string p1, "Vector increments must be greater than 0"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 141
    .line 142
    const-string p1, "Invalid dimension for Ap"

    .line 143
    .line 144
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 149
    .line 150
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 151
    .line 152
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 157
    .line 158
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 159
    .line 160
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 165
    .line 166
    const-string p1, "Called BLAS with wrong Element type"

    .line 167
    .line 168
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0
.end method

.method public static validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_5

    .line 21
    .line 22
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_4

    .line 33
    .line 34
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 p2, 0x1

    .line 49
    if-gt p0, p2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-gt p0, p2, :cond_3

    .line 60
    .line 61
    if-lez p5, :cond_2

    .line 62
    .line 63
    if-lez p6, :cond_2

    .line 64
    .line 65
    add-int/lit8 p0, p1, -0x1

    .line 66
    .line 67
    mul-int/2addr p5, p0

    .line 68
    add-int/2addr p5, p2

    .line 69
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3}, Landroid/renderscript/Type;->getX()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    const-string v0, "Incorrect vector dimensions for SYMV"

    .line 78
    .line 79
    if-ne p3, p5, :cond_1

    .line 80
    .line 81
    mul-int/2addr p0, p6

    .line 82
    add-int/2addr p0, p2

    .line 83
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-ne p2, p0, :cond_0

    .line 92
    .line 93
    return p1

    .line 94
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 95
    .line 96
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 101
    .line 102
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 107
    .line 108
    const-string p1, "Vector increments must be greater than 0"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 115
    .line 116
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 123
    .line 124
    const-string p1, "Called BLAS with wrong Element type"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 131
    .line 132
    const-string p1, "A must be a square matrix for SYMV"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public static validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x1

    .line 41
    if-gt p1, v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ne p0, p1, :cond_2

    .line 52
    .line 53
    if-lez p3, :cond_1

    .line 54
    .line 55
    add-int/lit8 p1, p0, -0x1

    .line 56
    .line 57
    mul-int/2addr p1, p3

    .line 58
    add-int/2addr p1, v0

    .line 59
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-ne p2, p1, :cond_0

    .line 68
    .line 69
    return p0

    .line 70
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 71
    .line 72
    const-string p1, "Incorrect vector dimensions for SYR"

    .line 73
    .line 74
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 79
    .line 80
    const-string p1, "Vector increments must be greater than 0"

    .line 81
    .line 82
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 87
    .line 88
    const-string p1, "A must be a symmetric matrix"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 95
    .line 96
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 103
    .line 104
    const-string p1, "Called BLAS with wrong Element type"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public static validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    invoke-static {p2, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 p1, 0x1

    .line 39
    if-gt p0, p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-gt p0, p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 60
    .line 61
    .line 62
    move-result-object p6

    .line 63
    invoke-virtual {p6}, Landroid/renderscript/Type;->getY()I

    .line 64
    .line 65
    .line 66
    move-result p6

    .line 67
    if-ne p0, p6, :cond_2

    .line 68
    .line 69
    if-lez p3, :cond_1

    .line 70
    .line 71
    if-lez p5, :cond_1

    .line 72
    .line 73
    add-int/lit8 p6, p0, -0x1

    .line 74
    .line 75
    mul-int/2addr p3, p6

    .line 76
    add-int/2addr p3, p1

    .line 77
    mul-int/2addr p6, p5

    .line 78
    add-int/2addr p6, p1

    .line 79
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ne p1, p3, :cond_0

    .line 88
    .line 89
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-ne p1, p6, :cond_0

    .line 98
    .line 99
    return p0

    .line 100
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 101
    .line 102
    const-string p1, "Incorrect vector dimensions for SYR"

    .line 103
    .line 104
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 109
    .line 110
    const-string p1, "Vector increments must be greater than 0"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 117
    .line 118
    const-string p1, "A must be a symmetric matrix"

    .line 119
    .line 120
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 125
    .line 126
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 127
    .line 128
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 133
    .line 134
    const-string p1, "Called BLAS with wrong Element type"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public static validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-static {p3, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    const/16 p0, 0x70

    .line 31
    .line 32
    if-ne p1, p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    :goto_0
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-ne p1, p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ne p1, p0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ne p0, p1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ne p0, p1, :cond_1

    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 109
    .line 110
    const-string p1, "Invalid A and B in SYR2K"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 117
    .line 118
    const-string p1, "Invalid symmetric matrix in SYR2K"

    .line 119
    .line 120
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 125
    .line 126
    const-string p1, "Called BLAS with wrong Element type"

    .line 127
    .line 128
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public static validateSide(I)V
    .locals 1

    const/16 v0, 0x8d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Invalid side passed to BLAS"

    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    invoke-static {p5, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 p1, 0x1

    .line 39
    if-gt p0, p1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-gt p0, p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    int-to-double p2, p0

    .line 60
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 61
    .line 62
    mul-double/2addr p2, v0

    .line 63
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide p2

    .line 67
    double-to-int p0, p2

    .line 68
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    add-int/lit8 p3, p0, 0x1

    .line 77
    .line 78
    mul-int/2addr p3, p0

    .line 79
    div-int/lit8 p3, p3, 0x2

    .line 80
    .line 81
    if-ne p2, p3, :cond_2

    .line 82
    .line 83
    if-lez p6, :cond_1

    .line 84
    .line 85
    add-int/lit8 p2, p0, -0x1

    .line 86
    .line 87
    mul-int/2addr p2, p6

    .line 88
    add-int/2addr p2, p1

    .line 89
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-ne p1, p2, :cond_0

    .line 98
    .line 99
    return p0

    .line 100
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 101
    .line 102
    const-string p1, "Incorrect vector dimensions for TPMV"

    .line 103
    .line 104
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 109
    .line 110
    const-string p1, "Vector increments must be greater than 0"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 117
    .line 118
    const-string p1, "Invalid dimension for Ap"

    .line 119
    .line 120
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 125
    .line 126
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 127
    .line 128
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 133
    .line 134
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_5
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 141
    .line 142
    const-string p1, "Called BLAS with wrong Element type"

    .line 143
    .line 144
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0
.end method

.method public static validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_4

    .line 20
    .line 21
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-ne p0, p2, :cond_3

    .line 44
    .line 45
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p3}, Landroid/renderscript/Type;->getY()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    invoke-virtual {p4}, Landroid/renderscript/Type;->getX()I

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    const/16 v0, 0x8d

    .line 62
    .line 63
    const-string v1, "Called TRMM with invalid matrices"

    .line 64
    .line 65
    if-ne p1, v0, :cond_1

    .line 66
    .line 67
    if-ne p2, p3, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 71
    .line 72
    invoke-direct {p0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_1
    if-ne p4, p0, :cond_2

    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 80
    .line 81
    invoke-direct {p0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 86
    .line 87
    const-string p1, "Called TRMM with a non-symmetric matrix A"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 94
    .line 95
    const-string p1, "Called BLAS with wrong Element type"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ne p2, p1, :cond_4

    .line 27
    .line 28
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    invoke-static {p5, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 p2, 0x1

    .line 49
    if-gt p0, p2, :cond_2

    .line 50
    .line 51
    if-lez p6, :cond_1

    .line 52
    .line 53
    sub-int/2addr p1, p2

    .line 54
    mul-int/2addr p1, p6

    .line 55
    add-int/2addr p1, p2

    .line 56
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-ne p0, p1, :cond_0

    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 68
    .line 69
    const-string p1, "Incorrect vector dimensions for TRMV"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 76
    .line 77
    const-string p1, "Vector increments must be greater than 0"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 84
    .line 85
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 92
    .line 93
    const-string p1, "Called BLAS with wrong Element type"

    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 100
    .line 101
    const-string p1, "A must be a square matrix for TRMV"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public static validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_4

    .line 20
    .line 21
    invoke-static {p4, p0}, Landroid/renderscript/a;->i(Landroid/renderscript/Allocation;Landroid/renderscript/Element;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-ne p0, p2, :cond_3

    .line 44
    .line 45
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p3}, Landroid/renderscript/Type;->getX()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    const/16 p4, 0x8d

    .line 62
    .line 63
    const-string v0, "Called TRSM with invalid matrix dimensions"

    .line 64
    .line 65
    if-ne p1, p4, :cond_1

    .line 66
    .line 67
    if-ne p0, p2, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 71
    .line 72
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_1
    if-ne p0, p3, :cond_2

    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 80
    .line 81
    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 86
    .line 87
    const-string p1, "Called TRSM with a non-symmetric matrix A"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_4
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 94
    .line 95
    const-string p1, "Called BLAS with wrong Element type"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static validateTranspose(I)V
    .locals 1

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x70

    if-eq p0, v0, :cond_1

    const/16 v0, 0x71

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Invalid transpose passed to BLAS"

    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static validateUplo(I)V
    .locals 1

    const/16 v0, 0x79

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Invalid uplo passed to BLAS"

    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public BNNM(Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v9, p2

    .line 4
    .line 5
    move/from16 v12, p4

    .line 6
    .line 7
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0x6f

    .line 14
    .line 15
    const/16 v4, 0x70

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object/from16 v6, p1

    .line 19
    .line 20
    move-object/from16 v7, p3

    .line 21
    .line 22
    move-object/from16 v8, p5

    .line 23
    .line 24
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 25
    .line 26
    .line 27
    if-ltz v9, :cond_1

    .line 28
    .line 29
    const/16 v1, 0xff

    .line 30
    .line 31
    if-gt v9, v1, :cond_1

    .line 32
    .line 33
    if-ltz v12, :cond_0

    .line 34
    .line 35
    if-gt v12, v1, :cond_0

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iget-object v7, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 68
    .line 69
    move-object/from16 v8, p1

    .line 70
    .line 71
    invoke-virtual {v8, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    iget-object v10, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 76
    .line 77
    move-object/from16 v11, p3

    .line 78
    .line 79
    invoke-virtual {v11, v10}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v10

    .line 83
    iget-object v13, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 84
    .line 85
    move-object/from16 v14, p5

    .line 86
    .line 87
    invoke-virtual {v14, v13}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v13

    .line 91
    move/from16 v9, p2

    .line 92
    .line 93
    move/from16 v12, p4

    .line 94
    .line 95
    move/from16 v15, p6

    .line 96
    .line 97
    move/from16 v16, p7

    .line 98
    .line 99
    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 104
    .line 105
    const-string v2, "Invalid b_offset passed to BNNM"

    .line 106
    .line 107
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :cond_1
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 112
    .line 113
    const-string v2, "Invalid a_offset passed to BNNM"

    .line 114
    .line 115
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1
.end method

.method public CGBMV(IIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    move/from16 v5, p1

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    move-object/from16 v9, p9

    .line 22
    .line 23
    move/from16 v10, p10

    .line 24
    .line 25
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 26
    .line 27
    .line 28
    if-ltz p2, :cond_0

    .line 29
    .line 30
    if-ltz p3, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object v5, v3

    .line 51
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    const/16 v8, 0x40

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    iget v3, v1, Landroid/renderscript/Float2;->x:F

    .line 64
    .line 65
    move/from16 v17, v3

    .line 66
    .line 67
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 68
    .line 69
    move/from16 v18, v1

    .line 70
    .line 71
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 72
    .line 73
    move-object/from16 v3, p5

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v19

    .line 79
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    move-object/from16 v3, p6

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v21

    .line 87
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 88
    .line 89
    move/from16 v23, v1

    .line 90
    .line 91
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 92
    .line 93
    move/from16 v24, v1

    .line 94
    .line 95
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 96
    .line 97
    move-object/from16 v2, p9

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v25

    .line 103
    move/from16 v9, p1

    .line 104
    .line 105
    move/from16 v27, p7

    .line 106
    .line 107
    move/from16 v28, p10

    .line 108
    .line 109
    move/from16 v29, p2

    .line 110
    .line 111
    move/from16 v30, p3

    .line 112
    .line 113
    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 118
    .line 119
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 120
    .line 121
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method

.method public CGEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v7, 0x0

    .line 20
    move/from16 v5, p1

    .line 21
    .line 22
    move/from16 v6, p2

    .line 23
    .line 24
    move-object/from16 v8, p4

    .line 25
    .line 26
    move-object/from16 v9, p5

    .line 27
    .line 28
    move-object/from16 v10, p7

    .line 29
    .line 30
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 31
    .line 32
    .line 33
    const/16 v3, 0x6f

    .line 34
    .line 35
    move/from16 v8, p1

    .line 36
    .line 37
    if-eq v8, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    :goto_0
    move/from16 v9, p2

    .line 73
    .line 74
    move v13, v4

    .line 75
    move v15, v5

    .line 76
    if-eq v9, v3, :cond_1

    .line 77
    .line 78
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    :goto_1
    move v14, v3

    .line 96
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 97
    .line 98
    move-object v4, v3

    .line 99
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    const/16 v7, 0x7d

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    iget v3, v1, Landroid/renderscript/Float2;->x:F

    .line 109
    .line 110
    move/from16 v16, v3

    .line 111
    .line 112
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 113
    .line 114
    move/from16 v17, v1

    .line 115
    .line 116
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 117
    .line 118
    move-object/from16 v3, p4

    .line 119
    .line 120
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v18

    .line 124
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 125
    .line 126
    move-object/from16 v3, p5

    .line 127
    .line 128
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v20

    .line 132
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 133
    .line 134
    move/from16 v22, v1

    .line 135
    .line 136
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 137
    .line 138
    move/from16 v23, v1

    .line 139
    .line 140
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 141
    .line 142
    move-object/from16 v2, p7

    .line 143
    .line 144
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v24

    .line 148
    const/16 v26, 0x0

    .line 149
    .line 150
    const/16 v27, 0x0

    .line 151
    .line 152
    const/16 v28, 0x0

    .line 153
    .line 154
    const/16 v29, 0x0

    .line 155
    .line 156
    move/from16 v8, p1

    .line 157
    .line 158
    move/from16 v9, p2

    .line 159
    .line 160
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public CGEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v7, p1

    .line 8
    .line 9
    move/from16 v25, p5

    .line 10
    .line 11
    move/from16 v26, p8

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    move/from16 v9, p1

    .line 20
    .line 21
    move-object/from16 v10, p3

    .line 22
    .line 23
    move-object/from16 v11, p4

    .line 24
    .line 25
    move/from16 v12, p5

    .line 26
    .line 27
    move-object/from16 v13, p7

    .line 28
    .line 29
    move/from16 v14, p8

    .line 30
    .line 31
    invoke-static/range {v8 .. v14}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v3, v4

    .line 53
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    const/16 v6, 0x3f

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    iget v15, v1, Landroid/renderscript/Float2;->x:F

    .line 65
    .line 66
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 67
    .line 68
    move/from16 v16, v1

    .line 69
    .line 70
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 71
    .line 72
    move-object/from16 v6, p3

    .line 73
    .line 74
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v17

    .line 78
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 79
    .line 80
    move-object/from16 v6, p4

    .line 81
    .line 82
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v19

    .line 86
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 87
    .line 88
    move/from16 v21, v1

    .line 89
    .line 90
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 91
    .line 92
    move/from16 v22, v1

    .line 93
    .line 94
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 95
    .line 96
    move-object/from16 v2, p7

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v23

    .line 102
    const/16 v27, 0x0

    .line 103
    .line 104
    const/16 v28, 0x0

    .line 105
    .line 106
    const/16 v6, 0x3f

    .line 107
    .line 108
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public CGERC(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v24, p3

    .line 6
    .line 7
    move/from16 v25, p5

    .line 8
    .line 9
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    move/from16 v5, p3

    .line 18
    .line 19
    move-object/from16 v6, p4

    .line 20
    .line 21
    move/from16 v7, p5

    .line 22
    .line 23
    move-object/from16 v8, p6

    .line 24
    .line 25
    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v2, v3

    .line 47
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    const/16 v5, 0x63

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v13, 0x0

    .line 59
    iget v14, v1, Landroid/renderscript/Float2;->x:F

    .line 60
    .line 61
    iget v15, v1, Landroid/renderscript/Float2;->y:F

    .line 62
    .line 63
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    move-object/from16 v5, p2

    .line 66
    .line 67
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v16

    .line 71
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 72
    .line 73
    move-object/from16 v5, p4

    .line 74
    .line 75
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v18

    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    const/16 v21, 0x0

    .line 82
    .line 83
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 84
    .line 85
    move-object/from16 v5, p6

    .line 86
    .line 87
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v22

    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    const/16 v5, 0x63

    .line 96
    .line 97
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public CGERU(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v24, p3

    .line 6
    .line 7
    move/from16 v25, p5

    .line 8
    .line 9
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    move/from16 v5, p3

    .line 18
    .line 19
    move-object/from16 v6, p4

    .line 20
    .line 21
    move/from16 v7, p5

    .line 22
    .line 23
    move-object/from16 v8, p6

    .line 24
    .line 25
    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v2, v3

    .line 47
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    const/16 v5, 0x62

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v13, 0x0

    .line 59
    iget v14, v1, Landroid/renderscript/Float2;->x:F

    .line 60
    .line 61
    iget v15, v1, Landroid/renderscript/Float2;->y:F

    .line 62
    .line 63
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    move-object/from16 v5, p2

    .line 66
    .line 67
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v16

    .line 71
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 72
    .line 73
    move-object/from16 v5, p4

    .line 74
    .line 75
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v18

    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    const/16 v21, 0x0

    .line 82
    .line 83
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 84
    .line 85
    move-object/from16 v5, p6

    .line 86
    .line 87
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v22

    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    const/16 v5, 0x62

    .line 96
    .line 97
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public CHBMV(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p7

    .line 6
    .line 7
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    move/from16 v5, p1

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move/from16 v7, p6

    .line 18
    .line 19
    move-object/from16 v8, p8

    .line 20
    .line 21
    move/from16 v9, p9

    .line 22
    .line 23
    move-object/from16 v10, p4

    .line 24
    .line 25
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 26
    .line 27
    .line 28
    move-result v15

    .line 29
    if-ltz p2, :cond_0

    .line 30
    .line 31
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 32
    .line 33
    move-object v5, v3

    .line 34
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    const/16 v8, 0x60

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v11, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    iget v3, v1, Landroid/renderscript/Float2;->x:F

    .line 46
    .line 47
    move/from16 v17, v3

    .line 48
    .line 49
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 50
    .line 51
    move/from16 v18, v1

    .line 52
    .line 53
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 54
    .line 55
    move-object/from16 v3, p4

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v19

    .line 61
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 62
    .line 63
    move-object/from16 v3, p5

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v21

    .line 69
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 70
    .line 71
    move/from16 v23, v1

    .line 72
    .line 73
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 74
    .line 75
    move/from16 v24, v1

    .line 76
    .line 77
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 78
    .line 79
    move-object/from16 v2, p8

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v25

    .line 85
    const/16 v29, 0x0

    .line 86
    .line 87
    const/16 v30, 0x0

    .line 88
    .line 89
    move/from16 v12, p1

    .line 90
    .line 91
    move/from16 v16, p2

    .line 92
    .line 93
    move/from16 v27, p6

    .line 94
    .line 95
    move/from16 v28, p9

    .line 96
    .line 97
    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 102
    .line 103
    const-string v2, "K must be 0 or greater for HBMV"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1
.end method

.method public CHEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move/from16 v12, p1

    .line 14
    .line 15
    move/from16 v13, p2

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 21
    .line 22
    invoke-static {v6}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    move/from16 v7, p1

    .line 27
    .line 28
    invoke-static {v6, v7, v2, v3, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 29
    .line 30
    .line 31
    iget-object v7, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 32
    .line 33
    move-object v6, v7

    .line 34
    invoke-virtual {v0, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    const/16 v9, 0x89

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v14, 0x0

    .line 43
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    invoke-virtual {v15}, Landroid/renderscript/Type;->getY()I

    .line 48
    .line 49
    .line 50
    move-result v15

    .line 51
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object v16

    .line 55
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type;->getX()I

    .line 56
    .line 57
    .line 58
    move-result v16

    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    iget v9, v1, Landroid/renderscript/Float2;->x:F

    .line 62
    .line 63
    move/from16 v18, v9

    .line 64
    .line 65
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 66
    .line 67
    move/from16 v19, v1

    .line 68
    .line 69
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v20

    .line 75
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v22

    .line 81
    iget v1, v4, Landroid/renderscript/Float2;->x:F

    .line 82
    .line 83
    move/from16 v24, v1

    .line 84
    .line 85
    iget v1, v4, Landroid/renderscript/Float2;->y:F

    .line 86
    .line 87
    move/from16 v25, v1

    .line 88
    .line 89
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 90
    .line 91
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v26

    .line 95
    const/16 v28, 0x0

    .line 96
    .line 97
    const/16 v29, 0x0

    .line 98
    .line 99
    const/16 v30, 0x0

    .line 100
    .line 101
    const/16 v31, 0x0

    .line 102
    .line 103
    const/16 v9, 0x89

    .line 104
    .line 105
    invoke-virtual/range {v6 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public CHEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v25, p5

    .line 10
    .line 11
    move/from16 v26, p8

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    move/from16 v12, p1

    .line 20
    .line 21
    move-object/from16 v13, p4

    .line 22
    .line 23
    move/from16 v14, p5

    .line 24
    .line 25
    move-object/from16 v15, p7

    .line 26
    .line 27
    move/from16 v16, p8

    .line 28
    .line 29
    move-object/from16 v17, p3

    .line 30
    .line 31
    invoke-static/range {v11 .. v17}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const/16 v6, 0x5f

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    iget v15, v1, Landroid/renderscript/Float2;->x:F

    .line 51
    .line 52
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 53
    .line 54
    move/from16 v16, v1

    .line 55
    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p3

    .line 59
    .line 60
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 65
    .line 66
    move-object/from16 v6, p4

    .line 67
    .line 68
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v19

    .line 72
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 73
    .line 74
    move/from16 v21, v1

    .line 75
    .line 76
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 77
    .line 78
    move/from16 v22, v1

    .line 79
    .line 80
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 81
    .line 82
    move-object/from16 v2, p7

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v23

    .line 88
    const/16 v27, 0x0

    .line 89
    .line 90
    const/16 v28, 0x0

    .line 91
    .line 92
    const/16 v6, 0x5f

    .line 93
    .line 94
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public CHER(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v15, p2

    .line 10
    .line 11
    move/from16 v25, p4

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p4

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x64

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v17

    .line 50
    const-wide/16 v19, 0x0

    .line 51
    .line 52
    const/16 v21, 0x0

    .line 53
    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v23

    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    const/16 v27, 0x0

    .line 65
    .line 66
    const/16 v28, 0x0

    .line 67
    .line 68
    const/16 v6, 0x64

    .line 69
    .line 70
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public CHER2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v9, p1

    .line 6
    .line 7
    move/from16 v24, p4

    .line 8
    .line 9
    move/from16 v25, p6

    .line 10
    .line 11
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move-object/from16 v12, p3

    .line 20
    .line 21
    move/from16 v13, p4

    .line 22
    .line 23
    move-object/from16 v14, p5

    .line 24
    .line 25
    move/from16 v15, p6

    .line 26
    .line 27
    move-object/from16 v16, p7

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v2, v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const/16 v5, 0x66

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    iget v14, v1, Landroid/renderscript/Float2;->x:F

    .line 49
    .line 50
    iget v15, v1, Landroid/renderscript/Float2;->y:F

    .line 51
    .line 52
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 53
    .line 54
    move-object/from16 v5, p3

    .line 55
    .line 56
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v16

    .line 60
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 61
    .line 62
    move-object/from16 v5, p5

    .line 63
    .line 64
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v18

    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 73
    .line 74
    move-object/from16 v5, p7

    .line 75
    .line 76
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v22

    .line 80
    const/16 v26, 0x0

    .line 81
    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v5, 0x66

    .line 85
    .line 86
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public CHER2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v12, p4

    .line 8
    .line 9
    move-object/from16 v15, p5

    .line 10
    .line 11
    move-object/from16 v14, p7

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1, v5, v12, v15, v14}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x6f

    .line 26
    .line 27
    if-ne v5, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :goto_0
    move/from16 v19, v1

    .line 47
    .line 48
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    const/16 v4, 0x8b

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    iget v13, v8, Landroid/renderscript/Float2;->x:F

    .line 70
    .line 71
    iget v8, v8, Landroid/renderscript/Float2;->y:F

    .line 72
    .line 73
    move-object v4, v14

    .line 74
    move v14, v8

    .line 75
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 76
    .line 77
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v16

    .line 81
    move-object v8, v15

    .line 82
    move-wide/from16 v15, v16

    .line 83
    .line 84
    iget-object v12, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 85
    .line 86
    invoke-virtual {v8, v12}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v17

    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 93
    .line 94
    invoke-virtual {v4, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v21

    .line 98
    const/16 v23, 0x0

    .line 99
    .line 100
    const/16 v24, 0x0

    .line 101
    .line 102
    const/16 v25, 0x0

    .line 103
    .line 104
    const/16 v26, 0x0

    .line 105
    .line 106
    move/from16 v5, p2

    .line 107
    .line 108
    move/from16 v8, p1

    .line 109
    .line 110
    move/from16 v12, v19

    .line 111
    .line 112
    move/from16 v19, p6

    .line 113
    .line 114
    const/16 v4, 0x8b

    .line 115
    .line 116
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public CHERK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v12, p6

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, v5, v8, v12}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x71

    .line 22
    .line 23
    if-ne v5, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    move v13, v1

    .line 43
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 44
    .line 45
    move-object v1, v2

    .line 46
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const/16 v4, 0x8a

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const/4 v14, 0x0

    .line 65
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    invoke-virtual {v8, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v15

    .line 71
    const-wide/16 v17, 0x0

    .line 72
    .line 73
    const/16 v20, 0x0

    .line 74
    .line 75
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 76
    .line 77
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v21

    .line 81
    const/16 v23, 0x0

    .line 82
    .line 83
    const/16 v24, 0x0

    .line 84
    .line 85
    const/16 v25, 0x0

    .line 86
    .line 87
    const/16 v26, 0x0

    .line 88
    .line 89
    move/from16 v5, p2

    .line 90
    .line 91
    move/from16 v8, p1

    .line 92
    .line 93
    move v12, v13

    .line 94
    move/from16 v13, p3

    .line 95
    .line 96
    move/from16 v19, p5

    .line 97
    .line 98
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public CHPMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v25, p5

    .line 10
    .line 11
    move/from16 v26, p8

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    move/from16 v12, p1

    .line 20
    .line 21
    move-object/from16 v13, p4

    .line 22
    .line 23
    move/from16 v14, p5

    .line 24
    .line 25
    move-object/from16 v15, p7

    .line 26
    .line 27
    move/from16 v16, p8

    .line 28
    .line 29
    move-object/from16 v17, p3

    .line 30
    .line 31
    invoke-static/range {v11 .. v17}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const/16 v6, 0x61

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    iget v15, v1, Landroid/renderscript/Float2;->x:F

    .line 51
    .line 52
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 53
    .line 54
    move/from16 v16, v1

    .line 55
    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p3

    .line 59
    .line 60
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 65
    .line 66
    move-object/from16 v6, p4

    .line 67
    .line 68
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v19

    .line 72
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 73
    .line 74
    move/from16 v21, v1

    .line 75
    .line 76
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 77
    .line 78
    move/from16 v22, v1

    .line 79
    .line 80
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 81
    .line 82
    move-object/from16 v2, p7

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v23

    .line 88
    const/16 v27, 0x0

    .line 89
    .line 90
    const/16 v28, 0x0

    .line 91
    .line 92
    const/16 v6, 0x61

    .line 93
    .line 94
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public CHPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v15, p2

    .line 10
    .line 11
    move/from16 v25, p4

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p4

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x65

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v17

    .line 50
    const-wide/16 v19, 0x0

    .line 51
    .line 52
    const/16 v21, 0x0

    .line 53
    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v23

    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    const/16 v27, 0x0

    .line 65
    .line 66
    const/16 v28, 0x0

    .line 67
    .line 68
    const/16 v6, 0x65

    .line 69
    .line 70
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public CHPR2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v9, p1

    .line 6
    .line 7
    move/from16 v24, p4

    .line 8
    .line 9
    move/from16 v25, p6

    .line 10
    .line 11
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move-object/from16 v12, p3

    .line 20
    .line 21
    move/from16 v13, p4

    .line 22
    .line 23
    move-object/from16 v14, p5

    .line 24
    .line 25
    move/from16 v15, p6

    .line 26
    .line 27
    move-object/from16 v16, p7

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v2, v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const/16 v5, 0x67

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    iget v14, v1, Landroid/renderscript/Float2;->x:F

    .line 49
    .line 50
    iget v15, v1, Landroid/renderscript/Float2;->y:F

    .line 51
    .line 52
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 53
    .line 54
    move-object/from16 v5, p3

    .line 55
    .line 56
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v16

    .line 60
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 61
    .line 62
    move-object/from16 v5, p5

    .line 63
    .line 64
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v18

    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 73
    .line 74
    move-object/from16 v5, p7

    .line 75
    .line 76
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v22

    .line 80
    const/16 v26, 0x0

    .line 81
    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v5, 0x67

    .line 85
    .line 86
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public CSYMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    move/from16 v7, p1

    .line 40
    .line 41
    move-object/from16 v8, p4

    .line 42
    .line 43
    move-object/from16 v9, p5

    .line 44
    .line 45
    move-object/from16 v10, p7

    .line 46
    .line 47
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v7, v3

    .line 53
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    const/16 v10, 0x7e

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 67
    .line 68
    .line 69
    move-result v16

    .line 70
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 75
    .line 76
    .line 77
    move-result v17

    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    iget v3, v1, Landroid/renderscript/Float2;->x:F

    .line 81
    .line 82
    move/from16 v19, v3

    .line 83
    .line 84
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 85
    .line 86
    move/from16 v20, v1

    .line 87
    .line 88
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 89
    .line 90
    move-object/from16 v3, p4

    .line 91
    .line 92
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v21

    .line 96
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 97
    .line 98
    move-object/from16 v3, p5

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v23

    .line 104
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 105
    .line 106
    move/from16 v25, v1

    .line 107
    .line 108
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 109
    .line 110
    move/from16 v26, v1

    .line 111
    .line 112
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 113
    .line 114
    move-object/from16 v2, p7

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v27

    .line 120
    const/16 v29, 0x0

    .line 121
    .line 122
    const/16 v30, 0x0

    .line 123
    .line 124
    const/16 v31, 0x0

    .line 125
    .line 126
    const/16 v32, 0x0

    .line 127
    .line 128
    move/from16 v13, p1

    .line 129
    .line 130
    move/from16 v14, p2

    .line 131
    .line 132
    invoke-virtual/range {v7 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 137
    .line 138
    const-string v2, "Matrix A is not symmetric"

    .line 139
    .line 140
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1
.end method

.method public CSYR2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v12, p4

    .line 8
    .line 9
    move-object/from16 v15, p5

    .line 10
    .line 11
    move-object/from16 v14, p6

    .line 12
    .line 13
    move-object/from16 v13, p7

    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, v5, v12, v15, v13}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x6f

    .line 28
    .line 29
    if-eq v5, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_0
    move/from16 v27, v1

    .line 49
    .line 50
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const/16 v4, 0x80

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    iget v4, v8, Landroid/renderscript/Float2;->x:F

    .line 72
    .line 73
    move-object v6, v13

    .line 74
    move v13, v4

    .line 75
    iget v4, v8, Landroid/renderscript/Float2;->y:F

    .line 76
    .line 77
    move-object v8, v14

    .line 78
    move v14, v4

    .line 79
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    invoke-virtual {v12, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v16

    .line 85
    move-object v4, v15

    .line 86
    move-wide/from16 v15, v16

    .line 87
    .line 88
    iget-object v12, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 89
    .line 90
    invoke-virtual {v4, v12}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v17

    .line 94
    iget v4, v8, Landroid/renderscript/Float2;->x:F

    .line 95
    .line 96
    move/from16 v19, v4

    .line 97
    .line 98
    iget v4, v8, Landroid/renderscript/Float2;->y:F

    .line 99
    .line 100
    move/from16 v20, v4

    .line 101
    .line 102
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 103
    .line 104
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v21

    .line 108
    const/16 v23, 0x0

    .line 109
    .line 110
    const/16 v24, 0x0

    .line 111
    .line 112
    const/16 v25, 0x0

    .line 113
    .line 114
    const/16 v26, 0x0

    .line 115
    .line 116
    move/from16 v5, p2

    .line 117
    .line 118
    move/from16 v8, p1

    .line 119
    .line 120
    move/from16 v12, v27

    .line 121
    .line 122
    const/16 v4, 0x80

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public CSYRK(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move/from16 v5, p2

    .line 23
    .line 24
    move-object/from16 v8, p4

    .line 25
    .line 26
    move-object/from16 v10, p6

    .line 27
    .line 28
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0x6f

    .line 32
    .line 33
    move/from16 v8, p2

    .line 34
    .line 35
    if-eq v8, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :goto_0
    move v15, v3

    .line 55
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object v4, v3

    .line 58
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    const/16 v7, 0x7f

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    iget v3, v1, Landroid/renderscript/Float2;->x:F

    .line 77
    .line 78
    move/from16 v16, v3

    .line 79
    .line 80
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 81
    .line 82
    move/from16 v17, v1

    .line 83
    .line 84
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 85
    .line 86
    move-object/from16 v3, p4

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v18

    .line 92
    const-wide/16 v20, 0x0

    .line 93
    .line 94
    iget v1, v2, Landroid/renderscript/Float2;->x:F

    .line 95
    .line 96
    move/from16 v22, v1

    .line 97
    .line 98
    iget v1, v2, Landroid/renderscript/Float2;->y:F

    .line 99
    .line 100
    move/from16 v23, v1

    .line 101
    .line 102
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 103
    .line 104
    move-object/from16 v2, p6

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v24

    .line 110
    const/16 v26, 0x0

    .line 111
    .line 112
    const/16 v27, 0x0

    .line 113
    .line 114
    const/16 v28, 0x0

    .line 115
    .line 116
    const/16 v29, 0x0

    .line 117
    .line 118
    move/from16 v8, p2

    .line 119
    .line 120
    move/from16 v11, p1

    .line 121
    .line 122
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public CTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-ltz p4, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move/from16 v3, p1

    .line 12
    .line 13
    move/from16 v4, p2

    .line 14
    .line 15
    move/from16 v5, p3

    .line 16
    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move/from16 v8, p7

    .line 22
    .line 23
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    const/16 v4, 0x42

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v8, p5

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v8, p6

    .line 59
    .line 60
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const/16 v19, 0x0

    .line 65
    .line 66
    const/16 v20, 0x0

    .line 67
    .line 68
    const-wide/16 v21, 0x0

    .line 69
    .line 70
    const/16 v24, 0x0

    .line 71
    .line 72
    const/16 v25, 0x0

    .line 73
    .line 74
    const/16 v26, 0x0

    .line 75
    .line 76
    move/from16 v5, p2

    .line 77
    .line 78
    move/from16 v8, p1

    .line 79
    .line 80
    move/from16 v9, p3

    .line 81
    .line 82
    move/from16 v12, p4

    .line 83
    .line 84
    move/from16 v23, p7

    .line 85
    .line 86
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 91
    .line 92
    const-string v2, "K must be greater than or equal to 0"

    .line 93
    .line 94
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1
.end method

.method public CTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move/from16 v4, p2

    .line 12
    .line 13
    move/from16 v5, p3

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    if-ltz p4, :cond_0

    .line 33
    .line 34
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v2, v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const/16 v5, 0x45

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v14, 0x0

    .line 47
    const/4 v15, 0x0

    .line 48
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v6, p5

    .line 51
    .line 52
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v16

    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p6

    .line 59
    .line 60
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v18

    .line 64
    const/16 v20, 0x0

    .line 65
    .line 66
    const/16 v21, 0x0

    .line 67
    .line 68
    const-wide/16 v22, 0x0

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v26, 0x0

    .line 73
    .line 74
    const/16 v27, 0x0

    .line 75
    .line 76
    move/from16 v6, p2

    .line 77
    .line 78
    move/from16 v9, p1

    .line 79
    .line 80
    move/from16 v10, p3

    .line 81
    .line 82
    move/from16 v13, p4

    .line 83
    .line 84
    move/from16 v24, p7

    .line 85
    .line 86
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 91
    .line 92
    const-string v2, "Number of diagonals must be positive"

    .line 93
    .line 94
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1
.end method

.method public CTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x43

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v4, p4

    .line 51
    .line 52
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p5

    .line 59
    .line 60
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const/16 v19, 0x0

    .line 65
    .line 66
    const/16 v20, 0x0

    .line 67
    .line 68
    const-wide/16 v21, 0x0

    .line 69
    .line 70
    const/16 v24, 0x0

    .line 71
    .line 72
    const/16 v25, 0x0

    .line 73
    .line 74
    const/16 v26, 0x0

    .line 75
    .line 76
    const/16 v4, 0x43

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public CTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x46

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v4, p4

    .line 51
    .line 52
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p5

    .line 59
    .line 60
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const/16 v19, 0x0

    .line 65
    .line 66
    const/16 v20, 0x0

    .line 67
    .line 68
    const-wide/16 v21, 0x0

    .line 69
    .line 70
    const/16 v24, 0x0

    .line 71
    .line 72
    const/16 v25, 0x0

    .line 73
    .line 74
    const/16 v26, 0x0

    .line 75
    .line 76
    const/16 v4, 0x46

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public CTRMM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    move/from16 v10, p1

    .line 10
    .line 11
    move/from16 v11, p2

    .line 12
    .line 13
    move/from16 v8, p3

    .line 14
    .line 15
    move/from16 v12, p4

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    move/from16 v5, p1

    .line 30
    .line 31
    move/from16 v6, p3

    .line 32
    .line 33
    invoke-static {v4, v5, v6, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v4, v5

    .line 39
    invoke-virtual {v0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    const/16 v7, 0x81

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual {v13}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    invoke-virtual {v14}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const/4 v15, 0x0

    .line 63
    iget v7, v1, Landroid/renderscript/Float2;->x:F

    .line 64
    .line 65
    move/from16 v16, v7

    .line 66
    .line 67
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 68
    .line 69
    move/from16 v17, v1

    .line 70
    .line 71
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v18

    .line 77
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v20

    .line 83
    const/16 v22, 0x0

    .line 84
    .line 85
    const/16 v23, 0x0

    .line 86
    .line 87
    const-wide/16 v24, 0x0

    .line 88
    .line 89
    const/16 v26, 0x0

    .line 90
    .line 91
    const/16 v27, 0x0

    .line 92
    .line 93
    const/16 v28, 0x0

    .line 94
    .line 95
    const/16 v29, 0x0

    .line 96
    .line 97
    const/16 v7, 0x81

    .line 98
    .line 99
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public CTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x41

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v14, 0x0

    .line 55
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v4, p4

    .line 58
    .line 59
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v15

    .line 63
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    move-object/from16 v6, p5

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v17

    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    const/16 v20, 0x0

    .line 74
    .line 75
    const-wide/16 v21, 0x0

    .line 76
    .line 77
    const/16 v24, 0x0

    .line 78
    .line 79
    const/16 v25, 0x0

    .line 80
    .line 81
    const/16 v26, 0x0

    .line 82
    .line 83
    const/16 v4, 0x41

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public CTRSM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    move/from16 v10, p1

    .line 10
    .line 11
    move/from16 v11, p2

    .line 12
    .line 13
    move/from16 v8, p3

    .line 14
    .line 15
    move/from16 v12, p4

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    move/from16 v5, p1

    .line 30
    .line 31
    move/from16 v6, p3

    .line 32
    .line 33
    invoke-static {v4, v5, v6, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v4, v5

    .line 39
    invoke-virtual {v0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    const/16 v7, 0x82

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual {v13}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    invoke-virtual {v14}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const/4 v15, 0x0

    .line 63
    iget v7, v1, Landroid/renderscript/Float2;->x:F

    .line 64
    .line 65
    move/from16 v16, v7

    .line 66
    .line 67
    iget v1, v1, Landroid/renderscript/Float2;->y:F

    .line 68
    .line 69
    move/from16 v17, v1

    .line 70
    .line 71
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v18

    .line 77
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v20

    .line 83
    const/16 v22, 0x0

    .line 84
    .line 85
    const/16 v23, 0x0

    .line 86
    .line 87
    const-wide/16 v24, 0x0

    .line 88
    .line 89
    const/16 v26, 0x0

    .line 90
    .line 91
    const/16 v27, 0x0

    .line 92
    .line 93
    const/16 v28, 0x0

    .line 94
    .line 95
    const/16 v29, 0x0

    .line 96
    .line 97
    const/16 v7, 0x82

    .line 98
    .line 99
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public CTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x44

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v14, 0x0

    .line 55
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v4, p4

    .line 58
    .line 59
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v15

    .line 63
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    move-object/from16 v6, p5

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v17

    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    const/16 v20, 0x0

    .line 74
    .line 75
    const-wide/16 v21, 0x0

    .line 76
    .line 77
    const/16 v24, 0x0

    .line 78
    .line 79
    const/16 v25, 0x0

    .line 80
    .line 81
    const/16 v26, 0x0

    .line 82
    .line 83
    const/16 v4, 0x44

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public DGBMV(IIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move-object/from16 v4, p6

    .line 12
    .line 13
    move-object/from16 v5, p7

    .line 14
    .line 15
    move/from16 v6, p8

    .line 16
    .line 17
    move-object/from16 v7, p11

    .line 18
    .line 19
    move/from16 v8, p12

    .line 20
    .line 21
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 22
    .line 23
    .line 24
    if-ltz p2, :cond_0

    .line 25
    .line 26
    if-ltz p3, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v3, v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    const/16 v6, 0x38

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v2, p6

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v17

    .line 66
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v2, p7

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v19

    .line 74
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 75
    .line 76
    move-object/from16 v2, p11

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v23

    .line 82
    move/from16 v7, p1

    .line 83
    .line 84
    move-wide/from16 v15, p4

    .line 85
    .line 86
    move-wide/from16 v21, p9

    .line 87
    .line 88
    move/from16 v25, p8

    .line 89
    .line 90
    move/from16 v26, p12

    .line 91
    .line 92
    move/from16 v27, p2

    .line 93
    .line 94
    move/from16 v28, p3

    .line 95
    .line 96
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 101
    .line 102
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 103
    .line 104
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v1
.end method

.method public DGEMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v5, 0x0

    .line 16
    move/from16 v3, p1

    .line 17
    .line 18
    move/from16 v4, p2

    .line 19
    .line 20
    move-object/from16 v6, p5

    .line 21
    .line 22
    move-object/from16 v7, p6

    .line 23
    .line 24
    move-object/from16 v8, p9

    .line 25
    .line 26
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x6f

    .line 30
    .line 31
    move/from16 v6, p1

    .line 32
    .line 33
    if-eq v6, v1, :cond_0

    .line 34
    .line 35
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :goto_0
    move/from16 v7, p2

    .line 69
    .line 70
    move v11, v2

    .line 71
    move v13, v3

    .line 72
    if-eq v7, v1, :cond_1

    .line 73
    .line 74
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    :goto_1
    move v12, v1

    .line 92
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 93
    .line 94
    move-object v2, v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    const/16 v5, 0x77

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 105
    .line 106
    move-object/from16 v14, p5

    .line 107
    .line 108
    invoke-virtual {v14, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v16

    .line 112
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 113
    .line 114
    move-object/from16 v14, p6

    .line 115
    .line 116
    invoke-virtual {v14, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v18

    .line 120
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 121
    .line 122
    move-object/from16 v14, p9

    .line 123
    .line 124
    invoke-virtual {v14, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v22

    .line 128
    const/16 v24, 0x0

    .line 129
    .line 130
    const/16 v25, 0x0

    .line 131
    .line 132
    const/16 v26, 0x0

    .line 133
    .line 134
    const/16 v27, 0x0

    .line 135
    .line 136
    move/from16 v6, p1

    .line 137
    .line 138
    move/from16 v7, p2

    .line 139
    .line 140
    move-wide/from16 v14, p3

    .line 141
    .line 142
    move-wide/from16 v20, p7

    .line 143
    .line 144
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public DGEMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    move/from16 v23, p6

    .line 8
    .line 9
    move-wide/from16 v19, p7

    .line 10
    .line 11
    move/from16 v24, p10

    .line 12
    .line 13
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    move/from16 v7, p1

    .line 20
    .line 21
    move-object/from16 v8, p4

    .line 22
    .line 23
    move-object/from16 v9, p5

    .line 24
    .line 25
    move/from16 v10, p6

    .line 26
    .line 27
    move-object/from16 v11, p9

    .line 28
    .line 29
    move/from16 v12, p10

    .line 30
    .line 31
    invoke-static/range {v6 .. v12}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const/16 v4, 0x37

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 65
    .line 66
    move-object/from16 v4, p4

    .line 67
    .line 68
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v15

    .line 72
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 73
    .line 74
    move-object/from16 v6, p5

    .line 75
    .line 76
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v17

    .line 80
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 81
    .line 82
    move-object/from16 v6, p9

    .line 83
    .line 84
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v21

    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    const/16 v26, 0x0

    .line 91
    .line 92
    const/16 v4, 0x37

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public DGER(DLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v13, p1

    .line 4
    .line 5
    move/from16 v23, p4

    .line 6
    .line 7
    move/from16 v24, p6

    .line 8
    .line 9
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object/from16 v3, p3

    .line 32
    .line 33
    move/from16 v4, p4

    .line 34
    .line 35
    move-object/from16 v5, p5

    .line 36
    .line 37
    move/from16 v6, p6

    .line 38
    .line 39
    move-object/from16 v7, p7

    .line 40
    .line 41
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v1, v2

    .line 47
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    const/16 v4, 0x5a

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 60
    .line 61
    move-object/from16 v4, p3

    .line 62
    .line 63
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v15

    .line 67
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 68
    .line 69
    move-object/from16 v5, p5

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v17

    .line 75
    const-wide/16 v19, 0x0

    .line 76
    .line 77
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 78
    .line 79
    move-object/from16 v5, p7

    .line 80
    .line 81
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v21

    .line 85
    const/16 v25, 0x0

    .line 86
    .line 87
    const/16 v26, 0x0

    .line 88
    .line 89
    const/16 v4, 0x5a

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public DSBMV(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move/from16 v3, p1

    .line 12
    .line 13
    move-object/from16 v4, p5

    .line 14
    .line 15
    move-object/from16 v5, p6

    .line 16
    .line 17
    move-object/from16 v6, p10

    .line 18
    .line 19
    move/from16 v7, p7

    .line 20
    .line 21
    move/from16 v8, p11

    .line 22
    .line 23
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v1, v2

    .line 30
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const/16 v4, 0x58

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 42
    .line 43
    move-object/from16 v12, p5

    .line 44
    .line 45
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v15

    .line 49
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 50
    .line 51
    move-object/from16 v12, p6

    .line 52
    .line 53
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v17

    .line 57
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 58
    .line 59
    move-object/from16 v12, p10

    .line 60
    .line 61
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v21

    .line 65
    const/16 v25, 0x0

    .line 66
    .line 67
    const/16 v26, 0x0

    .line 68
    .line 69
    move/from16 v8, p1

    .line 70
    .line 71
    move/from16 v12, p2

    .line 72
    .line 73
    move-wide/from16 v13, p3

    .line 74
    .line 75
    move-wide/from16 v19, p8

    .line 76
    .line 77
    move/from16 v23, p7

    .line 78
    .line 79
    move/from16 v24, p11

    .line 80
    .line 81
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 86
    .line 87
    const-string v2, "K must be greater than or equal to 0"

    .line 88
    .line 89
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1
.end method

.method public DSPMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    move/from16 v23, p6

    .line 8
    .line 9
    move-wide/from16 v19, p7

    .line 10
    .line 11
    move/from16 v24, p10

    .line 12
    .line 13
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v25

    .line 19
    move/from16 v26, p1

    .line 20
    .line 21
    move-object/from16 v27, p4

    .line 22
    .line 23
    move-object/from16 v28, p5

    .line 24
    .line 25
    move/from16 v29, p6

    .line 26
    .line 27
    move-object/from16 v30, p9

    .line 28
    .line 29
    move/from16 v31, p10

    .line 30
    .line 31
    invoke-static/range {v25 .. v31}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v1, v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const/16 v4, 0x59

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v4, p4

    .line 53
    .line 54
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v15

    .line 58
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v5, p5

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v17

    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p9

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v21

    .line 74
    const/16 v25, 0x0

    .line 75
    .line 76
    const/16 v26, 0x0

    .line 77
    .line 78
    const/16 v4, 0x59

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public DSPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move-wide/from16 v15, p2

    .line 10
    .line 11
    move/from16 v25, p5

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x5c

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v17

    .line 48
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v19

    .line 54
    const-wide/16 v21, 0x0

    .line 55
    .line 56
    const-wide/16 v23, 0x0

    .line 57
    .line 58
    const/16 v26, 0x0

    .line 59
    .line 60
    const/16 v27, 0x0

    .line 61
    .line 62
    const/16 v28, 0x0

    .line 63
    .line 64
    const/16 v6, 0x5c

    .line 65
    .line 66
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public DSPR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    move/from16 v23, p5

    .line 8
    .line 9
    move/from16 v24, p7

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v15

    .line 17
    move/from16 v16, p1

    .line 18
    .line 19
    move-object/from16 v17, p4

    .line 20
    .line 21
    move/from16 v18, p5

    .line 22
    .line 23
    move-object/from16 v19, p6

    .line 24
    .line 25
    move/from16 v20, p7

    .line 26
    .line 27
    move-object/from16 v21, p8

    .line 28
    .line 29
    invoke-static/range {v15 .. v21}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x5e

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v4, p4

    .line 51
    .line 52
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v5, p6

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const-wide/16 v19, 0x0

    .line 65
    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p8

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v21

    .line 74
    const/16 v25, 0x0

    .line 75
    .line 76
    const/16 v26, 0x0

    .line 77
    .line 78
    const/16 v4, 0x5e

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public DSYMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    move/from16 v5, p1

    .line 36
    .line 37
    move-object/from16 v6, p5

    .line 38
    .line 39
    move-object/from16 v7, p6

    .line 40
    .line 41
    move-object/from16 v8, p9

    .line 42
    .line 43
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 47
    .line 48
    move-object v5, v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    const/16 v8, 0x78

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 77
    .line 78
    move-object/from16 v2, p5

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v19

    .line 84
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 85
    .line 86
    move-object/from16 v2, p6

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v21

    .line 92
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 93
    .line 94
    move-object/from16 v2, p9

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v25

    .line 100
    const/16 v27, 0x0

    .line 101
    .line 102
    const/16 v28, 0x0

    .line 103
    .line 104
    const/16 v29, 0x0

    .line 105
    .line 106
    const/16 v30, 0x0

    .line 107
    .line 108
    move/from16 v11, p1

    .line 109
    .line 110
    move/from16 v12, p2

    .line 111
    .line 112
    move-wide/from16 v17, p3

    .line 113
    .line 114
    move-wide/from16 v23, p7

    .line 115
    .line 116
    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 121
    .line 122
    const-string v2, "Matrix A is not symmetric"

    .line 123
    .line 124
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1
.end method

.method public DSYMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    move/from16 v23, p6

    .line 8
    .line 9
    move-wide/from16 v19, p7

    .line 10
    .line 11
    move/from16 v24, p10

    .line 12
    .line 13
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v25

    .line 19
    move/from16 v26, p1

    .line 20
    .line 21
    move-object/from16 v27, p4

    .line 22
    .line 23
    move-object/from16 v28, p5

    .line 24
    .line 25
    move-object/from16 v29, p9

    .line 26
    .line 27
    move/from16 v30, p6

    .line 28
    .line 29
    move/from16 v31, p10

    .line 30
    .line 31
    invoke-static/range {v25 .. v31}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v1, v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const/16 v4, 0x57

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v4, p4

    .line 53
    .line 54
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v15

    .line 58
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v5, p5

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v17

    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p9

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v21

    .line 74
    const/16 v25, 0x0

    .line 75
    .line 76
    const/16 v26, 0x0

    .line 77
    .line 78
    const/16 v4, 0x57

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public DSYR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move-wide/from16 v15, p2

    .line 10
    .line 11
    move/from16 v25, p5

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x5b

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v17

    .line 48
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v19

    .line 54
    const-wide/16 v21, 0x0

    .line 55
    .line 56
    const-wide/16 v23, 0x0

    .line 57
    .line 58
    const/16 v26, 0x0

    .line 59
    .line 60
    const/16 v27, 0x0

    .line 61
    .line 62
    const/16 v28, 0x0

    .line 63
    .line 64
    const/16 v6, 0x5b

    .line 65
    .line 66
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public DSYR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    move/from16 v23, p5

    .line 8
    .line 9
    move/from16 v24, p7

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v15

    .line 17
    move/from16 v16, p1

    .line 18
    .line 19
    move-object/from16 v17, p4

    .line 20
    .line 21
    move/from16 v18, p5

    .line 22
    .line 23
    move-object/from16 v19, p6

    .line 24
    .line 25
    move/from16 v20, p7

    .line 26
    .line 27
    move-object/from16 v21, p8

    .line 28
    .line 29
    invoke-static/range {v15 .. v21}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x5d

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v4, p4

    .line 51
    .line 52
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v5, p6

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const-wide/16 v19, 0x0

    .line 65
    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p8

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v21

    .line 74
    const/16 v25, 0x0

    .line 75
    .line 76
    const/16 v26, 0x0

    .line 77
    .line 78
    const/16 v4, 0x5d

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public DSYR2K(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p5

    .line 6
    .line 7
    move-object/from16 v12, p6

    .line 8
    .line 9
    move-object/from16 v13, p9

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v5, v8, v12, v13}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x6f

    .line 24
    .line 25
    if-eq v5, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :goto_0
    move v14, v1

    .line 45
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 46
    .line 47
    move-object v1, v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    const/16 v4, 0x7a

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    invoke-virtual {v8, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v15

    .line 72
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 73
    .line 74
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v17

    .line 78
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 79
    .line 80
    invoke-virtual {v13, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v21

    .line 84
    const/16 v23, 0x0

    .line 85
    .line 86
    const/16 v24, 0x0

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    const/16 v26, 0x0

    .line 91
    .line 92
    move/from16 v5, p2

    .line 93
    .line 94
    move/from16 v8, p1

    .line 95
    .line 96
    move v12, v14

    .line 97
    move-wide/from16 v13, p3

    .line 98
    .line 99
    move-wide/from16 v19, p7

    .line 100
    .line 101
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public DSYRK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move-object/from16 v6, p5

    .line 21
    .line 22
    move-object/from16 v8, p8

    .line 23
    .line 24
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x6f

    .line 28
    .line 29
    move/from16 v6, p2

    .line 30
    .line 31
    if-eq v6, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :goto_0
    move v13, v1

    .line 51
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    const/16 v5, 0x79

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 73
    .line 74
    move-object/from16 v9, p5

    .line 75
    .line 76
    invoke-virtual {v9, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v16

    .line 80
    const-wide/16 v18, 0x0

    .line 81
    .line 82
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 83
    .line 84
    move-object/from16 v9, p8

    .line 85
    .line 86
    invoke-virtual {v9, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v22

    .line 90
    const/16 v24, 0x0

    .line 91
    .line 92
    const/16 v25, 0x0

    .line 93
    .line 94
    const/16 v26, 0x0

    .line 95
    .line 96
    const/16 v27, 0x0

    .line 97
    .line 98
    move/from16 v6, p2

    .line 99
    .line 100
    move/from16 v9, p1

    .line 101
    .line 102
    move-wide/from16 v14, p3

    .line 103
    .line 104
    move-wide/from16 v20, p6

    .line 105
    .line 106
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public DTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-ltz p4, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move/from16 v3, p1

    .line 12
    .line 13
    move/from16 v4, p2

    .line 14
    .line 15
    move/from16 v5, p3

    .line 16
    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move/from16 v8, p7

    .line 22
    .line 23
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    const/16 v4, 0x3a

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const-wide/16 v13, 0x0

    .line 47
    .line 48
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v8, p5

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v8, p6

    .line 59
    .line 60
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const-wide/16 v19, 0x0

    .line 65
    .line 66
    const-wide/16 v21, 0x0

    .line 67
    .line 68
    const/16 v24, 0x0

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v26, 0x0

    .line 73
    .line 74
    move/from16 v5, p2

    .line 75
    .line 76
    move/from16 v8, p1

    .line 77
    .line 78
    move/from16 v9, p3

    .line 79
    .line 80
    move/from16 v12, p4

    .line 81
    .line 82
    move/from16 v23, p7

    .line 83
    .line 84
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 89
    .line 90
    const-string v2, "K must be greater than or equal to 0"

    .line 91
    .line 92
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1
.end method

.method public DTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move/from16 v4, p2

    .line 12
    .line 13
    move/from16 v5, p3

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    if-ltz p4, :cond_0

    .line 33
    .line 34
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v2, v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const/16 v5, 0x3d

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const-wide/16 v14, 0x0

    .line 47
    .line 48
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v6, p5

    .line 51
    .line 52
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v16

    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p6

    .line 59
    .line 60
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v18

    .line 64
    const-wide/16 v20, 0x0

    .line 65
    .line 66
    const-wide/16 v22, 0x0

    .line 67
    .line 68
    const/16 v25, 0x0

    .line 69
    .line 70
    const/16 v26, 0x0

    .line 71
    .line 72
    const/16 v27, 0x0

    .line 73
    .line 74
    move/from16 v6, p2

    .line 75
    .line 76
    move/from16 v9, p1

    .line 77
    .line 78
    move/from16 v10, p3

    .line 79
    .line 80
    move/from16 v13, p4

    .line 81
    .line 82
    move/from16 v24, p7

    .line 83
    .line 84
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 89
    .line 90
    const-string v2, "Number of diagonals must be positive"

    .line 91
    .line 92
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1
.end method

.method public DTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x3b

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const-wide/16 v13, 0x0

    .line 47
    .line 48
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v4, p4

    .line 51
    .line 52
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p5

    .line 59
    .line 60
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const-wide/16 v19, 0x0

    .line 65
    .line 66
    const-wide/16 v21, 0x0

    .line 67
    .line 68
    const/16 v24, 0x0

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v26, 0x0

    .line 73
    .line 74
    const/16 v4, 0x3b

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public DTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x3e

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const-wide/16 v13, 0x0

    .line 47
    .line 48
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v4, p4

    .line 51
    .line 52
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v6, p5

    .line 59
    .line 60
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v17

    .line 64
    const-wide/16 v19, 0x0

    .line 65
    .line 66
    const-wide/16 v21, 0x0

    .line 67
    .line 68
    const/16 v24, 0x0

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v26, 0x0

    .line 73
    .line 74
    const/16 v4, 0x3e

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public DTRMM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    move/from16 v9, p1

    .line 8
    .line 9
    move/from16 v10, p2

    .line 10
    .line 11
    move/from16 v7, p3

    .line 12
    .line 13
    move/from16 v11, p4

    .line 14
    .line 15
    move-wide/from16 v15, p5

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move/from16 v4, p1

    .line 30
    .line 31
    move/from16 v5, p3

    .line 32
    .line 33
    invoke-static {v3, v4, v5, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v3, v4

    .line 39
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    const/16 v6, 0x7b

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-virtual {v12}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v13}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    const/4 v14, 0x0

    .line 63
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v17

    .line 69
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v19

    .line 75
    const-wide/16 v21, 0x0

    .line 76
    .line 77
    const-wide/16 v23, 0x0

    .line 78
    .line 79
    const/16 v25, 0x0

    .line 80
    .line 81
    const/16 v26, 0x0

    .line 82
    .line 83
    const/16 v27, 0x0

    .line 84
    .line 85
    const/16 v28, 0x0

    .line 86
    .line 87
    const/16 v6, 0x7b

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public DTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x39

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const-wide/16 v13, 0x0

    .line 54
    .line 55
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v4, p4

    .line 58
    .line 59
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v15

    .line 63
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    move-object/from16 v6, p5

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v17

    .line 71
    const-wide/16 v19, 0x0

    .line 72
    .line 73
    const-wide/16 v21, 0x0

    .line 74
    .line 75
    const/16 v24, 0x0

    .line 76
    .line 77
    const/16 v25, 0x0

    .line 78
    .line 79
    const/16 v26, 0x0

    .line 80
    .line 81
    const/16 v4, 0x39

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public DTRSM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    move/from16 v9, p1

    .line 8
    .line 9
    move/from16 v10, p2

    .line 10
    .line 11
    move/from16 v7, p3

    .line 12
    .line 13
    move/from16 v11, p4

    .line 14
    .line 15
    move-wide/from16 v15, p5

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move/from16 v4, p1

    .line 30
    .line 31
    move/from16 v5, p3

    .line 32
    .line 33
    invoke-static {v3, v4, v5, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v3, v4

    .line 39
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    const/16 v6, 0x7c

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-virtual {v12}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v13}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    const/4 v14, 0x0

    .line 63
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v17

    .line 69
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v19

    .line 75
    const-wide/16 v21, 0x0

    .line 76
    .line 77
    const-wide/16 v23, 0x0

    .line 78
    .line 79
    const/16 v25, 0x0

    .line 80
    .line 81
    const/16 v26, 0x0

    .line 82
    .line 83
    const/16 v27, 0x0

    .line 84
    .line 85
    const/16 v28, 0x0

    .line 86
    .line 87
    const/16 v6, 0x7c

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public DTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v23, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x3c

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const-wide/16 v13, 0x0

    .line 54
    .line 55
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v4, p4

    .line 58
    .line 59
    invoke-virtual {v4, v15}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v15

    .line 63
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    move-object/from16 v6, p5

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v17

    .line 71
    const-wide/16 v19, 0x0

    .line 72
    .line 73
    const-wide/16 v21, 0x0

    .line 74
    .line 75
    const/16 v24, 0x0

    .line 76
    .line 77
    const/16 v25, 0x0

    .line 78
    .line 79
    const/16 v26, 0x0

    .line 80
    .line 81
    const/16 v4, 0x3c

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public SGBMV(IIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move-object/from16 v4, p5

    .line 12
    .line 13
    move-object/from16 v5, p6

    .line 14
    .line 15
    move/from16 v6, p7

    .line 16
    .line 17
    move-object/from16 v7, p9

    .line 18
    .line 19
    move/from16 v8, p10

    .line 20
    .line 21
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 22
    .line 23
    .line 24
    if-ltz p2, :cond_0

    .line 25
    .line 26
    if-ltz p3, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v3, v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    const/16 v6, 0x30

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v2, p5

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v16

    .line 66
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v2, p6

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v18

    .line 74
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 75
    .line 76
    move-object/from16 v2, p9

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v21

    .line 82
    move/from16 v7, p1

    .line 83
    .line 84
    move/from16 v15, p4

    .line 85
    .line 86
    move/from16 v20, p8

    .line 87
    .line 88
    move/from16 v23, p7

    .line 89
    .line 90
    move/from16 v24, p10

    .line 91
    .line 92
    move/from16 v25, p2

    .line 93
    .line 94
    move/from16 v26, p3

    .line 95
    .line 96
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 101
    .line 102
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 103
    .line 104
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v1
.end method

.method public SGEMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v5, 0x0

    .line 16
    move/from16 v3, p1

    .line 17
    .line 18
    move/from16 v4, p2

    .line 19
    .line 20
    move-object/from16 v6, p4

    .line 21
    .line 22
    move-object/from16 v7, p5

    .line 23
    .line 24
    move-object/from16 v8, p7

    .line 25
    .line 26
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x6f

    .line 30
    .line 31
    move/from16 v6, p1

    .line 32
    .line 33
    if-eq v6, v1, :cond_0

    .line 34
    .line 35
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :goto_0
    move/from16 v7, p2

    .line 69
    .line 70
    move v11, v2

    .line 71
    move v13, v3

    .line 72
    if-eq v7, v1, :cond_1

    .line 73
    .line 74
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    :goto_1
    move v12, v1

    .line 92
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 93
    .line 94
    move-object v2, v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    const/16 v5, 0x71

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 105
    .line 106
    move-object/from16 v14, p4

    .line 107
    .line 108
    invoke-virtual {v14, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v15

    .line 112
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 113
    .line 114
    move-object/from16 v14, p5

    .line 115
    .line 116
    invoke-virtual {v14, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v17

    .line 120
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 121
    .line 122
    move-object/from16 v14, p7

    .line 123
    .line 124
    invoke-virtual {v14, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v20

    .line 128
    const/16 v22, 0x0

    .line 129
    .line 130
    const/16 v23, 0x0

    .line 131
    .line 132
    const/16 v24, 0x0

    .line 133
    .line 134
    const/16 v25, 0x0

    .line 135
    .line 136
    move/from16 v6, p1

    .line 137
    .line 138
    move/from16 v7, p2

    .line 139
    .line 140
    move/from16 v14, p3

    .line 141
    .line 142
    move/from16 v19, p6

    .line 143
    .line 144
    invoke-virtual/range {v2 .. v25}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public SGEMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p1

    .line 4
    .line 5
    move/from16 v13, p2

    .line 6
    .line 7
    move/from16 v21, p5

    .line 8
    .line 9
    move/from16 v18, p6

    .line 10
    .line 11
    move/from16 v22, p8

    .line 12
    .line 13
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    move/from16 v7, p1

    .line 20
    .line 21
    move-object/from16 v8, p3

    .line 22
    .line 23
    move-object/from16 v9, p4

    .line 24
    .line 25
    move/from16 v10, p5

    .line 26
    .line 27
    move-object/from16 v11, p7

    .line 28
    .line 29
    move/from16 v12, p8

    .line 30
    .line 31
    invoke-static/range {v6 .. v12}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const/16 v4, 0x2f

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 65
    .line 66
    move-object/from16 v15, p3

    .line 67
    .line 68
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v14

    .line 72
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 73
    .line 74
    move-object/from16 v6, p4

    .line 75
    .line 76
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v16

    .line 80
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 81
    .line 82
    move-object/from16 v6, p7

    .line 83
    .line 84
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v19

    .line 88
    const/16 v23, 0x0

    .line 89
    .line 90
    const/16 v24, 0x0

    .line 91
    .line 92
    const/16 v4, 0x2f

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public SGER(FLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v13, p1

    .line 4
    .line 5
    move/from16 v21, p3

    .line 6
    .line 7
    move/from16 v22, p5

    .line 8
    .line 9
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object/from16 v3, p2

    .line 32
    .line 33
    move/from16 v4, p3

    .line 34
    .line 35
    move-object/from16 v5, p4

    .line 36
    .line 37
    move/from16 v6, p5

    .line 38
    .line 39
    move-object/from16 v7, p6

    .line 40
    .line 41
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v1, v2

    .line 47
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    const/16 v4, 0x52

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 60
    .line 61
    move-object/from16 v15, p2

    .line 62
    .line 63
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v14

    .line 67
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 68
    .line 69
    move-object/from16 v5, p4

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v16

    .line 75
    const/16 v18, 0x0

    .line 76
    .line 77
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 78
    .line 79
    move-object/from16 v5, p6

    .line 80
    .line 81
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v19

    .line 85
    const/16 v23, 0x0

    .line 86
    .line 87
    const/16 v24, 0x0

    .line 88
    .line 89
    const/16 v4, 0x52

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public SSBMV(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move/from16 v3, p1

    .line 12
    .line 13
    move-object/from16 v4, p4

    .line 14
    .line 15
    move-object/from16 v5, p5

    .line 16
    .line 17
    move-object/from16 v6, p8

    .line 18
    .line 19
    move/from16 v7, p6

    .line 20
    .line 21
    move/from16 v8, p9

    .line 22
    .line 23
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v1, v2

    .line 30
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const/16 v4, 0x50

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 42
    .line 43
    move-object/from16 v12, p4

    .line 44
    .line 45
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v14

    .line 49
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 50
    .line 51
    move-object/from16 v12, p5

    .line 52
    .line 53
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v16

    .line 57
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 58
    .line 59
    move-object/from16 v12, p8

    .line 60
    .line 61
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v19

    .line 65
    const/16 v23, 0x0

    .line 66
    .line 67
    const/16 v24, 0x0

    .line 68
    .line 69
    move/from16 v8, p1

    .line 70
    .line 71
    move/from16 v12, p2

    .line 72
    .line 73
    move/from16 v13, p3

    .line 74
    .line 75
    move/from16 v18, p7

    .line 76
    .line 77
    move/from16 v21, p6

    .line 78
    .line 79
    move/from16 v22, p9

    .line 80
    .line 81
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 86
    .line 87
    const-string v2, "K must be greater than or equal to 0"

    .line 88
    .line 89
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1
.end method

.method public SSPMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v13, p2

    .line 6
    .line 7
    move/from16 v21, p5

    .line 8
    .line 9
    move/from16 v18, p6

    .line 10
    .line 11
    move/from16 v22, p8

    .line 12
    .line 13
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v23

    .line 19
    move/from16 v24, p1

    .line 20
    .line 21
    move-object/from16 v25, p3

    .line 22
    .line 23
    move-object/from16 v26, p4

    .line 24
    .line 25
    move/from16 v27, p5

    .line 26
    .line 27
    move-object/from16 v28, p7

    .line 28
    .line 29
    move/from16 v29, p8

    .line 30
    .line 31
    invoke-static/range {v23 .. v29}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v1, v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const/16 v4, 0x51

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v15, p3

    .line 53
    .line 54
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v5, p4

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v16

    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p7

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v19

    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v4, 0x51

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public SSPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v15, p2

    .line 10
    .line 11
    move/from16 v23, p4

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p4

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x54

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v16

    .line 48
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v18

    .line 54
    const/16 v20, 0x0

    .line 55
    .line 56
    const-wide/16 v21, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    const/16 v25, 0x0

    .line 61
    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    const/16 v6, 0x54

    .line 65
    .line 66
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public SSPR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v13, p2

    .line 6
    .line 7
    move/from16 v21, p4

    .line 8
    .line 9
    move/from16 v22, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    move/from16 v15, p1

    .line 18
    .line 19
    move-object/from16 v16, p3

    .line 20
    .line 21
    move/from16 v17, p4

    .line 22
    .line 23
    move-object/from16 v18, p5

    .line 24
    .line 25
    move/from16 v19, p6

    .line 26
    .line 27
    move-object/from16 v20, p7

    .line 28
    .line 29
    invoke-static/range {v14 .. v20}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x56

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v15, p3

    .line 51
    .line 52
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v14

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v5, p5

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v16

    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p7

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v19

    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v4, 0x56

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public SSYMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    move/from16 v5, p1

    .line 36
    .line 37
    move-object/from16 v6, p4

    .line 38
    .line 39
    move-object/from16 v7, p5

    .line 40
    .line 41
    move-object/from16 v8, p7

    .line 42
    .line 43
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 47
    .line 48
    move-object v5, v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    const/16 v8, 0x72

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 77
    .line 78
    move-object/from16 v2, p4

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v18

    .line 84
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 85
    .line 86
    move-object/from16 v2, p5

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v20

    .line 92
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 93
    .line 94
    move-object/from16 v2, p7

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v23

    .line 100
    const/16 v25, 0x0

    .line 101
    .line 102
    const/16 v26, 0x0

    .line 103
    .line 104
    const/16 v27, 0x0

    .line 105
    .line 106
    const/16 v28, 0x0

    .line 107
    .line 108
    move/from16 v11, p1

    .line 109
    .line 110
    move/from16 v12, p2

    .line 111
    .line 112
    move/from16 v17, p3

    .line 113
    .line 114
    move/from16 v22, p6

    .line 115
    .line 116
    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 121
    .line 122
    const-string v2, "Matrix A is not symmetric"

    .line 123
    .line 124
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1
.end method

.method public SSYMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v13, p2

    .line 6
    .line 7
    move/from16 v21, p5

    .line 8
    .line 9
    move/from16 v18, p6

    .line 10
    .line 11
    move/from16 v22, p8

    .line 12
    .line 13
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v23

    .line 19
    move/from16 v24, p1

    .line 20
    .line 21
    move-object/from16 v25, p3

    .line 22
    .line 23
    move-object/from16 v26, p4

    .line 24
    .line 25
    move-object/from16 v27, p7

    .line 26
    .line 27
    move/from16 v28, p5

    .line 28
    .line 29
    move/from16 v29, p8

    .line 30
    .line 31
    invoke-static/range {v23 .. v29}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v1, v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const/16 v4, 0x4f

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v15, p3

    .line 53
    .line 54
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v5, p4

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v16

    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p7

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v19

    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v4, 0x4f

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public SSYR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v15, p2

    .line 10
    .line 11
    move/from16 v23, p4

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p4

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x53

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v16

    .line 48
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v18

    .line 54
    const/16 v20, 0x0

    .line 55
    .line 56
    const-wide/16 v21, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    const/16 v25, 0x0

    .line 61
    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    const/16 v6, 0x53

    .line 65
    .line 66
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public SSYR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v13, p2

    .line 6
    .line 7
    move/from16 v21, p4

    .line 8
    .line 9
    move/from16 v22, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    move/from16 v15, p1

    .line 18
    .line 19
    move-object/from16 v16, p3

    .line 20
    .line 21
    move/from16 v17, p4

    .line 22
    .line 23
    move-object/from16 v18, p5

    .line 24
    .line 25
    move/from16 v19, p6

    .line 26
    .line 27
    move-object/from16 v20, p7

    .line 28
    .line 29
    invoke-static/range {v14 .. v20}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x55

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object/from16 v15, p3

    .line 51
    .line 52
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v14

    .line 56
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    move-object/from16 v5, p5

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v16

    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    move-object/from16 v5, p7

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v19

    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v4, 0x55

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public SSYR2K(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    move-object/from16 v13, p7

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v5, v8, v12, v13}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x6f

    .line 24
    .line 25
    if-eq v5, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :goto_0
    move/from16 v18, v1

    .line 45
    .line 46
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 47
    .line 48
    move-object v1, v2

    .line 49
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    const/16 v4, 0x74

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v10, 0x0

    .line 59
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 68
    .line 69
    invoke-virtual {v8, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v14

    .line 73
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 74
    .line 75
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v16

    .line 79
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    invoke-virtual {v13, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v19

    .line 85
    const/16 v21, 0x0

    .line 86
    .line 87
    const/16 v22, 0x0

    .line 88
    .line 89
    const/16 v23, 0x0

    .line 90
    .line 91
    const/16 v24, 0x0

    .line 92
    .line 93
    move/from16 v5, p2

    .line 94
    .line 95
    move/from16 v8, p1

    .line 96
    .line 97
    move/from16 v12, v18

    .line 98
    .line 99
    move/from16 v13, p3

    .line 100
    .line 101
    move/from16 v18, p6

    .line 102
    .line 103
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public SSYRK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move-object/from16 v6, p4

    .line 21
    .line 22
    move-object/from16 v8, p6

    .line 23
    .line 24
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x6f

    .line 28
    .line 29
    move/from16 v6, p2

    .line 30
    .line 31
    if-eq v6, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :goto_0
    move v13, v1

    .line 51
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    const/16 v5, 0x73

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 73
    .line 74
    move-object/from16 v9, p4

    .line 75
    .line 76
    invoke-virtual {v9, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v15

    .line 80
    const-wide/16 v17, 0x0

    .line 81
    .line 82
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 83
    .line 84
    move-object/from16 v9, p6

    .line 85
    .line 86
    invoke-virtual {v9, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v20

    .line 90
    const/16 v22, 0x0

    .line 91
    .line 92
    const/16 v23, 0x0

    .line 93
    .line 94
    const/16 v24, 0x0

    .line 95
    .line 96
    const/16 v25, 0x0

    .line 97
    .line 98
    move/from16 v6, p2

    .line 99
    .line 100
    move/from16 v9, p1

    .line 101
    .line 102
    move/from16 v14, p3

    .line 103
    .line 104
    move/from16 v19, p5

    .line 105
    .line 106
    invoke-virtual/range {v2 .. v25}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public STBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-ltz p4, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move/from16 v3, p1

    .line 12
    .line 13
    move/from16 v4, p2

    .line 14
    .line 15
    move/from16 v5, p3

    .line 16
    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move/from16 v8, p7

    .line 22
    .line 23
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    const/16 v4, 0x32

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 48
    .line 49
    move-object/from16 v8, p5

    .line 50
    .line 51
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v8, p6

    .line 58
    .line 59
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v16

    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    const-wide/16 v19, 0x0

    .line 66
    .line 67
    const/16 v22, 0x0

    .line 68
    .line 69
    const/16 v23, 0x0

    .line 70
    .line 71
    const/16 v24, 0x0

    .line 72
    .line 73
    move/from16 v5, p2

    .line 74
    .line 75
    move/from16 v8, p1

    .line 76
    .line 77
    move/from16 v9, p3

    .line 78
    .line 79
    move/from16 v12, p4

    .line 80
    .line 81
    move/from16 v21, p7

    .line 82
    .line 83
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 88
    .line 89
    const-string v2, "K must be greater than or equal to 0"

    .line 90
    .line 91
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v1
.end method

.method public STBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move/from16 v4, p2

    .line 12
    .line 13
    move/from16 v5, p3

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    if-ltz p4, :cond_0

    .line 33
    .line 34
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v2, v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const/16 v5, 0x35

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v14, 0x0

    .line 47
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 48
    .line 49
    move-object/from16 v6, p5

    .line 50
    .line 51
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v15

    .line 55
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v6, p6

    .line 58
    .line 59
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v17

    .line 63
    const/16 v19, 0x0

    .line 64
    .line 65
    const-wide/16 v20, 0x0

    .line 66
    .line 67
    const/16 v23, 0x0

    .line 68
    .line 69
    const/16 v24, 0x0

    .line 70
    .line 71
    const/16 v25, 0x0

    .line 72
    .line 73
    move/from16 v6, p2

    .line 74
    .line 75
    move/from16 v9, p1

    .line 76
    .line 77
    move/from16 v10, p3

    .line 78
    .line 79
    move/from16 v13, p4

    .line 80
    .line 81
    move/from16 v22, p7

    .line 82
    .line 83
    invoke-virtual/range {v2 .. v25}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 88
    .line 89
    const-string v2, "Number of diagonals must be positive"

    .line 90
    .line 91
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v1
.end method

.method public STPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v21, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x33

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 48
    .line 49
    move-object/from16 v15, p4

    .line 50
    .line 51
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v6, p5

    .line 58
    .line 59
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v16

    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    const-wide/16 v19, 0x0

    .line 66
    .line 67
    const/16 v22, 0x0

    .line 68
    .line 69
    const/16 v23, 0x0

    .line 70
    .line 71
    const/16 v24, 0x0

    .line 72
    .line 73
    const/16 v4, 0x33

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public STPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v21, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x36

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 48
    .line 49
    move-object/from16 v15, p4

    .line 50
    .line 51
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object/from16 v6, p5

    .line 58
    .line 59
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v16

    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    const-wide/16 v19, 0x0

    .line 66
    .line 67
    const/16 v22, 0x0

    .line 68
    .line 69
    const/16 v23, 0x0

    .line 70
    .line 71
    const/16 v24, 0x0

    .line 72
    .line 73
    const/16 v4, 0x36

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public STRMM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p7

    .line 6
    .line 7
    move/from16 v9, p1

    .line 8
    .line 9
    move/from16 v10, p2

    .line 10
    .line 11
    move/from16 v7, p3

    .line 12
    .line 13
    move/from16 v11, p4

    .line 14
    .line 15
    move/from16 v15, p5

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move/from16 v4, p1

    .line 30
    .line 31
    move/from16 v5, p3

    .line 32
    .line 33
    invoke-static {v3, v4, v5, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v3, v4

    .line 39
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    const/16 v6, 0x75

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-virtual {v12}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v13}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    const/4 v14, 0x0

    .line 63
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v16

    .line 69
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v18

    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const-wide/16 v21, 0x0

    .line 78
    .line 79
    const/16 v23, 0x0

    .line 80
    .line 81
    const/16 v24, 0x0

    .line 82
    .line 83
    const/16 v25, 0x0

    .line 84
    .line 85
    const/16 v26, 0x0

    .line 86
    .line 87
    const/16 v6, 0x75

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public STRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v21, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x31

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 55
    .line 56
    move-object/from16 v15, p4

    .line 57
    .line 58
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v14

    .line 62
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    .line 64
    move-object/from16 v6, p5

    .line 65
    .line 66
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v16

    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    const-wide/16 v19, 0x0

    .line 73
    .line 74
    const/16 v22, 0x0

    .line 75
    .line 76
    const/16 v23, 0x0

    .line 77
    .line 78
    const/16 v24, 0x0

    .line 79
    .line 80
    const/16 v4, 0x31

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public STRSM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p7

    .line 6
    .line 7
    move/from16 v9, p1

    .line 8
    .line 9
    move/from16 v10, p2

    .line 10
    .line 11
    move/from16 v7, p3

    .line 12
    .line 13
    move/from16 v11, p4

    .line 14
    .line 15
    move/from16 v15, p5

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move/from16 v4, p1

    .line 30
    .line 31
    move/from16 v5, p3

    .line 32
    .line 33
    invoke-static {v3, v4, v5, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v3, v4

    .line 39
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    const/16 v6, 0x76

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-virtual {v12}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v13}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    const/4 v14, 0x0

    .line 63
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v16

    .line 69
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v18

    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const-wide/16 v21, 0x0

    .line 78
    .line 79
    const/16 v23, 0x0

    .line 80
    .line 81
    const/16 v24, 0x0

    .line 82
    .line 83
    const/16 v25, 0x0

    .line 84
    .line 85
    const/16 v26, 0x0

    .line 86
    .line 87
    const/16 v6, 0x76

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public STRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v21, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x34

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 55
    .line 56
    move-object/from16 v15, p4

    .line 57
    .line 58
    invoke-virtual {v15, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v14

    .line 62
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    .line 64
    move-object/from16 v6, p5

    .line 65
    .line 66
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v16

    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    const-wide/16 v19, 0x0

    .line 73
    .line 74
    const/16 v22, 0x0

    .line 75
    .line 76
    const/16 v23, 0x0

    .line 77
    .line 78
    const/16 v24, 0x0

    .line 79
    .line 80
    const/16 v4, 0x34

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public ZGBMV(IIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    move/from16 v5, p1

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    move-object/from16 v9, p9

    .line 22
    .line 23
    move/from16 v10, p10

    .line 24
    .line 25
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 26
    .line 27
    .line 28
    if-ltz p2, :cond_0

    .line 29
    .line 30
    if-ltz p3, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object v5, v3

    .line 51
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    const/16 v8, 0x48

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    .line 64
    .line 65
    move-wide/from16 v17, v3

    .line 66
    .line 67
    iget-wide v3, v1, Landroid/renderscript/Double2;->y:D

    .line 68
    .line 69
    move-wide/from16 v19, v3

    .line 70
    .line 71
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 72
    .line 73
    move-object/from16 v3, p5

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v21

    .line 79
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    move-object/from16 v3, p6

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v23

    .line 87
    iget-wide v3, v2, Landroid/renderscript/Double2;->x:D

    .line 88
    .line 89
    move-wide/from16 v25, v3

    .line 90
    .line 91
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 92
    .line 93
    move-wide/from16 v27, v1

    .line 94
    .line 95
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 96
    .line 97
    move-object/from16 v2, p9

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v29

    .line 103
    move/from16 v9, p1

    .line 104
    .line 105
    move/from16 v31, p7

    .line 106
    .line 107
    move/from16 v32, p10

    .line 108
    .line 109
    move/from16 v33, p2

    .line 110
    .line 111
    move/from16 v34, p3

    .line 112
    .line 113
    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 118
    .line 119
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 120
    .line 121
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method

.method public ZGEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v7, 0x0

    .line 20
    move/from16 v5, p1

    .line 21
    .line 22
    move/from16 v6, p2

    .line 23
    .line 24
    move-object/from16 v8, p4

    .line 25
    .line 26
    move-object/from16 v9, p5

    .line 27
    .line 28
    move-object/from16 v10, p7

    .line 29
    .line 30
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 31
    .line 32
    .line 33
    const/16 v3, 0x6f

    .line 34
    .line 35
    move/from16 v8, p1

    .line 36
    .line 37
    if-eq v8, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    :goto_0
    move/from16 v9, p2

    .line 73
    .line 74
    move v13, v4

    .line 75
    move v15, v5

    .line 76
    if-eq v9, v3, :cond_1

    .line 77
    .line 78
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    :goto_1
    move v14, v3

    .line 96
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 97
    .line 98
    move-object v4, v3

    .line 99
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    const/16 v7, 0x83

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    iget-wide v7, v1, Landroid/renderscript/Double2;->x:D

    .line 109
    .line 110
    move-wide/from16 v16, v7

    .line 111
    .line 112
    iget-wide v7, v1, Landroid/renderscript/Double2;->y:D

    .line 113
    .line 114
    move-wide/from16 v18, v7

    .line 115
    .line 116
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 117
    .line 118
    move-object/from16 v7, p4

    .line 119
    .line 120
    invoke-virtual {v7, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v20

    .line 124
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 125
    .line 126
    move-object/from16 v7, p5

    .line 127
    .line 128
    invoke-virtual {v7, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v22

    .line 132
    iget-wide v7, v2, Landroid/renderscript/Double2;->x:D

    .line 133
    .line 134
    move-wide/from16 v24, v7

    .line 135
    .line 136
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 137
    .line 138
    move-wide/from16 v26, v1

    .line 139
    .line 140
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 141
    .line 142
    move-object/from16 v2, p7

    .line 143
    .line 144
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v28

    .line 148
    const/16 v30, 0x0

    .line 149
    .line 150
    const/16 v31, 0x0

    .line 151
    .line 152
    const/16 v32, 0x0

    .line 153
    .line 154
    const/16 v33, 0x0

    .line 155
    .line 156
    move/from16 v8, p1

    .line 157
    .line 158
    move/from16 v9, p2

    .line 159
    .line 160
    const/16 v7, 0x83

    .line 161
    .line 162
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public ZGEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v7, p1

    .line 8
    .line 9
    move/from16 v29, p5

    .line 10
    .line 11
    move/from16 v30, p8

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    move/from16 v9, p1

    .line 20
    .line 21
    move-object/from16 v10, p3

    .line 22
    .line 23
    move-object/from16 v11, p4

    .line 24
    .line 25
    move/from16 v12, p5

    .line 26
    .line 27
    move-object/from16 v13, p7

    .line 28
    .line 29
    move/from16 v14, p8

    .line 30
    .line 31
    invoke-static/range {v8 .. v14}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v3, v4

    .line 53
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    const/16 v6, 0x47

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    move/from16 v33, v7

    .line 65
    .line 66
    iget-wide v6, v1, Landroid/renderscript/Double2;->x:D

    .line 67
    .line 68
    move-wide v15, v6

    .line 69
    iget-wide v6, v1, Landroid/renderscript/Double2;->y:D

    .line 70
    .line 71
    move-wide/from16 v17, v6

    .line 72
    .line 73
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 74
    .line 75
    move-object/from16 v6, p3

    .line 76
    .line 77
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v19

    .line 81
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 82
    .line 83
    move-object/from16 v6, p4

    .line 84
    .line 85
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v21

    .line 89
    iget-wide v6, v2, Landroid/renderscript/Double2;->x:D

    .line 90
    .line 91
    move-wide/from16 v23, v6

    .line 92
    .line 93
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 94
    .line 95
    move-wide/from16 v25, v1

    .line 96
    .line 97
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 98
    .line 99
    move-object/from16 v2, p7

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v27

    .line 105
    const/16 v31, 0x0

    .line 106
    .line 107
    const/16 v32, 0x0

    .line 108
    .line 109
    move/from16 v7, v33

    .line 110
    .line 111
    const/16 v6, 0x47

    .line 112
    .line 113
    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public ZGERC(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v28, p3

    .line 6
    .line 7
    move/from16 v29, p5

    .line 8
    .line 9
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    move/from16 v5, p3

    .line 18
    .line 19
    move-object/from16 v6, p4

    .line 20
    .line 21
    move/from16 v7, p5

    .line 22
    .line 23
    move-object/from16 v8, p6

    .line 24
    .line 25
    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v2, v3

    .line 47
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    const/16 v5, 0x6c

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v13, 0x0

    .line 59
    iget-wide v14, v1, Landroid/renderscript/Double2;->x:D

    .line 60
    .line 61
    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    .line 62
    .line 63
    move-wide/from16 v16, v5

    .line 64
    .line 65
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    move-object/from16 v5, p2

    .line 68
    .line 69
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v18

    .line 73
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 74
    .line 75
    move-object/from16 v5, p4

    .line 76
    .line 77
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v20

    .line 81
    const-wide/16 v22, 0x0

    .line 82
    .line 83
    const-wide/16 v24, 0x0

    .line 84
    .line 85
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 86
    .line 87
    move-object/from16 v5, p6

    .line 88
    .line 89
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v26

    .line 93
    const/16 v30, 0x0

    .line 94
    .line 95
    const/16 v31, 0x0

    .line 96
    .line 97
    const/16 v5, 0x6c

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public ZGERU(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v28, p3

    .line 6
    .line 7
    move/from16 v29, p5

    .line 8
    .line 9
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    move/from16 v5, p3

    .line 18
    .line 19
    move-object/from16 v6, p4

    .line 20
    .line 21
    move/from16 v7, p5

    .line 22
    .line 23
    move-object/from16 v8, p6

    .line 24
    .line 25
    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    move-object v2, v3

    .line 47
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    const/16 v5, 0x6b

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v13, 0x0

    .line 59
    iget-wide v14, v1, Landroid/renderscript/Double2;->x:D

    .line 60
    .line 61
    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    .line 62
    .line 63
    move-wide/from16 v16, v5

    .line 64
    .line 65
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    move-object/from16 v5, p2

    .line 68
    .line 69
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v18

    .line 73
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 74
    .line 75
    move-object/from16 v5, p4

    .line 76
    .line 77
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v20

    .line 81
    const-wide/16 v22, 0x0

    .line 82
    .line 83
    const-wide/16 v24, 0x0

    .line 84
    .line 85
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 86
    .line 87
    move-object/from16 v5, p6

    .line 88
    .line 89
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v26

    .line 93
    const/16 v30, 0x0

    .line 94
    .line 95
    const/16 v31, 0x0

    .line 96
    .line 97
    const/16 v5, 0x6b

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public ZHBMV(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p7

    .line 6
    .line 7
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    move/from16 v5, p1

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move/from16 v7, p6

    .line 18
    .line 19
    move-object/from16 v8, p8

    .line 20
    .line 21
    move/from16 v9, p9

    .line 22
    .line 23
    move-object/from16 v10, p4

    .line 24
    .line 25
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 26
    .line 27
    .line 28
    move-result v15

    .line 29
    if-ltz p2, :cond_0

    .line 30
    .line 31
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 32
    .line 33
    move-object v5, v3

    .line 34
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    const/16 v8, 0x69

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v11, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    .line 46
    .line 47
    move-wide/from16 v17, v3

    .line 48
    .line 49
    iget-wide v3, v1, Landroid/renderscript/Double2;->y:D

    .line 50
    .line 51
    move-wide/from16 v19, v3

    .line 52
    .line 53
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 54
    .line 55
    move-object/from16 v3, p4

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v21

    .line 61
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 62
    .line 63
    move-object/from16 v3, p5

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v23

    .line 69
    iget-wide v3, v2, Landroid/renderscript/Double2;->x:D

    .line 70
    .line 71
    move-wide/from16 v25, v3

    .line 72
    .line 73
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 74
    .line 75
    move-wide/from16 v27, v1

    .line 76
    .line 77
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 78
    .line 79
    move-object/from16 v2, p8

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v29

    .line 85
    const/16 v33, 0x0

    .line 86
    .line 87
    const/16 v34, 0x0

    .line 88
    .line 89
    move/from16 v12, p1

    .line 90
    .line 91
    move/from16 v16, p2

    .line 92
    .line 93
    move/from16 v31, p6

    .line 94
    .line 95
    move/from16 v32, p9

    .line 96
    .line 97
    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 102
    .line 103
    const-string v2, "K must be 0 or greater for HBMV"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1
.end method

.method public ZHEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move/from16 v12, p1

    .line 14
    .line 15
    move/from16 v13, p2

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 21
    .line 22
    invoke-static {v6}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    move/from16 v7, p1

    .line 27
    .line 28
    invoke-static {v6, v7, v2, v3, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 29
    .line 30
    .line 31
    iget-object v7, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 32
    .line 33
    move-object v6, v7

    .line 34
    invoke-virtual {v0, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    const/16 v9, 0x8c

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v14, 0x0

    .line 43
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    invoke-virtual {v15}, Landroid/renderscript/Type;->getY()I

    .line 48
    .line 49
    .line 50
    move-result v15

    .line 51
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 52
    .line 53
    .line 54
    move-result-object v16

    .line 55
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type;->getX()I

    .line 56
    .line 57
    .line 58
    move-result v16

    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    iget-wide v9, v1, Landroid/renderscript/Double2;->x:D

    .line 62
    .line 63
    move-wide/from16 v18, v9

    .line 64
    .line 65
    iget-wide v9, v1, Landroid/renderscript/Double2;->y:D

    .line 66
    .line 67
    move-wide/from16 v20, v9

    .line 68
    .line 69
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v22

    .line 75
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v24

    .line 81
    iget-wide v1, v4, Landroid/renderscript/Double2;->x:D

    .line 82
    .line 83
    move-wide/from16 v26, v1

    .line 84
    .line 85
    iget-wide v1, v4, Landroid/renderscript/Double2;->y:D

    .line 86
    .line 87
    move-wide/from16 v28, v1

    .line 88
    .line 89
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 90
    .line 91
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v30

    .line 95
    const/16 v32, 0x0

    .line 96
    .line 97
    const/16 v33, 0x0

    .line 98
    .line 99
    const/16 v34, 0x0

    .line 100
    .line 101
    const/16 v35, 0x0

    .line 102
    .line 103
    const/16 v9, 0x8c

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    invoke-virtual/range {v6 .. v35}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public ZHEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v29, p5

    .line 10
    .line 11
    move/from16 v30, p8

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    move/from16 v12, p1

    .line 20
    .line 21
    move-object/from16 v13, p4

    .line 22
    .line 23
    move/from16 v14, p5

    .line 24
    .line 25
    move-object/from16 v15, p7

    .line 26
    .line 27
    move/from16 v16, p8

    .line 28
    .line 29
    move-object/from16 v17, p3

    .line 30
    .line 31
    invoke-static/range {v11 .. v17}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const/16 v6, 0x68

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    iget-wide v6, v1, Landroid/renderscript/Double2;->x:D

    .line 51
    .line 52
    move-wide v15, v6

    .line 53
    iget-wide v6, v1, Landroid/renderscript/Double2;->y:D

    .line 54
    .line 55
    move-wide/from16 v17, v6

    .line 56
    .line 57
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 58
    .line 59
    move-object/from16 v6, p3

    .line 60
    .line 61
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v19

    .line 65
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    move-object/from16 v6, p4

    .line 68
    .line 69
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v21

    .line 73
    iget-wide v6, v2, Landroid/renderscript/Double2;->x:D

    .line 74
    .line 75
    move-wide/from16 v23, v6

    .line 76
    .line 77
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 78
    .line 79
    move-wide/from16 v25, v1

    .line 80
    .line 81
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 82
    .line 83
    move-object/from16 v2, p7

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v27

    .line 89
    const/16 v31, 0x0

    .line 90
    .line 91
    const/16 v32, 0x0

    .line 92
    .line 93
    const/16 v6, 0x68

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public ZHER(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move-wide/from16 v15, p2

    .line 10
    .line 11
    move/from16 v29, p5

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x6d

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const-wide/16 v17, 0x0

    .line 43
    .line 44
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v19

    .line 50
    const-wide/16 v21, 0x0

    .line 51
    .line 52
    const-wide/16 v23, 0x0

    .line 53
    .line 54
    const-wide/16 v25, 0x0

    .line 55
    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v27

    .line 62
    const/16 v30, 0x0

    .line 63
    .line 64
    const/16 v31, 0x0

    .line 65
    .line 66
    const/16 v32, 0x0

    .line 67
    .line 68
    const/16 v6, 0x6d

    .line 69
    .line 70
    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public ZHER2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v9, p1

    .line 6
    .line 7
    move/from16 v28, p4

    .line 8
    .line 9
    move/from16 v29, p6

    .line 10
    .line 11
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move-object/from16 v12, p3

    .line 20
    .line 21
    move/from16 v13, p4

    .line 22
    .line 23
    move-object/from16 v14, p5

    .line 24
    .line 25
    move/from16 v15, p6

    .line 26
    .line 27
    move-object/from16 v16, p7

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v2, v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const/16 v5, 0x6f

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    iget-wide v14, v1, Landroid/renderscript/Double2;->x:D

    .line 49
    .line 50
    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    .line 51
    .line 52
    move-wide/from16 v16, v5

    .line 53
    .line 54
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 55
    .line 56
    move-object/from16 v5, p3

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v18

    .line 62
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    .line 64
    move-object/from16 v5, p5

    .line 65
    .line 66
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v20

    .line 70
    const-wide/16 v22, 0x0

    .line 71
    .line 72
    const-wide/16 v24, 0x0

    .line 73
    .line 74
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 75
    .line 76
    move-object/from16 v5, p7

    .line 77
    .line 78
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v26

    .line 82
    const/16 v30, 0x0

    .line 83
    .line 84
    const/16 v31, 0x0

    .line 85
    .line 86
    const/16 v5, 0x6f

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public ZHER2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v12, p4

    .line 8
    .line 9
    move-object/from16 v15, p5

    .line 10
    .line 11
    move-object/from16 v13, p8

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1, v5, v12, v15, v13}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x6f

    .line 26
    .line 27
    if-ne v5, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :goto_0
    move/from16 v21, v1

    .line 47
    .line 48
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    const/16 v4, 0x8e

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    iget-wide v4, v8, Landroid/renderscript/Double2;->x:D

    .line 70
    .line 71
    move-object v6, v13

    .line 72
    move-wide v13, v4

    .line 73
    iget-wide v4, v8, Landroid/renderscript/Double2;->y:D

    .line 74
    .line 75
    move-object v8, v15

    .line 76
    move-wide v15, v4

    .line 77
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 78
    .line 79
    invoke-virtual {v12, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v17

    .line 83
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 84
    .line 85
    invoke-virtual {v8, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v19

    .line 89
    const-wide/16 v23, 0x0

    .line 90
    .line 91
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 92
    .line 93
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v25

    .line 97
    const/16 v27, 0x0

    .line 98
    .line 99
    const/16 v28, 0x0

    .line 100
    .line 101
    const/16 v29, 0x0

    .line 102
    .line 103
    const/16 v30, 0x0

    .line 104
    .line 105
    move/from16 v5, p2

    .line 106
    .line 107
    move/from16 v8, p1

    .line 108
    .line 109
    move/from16 v12, v21

    .line 110
    .line 111
    move-wide/from16 v21, p6

    .line 112
    .line 113
    const/16 v4, 0x8e

    .line 114
    .line 115
    const/4 v6, 0x0

    .line 116
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public ZHERK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p5

    .line 6
    .line 7
    move-object/from16 v12, p8

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, v5, v8, v12}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x71

    .line 22
    .line 23
    if-ne v5, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    move v13, v1

    .line 43
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 44
    .line 45
    move-object v1, v2

    .line 46
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const/16 v4, 0x8d

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const-wide/16 v15, 0x0

    .line 65
    .line 66
    iget-object v14, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 67
    .line 68
    invoke-virtual {v8, v14}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v17

    .line 72
    const-wide/16 v19, 0x0

    .line 73
    .line 74
    const-wide/16 v23, 0x0

    .line 75
    .line 76
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 77
    .line 78
    invoke-virtual {v12, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v25

    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v28, 0x0

    .line 85
    .line 86
    const/16 v29, 0x0

    .line 87
    .line 88
    const/16 v30, 0x0

    .line 89
    .line 90
    move/from16 v5, p2

    .line 91
    .line 92
    move/from16 v8, p1

    .line 93
    .line 94
    move v12, v13

    .line 95
    move-wide/from16 v13, p3

    .line 96
    .line 97
    move-wide/from16 v21, p6

    .line 98
    .line 99
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public ZHPMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move/from16 v29, p5

    .line 10
    .line 11
    move/from16 v30, p8

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    move/from16 v12, p1

    .line 20
    .line 21
    move-object/from16 v13, p4

    .line 22
    .line 23
    move/from16 v14, p5

    .line 24
    .line 25
    move-object/from16 v15, p7

    .line 26
    .line 27
    move/from16 v16, p8

    .line 28
    .line 29
    move-object/from16 v17, p3

    .line 30
    .line 31
    invoke-static/range {v11 .. v17}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const/16 v6, 0x6a

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    iget-wide v6, v1, Landroid/renderscript/Double2;->x:D

    .line 51
    .line 52
    move-wide v15, v6

    .line 53
    iget-wide v6, v1, Landroid/renderscript/Double2;->y:D

    .line 54
    .line 55
    move-wide/from16 v17, v6

    .line 56
    .line 57
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 58
    .line 59
    move-object/from16 v6, p3

    .line 60
    .line 61
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v19

    .line 65
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    move-object/from16 v6, p4

    .line 68
    .line 69
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v21

    .line 73
    iget-wide v6, v2, Landroid/renderscript/Double2;->x:D

    .line 74
    .line 75
    move-wide/from16 v23, v6

    .line 76
    .line 77
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 78
    .line 79
    move-wide/from16 v25, v1

    .line 80
    .line 81
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 82
    .line 83
    move-object/from16 v2, p7

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v27

    .line 89
    const/16 v31, 0x0

    .line 90
    .line 91
    const/16 v32, 0x0

    .line 92
    .line 93
    const/16 v6, 0x6a

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public ZHPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v10, p1

    .line 8
    .line 9
    move-wide/from16 v15, p2

    .line 10
    .line 11
    move/from16 v29, p5

    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move/from16 v4, p1

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    invoke-static {v3, v4, v1, v5, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/16 v6, 0x6e

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const-wide/16 v17, 0x0

    .line 43
    .line 44
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v19

    .line 50
    const-wide/16 v21, 0x0

    .line 51
    .line 52
    const-wide/16 v23, 0x0

    .line 53
    .line 54
    const-wide/16 v25, 0x0

    .line 55
    .line 56
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v27

    .line 62
    const/16 v30, 0x0

    .line 63
    .line 64
    const/16 v31, 0x0

    .line 65
    .line 66
    const/16 v32, 0x0

    .line 67
    .line 68
    const/16 v6, 0x6e

    .line 69
    .line 70
    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public ZHPR2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v9, p1

    .line 6
    .line 7
    move/from16 v28, p4

    .line 8
    .line 9
    move/from16 v29, p6

    .line 10
    .line 11
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move-object/from16 v12, p3

    .line 20
    .line 21
    move/from16 v13, p4

    .line 22
    .line 23
    move-object/from16 v14, p5

    .line 24
    .line 25
    move/from16 v15, p6

    .line 26
    .line 27
    move-object/from16 v16, p7

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v2, v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const/16 v5, 0x70

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    iget-wide v14, v1, Landroid/renderscript/Double2;->x:D

    .line 49
    .line 50
    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    .line 51
    .line 52
    move-wide/from16 v16, v5

    .line 53
    .line 54
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 55
    .line 56
    move-object/from16 v5, p3

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v18

    .line 62
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    .line 64
    move-object/from16 v5, p5

    .line 65
    .line 66
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v20

    .line 70
    const-wide/16 v22, 0x0

    .line 71
    .line 72
    const-wide/16 v24, 0x0

    .line 73
    .line 74
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 75
    .line 76
    move-object/from16 v5, p7

    .line 77
    .line 78
    invoke-virtual {v5, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v26

    .line 82
    const/16 v30, 0x0

    .line 83
    .line 84
    const/16 v31, 0x0

    .line 85
    .line 86
    const/16 v5, 0x70

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public ZSYMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    move/from16 v7, p1

    .line 40
    .line 41
    move-object/from16 v8, p4

    .line 42
    .line 43
    move-object/from16 v9, p5

    .line 44
    .line 45
    move-object/from16 v10, p7

    .line 46
    .line 47
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v7, v3

    .line 53
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    const/16 v10, 0x84

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 67
    .line 68
    .line 69
    move-result v16

    .line 70
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 75
    .line 76
    .line 77
    move-result v17

    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    .line 81
    .line 82
    move-wide/from16 v19, v3

    .line 83
    .line 84
    iget-wide v3, v1, Landroid/renderscript/Double2;->y:D

    .line 85
    .line 86
    move-wide/from16 v21, v3

    .line 87
    .line 88
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 89
    .line 90
    move-object/from16 v3, p4

    .line 91
    .line 92
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v23

    .line 96
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 97
    .line 98
    move-object/from16 v3, p5

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v25

    .line 104
    iget-wide v3, v2, Landroid/renderscript/Double2;->x:D

    .line 105
    .line 106
    move-wide/from16 v27, v3

    .line 107
    .line 108
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 109
    .line 110
    move-wide/from16 v29, v1

    .line 111
    .line 112
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 113
    .line 114
    move-object/from16 v2, p7

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v31

    .line 120
    const/16 v33, 0x0

    .line 121
    .line 122
    const/16 v34, 0x0

    .line 123
    .line 124
    const/16 v35, 0x0

    .line 125
    .line 126
    const/16 v36, 0x0

    .line 127
    .line 128
    move/from16 v13, p1

    .line 129
    .line 130
    move/from16 v14, p2

    .line 131
    .line 132
    invoke-virtual/range {v7 .. v36}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 137
    .line 138
    const-string v2, "Matrix A is not symmetric"

    .line 139
    .line 140
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1
.end method

.method public ZSYR2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v12, p4

    .line 8
    .line 9
    move-object/from16 v15, p5

    .line 10
    .line 11
    move-object/from16 v13, p6

    .line 12
    .line 13
    move-object/from16 v14, p7

    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, v5, v12, v15, v14}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x6f

    .line 28
    .line 29
    if-eq v5, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_0
    move/from16 v31, v1

    .line 49
    .line 50
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const/16 v4, 0x86

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-virtual {v11}, Landroid/renderscript/Type;->getX()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    iget-wide v4, v8, Landroid/renderscript/Double2;->x:D

    .line 72
    .line 73
    move-object v6, v13

    .line 74
    move-object v7, v14

    .line 75
    move-wide v13, v4

    .line 76
    iget-wide v4, v8, Landroid/renderscript/Double2;->y:D

    .line 77
    .line 78
    move-object v8, v15

    .line 79
    move-wide v15, v4

    .line 80
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 81
    .line 82
    invoke-virtual {v12, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v17

    .line 86
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 87
    .line 88
    invoke-virtual {v8, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v19

    .line 92
    iget-wide v4, v6, Landroid/renderscript/Double2;->x:D

    .line 93
    .line 94
    move-wide/from16 v21, v4

    .line 95
    .line 96
    iget-wide v4, v6, Landroid/renderscript/Double2;->y:D

    .line 97
    .line 98
    move-wide/from16 v23, v4

    .line 99
    .line 100
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 101
    .line 102
    invoke-virtual {v7, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v25

    .line 106
    const/16 v27, 0x0

    .line 107
    .line 108
    const/16 v28, 0x0

    .line 109
    .line 110
    const/16 v29, 0x0

    .line 111
    .line 112
    const/16 v30, 0x0

    .line 113
    .line 114
    move/from16 v5, p2

    .line 115
    .line 116
    move/from16 v8, p1

    .line 117
    .line 118
    move/from16 v12, v31

    .line 119
    .line 120
    const/16 v4, 0x86

    .line 121
    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public ZSYRK(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move/from16 v5, p2

    .line 23
    .line 24
    move-object/from16 v8, p4

    .line 25
    .line 26
    move-object/from16 v10, p6

    .line 27
    .line 28
    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0x6f

    .line 32
    .line 33
    move/from16 v8, p2

    .line 34
    .line 35
    if-eq v8, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :goto_0
    move v15, v3

    .line 55
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    move-object v4, v3

    .line 58
    invoke-virtual {v0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    const/16 v7, 0x85

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    iget-wide v7, v1, Landroid/renderscript/Double2;->x:D

    .line 77
    .line 78
    move-wide/from16 v16, v7

    .line 79
    .line 80
    iget-wide v7, v1, Landroid/renderscript/Double2;->y:D

    .line 81
    .line 82
    move-wide/from16 v18, v7

    .line 83
    .line 84
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 85
    .line 86
    move-object/from16 v7, p4

    .line 87
    .line 88
    invoke-virtual {v7, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v20

    .line 92
    const-wide/16 v22, 0x0

    .line 93
    .line 94
    iget-wide v7, v2, Landroid/renderscript/Double2;->x:D

    .line 95
    .line 96
    move-wide/from16 v24, v7

    .line 97
    .line 98
    iget-wide v1, v2, Landroid/renderscript/Double2;->y:D

    .line 99
    .line 100
    move-wide/from16 v26, v1

    .line 101
    .line 102
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 103
    .line 104
    move-object/from16 v2, p6

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v28

    .line 110
    const/16 v30, 0x0

    .line 111
    .line 112
    const/16 v31, 0x0

    .line 113
    .line 114
    const/16 v32, 0x0

    .line 115
    .line 116
    const/16 v33, 0x0

    .line 117
    .line 118
    move/from16 v8, p2

    .line 119
    .line 120
    move/from16 v11, p1

    .line 121
    .line 122
    const/16 v7, 0x85

    .line 123
    .line 124
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public ZTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-ltz p4, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move/from16 v3, p1

    .line 12
    .line 13
    move/from16 v4, p2

    .line 14
    .line 15
    move/from16 v5, p3

    .line 16
    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move/from16 v8, p7

    .line 22
    .line 23
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    const/16 v4, 0x4a

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const-wide/16 v13, 0x0

    .line 47
    .line 48
    const-wide/16 v15, 0x0

    .line 49
    .line 50
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v8, p5

    .line 53
    .line 54
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v17

    .line 58
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v8, p6

    .line 61
    .line 62
    invoke-virtual {v8, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v19

    .line 66
    const-wide/16 v21, 0x0

    .line 67
    .line 68
    const-wide/16 v23, 0x0

    .line 69
    .line 70
    const-wide/16 v25, 0x0

    .line 71
    .line 72
    const/16 v28, 0x0

    .line 73
    .line 74
    const/16 v29, 0x0

    .line 75
    .line 76
    const/16 v30, 0x0

    .line 77
    .line 78
    move/from16 v5, p2

    .line 79
    .line 80
    move/from16 v8, p1

    .line 81
    .line 82
    move/from16 v9, p3

    .line 83
    .line 84
    move/from16 v12, p4

    .line 85
    .line 86
    move/from16 v27, p7

    .line 87
    .line 88
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 93
    .line 94
    const-string v2, "K must be greater than or equal to 0"

    .line 95
    .line 96
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1
.end method

.method public ZTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move/from16 v4, p2

    .line 12
    .line 13
    move/from16 v5, p3

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    if-ltz p4, :cond_0

    .line 33
    .line 34
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 35
    .line 36
    move-object v2, v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const/16 v5, 0x4d

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const-wide/16 v14, 0x0

    .line 47
    .line 48
    const-wide/16 v16, 0x0

    .line 49
    .line 50
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v6, p5

    .line 53
    .line 54
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v18

    .line 58
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v6, p6

    .line 61
    .line 62
    invoke-virtual {v6, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v20

    .line 66
    const-wide/16 v22, 0x0

    .line 67
    .line 68
    const-wide/16 v24, 0x0

    .line 69
    .line 70
    const-wide/16 v26, 0x0

    .line 71
    .line 72
    const/16 v29, 0x0

    .line 73
    .line 74
    const/16 v30, 0x0

    .line 75
    .line 76
    const/16 v31, 0x0

    .line 77
    .line 78
    move/from16 v6, p2

    .line 79
    .line 80
    move/from16 v9, p1

    .line 81
    .line 82
    move/from16 v10, p3

    .line 83
    .line 84
    move/from16 v13, p4

    .line 85
    .line 86
    move/from16 v28, p7

    .line 87
    .line 88
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 93
    .line 94
    const-string v2, "Number of diagonals must be positive"

    .line 95
    .line 96
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1
.end method

.method public ZTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v27, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x4b

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const-wide/16 v13, 0x0

    .line 47
    .line 48
    const-wide/16 v15, 0x0

    .line 49
    .line 50
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v6, p4

    .line 53
    .line 54
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v17

    .line 58
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v6, p5

    .line 61
    .line 62
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v19

    .line 66
    const-wide/16 v21, 0x0

    .line 67
    .line 68
    const-wide/16 v23, 0x0

    .line 69
    .line 70
    const-wide/16 v25, 0x0

    .line 71
    .line 72
    const/16 v28, 0x0

    .line 73
    .line 74
    const/16 v29, 0x0

    .line 75
    .line 76
    const/16 v30, 0x0

    .line 77
    .line 78
    const/16 v4, 0x4b

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public ZTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v27, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v4, 0x4e

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const-wide/16 v13, 0x0

    .line 47
    .line 48
    const-wide/16 v15, 0x0

    .line 49
    .line 50
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    move-object/from16 v6, p4

    .line 53
    .line 54
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v17

    .line 58
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    .line 60
    move-object/from16 v6, p5

    .line 61
    .line 62
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v19

    .line 66
    const-wide/16 v21, 0x0

    .line 67
    .line 68
    const-wide/16 v23, 0x0

    .line 69
    .line 70
    const-wide/16 v25, 0x0

    .line 71
    .line 72
    const/16 v28, 0x0

    .line 73
    .line 74
    const/16 v29, 0x0

    .line 75
    .line 76
    const/16 v30, 0x0

    .line 77
    .line 78
    const/16 v4, 0x4e

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public ZTRMM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    move/from16 v10, p1

    .line 10
    .line 11
    move/from16 v11, p2

    .line 12
    .line 13
    move/from16 v8, p3

    .line 14
    .line 15
    move/from16 v12, p4

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    move/from16 v5, p1

    .line 30
    .line 31
    move/from16 v6, p3

    .line 32
    .line 33
    invoke-static {v4, v5, v6, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v4, v5

    .line 39
    invoke-virtual {v0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    const/16 v7, 0x87

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual {v13}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    invoke-virtual {v14}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const/4 v15, 0x0

    .line 63
    move/from16 v34, v8

    .line 64
    .line 65
    iget-wide v7, v1, Landroid/renderscript/Double2;->x:D

    .line 66
    .line 67
    move-wide/from16 v16, v7

    .line 68
    .line 69
    iget-wide v7, v1, Landroid/renderscript/Double2;->y:D

    .line 70
    .line 71
    move-wide/from16 v18, v7

    .line 72
    .line 73
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v20

    .line 79
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v22

    .line 85
    const-wide/16 v24, 0x0

    .line 86
    .line 87
    const-wide/16 v26, 0x0

    .line 88
    .line 89
    const-wide/16 v28, 0x0

    .line 90
    .line 91
    const/16 v30, 0x0

    .line 92
    .line 93
    const/16 v31, 0x0

    .line 94
    .line 95
    const/16 v32, 0x0

    .line 96
    .line 97
    const/16 v33, 0x0

    .line 98
    .line 99
    move/from16 v8, v34

    .line 100
    .line 101
    const/16 v7, 0x87

    .line 102
    .line 103
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public ZTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v27, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x49

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const-wide/16 v13, 0x0

    .line 54
    .line 55
    const-wide/16 v15, 0x0

    .line 56
    .line 57
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 58
    .line 59
    move-object/from16 v6, p4

    .line 60
    .line 61
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v17

    .line 65
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    move-object/from16 v6, p5

    .line 68
    .line 69
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v19

    .line 73
    const-wide/16 v21, 0x0

    .line 74
    .line 75
    const-wide/16 v23, 0x0

    .line 76
    .line 77
    const-wide/16 v25, 0x0

    .line 78
    .line 79
    const/16 v28, 0x0

    .line 80
    .line 81
    const/16 v29, 0x0

    .line 82
    .line 83
    const/16 v30, 0x0

    .line 84
    .line 85
    const/16 v4, 0x49

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public ZTRSM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    move/from16 v10, p1

    .line 10
    .line 11
    move/from16 v11, p2

    .line 12
    .line 13
    move/from16 v8, p3

    .line 14
    .line 15
    move/from16 v12, p4

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    move/from16 v5, p1

    .line 30
    .line 31
    move/from16 v6, p3

    .line 32
    .line 33
    invoke-static {v4, v5, v6, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    move-object v4, v5

    .line 39
    invoke-virtual {v0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    const/16 v7, 0x88

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual {v13}, Landroid/renderscript/Type;->getY()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    invoke-virtual {v14}, Landroid/renderscript/Type;->getX()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const/4 v15, 0x0

    .line 63
    move/from16 v34, v8

    .line 64
    .line 65
    iget-wide v7, v1, Landroid/renderscript/Double2;->x:D

    .line 66
    .line 67
    move-wide/from16 v16, v7

    .line 68
    .line 69
    iget-wide v7, v1, Landroid/renderscript/Double2;->y:D

    .line 70
    .line 71
    move-wide/from16 v18, v7

    .line 72
    .line 73
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v20

    .line 79
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v22

    .line 85
    const-wide/16 v24, 0x0

    .line 86
    .line 87
    const-wide/16 v26, 0x0

    .line 88
    .line 89
    const-wide/16 v28, 0x0

    .line 90
    .line 91
    const/16 v30, 0x0

    .line 92
    .line 93
    const/16 v31, 0x0

    .line 94
    .line 95
    const/16 v32, 0x0

    .line 96
    .line 97
    const/16 v33, 0x0

    .line 98
    .line 99
    move/from16 v8, v34

    .line 100
    .line 101
    const/16 v7, 0x88

    .line 102
    .line 103
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public ZTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v27, p6

    .line 10
    .line 11
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    move/from16 v11, p1

    .line 18
    .line 19
    move/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move-object/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move/from16 v16, p6

    .line 28
    .line 29
    invoke-static/range {v10 .. v16}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const/16 v4, 0x4c

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const-wide/16 v13, 0x0

    .line 54
    .line 55
    const-wide/16 v15, 0x0

    .line 56
    .line 57
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 58
    .line 59
    move-object/from16 v6, p4

    .line 60
    .line 61
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v17

    .line 65
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    .line 67
    move-object/from16 v6, p5

    .line 68
    .line 69
    invoke-virtual {v6, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v19

    .line 73
    const-wide/16 v21, 0x0

    .line 74
    .line 75
    const-wide/16 v23, 0x0

    .line 76
    .line 77
    const-wide/16 v25, 0x0

    .line 78
    .line 79
    const/16 v28, 0x0

    .line 80
    .line 81
    const/16 v29, 0x0

    .line 82
    .line 83
    const/16 v30, 0x0

    .line 84
    .line 85
    const/16 v4, 0x4c

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
