.class public Lk0/va$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/va;


# direct methods
.method public constructor <init>(Lk0/va;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/va$b;->a:Lk0/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/va$b;->a:Lk0/va;

    const/4 v1, 0x0

    iput v1, v0, Lk0/va;->s:I

    .line 2
    iput v1, v0, Lk0/va;->t:I

    .line 3
    iput v1, v0, Lk0/va;->j:I

    .line 4
    iput v1, v0, Lk0/va;->k:I

    .line 5
    iget-object v0, v0, Lk0/va;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/va$b;->a:Lk0/va;

    const/4 v1, 0x5

    iput v1, v0, Lk0/va;->v:I

    return-void
.end method
