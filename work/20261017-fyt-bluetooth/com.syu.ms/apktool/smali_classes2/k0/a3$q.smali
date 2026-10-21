.class public Lk0/a3$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a3;


# direct methods
.method public constructor <init>(Lk0/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a3$q;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/a3$q;->a:Lk0/a3;

    iget v1, v0, Lk0/a3;->J0:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/a3;->J0:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/a3;->J0:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lk0/a3;->r:Z

    if-nez v1, :cond_1

    .line 4
    iput-boolean v2, v0, Lk0/a3;->r:Z

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 5
    invoke-static {v1, v0}, Ll0/b0;->l0(II)V

    .line 6
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    :cond_1
    return-void
.end method
