.class public Lk0/ch$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ch;


# direct methods
.method public constructor <init>(Lk0/ch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ch$i;->a:Lk0/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x5

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "persist.lesc.video.ignore"

    const-string v2, "false"

    .line 2
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x97

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 3
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const-string v0, "ro.fyt.platform"

    const-string v2, ""

    .line 4
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "6521"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_0
    const-string v2, "6316"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "6312"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "6315"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "6318"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "6319"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v1, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_3
    :goto_0
    const/16 v0, 0xe

    .line 10
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v0, 0xd

    .line 11
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 12
    :goto_2
    iget-object v0, p0, Lk0/ch$i;->a:Lk0/ch;

    iget-object v0, v0, Lk0/ch;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/ch$i;->a:Lk0/ch;

    iput v1, v0, Lk0/ch;->z:I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9601c7 -> :sswitch_0
        0x9701c7 -> :sswitch_0
        0x9801c7 -> :sswitch_0
        0x9d01c7 -> :sswitch_0
        0xc001c7 -> :sswitch_0
        0xce01c7 -> :sswitch_0
    .end sparse-switch
.end method
