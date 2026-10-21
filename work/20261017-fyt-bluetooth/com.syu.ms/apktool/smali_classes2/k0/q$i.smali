.class public Lk0/q$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/q;


# direct methods
.method public constructor <init>(Lk0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/q$i;->a:Lk0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/q$i;->a:Lk0/q;

    iget v1, v0, Lk0/q;->E:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/q;->E:I

    if-gtz v1, :cond_1

    .line 2
    iget v0, v0, Lk0/q;->D:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lu0/d;->C2(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/q$i;->a:Lk0/q;

    invoke-static {v0}, Lk0/q;->k3(Lk0/q;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
