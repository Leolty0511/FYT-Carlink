.class public Ln0/c4$n;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c4;->r3(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$n;->e:Ln0/c4;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    const-string p1, "zed"

    const-string v0, "CAR_DJ_RZC_HONDA_15_18Aodesai_TaiE = KEYCODE_CUSTOME_1  111111111"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :array_0
    .array-data 4
        0xe3
        -0x38
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
