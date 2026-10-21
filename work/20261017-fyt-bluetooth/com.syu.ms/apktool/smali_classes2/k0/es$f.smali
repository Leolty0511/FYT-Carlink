.class public Lk0/es$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/es;


# direct methods
.method public constructor <init>(Lk0/es;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/es$f;->a:Lk0/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lk0/es$f;->a:Lk0/es;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk0/es;->b3(Lk0/es;Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lk0/es$f;->a:Lk0/es;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lk0/es;->b3(Lk0/es;Z)V

    :cond_2
    :goto_0
    return-void
.end method
