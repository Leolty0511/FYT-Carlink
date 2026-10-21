.class public Lk0/bi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bi;


# direct methods
.method public constructor <init>(Lk0/bi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bi$a;->a:Lk0/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/bi$a;->a:Lk0/bi;

    iget v1, v0, Lk0/bi;->j:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/bi;->j:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/bi;->j:I

    if-gtz v1, :cond_1

    .line 4
    invoke-static {v0}, Lk0/bi;->a3(Lk0/bi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lk0/qt;->a(I)V

    const-wide/16 v3, 0x1f4

    .line 6
    invoke-static {v3, v4}, La/i;->a0(J)V

    const/16 v1, 0x17

    new-array v3, v2, [I

    aput v2, v3, v0

    .line 7
    invoke-static {v1, v3}, Lu0/d;->I3(I[I)V

    :cond_1
    return-void
.end method
