.class public final enum Landroid/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataType;

.field public static final enum BOOLEAN:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_64:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_2X2:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_3X3:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_4X4:Landroid/renderscript/Element$DataType;

.field public static final enum NONE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_FONT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_MESH:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroid/renderscript/Element$DataType;


# instance fields
.field public mID:I

.field public mSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    .line 2
    new-instance v1, Landroid/renderscript/Element$DataType;

    const-string v3, "FLOAT_32"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    .line 3
    new-instance v3, Landroid/renderscript/Element$DataType;

    const-string v7, "FLOAT_64"

    const/4 v8, 0x3

    const/16 v9, 0x8

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v3, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    .line 4
    new-instance v7, Landroid/renderscript/Element$DataType;

    const-string v10, "SIGNED_8"

    invoke-direct {v7, v10, v8, v6, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v7, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    .line 5
    new-instance v10, Landroid/renderscript/Element$DataType;

    const-string v11, "SIGNED_16"

    const/4 v12, 0x5

    invoke-direct {v10, v11, v6, v12, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v10, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    .line 6
    new-instance v11, Landroid/renderscript/Element$DataType;

    const-string v13, "SIGNED_32"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v12, v14, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    .line 7
    new-instance v13, Landroid/renderscript/Element$DataType;

    const-string v15, "SIGNED_64"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v14, v12, v9}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v13, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    .line 8
    new-instance v15, Landroid/renderscript/Element$DataType;

    const-string v14, "UNSIGNED_8"

    invoke-direct {v15, v14, v12, v9, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v15, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    .line 9
    new-instance v14, Landroid/renderscript/Element$DataType;

    const-string v12, "UNSIGNED_16"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v9, v8, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v14, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    .line 10
    new-instance v12, Landroid/renderscript/Element$DataType;

    const-string v2, "UNSIGNED_32"

    const/16 v5, 0xa

    invoke-direct {v12, v2, v8, v5, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v12, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    .line 11
    new-instance v2, Landroid/renderscript/Element$DataType;

    const-string v8, "UNSIGNED_64"

    const/16 v6, 0xb

    invoke-direct {v2, v8, v5, v6, v9}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    .line 12
    new-instance v8, Landroid/renderscript/Element$DataType;

    const-string v5, "BOOLEAN"

    const/16 v9, 0xc

    invoke-direct {v8, v5, v6, v9, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    .line 13
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v6, "UNSIGNED_5_6_5"

    const/16 v4, 0xd

    move-object/from16 v16, v8

    const/4 v8, 0x2

    invoke-direct {v5, v6, v9, v4, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    .line 14
    new-instance v6, Landroid/renderscript/Element$DataType;

    const-string v9, "UNSIGNED_5_5_5_1"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v6, v9, v4, v5, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    .line 15
    new-instance v9, Landroid/renderscript/Element$DataType;

    const-string v4, "UNSIGNED_4_4_4_4"

    move-object/from16 v18, v6

    const/16 v6, 0xf

    invoke-direct {v9, v4, v5, v6, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v9, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    .line 16
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v8, "MATRIX_4X4"

    const/16 v5, 0x10

    move-object/from16 v19, v9

    const/16 v9, 0x40

    invoke-direct {v4, v8, v6, v5, v9}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    .line 17
    new-instance v8, Landroid/renderscript/Element$DataType;

    const-string v9, "MATRIX_3X3"

    const/16 v6, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x24

    invoke-direct {v8, v9, v5, v6, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    .line 18
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v9, "MATRIX_2X2"

    move-object/from16 v21, v8

    const/16 v8, 0x12

    invoke-direct {v4, v9, v6, v8, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    .line 19
    new-instance v9, Landroid/renderscript/Element$DataType;

    const-string v6, "RS_ELEMENT"

    const/16 v5, 0x3e8

    move-object/from16 v22, v4

    const/4 v4, 0x4

    invoke-direct {v9, v6, v8, v5, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v9, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    .line 20
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v6, "RS_TYPE"

    const/16 v8, 0x13

    move-object/from16 v23, v9

    const/16 v9, 0x3e9

    invoke-direct {v5, v6, v8, v9, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    .line 21
    new-instance v6, Landroid/renderscript/Element$DataType;

    const-string v9, "RS_ALLOCATION"

    const/16 v8, 0x14

    move-object/from16 v24, v5

    const/16 v5, 0x3ea

    invoke-direct {v6, v9, v8, v5, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    .line 22
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v9, "RS_SAMPLER"

    const/16 v8, 0x15

    move-object/from16 v25, v6

    const/16 v6, 0x3eb

    invoke-direct {v5, v9, v8, v6, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    .line 23
    new-instance v6, Landroid/renderscript/Element$DataType;

    const-string v9, "RS_SCRIPT"

    const/16 v8, 0x16

    move-object/from16 v26, v5

    const/16 v5, 0x3ec

    invoke-direct {v6, v9, v8, v5, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    .line 24
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v8, "RS_MESH"

    const/16 v9, 0x17

    move-object/from16 v27, v6

    const/16 v6, 0x3ed

    invoke-direct {v5, v8, v9, v6, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    .line 25
    new-instance v6, Landroid/renderscript/Element$DataType;

    const-string v8, "RS_PROGRAM_FRAGMENT"

    const/16 v9, 0x18

    move-object/from16 v28, v5

    const/16 v5, 0x3ee

    invoke-direct {v6, v8, v9, v5, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    .line 26
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v8, "RS_PROGRAM_VERTEX"

    const/16 v9, 0x19

    move-object/from16 v29, v6

    const/16 v6, 0x3ef

    invoke-direct {v5, v8, v9, v6, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    .line 27
    new-instance v6, Landroid/renderscript/Element$DataType;

    const-string v8, "RS_PROGRAM_RASTER"

    const/16 v9, 0x1a

    move-object/from16 v30, v5

    const/16 v5, 0x3f0

    invoke-direct {v6, v8, v9, v5, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    .line 28
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v8, "RS_PROGRAM_STORE"

    const/16 v9, 0x1b

    move-object/from16 v31, v6

    const/16 v6, 0x3f1

    invoke-direct {v5, v8, v9, v6, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    .line 29
    new-instance v6, Landroid/renderscript/Element$DataType;

    const-string v8, "RS_FONT"

    const/16 v9, 0x1c

    move-object/from16 v32, v5

    const/16 v5, 0x3f2

    invoke-direct {v6, v8, v9, v5, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    const/16 v5, 0x1d

    new-array v5, v5, [Landroid/renderscript/Element$DataType;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    aput-object v10, v5, v4

    const/4 v0, 0x5

    aput-object v11, v5, v0

    const/4 v0, 0x6

    aput-object v13, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v12, v5, v0

    const/16 v0, 0xa

    aput-object v2, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v21, v5, v0

    const/16 v0, 0x11

    aput-object v22, v5, v0

    const/16 v0, 0x12

    aput-object v23, v5, v0

    const/16 v0, 0x13

    aput-object v24, v5, v0

    const/16 v0, 0x14

    aput-object v25, v5, v0

    const/16 v0, 0x15

    aput-object v26, v5, v0

    const/16 v0, 0x16

    aput-object v27, v5, v0

    const/16 v0, 0x17

    aput-object v28, v5, v0

    const/16 v0, 0x18

    aput-object v29, v5, v0

    const/16 v0, 0x19

    aput-object v30, v5, v0

    const/16 v0, 0x1a

    aput-object v31, v5, v0

    const/16 v0, 0x1b

    aput-object v32, v5, v0

    const/16 v0, 0x1c

    aput-object v6, v5, v0

    .line 30
    sput-object v5, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    .line 3
    iput p4, p0, Landroid/renderscript/Element$DataType;->mSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataType;
    .locals 1

    .line 1
    const-class v0, Landroid/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Element$DataType;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Element$DataType;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataType;

    return-object v0
.end method
