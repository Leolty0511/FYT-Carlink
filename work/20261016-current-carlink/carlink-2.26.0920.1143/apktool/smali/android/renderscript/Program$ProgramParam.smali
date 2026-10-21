.class final enum Landroid/renderscript/Program$ProgramParam;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Program$ProgramParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Program$ProgramParam;

.field public static final enum CONSTANT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum INPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum OUTPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;


# instance fields
.field mID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    .line 2
    .line 3
    const-string v1, "INPUT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    .line 10
    .line 11
    new-instance v1, Landroid/renderscript/Program$ProgramParam;

    .line 12
    .line 13
    const-string v3, "OUTPUT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    .line 20
    .line 21
    new-instance v3, Landroid/renderscript/Program$ProgramParam;

    .line 22
    .line 23
    const-string v5, "CONSTANT"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    .line 30
    .line 31
    new-instance v5, Landroid/renderscript/Program$ProgramParam;

    .line 32
    .line 33
    const-string v7, "TEXTURE_TYPE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Landroid/renderscript/Program$ProgramParam;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

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
    iput p3, p0, Landroid/renderscript/Program$ProgramParam;->mID:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Program$ProgramParam;
    .locals 1

    const-class v0, Landroid/renderscript/Program$ProgramParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Program$ProgramParam;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Program$ProgramParam;
    .locals 1

    sget-object v0, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

    invoke-virtual {v0}, [Landroid/renderscript/Program$ProgramParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Program$ProgramParam;

    return-object v0
.end method
