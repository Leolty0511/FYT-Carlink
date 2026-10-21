.class public Lg/d$g;
.super Landroid/os/UEventObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/d$g;->a:Lg/d;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "AIRPLANEMODE"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Lg/d$g;->a:Lg/d;

    invoke-virtual {p1, v2}, Lg/d;->y(I)V

    .line 4
    invoke-static {v2}, Lg/d;->q(Z)Z

    goto/16 :goto_0

    :cond_1
    const-string v1, "FYT_T132_RESET=COMPLETE"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/16 p1, 0x2d

    new-array v0, v2, [I

    const/4 v1, 0x4

    aput v1, v0, v3

    const/4 v1, 0x0

    const-string v2, "FYT_T132_RESET=COMPLETE BSP \u8981\u6c42\u91cd\u5237\u53c2\u6570"

    .line 6
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    .line 7
    sget-object p1, Le1/a;->b:Le1/l;

    invoke-virtual {p1}, Le1/l;->f()V

    goto/16 :goto_0

    :cond_2
    const-string v1, "FYT_I2C4=BUSY"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, Ly0/h;->P()V

    goto :goto_0

    :cond_3
    const-string v1, "car-reverse"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11
    iget-object v0, p0, Lg/d$g;->a:Lg/d;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GPIO_STATE"

    invoke-static {v0, p1, v1}, Lg/d;->x(Lg/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 12
    :cond_4
    sget v0, La/b;->e0:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "on"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "boot.car.reverse"

    .line 14
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 15
    iget-object p1, p0, Lg/d$g;->a:Lg/d;

    invoke-static {p1}, Lg/d;->e(Lg/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lg/f;->a(Ljava/lang/Runnable;)V

    .line 16
    iget-object p1, p0, Lg/d$g;->a:Lg/d;

    invoke-static {p1}, Lg/d;->f(Lg/d;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera it is using,return"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 17
    :cond_6
    iget-object p1, p0, Lg/d$g;->a:Lg/d;

    invoke-static {p1}, Lg/d;->g(Lg/d;)V

    .line 18
    invoke-static {v2}, Lu0/d;->C(I)V

    goto :goto_0

    :cond_7
    const-string v0, "over"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 20
    iget-object p1, p0, Lg/d$g;->a:Lg/d;

    invoke-static {p1}, Lg/d;->e(Lg/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lg/f;->v(Ljava/lang/Runnable;)V

    const-string/jumbo p1, "sys.car.reverse"

    const-string v0, "0"

    .line 21
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 22
    :cond_8
    invoke-static {v3}, Lu0/d;->C(I)V

    :cond_9
    :goto_0
    return-void
.end method
