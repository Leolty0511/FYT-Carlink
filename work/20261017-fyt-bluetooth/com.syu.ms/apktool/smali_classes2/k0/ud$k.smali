.class public Lk0/ud$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ud;


# direct methods
.method public constructor <init>(Lk0/ud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ud$k;->a:Lk0/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/ud$k;->a:Lk0/ud;

    sget v1, Lu0/b;->s0:I

    invoke-static {v0, v1}, Lk0/ud;->k3(Lk0/ud;I)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ud;->j3(Lk0/ud;I)I

    .line 2
    iget-object v0, p0, Lk0/ud$k;->a:Lk0/ud;

    invoke-static {v0}, Lk0/ud;->i3(Lk0/ud;)I

    move-result v0

    iget-object v1, p0, Lk0/ud$k;->a:Lk0/ud;

    invoke-static {v1}, Lk0/ud;->l3(Lk0/ud;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lk0/ud$k;->a:Lk0/ud;

    iget v1, v0, Lk0/ud;->B:I

    if-nez v1, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x37

    aput v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x6

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    .line 4
    invoke-static {v0}, Lk0/ud;->i3(Lk0/ud;)I

    move-result v0

    aput v0, v2, v1

    const/4 v0, 0x5

    aput v4, v2, v0

    aput v4, v2, v5

    const/4 v0, 0x7

    aput v4, v2, v0

    const/16 v0, 0x8

    aput v4, v2, v0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/ud$k;->a:Lk0/ud;

    invoke-static {v0}, Lk0/ud;->i3(Lk0/ud;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ud;->m3(Lk0/ud;I)I

    :cond_1
    return-void
.end method
