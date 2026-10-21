.class public Lk0/lc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lk0/lc;


# direct methods
.method public constructor <init>(Lk0/lc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lc$a;->b:Lk0/lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lk0/lc$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput-boolean v1, p0, Lk0/lc$a;->a:Z

    .line 3
    iget-object v0, p0, Lk0/lc$a;->b:Lk0/lc;

    invoke-static {v0}, Lk0/lc;->a3(Lk0/lc;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lk0/lc$a;->a:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lk0/qt;->t()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lk0/lc$a;->a:Z

    :goto_0
    return-void
.end method
