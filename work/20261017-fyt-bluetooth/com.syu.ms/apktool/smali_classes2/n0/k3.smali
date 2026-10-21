.class public Ln0/k3;
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

    const-string v0, "FXZL"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x126

    .line 3
    sput v0, Lm1/a;->d:I

    return-void
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    const-string v0, "com.fangxiangtong.driver"

    const-string v1, "com.fangxiangtong.driver.ui.start.StartActivity"

    .line 2
    invoke-static {v0, v1}, Lo1/u;->H0(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public R3(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln0/c4;->m3()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ln0/j4;->c:Ljava/lang/String;

    const-string v1, "NOR"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ln0/j4;->c:Ljava/lang/String;

    const-string v2, "BUG"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ln0/j4;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return p1

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x34
    .end array-data
.end method
