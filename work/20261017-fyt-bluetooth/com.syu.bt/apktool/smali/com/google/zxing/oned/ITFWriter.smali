.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "ITFWriter.java"


# static fields
.field private static final END_PATTERN:[I

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 32
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 33
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data

    .line 40
    :array_2
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 12
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 61
    .local v3, "length":I
    rem-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_0

    .line 62
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The length of the input should be even"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 64
    :cond_0
    const/16 v8, 0x50

    if-le v3, v8, :cond_1

    .line 65
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 69
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/oned/ITFWriter;->checkNumeric(Ljava/lang/String;)V

    .line 71
    mul-int/lit8 v8, v3, 0x9

    add-int/lit8 v8, v8, 0x9

    new-array v6, v8, [Z

    .line 72
    .local v6, "result":[Z
    const/4 v8, 0x0

    sget-object v9, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    invoke-static {v6, v8, v9, v10}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v5

    .line 73
    .local v5, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 75
    .local v4, "one":I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 76
    .local v7, "two":I
    new-array v0, v11, [I

    .line 77
    .local v0, "encoding":[I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v8, 0x5

    if-ge v2, v8, :cond_2

    .line 78
    mul-int/lit8 v8, v2, 0x2

    sget-object v9, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v9, v9, v4

    aget v9, v9, v2

    aput v9, v0, v8

    .line 79
    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v9, v9, v7

    aget v9, v9, v2

    aput v9, v0, v8

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v6, v5, v0, v10}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 73
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 83
    .end local v0    # "encoding":[I
    .end local v2    # "j":I
    .end local v4    # "one":I
    .end local v7    # "two":I
    :cond_3
    sget-object v8, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v6, v5, v8, v10}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    .line 85
    return-object v6
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
