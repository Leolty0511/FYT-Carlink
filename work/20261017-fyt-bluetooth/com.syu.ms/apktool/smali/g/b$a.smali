.class public Lg/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lg/b$a;->a:Lg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    sget v0, Lu0/b;->J0:I

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "sys.fyt.dvr"

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :cond_0
    iget-object v0, p0, Lg/b$a;->a:Lg/b;

    invoke-virtual {v0, v2}, Lg/b;->r(I)V

    .line 5
    invoke-static {v2}, Lg/b;->d(Z)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lg/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lg/b$a;->a:Lg/b;

    invoke-virtual {v0, v1}, Lg/b;->r(I)V

    .line 8
    invoke-static {v1}, Lg/b;->d(Z)Z

    :cond_2
    const/4 v0, 0x2

    .line 9
    sput v0, Lu0/b;->H3:I

    const/16 v0, 0x20

    .line 10
    invoke-static {v0, v2}, Ly0/h;->Y(IZ)V

    const-wide/16 v0, 0x64

    .line 11
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 12
    iget-object v0, p0, Lg/b$a;->a:Lg/b;

    invoke-static {v0}, Lg/b;->e(Lg/b;)V

    .line 13
    iget-object v0, p0, Lg/b$a;->a:Lg/b;

    invoke-static {v0}, Lg/b;->g(Lg/b;)V

    :cond_3
    :goto_0
    return-void
.end method
