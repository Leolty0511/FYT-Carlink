.class public Lapp/ModuleService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:Lo1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo1/c;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    sput-object v0, Lapp/ModuleService;->a:Lo1/c;

    const-string v1, "com.syu.ms.main"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.radio"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.bt"

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.dvd"

    const/4 v2, 0x3

    .line 5
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.sound"

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.ipod"

    const/4 v2, 0x5

    .line 7
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.tv"

    const/4 v2, 0x6

    .line 8
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.canbus"

    const/4 v2, 0x7

    .line 9
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.tpms"

    const/16 v2, 0x8

    .line 10
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.dvr"

    const/16 v2, 0x9

    .line 11
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.steer"

    const/16 v2, 0xa

    .line 12
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.customer"

    const/16 v2, 0xb

    .line 13
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.obd"

    const/16 v2, 0xc

    .line 14
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.test"

    const/16 v2, 0xd

    .line 15
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.can.up"

    const/16 v2, 0xe

    .line 16
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.amp"

    const/16 v2, 0xf

    .line 17
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.emitter"

    const/16 v2, 0x10

    .line 18
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.gsensor"

    const/16 v2, 0x11

    .line 19
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.syu.ms.gestrue"

    const/16 v2, 0x12

    .line 20
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, La/g;->K2()La/g;

    move-result-object v0

    sget-object v1, Lapp/ModuleService;->a:Lo1/c;

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lo1/c;->d(Ljava/lang/Comparable;I)I

    move-result p1

    .line 3
    invoke-virtual {v0, p1}, La/g;->L2(I)Ly/c$a;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
