.class public Lg/d$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lg/d$h;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "boot.car.reverse"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "sys.car.reverse"

    const-string v2, "0"

    .line 2
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lg/d$h;->a:Lg/d;

    invoke-static {v0}, Lg/d;->g(Lg/d;)V

    .line 4
    :cond_0
    invoke-static {v1}, Lu0/d;->C(I)V

    .line 5
    iget-object v0, p0, Lg/d$h;->a:Lg/d;

    invoke-static {v0}, Lg/d;->e(Lg/d;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lg/f;->v(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
