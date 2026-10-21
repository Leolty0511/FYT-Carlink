.class public Ln0/f4;
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
.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lmodule/sound/C32107;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lmodule/sound/C32107;

    const/16 v1, 0x702

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xa6

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lmodule/sound/C32107;->f2(I[I)I

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    return-void
.end method

.method public I3(Le1/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    .line 2
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    :cond_0
    return-void
.end method

.method public L3()V
    .locals 1

    const-string v0, "GDUH"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x104

    .line 2
    sput v0, Lm1/a;->d:I

    return-void
.end method

.method public X2()V
    .locals 2

    const-string v0, "persist.sys.syu.audio"

    const-string v1, "32107"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lmodule/sound/C32107;->z1:I

    add-int/lit8 v0, v0, 0x6

    sput v0, Lmodule/sound/C32107;->z1:I

    .line 4
    :cond_0
    invoke-super {p0}, Ln0/a;->X2()V

    return-void
.end method

.method public j3()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/a;->j3()V

    .line 2
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 3
    new-instance v1, Ln0/f4$a;

    invoke-direct {v1, p0}, Ln0/f4$a;-><init>(Ln0/f4;)V

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 4
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    return-void
.end method
