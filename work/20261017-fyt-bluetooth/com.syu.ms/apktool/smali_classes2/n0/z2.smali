.class public Ln0/z2;
.super Ln0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 1

    const-string v0, "HLYD"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x113

    .line 2
    sput v0, Lm1/a;->d:I

    return-void
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    const-string v0, "ACTION_ACC_ON"

    const-string v1, "com.spreadwin.service"

    .line 2
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public X2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/a;->X2()V

    return-void
.end method
