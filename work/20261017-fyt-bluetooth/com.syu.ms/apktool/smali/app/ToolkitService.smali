.class public Lapp/ToolkitService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-static {}, La/g;->K2()La/g;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x56
        0x56
    .end array-data
.end method
