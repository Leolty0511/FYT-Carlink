.class public final enum Landroid/renderscript/Program$TextureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Program$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Program$TextureType;

.field public static final enum TEXTURE_2D:Landroid/renderscript/Program$TextureType;

.field public static final enum TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;


# instance fields
.field mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/renderscript/Program$TextureType;

    .line 2
    .line 3
    const-string v1, "TEXTURE_2D"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    .line 10
    .line 11
    new-instance v1, Landroid/renderscript/Program$TextureType;

    .line 12
    .line 13
    const-string v3, "TEXTURE_CUBE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Landroid/renderscript/Program$TextureType;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

    .line 29
    .line 30
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
    iput p3, p0, Landroid/renderscript/Program$TextureType;->mID:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Program$TextureType;
    .locals 1

    const-class v0, Landroid/renderscript/Program$TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Program$TextureType;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Program$TextureType;
    .locals 1

    sget-object v0, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0}, [Landroid/renderscript/Program$TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Program$TextureType;

    return-object v0
.end method
