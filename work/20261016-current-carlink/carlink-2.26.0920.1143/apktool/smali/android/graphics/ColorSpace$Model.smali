.class public final enum Landroid/graphics/ColorSpace$Model;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$Model;

.field public static final enum CMYK:Landroid/graphics/ColorSpace$Model;

.field public static final enum LAB:Landroid/graphics/ColorSpace$Model;

.field public static final enum RGB:Landroid/graphics/ColorSpace$Model;

.field public static final enum XYZ:Landroid/graphics/ColorSpace$Model;


# instance fields
.field private final mComponentCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    .line 2
    .line 3
    const-string v1, "RGB"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/ColorSpace$Model;

    .line 13
    .line 14
    const-string v4, "XYZ"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-direct {v1, v4, v5, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    .line 21
    .line 22
    new-instance v4, Landroid/graphics/ColorSpace$Model;

    .line 23
    .line 24
    const-string v6, "LAB"

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    invoke-direct {v4, v6, v7, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    .line 31
    .line 32
    new-instance v6, Landroid/graphics/ColorSpace$Model;

    .line 33
    .line 34
    const-string v8, "CMYK"

    .line 35
    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v3, v9}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Landroid/graphics/ColorSpace$Model;->CMYK:Landroid/graphics/ColorSpace$Model;

    .line 41
    .line 42
    new-array v8, v9, [Landroid/graphics/ColorSpace$Model;

    .line 43
    .line 44
    aput-object v0, v8, v2

    .line 45
    .line 46
    aput-object v1, v8, v5

    .line 47
    .line 48
    aput-object v4, v8, v7

    .line 49
    .line 50
    aput-object v6, v8, v3

    .line 51
    .line 52
    sput-object v8, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Model;
    .locals 1

    const-class v0, Landroid/graphics/ColorSpace$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/ColorSpace$Model;

    return-object p0
.end method

.method public static values()[Landroid/graphics/ColorSpace$Model;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method


# virtual methods
.method public getComponentCount()I
    .locals 1

    iget v0, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    return v0
.end method
