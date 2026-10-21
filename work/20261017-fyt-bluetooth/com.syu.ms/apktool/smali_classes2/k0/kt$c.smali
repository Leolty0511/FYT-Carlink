.class public Lk0/kt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kt;
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
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lk0/kt;->a3(Z)Z

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lk0/kt;->O:Z

    const-string v0, "/mnt/sdcard/ServerDieLog.txt"

    const-string v1, "/mnt/usb_storage4/yundu"

    .line 3
    invoke-static {v0, v1}, Lk0/pt;->g(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "/data/anr/traces.txt"

    .line 4
    invoke-static {v0, v1}, Lk0/pt;->g(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "/mnt/sdcard/crash"

    const-string v1, "/mnt/usb_storage4/yundu/crash"

    .line 5
    invoke-static {v0, v1}, Lk0/pt;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v1, Lk0/kt$c$a;

    invoke-direct {v1, p0}, Lk0/kt$c$a;-><init>(Lk0/kt$c;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
