.class public Ln0/r3;
.super Ln0/d3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/d3;-><init>()V

    return-void
.end method


# virtual methods
.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    instance-of v2, p1, Lmodule/sound/C32107;

    if-eqz v2, :cond_3

    const-string v2, "4"

    .line 4
    invoke-static {v0, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_2

    const-string v2, "6"

    invoke-static {v0, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "7"

    invoke-static {v0, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "8"

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_1
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->f:Lmodule/sound/C32107$CHANNEL;

    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v3, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x6

    .line 7
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->d:Lmodule/sound/C32107$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v3, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    const/4 v1, 0x3

    .line 9
    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public L3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/d3;->L3()V

    const-string v0, "CMEI"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x133

    .line 3
    sput v0, Lm1/a;->d:I

    return-void
.end method
