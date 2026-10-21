.class public Lg/b$f;
.super Landroid/os/UEventObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/b;


# direct methods
.method public constructor <init>(Lg/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/b$f;->a:Lg/b;

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
    const-string v1, "car-reverse"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 3
    iget-object v0, p0, Lg/b$f;->a:Lg/b;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GPIO_STATE"

    invoke-static {v0, p1, v1}, Lg/b;->p(Lg/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    sget v0, La/b;->e0:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "on"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string/jumbo v0, "\u5f00\u59cb\u5012\u8f66"

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_32_get_boot_reverse_status()I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 8
    iget-object p1, p0, Lg/b$f;->a:Lg/b;

    invoke-static {p1}, Lg/b;->q(Lg/b;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera it is using,return"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lg/b$f;->a:Lg/b;

    invoke-static {p1}, Lg/b;->h(Lg/b;)V

    .line 10
    invoke-static {v3}, Lu0/d;->C(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "over"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 12
    iget-object p1, p0, Lg/b$f;->a:Lg/b;

    invoke-static {p1}, Lg/b;->f(Lg/b;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lg/f;->v(Ljava/lang/Runnable;)V

    .line 13
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string/jumbo v0, "\u7ed3\u675f\u5012\u8f66"

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    const-string/jumbo p1, "sys.car.reverse"

    const-string v0, "0"

    .line 14
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 15
    :cond_5
    invoke-static {v2}, Lu0/d;->C(I)V

    goto :goto_0

    :cond_6
    const-string p1, "Gsensor=wakeup"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "Gsensor=wakeup Gsensor=wakeup Gsensor=wakeup"

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    .line 18
    invoke-static {v3}, Lu0/d;->n0(I)V

    .line 19
    invoke-static {v3}, Ls0/d;->c(I)V

    goto :goto_0

    :cond_7
    const-string p1, "dcam-err"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "dcam-err dcam-err dcam-err "

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p1, "FYT_TW9992_RESET=COMPLETE"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x2d

    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v1, 0x0

    const-string v2, "FYT_TW9992_RESET=COMPLETE BSP \u8981\u6c42\u91cd\u5237\u53c2\u6570"

    .line 23
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    .line 24
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "9992\u590d\u4f4d\u6210\u529f \u91cd\u5237\u53c2\u6570 "

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    new-instance v0, Lg/b$f$a;

    invoke-direct {v0, p0}, Lg/b$f$a;-><init>(Lg/b$f;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_0
    return-void
.end method
