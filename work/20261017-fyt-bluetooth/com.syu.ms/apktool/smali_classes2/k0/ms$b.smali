.class public Lk0/ms$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ms;


# direct methods
.method public constructor <init>(Lk0/ms;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ms$b;->a:Lk0/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ms$b;->a:Lk0/ms;

    iget v1, v0, Lk0/ms;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ms;->e:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v2, Lu0/b;->a0:I

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk0/ms;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ms$b;->a:Lk0/ms;

    const/4 v1, 0x5

    iput v1, v0, Lk0/ms;->e:I

    :goto_0
    return-void
.end method
