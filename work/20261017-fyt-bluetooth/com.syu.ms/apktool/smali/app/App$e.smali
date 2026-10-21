.class public Lapp/App$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/Bar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/App;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lapp/App;


# direct methods
.method public constructor <init>(Lapp/App;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/App$e;->a:Lapp/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Ly0/h;->u0(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lui/a;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lui/a;

    invoke-virtual {v0}, Lui/a;->o()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
