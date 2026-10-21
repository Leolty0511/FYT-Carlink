.class public Lg/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/k;


# direct methods
.method public constructor <init>(Lg/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/k$g;->a:Lg/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lg/k$g;->a:Lg/k;

    iget-object v0, p1, Lg/k;->w0:[I

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lg/k$g;->a:Lg/k;

    iget-object v0, p1, Lg/k;->u0:[I

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lg/k$g;->a:Lg/k;

    iget-object v0, p1, Lg/k;->t0:[I

    .line 6
    :goto_0
    invoke-static {}, Le1/c;->n()Le1/c;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 7
    instance-of v1, p1, Le1/e;

    if-eqz v1, :cond_4

    .line 8
    check-cast p1, Le1/e;

    invoke-virtual {p1, v0}, Le1/e;->K([I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
