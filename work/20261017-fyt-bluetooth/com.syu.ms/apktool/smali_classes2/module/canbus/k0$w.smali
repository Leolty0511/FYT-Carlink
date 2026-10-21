.class public Lmodule/canbus/k0$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$w;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "com.syu.fourcamera2"

    .line 2
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.lsec.fourcamera2.show"

    .line 3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x29
        0x0
    .end array-data
.end method
