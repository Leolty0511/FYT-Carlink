.class public Ln0/x2;
.super Ln0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    return-void
.end method

.method private S3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    new-instance v1, Ln0/x2$a;

    invoke-direct {v1, p0, v0}, Ln0/x2$a;-><init>(Ln0/x2;I)V

    invoke-static {v1}, Ln0/k4;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    .line 2
    instance-of v0, p1, Lmodule/sound/C32107;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 3
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->d:Lmodule/sound/C32107$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v0, 0x2

    .line 4
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v2, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v0, 0x3

    .line 5
    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_0
    return-void
.end method

.method public L3()V
    .locals 1

    const-string v0, "KERD"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x111

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lh0/c;->i0:I

    return-void
.end method

.method public X2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/a;->X2()V

    .line 2
    invoke-direct {p0}, Ln0/x2;->S3()V

    return-void
.end method
