.class public Lk0/nk$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nk;


# direct methods
.method public constructor <init>(Lk0/nk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nk$d;->a:Lk0/nk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nk$d;->a:Lk0/nk;

    const/4 v1, 0x0

    iput v1, v0, Lk0/nk;->l:I

    .line 2
    iput v1, v0, Lk0/nk;->m:I

    .line 3
    invoke-static {v0}, Lk0/nk;->h3(Lk0/nk;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/nk$d;->a:Lk0/nk;

    const/4 v1, 0x5

    iput v1, v0, Lk0/nk;->o:I

    return-void
.end method
