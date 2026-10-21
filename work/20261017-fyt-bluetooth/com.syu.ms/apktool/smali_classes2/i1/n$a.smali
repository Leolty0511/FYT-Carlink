.class public Li1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/n;


# direct methods
.method public constructor <init>(Li1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/n$a;->a:Li1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "sys.fyt.platform.dog"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x7

    .line 2
    invoke-static {v2, v0}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    const-wide/16 v3, 0x320

    .line 3
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 4
    invoke-static {v2, v1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    return-void
.end method
