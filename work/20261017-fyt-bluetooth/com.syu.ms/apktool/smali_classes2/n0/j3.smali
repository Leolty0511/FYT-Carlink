.class public Ln0/j3;
.super Ln0/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/h;-><init>()V

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c4;->L3()V

    const-string v0, "KYD2"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x125

    .line 3
    sput v0, Lm1/a;->d:I

    return-void
.end method

.method public m3()Z
    .locals 1

    .line 1
    invoke-static {}, Lg/e;->p()I

    move-result v0

    .line 2
    invoke-static {v0}, Lg/e;->i(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
