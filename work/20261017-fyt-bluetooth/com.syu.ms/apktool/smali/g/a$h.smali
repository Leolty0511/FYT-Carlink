.class public Lg/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a;


# direct methods
.method public constructor <init>(Lg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a$h;->a:Lg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lo1/q0;->M()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lg/f;->w(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, v1}, Lcom/syu/jni/ControlNative;->fyt_vehicle_write([BI)I

    .line 6
    iget-object v0, p0, Lg/a$h;->a:Lg/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/a;->d(Lg/a;I)I

    .line 7
    iget-object v0, p0, Lg/a$h;->a:Lg/a;

    invoke-static {v0}, Lg/a;->h(Lg/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x4t
    .end array-data
.end method
