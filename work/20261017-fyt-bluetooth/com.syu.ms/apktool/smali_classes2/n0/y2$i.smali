.class public Ln0/y2$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$i;->a:Ln0/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_17_get_led_colors()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lu0/b;->f:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lo1/q0;->G(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {v1}, Lo1/q0;->G(I)V

    :cond_1
    :goto_0
    return-void
.end method
