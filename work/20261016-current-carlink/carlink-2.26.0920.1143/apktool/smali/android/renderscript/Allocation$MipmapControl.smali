.class public final enum Landroid/renderscript/Allocation$MipmapControl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MipmapControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Allocation$MipmapControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;


# instance fields
.field mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/renderscript/Allocation$MipmapControl;

    .line 2
    .line 3
    const-string v1, "MIPMAP_NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 10
    .line 11
    new-instance v1, Landroid/renderscript/Allocation$MipmapControl;

    .line 12
    .line 13
    const-string v3, "MIPMAP_FULL"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    .line 20
    .line 21
    new-instance v3, Landroid/renderscript/Allocation$MipmapControl;

    .line 22
    .line 23
    const-string v5, "MIPMAP_ON_SYNC_TO_TEXTURE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Landroid/renderscript/Allocation$MipmapControl;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Landroid/renderscript/Allocation$MipmapControl;->$VALUES:[Landroid/renderscript/Allocation$MipmapControl;

    .line 41
    .line 42
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
    iput p3, p0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    const-class v0, Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Allocation$MipmapControl;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->$VALUES:[Landroid/renderscript/Allocation$MipmapControl;

    invoke-virtual {v0}, [Landroid/renderscript/Allocation$MipmapControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method
