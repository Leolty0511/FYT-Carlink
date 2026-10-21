.class public Lo1/q0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    const/16 v1, 0x72

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/syu/jni/ControlNative;->fyt_gpio_write(II)I

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 3
    invoke-static {}, Ly0/h;->P()V

    return-void
.end method
