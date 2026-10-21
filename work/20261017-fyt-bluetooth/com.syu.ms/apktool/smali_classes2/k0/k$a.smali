.class public Lk0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/k;


# direct methods
.method public constructor <init>(Lk0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/k$a;->a:Lk0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/k$a;->a:Lk0/k;

    iput-boolean v1, v0, Lk0/k;->h:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lk0/k$a;->a:Lk0/k;

    iget-boolean v3, v0, Lk0/k;->h:Z

    if-nez v3, :cond_1

    .line 4
    iput-boolean v2, v0, Lk0/k;->h:Z

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/k$a;->a:Lk0/k;

    iput v1, v0, Lk0/k;->b:I

    .line 6
    iput v1, v0, Lk0/k;->c:I

    return-void
.end method
