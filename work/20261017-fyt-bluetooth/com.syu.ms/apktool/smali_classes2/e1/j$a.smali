.class public Le1/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/j;


# direct methods
.method public constructor <init>(Le1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/j$a;->a:Le1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Le1/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_25_get_video_mode()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_26_get_video_signal_on()I

    move-result v1

    .line 4
    invoke-static {v0}, Lu0/d;->n3(I)V

    .line 5
    invoke-static {v1}, Lu0/d;->o3(I)V

    :cond_0
    return-void
.end method
