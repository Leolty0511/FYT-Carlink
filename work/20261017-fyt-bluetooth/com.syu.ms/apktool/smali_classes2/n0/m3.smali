.class public Ln0/m3;
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

    .line 1
    invoke-super {p0}, Ln0/a;->L3()V

    const-string v0, "HIW"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x128

    .line 3
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lu0/b;->C1:Z

    return-void
.end method
