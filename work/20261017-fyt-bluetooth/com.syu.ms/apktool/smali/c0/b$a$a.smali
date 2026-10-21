.class public Lc0/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/b$a;->R(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc0/b$a;


# direct methods
.method public constructor <init>(Lc0/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc0/b$a$a;->a:Lc0/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lc0/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tima.carnet.vt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lu0/h;->c(I)V

    .line 3
    sget-object v0, Lu0/b;->c:Lu0/h;

    instance-of v2, v0, Lu0/a;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Lu0/a;

    invoke-virtual {v0, v1}, Lu0/a;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
