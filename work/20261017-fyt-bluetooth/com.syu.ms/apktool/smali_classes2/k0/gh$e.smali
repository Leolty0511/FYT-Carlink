.class public Lk0/gh$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gh;


# direct methods
.method public constructor <init>(Lk0/gh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gh$e;->a:Lk0/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x5

    const v2, 0xc101c4

    if-eq v0, v2, :cond_0

    const v2, 0xf801c7

    if-eq v0, v2, :cond_0

    const v2, 0x2801c6

    if-eq v0, v2, :cond_0

    const v2, 0x4b01c7

    if-eq v0, v2, :cond_0

    const v2, 0x8301c8

    if-eq v0, v2, :cond_0

    const v2, 0x4601c7

    if-eq v0, v2, :cond_0

    const v2, 0x4801c7

    if-eq v0, v2, :cond_0

    const v2, 0x5401c7

    if-eq v0, v2, :cond_0

    const v2, 0x1101c7

    if-eq v0, v2, :cond_0

    const v2, 0x1201c7

    if-ne v0, v2, :cond_7

    :cond_0
    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 2
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ls18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Lt18"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    const-string v0, "ro.fyt.platform"

    const-string v2, ""

    .line 4
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "6521"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_2
    const-string v2, "6316"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "6312"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "6315"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "6318"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "6319"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {v1, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_5
    :goto_0
    const/16 v0, 0xe

    .line 10
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v0, 0xd

    .line 11
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 12
    :cond_7
    :goto_2
    iget-object v0, p0, Lk0/gh$e;->a:Lk0/gh;

    iget-object v0, v0, Lk0/gh;->J:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/gh$e;->a:Lk0/gh;

    iput v1, v0, Lk0/gh;->H:I

    return-void
.end method
