.class public Lg/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/n;


# direct methods
.method public constructor <init>(Lg/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/n$a;->a:Lg/n;

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

    .line 2
    iget-object v0, p0, Lg/n$a;->a:Lg/n;

    iget-object v0, v0, Lg/n;->p0:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lg/n$a;->a:Lg/n;

    iget-object v0, p1, Lg/n;->p0:[I

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lg/n$a;->a:Lg/n;

    iget-object v0, p1, Lg/n;->o0:[I

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lg/n$a;->a:Lg/n;

    iget-object v0, p1, Lg/n;->n0:[I

    .line 7
    :goto_0
    invoke-static {}, Le1/c;->n()Le1/c;

    move-result-object p1

    .line 8
    instance-of v1, p1, Le1/e;

    if-eqz v1, :cond_4

    .line 9
    check-cast p1, Le1/e;

    invoke-virtual {p1, v0}, Le1/e;->K([I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
