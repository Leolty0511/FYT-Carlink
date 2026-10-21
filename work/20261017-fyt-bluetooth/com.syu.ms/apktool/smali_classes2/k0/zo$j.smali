.class public Lk0/zo$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zo;


# direct methods
.method public constructor <init>(Lk0/zo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zo$j;->a:Lk0/zo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lk0/nt;->a:I

    const-string v2, "6319"

    const-string v3, "6318"

    const/16 v4, 0xe

    const-string v5, "6315"

    const-string v6, "6312"

    const/16 v7, 0xd

    const-string v8, "6316"

    const-string v9, "6521"

    const/4 v10, 0x5

    const/4 v11, 0x0

    const v12, 0x3001c7

    if-ne v1, v12, :cond_5

    .line 3
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v9}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v10, v9}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_4

    .line 8
    :cond_3
    :goto_0
    invoke-static {v4, v9}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_4

    .line 9
    :cond_4
    :goto_1
    invoke-static {v7, v9}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_4

    .line 10
    :cond_5
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-static {v11}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 14
    :cond_8
    invoke-static {v10, v11}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_4

    .line 15
    :cond_9
    :goto_2
    invoke-static {v4, v11}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_4

    .line 16
    :cond_a
    :goto_3
    invoke-static {v7, v11}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 17
    :goto_4
    iget-object v0, p0, Lk0/zo$j;->a:Lk0/zo;

    iget-object v0, v0, Lk0/zo;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lk0/zo$j;->a:Lk0/zo;

    iput v10, v0, Lk0/zo;->f0:I

    .line 19
    iput-boolean v11, v0, Lk0/zo;->o:Z

    return-void
.end method
