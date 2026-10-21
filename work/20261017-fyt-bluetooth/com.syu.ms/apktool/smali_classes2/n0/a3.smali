.class public Ln0/a3;
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
.method public I3(Le1/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v0

    .line 3
    instance-of v1, p1, Le1/e;

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    :cond_0
    return-void
.end method

.method public L3()V
    .locals 1

    const-string v0, "ZHIF"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x114

    .line 2
    sput v0, Lm1/a;->d:I

    return-void
.end method
