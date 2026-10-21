.class public final enum Landroid/widget/TextView$BufferType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/widget/TextView$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TextView$BufferType;

.field public static final enum EDITABLE:Landroid/widget/TextView$BufferType;

.field public static final enum NORMAL:Landroid/widget/TextView$BufferType;

.field public static final enum SPANNABLE:Landroid/widget/TextView$BufferType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/TextView$BufferType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    new-instance v1, Landroid/widget/TextView$BufferType;

    const-string v3, "SPANNABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    new-instance v3, Landroid/widget/TextView$BufferType;

    const-string v5, "EDITABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/TextView$BufferType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TextView$BufferType;
    .locals 1

    .line 1
    const-class v0, Landroid/widget/TextView$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView$BufferType;

    return-object p0
.end method

.method public static values()[Landroid/widget/TextView$BufferType;
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

    invoke-virtual {v0}, [Landroid/widget/TextView$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$BufferType;

    return-object v0
.end method
